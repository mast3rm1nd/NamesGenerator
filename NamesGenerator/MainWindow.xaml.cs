using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace NamesGenerator
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void MinLength_IntegerUpDown_ValueChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            if (MinLength_IntegerUpDown != null && MaxLength_IntegerUpDown != null)
                if (MinLength_IntegerUpDown.Value > MaxLength_IntegerUpDown.Value)
                    MaxLength_IntegerUpDown.Value = MinLength_IntegerUpDown.Value;
        }

        private void MaxLength_IntegerUpDown_ValueChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            if (MinLength_IntegerUpDown != null && MaxLength_IntegerUpDown != null)
                if (MinLength_IntegerUpDown.Value > MaxLength_IntegerUpDown.Value)
                    MinLength_IntegerUpDown.Value = MaxLength_IntegerUpDown.Value;
        }

        private void Generate_Button_Click(object sender, RoutedEventArgs e)
        {
            var names = "";

            foreach (var name in GetRandomNames((int)MinLength_IntegerUpDown.Value, (int)MaxLength_IntegerUpDown.Value, (int)Count_IntegerUpDown.Value, (bool)IsStartsWithVowel_CheckBox.IsChecked))
            {
                names += name + Environment.NewLine;
            }

            Words_TextBox.Text = names;
        }


        static Random rnd = new Random();
        static string[] GetRandomNames(int minLength, int maxLength, int count, bool isVowelsFirst)
        {
            var constants = "bcdfghjklmnprstvwxz";
            var vowels = "aeiou";

            var words = new List<string>();
            var word = "";

            for(int wordIndex = 0; wordIndex < count; wordIndex++)
            {
                word = "";

                for(int letterIndex = 0; letterIndex < rnd.Next(minLength, maxLength); letterIndex++)
                {
                    if (((isVowelsFirst? 1 : 0) + letterIndex) % 2 != 0)
                    {
                        word += vowels[rnd.Next(vowels.Count())].ToString();
                    }
                    else
                    {
                        word += constants[rnd.Next(constants.Count())].ToString();
                    }

                    if(letterIndex == 0) word = word.ToUpper();
                }

                words.Add(word);
            }

            words.Sort();

            return words.ToArray();
        }
    }
}
