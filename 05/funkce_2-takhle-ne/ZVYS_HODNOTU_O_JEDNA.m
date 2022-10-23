function vystup = ZVYS_HODNOTU_O_JEDNA( vstup )
  vystup = vstup + 1
end

function vystup = ZVYS_HODNOTU_O_DVA( vstup )
  vystup = vstup + 1
end

function prumer = VYPOCTI_PRUMER( x )
  prumer = sum(x(:)) / numel(x);
end
