using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FormLogin
{
    public partial class FormLogin : Form
    {
        Config db = new Config();
        public FormLogin()
        {
            InitializeComponent();
            db.Connect("userdata");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            db.ExecuteSelect("SELECT * FROM user_info where username='" + textBox1.Text + "' and password='" + textBox2.Text +"'");

            if (db.Count() == 1)
            {
                MessageBox.Show("Success you will login as " + db.Results (0, "names"));
            }
            else
            {
                MessageBox.Show("Wrong username and password combination");
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            FormRegister register = new FormRegister();
            register.Show();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }
    }
}
