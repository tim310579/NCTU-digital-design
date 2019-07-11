primitive Lab1_UDP(E,A,B,C,D);
	output E;
	input A,B,C,D;
	table
      //A B C D : E
	0 0 0 0 : 0;
	0 0 0 1 : 0;
	0 0 1 0 : 1;//2
	0 0 1 1 : 0;
	0 1 0 0 : 0;
	0 1 0 1 : 0;
	0 1 1 0 : 1;//6
	0 1 1 1 : 0;
	1 0 0 0 : 0;
	1 0 0 1 : 0;
	1 0 1 0 : 1;//10
	1 0 1 1 : 0;
	1 1 0 0 : 1;//12~15
	1 1 0 1 : 1;
	1 1 1 0 : 1;
	1 1 1 1 : 1;
endtable
endprimitive
