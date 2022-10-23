b = 12;
vystup_z_funkce_plusJedna = ZVYS_HODNOTU_O_JEDNA( b )

b = 12;
vystup_z_funkce_plusDva = ZVYS_HODNOTU_O_DVA( b )

x = [ 1: 10];
vystup_z_funkce_prumer = VYPOCTI_PRUMER( x )

function vystup = ZVYS_HODNOTU_O_JEDNA( vstup )
  vystup = vstup + 1
end

function vystup = ZVYS_HODNOTU_O_DVA( vstup )
  vystup = vstup + 1
end

function prumer = VYPOCTI_PRUMER( x )
  prumer = sum(x(:)) / numel(x);
end
