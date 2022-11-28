%%Struktury

% NAZEV_STRUKTURY = struct( 'nazevPrvku', hodnota,
%														'nazevPrvku', hodnota,
%                           .. )

prvniMereni = struct( 'teplota', 22.6,
								 			'casy', [0, 0.21, 0.54, 0.66, 0.69, 0.88, 1.03],
								 			'mereniHodnoty', [111, 112.22, 114.43, 114.86, 147.23, 189.1, 201.3],
								 			'titulek', "first measurement")

prvniMereni %nebo %disp(prvniMereni)

disp( prvniMereni.teplota )            % pristup k prvkum struktury
disp( prvniMereni.mereniHodnoty ) 			% pristup k prvkum struktury

disp("__________________________________________________")

% NAZEV_STRUKTURY.nazevPrvku = hodnota
% NAZEV_STRUKTURY.nazevPrvku = hodnota ...

druheMereni.teplota = 23.6;
druheMereni.casy = [ 0, 0.23, 0.34, 0.65, 0.72, 0.98, 1.15 ];
druheMereni.mereneHodnoty = [ 112, 113.26, 113.35, 113.36, 156.23, 189.1, 198 ];
druheMereni.titulek = 'second measurement';

disp( 'Vypis z druhe struktury:' )
disp( druheMereni.teplota )
disp( druheMereni.titulek )

disp("__________________________________________________")

% POLE STRUKTUR
% NAZEV_STRUKTURY = struct( 'nazevPrvku', { hodnota, hodnota... }
%														'nazevPrvku', { hodnota, hodnota... }
%                           .. )


mereni = struct( 'teplota', { 22.6, 23.6 },
								 'casy', {[0, 0.21, 0.54, 0.66, 0.69, 0.88, 1.03], [0, 0.21, 0.54, 0.66, 0.69, 0.88, 1.03]},
								 'mereniHodnoty', {[111, 112.22, 114.43, 114.86, 147.23, 189.1, 201.3], [111, 112.22, 114.43, 114.86, 147.23, 189.1, 201.3]},
								 'titulek', { "first measurement" ,"second measurement" , });

disp( 'Vypis z druhe struktury:' )
disp( mereni(2) )


disp( 'Vypis z casu z prvni struktury:' )
disp( mereni(1).casy )

disp("__________________________________________________")

disp( 'Vypis prvky struktury:' )
fieldnames(druheMereni)

disp( 'Ziskej datove pole ze struktury:' )
getfield(druheMereni, 'casy')


disp("__________________________________________________")

pole = 'f';
hodnoty = {'some text';
         [10, 20, 30];
         magic(5)};

struktura = struct( pole, hodnoty )
disp( 'Vypis pole struktury:' )
