% DEFINICE TRIDY
classdef mereni

	% definice vlasnosti
	properties
		casy
		data
		mereni_nazev
	end

	% definice VNITRNICH vlastnosti
	properties ( SetAccess=private )
		index
	end

	methods

		% Konstruktor
		function obj = mereni( casy, data, mereni_nazev )
			obj.casy = casy;
			obj.data = data;
			obj.mereni_nazev = mereni_nazev
		end

		% Funkce ( tzv. metody ), kterymi dana trida disponuje
		function plotProbehlUspesne = vykreslit( obj )
			plot(obj.casy, obj.data);
			grid on
			title(obj.mereni_nazev)
			nazevVystupnihoSouboru = strcat( obj.mereni_nazev, ".png" );
			print ("-dpng",  nazevVystupnihoSouboru )
		end

	end

end
