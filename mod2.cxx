#define register
#include <string>
#include <Python.h>

std::string make_empty_string();

 static PyObject* wrapped_aux_f(PyObject *self, PyObject *args, PyObject *keywds) {
  { 
       std::string err = " ";
       err = make_empty_string(); 
  }
   Py_RETURN_NONE;
 }

static PyMethodDef module_methods[] = {
    {"f", (PyCFunction)wrapped_aux_f, METH_VARARGS| METH_KEYWORDS, ""},
{NULL}  /* Sentinel */
};

PyMODINIT_FUNC initmod2(void) {
    PyObject* m;
    m = Py_InitModule3("mod2", module_methods, "");
}


