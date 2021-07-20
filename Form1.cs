using ClassLibrary1;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Formulario
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var documento = new Document(comboBox1.SelectedIndex,
                comboBox2.SelectedIndex,
                comboBox3.SelectedIndex,
                textBox1.Text,
                textBox2.Text,
                dateTimePicker1.Value,
                dateTimePicker2.Value,
                float.Parse(textBox5.Text),
                dateTimePicker3.Value,
                paymenttype());

            DocumentsDALcs.AddDocument(documento);
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public int paymenttype()
        {
            var selected = 0;
            if (radioButton1.Checked==true)
            {
                selected = 2;
                radioButton2.Checked = false;
            }
            else
            {
                radioButton2.Checked = true;
                selected = 1;
            }

            return selected;
        }
    }
}
