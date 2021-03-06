function opt = load_opt()
	% carrega otimos

	% vetor kolb de otimos	
	opt = [ 1 0 0 1 1 0 1 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 0;
	       0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 0;
	       0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1;
	       1 0 0 1 1 0 0 1 0 1 0 1 0 1 1 0 0 1 0 1 1 0 1 0;

	       0 1 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 1 0 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0;
	      
	       1 0 0 1 0 1 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 1 0 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0;
	       1 0 0 1 1 0 0 1 0 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0;
	      
	       1 0 0 1 1 0 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 0 1 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 1 0 0 1 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0;
	       0 1 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 ];
	         
  % soma os valores de kolb
  impares = sum(opt(1:size(opt, 1), rem(1:size(opt, 2), 2) ~= 0)');
  pares = sum(opt(1:size(opt, 1), rem(1:size(opt, 2), 2) == 0)');

	opt = [ impares' pares' ] ./ 12; % ponderacao

	% seta os valores ideais de gardner
	opt = [ opt repmat(eye(4), 4, 1) ];

end