#!/usr/bin/perl

# ph, Phonetics Utility, v. 1.3 05DEC2003
# git push 08AUG2017
# David Bell, https://github.com/maxwedge
# 
# Limited support for Spanish, French, Dutch and Polish character sets.

$i=$ARGV[0];
$i =~ tr/a-z/A-Z/;
chop;
$q="NATO";

if ($i eq "") {
     print "
            ph, Phonetics Utility
            usage:  ph [-bdefhinpsuwy] string
            uses NATO standard phonetics by default
            -b British Royal Air Force (1924-42) and Royal Navy (1917)
            -d German
            -e Spanish
            -f French
            -h Hebrew
            -i Italian
            -n Dutch
            -p Polish
            -s Swahili
            -u U.S. Army (1916) and U.S. Navy (1940)
            -w Western Union
            -y New York City Police\n";
     $q="";
              }
              
@char=split('',$i);

if ($char[0] eq "-") {
     $q=$char[1];
     $i=$ARGV[1];
     $i =~ tr/a-z/A-Z/;
     @char=split('',$i);
                     }

$z=length($i);

if ($q eq "NATO") {
    print "Using NATO standard phonetics\n";
    %mnemonic = (
        A  => 'Alpha',
        B  => 'Bravo',
        C  => 'Charlie',
        D  => 'Delta',
        E  => 'Echo',
        F  => 'Foxtrot',
        G  => 'Golf',
        H  => 'Hotel',
        I  => 'India',
        J  => 'Juliet',
        K  => 'Kilo',
        L  => 'Lima',
        M  => 'Mike',
        N  => 'November',
        O  => 'Oscar',
        P  => 'Papa',
        Q  => 'Quebec',
        R  => 'Romeo',
        S  => 'Sierra',
        T  => 'Tango',
        U  => 'Uniform',
        V  => 'Victor',
        W  => 'Whiskey',
        X  => 'Xray',
        Y  => 'Yankee',
        Z  => 'Zulu',
        0  => 'Zero',
        1  => 'One',
        2  => 'Two',
        3  => 'Tree',
        4  => 'Fower',
        5  => 'Fife',
        6  => 'Six',
        7  => 'Seven',
        8  => 'Eight',
        9  => 'Niner'
    );
}

if ($q eq "B") {
    print "Using British RAF (1924-42) and Royal Navy (1917) standard phonetics\n";
    %mnemonic = (
        A  => 'Ac or Apples',
        B  => 'Beer or Butter',
        C  => 'Charlie',
        D  => 'Don or Duff',
        E  => 'Edward',
        F  => 'Freddie',
        G  => 'George',
        H  => 'Harry',
        I  => 'Ink',
        J  => 'Johnnie',
        K  => 'King',
        L  => 'London',
        M  => 'Monkey',
        N  => 'Nuts',
        O  => 'Orange',
        P  => 'Pip or Pudding',
        Q  => 'Queen or Queenie',
        R  => 'Robert',
        S  => 'Sugar',
        T  => 'Toc or Tommy',
        U  => 'Uncle',
        V  => 'Vic or Vinegar',
        W  => 'William or Willie',
        X  => 'X-ray or Xerxes',
        Y  => 'Yorker or Yellow',
        Z  => 'Zebra',
    );
}
if ($q eq "D") {
    print "Using German standard phonetics\n";
    %mnemonic = (
        A  => 'Anton',
        B  => 'Berta',
        C  => 'Caesar',
        D  => 'Dora',
        E  => 'Emil',
        F  => 'Friedrich',
        G  => 'Gustav',
        H  => 'Heinrich',
        I  => 'Ida',
        J  => 'Julius',
        K  => 'Kaufmann',
        L  => 'Ludwig',
        M  => 'Martha',
        N  => 'Nordpol',
        O  => 'Otto',
        P  => 'Paula',
        Q  => 'Quelle',
        R  => 'Richard',
        S  => 'Samuel',
        T  => 'Theodor',
        U  => 'Ulrich',
        V  => 'Viktor',
        W  => 'Wilhelm',
        X  => 'Xanthippe',
        Y  => 'Ypsilon',
        Z  => 'Zacharias',
    );
}


if ($q eq "E") {
    print "Using Spanish standard phonetics\n";
    %mnemonic = (
        A  => 'Antonio',
        B  => 'Barcelona',
        C  => 'Carmen',
        CH => 'Chocolate',
        D  => 'Dolores',
        E  => 'Enrique',
        F  => 'Francia',
        G  => 'Gerona',
        H  => 'Historia',
        I  => 'Inés',
        J  => 'José',
        K  => 'Kilo',
        L  => 'Lorenzo',
        LL => 'Llobregat',
        M  => 'Madrid',
        N  => 'Navarra',
        O  => 'Oviedo',
        P  => 'París',
        Q  => 'Querido',
        R  => 'Ramón',
        S  => 'Sábado',
        T  => 'Tarragona',
        U  => 'Ulises',
        V  => 'Valencia',
        W  => 'Washington',
        X  => 'Xiquena',
        Y  => 'Yegua',
        Z  => 'Zaragoza'
    );
#        Ñ  => 'Ñoño',
}


if ($q eq "F") {
    print "Using French standard phonetics\n";
    %mnemonic = (
        A  => 'Anatole',
        B  => 'Bernard',
        C  => 'C\'ecile',
        D  => 'Denise',
        E  => '\'Emile',
        F  => 'François',
        G  => 'G\'erard',
        H  => 'Henri',
        I  => 'Isidore',
        J  => 'Jean',
        K  => 'Kl\'eber',
        L  => 'Louis',
        M  => 'Marcel',
        N  => 'Nicole',
        O  => 'Oscar',
        P  => 'Pierre',
        Q  => 'Quital',
        R  => 'Robert',
        S  => 'Suzanne',
        T  => 'Th\'er\`ese',
        U  => 'Ursule',
        V  => 'Victor',
        W  => 'Wagon',
        X  => 'Xavier',
        Y  => 'Yvonne',
        Z  => 'Zo\'e',
    );
}


if ($q eq "H") {
    print "Using Hebrew standard phonetics\n";
    %mnemonic = (
        A  => 'Affula',
        B  => 'Binyamina',
        C  => 'Carmel',
        D  => 'Dalia',
        E  => 'Eretz',
        F  => 'France',
        G  => 'Gedera',
        H  => 'Haifa',
        I  => 'Israel',
        J  => 'Jaffa',
        K  => 'Karkur',
        L  => 'Lod',
        M  => 'Moledet',
        N  => 'Naan',
        O  => 'Ogen',
        P  => 'Pardes',
        Q  => 'Queen',
        R  => 'Rishon',
        S  => 'Sefer',
        T  => 'Tveria',
        U  => 'Urim',
        V  => 'Vered',
        W  => 'Wingate',
        X  => 'Express',
        Y  => 'Yavniel',
        Z  => 'Zikhron',
    );
}


if ($q eq "I") {
    print "Using Italian standard phonetics\n";
    %mnemonic = (
        A  => 'Ancona',
        B  => 'Bologna',
        C  => 'Como',
        D  => 'Domodossola',
        E  => 'Empoli',
        F  => 'Firenze',
        G  => 'Genova',
        H  => 'Hacca',
        I  => 'Imola',
        J  => 'Jolly',
        K  => 'Kappa',
        L  => 'Livorno',
        M  => 'Milano',
        N  => 'Napoli',
        O  => 'Otranto',
        P  => 'Pisa/Palermo',
        Q  => 'Quartomiglio',
        R  => 'Roma',
        S  => 'Savona/Siena',
        T  => 'Torino',
        U  => 'Udine',
        V  => 'Venezia',
        W  => 'Wagner',
        X  => 'Xilofono',
        Y  => 'York',
        Z  => 'Zara',
    );
}


if ($q eq "N") {
    print "Using Dutch standard phonetics\n";
    %mnemonic = (
        A  => 'Anna',
        B  => 'Bernhard',
        C  => 'Cornelis',
        D  => 'Dirk',
        E  => 'Eduard',
        F  => 'Ferdinand',
        G  => 'Gerard',
        H  => 'Hendrik',
        I  => 'Izaak',
        J  => 'Jan',
        K  => 'Karel',
        L  => 'Lodewijk',
        M  => 'Marie',
        N  => 'Nico',
        O  => 'Otto',
        P  => 'Pieter',
        Q  => 'Quotient',
        R  => 'Rudolf',
        S  => 'Simon',
        T  => 'Teunis',
        U  => 'Utrecht',
        V  => 'Victor',
        W  => 'Willem',
        X  => 'Xantippe',
        Y  => 'Ypsilon',
        Z  => 'Zaandam',
    );
#        I- => 'Ij:',
#        I-- => 'Ijmuiden',

}


if ($q eq "P") {
    print "Using Polish standard phonetics\n";
    %mnemonic = (
        A  => 'Adam',
        B  => 'Barbara',
        C  => 'Celina',
        D  => 'Danuta',
        E  => 'Ewa',
        F  => 'Franciszek',
        G  => 'Genowefa',
        H  => 'Henryk',
        I  => 'Irena',
        J  => 'Jadwiga',
        K  => 'Karol',
        L  => 'Leon',
        M  => 'Maria',
        N  => 'Natalia',
        O  => 'Olga',
        R  => 'Roman',
        T  => 'Tadeusz',
        U  => 'Urszula',
        X  => 'Xantypa',
        Y  => 'Ygrek',
        Z  => 'Zygmunt',
    );
#        ¿  => '¿ukasz',
#        P  => 'Pawe¿',
#        S  => 'Stanis¿aw',
#        W  => 'W¿adys¿aw',
}


if ($q eq "S") {
    print "Using Swahili standard phonetics\n";
    %mnemonic = (
        A  => 'Aali',
        B  => 'Bibi',
        C  => 'Cyprus',
        D  => 'Daniel',
        E  => 'Elfu',
        F  => 'Fiwi',
        G  => 'Gombe',
        H  => 'Henry',
        I  => 'Ida',
        J  => 'Jinja',
        K  => 'Kenya',
        L  => 'Leso',
        M  => 'Mtu',
        N  => 'Nairobi',
        O  => 'Olga',
        P  => 'Paul',
        Q  => 'Quebec',
        R  => 'Robert',
        S  => 'Sana',
        T  => 'Tanga',
        U  => 'Unga',
        V  => 'Victor',
        W  => 'William',
        X  => 'Xavier',
        Y  => 'Yatima',
        Z  => 'Zanzibar',
    );
}


if ($q eq "U") {
    print "Using U.S. Army (1916) and U.S.N. (1940) standard phonetics\n";
    %mnemonic = (
        A  => 'Affirmative or Able',
        B  => 'Baker or Buy',
        C  => 'Cast',
        D  => 'Dog or Dock',
        E  => 'Easy',
        F  => 'Fox',
        G  => 'George',
        H  => 'Hypo or Have',
        I  => 'Interrogatory or Item',
        J  => 'Jig',
        K  => 'King',
        L  => 'Love',
        M  => 'Mike',
        N  => 'Negative or Nap',
        O  => 'Option or Opal',
        P  => 'Preparatory or Pup',
        Q  => 'Queen or Quack',
        R  => 'Roger or Rush',
        S  => 'Sail',
        T  => 'Tare or Tape',
        U  => 'Unit',
        V  => 'Victor or Vice',
        W  => 'William or Watch',
        X  => 'Xray',
        Y  => 'Yoke',
        Z  => 'Zed',
    );
}


if ($q eq "W") {
    print "Using Western Union standard phonetics\n";
    %mnemonic = (
        A  => 'Adams',
        B  => 'Boston',
        C  => 'Chicago',
        D  => 'Denver',
        E  => 'Easy',
        F  => 'Frank',
        G  => 'George',
        H  => 'Henry',
        I  => 'Ida',
        J  => 'John',
        K  => 'King',
        L  => 'Lincoln',
        M  => 'Mary',
        N  => 'New_York',
        O  => 'Ocean',
        P  => 'Peter',
        Q  => 'Queen',
        R  => 'Roger',
        S  => 'Sugar',
        T  => 'Thomas',
        U  => 'Union',
        V  => 'Victor',
        W  => 'William',
        X  => 'X-ray',
        Y  => 'Young',
        Z  => 'Zero',
    );
}


if ($q eq "Y") {
    print "Using New York City Police standard phonetics\n";
    %mnemonic = (
        A  => 'Adam',
        B  => 'Boy',
        C  => 'Charlie',
        D  => 'David',
        E  => 'Edward',
        F  => 'Frank',
        G  => 'George',
        H  => 'Henry',
        I  => 'Ida',
        J  => 'John',
        K  => 'King',
        L  => 'Lincoln',
        M  => 'Mary',
        N  => 'Nora',
        O  => 'Ocean',
        P  => 'Peter',
        Q  => 'Queen',
        R  => 'Robert',
        S  => 'Sam',
        T  => 'Tom',
        U  => 'Union',
        V  => 'Victor',
        W  => 'William',
        X  => 'X-ray',
        Y  => 'Young',
        Z  => 'Zebra',
    );
}




for $y (0..$z) {
    print "$mnemonic{$char[$y]}\n";
}

