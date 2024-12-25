classdef nuhelnik

	% definice vlasnosti
	properties
		nazev
		stred
		pocetVrcholu
		souradniceVrcholu
	end

	methods

		% Konstruktor
		function obj = mereni( nazev, pocetVrcholum, souradniceVrcholu )
			... % prirad jednotlive promenne a napocitej stred
		end

		function plocha = urciPlochu( obj )
			...
		end

		function obvod = urciObvod( obj )
			...
		end

		function ano_ne = urciZdaSeProtinaji( obj, druhyNuhelnik )
			... % urci, zda se dva dane n-uhelniky protinaji
		end

	end

end
