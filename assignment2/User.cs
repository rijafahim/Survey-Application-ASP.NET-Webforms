using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace assignment2
{
    public class User
    {

        String name;
        String incom;
        String occu;
        String gen;
        String age;
        String answers;

       

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Incom
        {
            get
            {
                return incom;
            }

            set
            {
                incom = value;
            }
        }

        public string Occu
        {
            get
            {
                return occu;
            }

            set
            {
                occu = value;
            }
        }

        public string Gen
        {
            get
            {
                return gen;
            }

            set
            {
                gen = value;
            }
        }

        public string Answers
        {
            get
            {
                return answers;
            }

            set
            {
                answers = value;
            }
        }

        public string Age
        {
            get
            {
                return age;
            }

            set
            {
                age = value;
            }
        }
    }
}