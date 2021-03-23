//#define R_NO_REMAP
#include <R.h>
#include <Rinternals.h>
#include <stdlib.h>  // for NULL
#include <R_ext/Rdynload.h>
#include <R_ext/RS.h> // for F77_name


// .Fortran calls
extern void F77_NAME(squarecube)(void *, void *, void *);


static const R_FortranMethodDef FortranEntries[] = {
  {"squarecube", (DL_FUNC) &F77_NAME(squarecube), 3},
  {NULL, NULL, 0}
};

void R_init_Sporm(DllInfo *dll) { // R looks R_init_<pkg>() to register routines
  R_registerRoutines(dll, NULL, NULL, FortranEntries, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
