int test_function(double input_double, double *output_double, double *array_double,int nn) {
printf("input_double is %12.8f\n",input_double);
printf("2.0*input_double is %12.8f\n",2.0*input_double);
printf("output_double is %p\n",output_double);
printf("*output_double is %12.8f\n",*output_double);
*output_double = 2.0*input_double;
int i;
printf("nn %d\n",nn);
printf("input %f\n",*array_double);
double *array_ptr;
for(i=0;i<nn;i++) {
 array_ptr = array_double+i;
 *array_ptr = (i+1)*1.1;
 printf("output %f\n",*array_ptr);
}
return(0);
}
