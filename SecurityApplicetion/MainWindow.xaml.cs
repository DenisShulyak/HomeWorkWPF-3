
using SecurityApplicetion.DataAccess;
using SecurityApplicetion.Models;
using SecurityApplicetion.Services;
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

namespace SecurityApplicetion
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void signInButtonClick(object sender, RoutedEventArgs e)
        {
            var login = loginTextBox.Text;
            var password = passwordBox.Password;

            if(string.IsNullOrEmpty(login) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Заполните все поля!");
                return;
            }
            using (var context = new SecurityContext())
            {
                //var user = context.Users.SingleOrDefault(searchingUser => searchingUser.Login == login);

                var users = context.Users.Where(searchingUser => searchingUser.Login == login).ToList();

                if (users.Count > 0)
                {
                    if (users[0] == null || !SecurityHasher.VerifyPassword(password, users[0].Password))
                    {
                        MessageBox.Show("Неверный логин или пароль");
                    }
                    else
                    {
                        MessageBox.Show("Успешный вход");
                    }

                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль");
                }
            }
        }

        private void registretionButtonClick(object sender, RoutedEventArgs e)
        {
            mainWindow.Title = "Регистрация";
            signInButton.Visibility = Visibility.Hidden;
            registretionButton.Visibility = Visibility.Hidden;
            registrerButton.Visibility = Visibility.Visible;
            loginTextBox.Text = "";
            passwordBox.Password = "";
        }

        private void registrerButtonClick(object sender, RoutedEventArgs e)
        {
            var login = loginTextBox.Text;
            var password = passwordBox.Password;
            using (var context = new SecurityContext())
            {
                var user = new User
                {
                    Login = login,
                    Password = SecurityHasher.HashPassword(password)
                };
                context.Users.Add(user);
                context.SaveChanges();
            }
            loginTextBox.Text = "";
            passwordBox.Password = "";
            mainWindow.Title = "Вход";
            signInButton.Visibility = Visibility.Visible;
            registretionButton.Visibility = Visibility.Visible;
            registrerButton.Visibility = Visibility.Hidden;
            if (string.IsNullOrEmpty(login) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Заполните все поля!");
                return;
            }
            else
            {
                MessageBox.Show("Вы зарегистрированы!");
            }
        }
    }
}
