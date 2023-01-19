import Int "mo:base/Int";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";


actor {
      // challenge 1

     public func average_array(array : [Int]) : async Int {
    var sum : Int = 0;
    for(value in array.vals()){
      sum += value;
    };
    return sum / array.size();
  };

   // challenge 2

   public func count_character(t : Text, c : Char) : async Nat {
		var count: Nat = 0;
		for (char in t.chars()) {
			if (char == c) {
				count += 1;
			};
		};
		return count;
	};


    // challenge 3

     public query func factorial(n : Nat) : async Nat {
        var fact : Nat = 1;
        for (i in Iter.range(1, n)) {
            fact *= i;
        };
        return fact;
    };

    // challenge 4

    public func number_of_words(t : Text) : async Nat {
		var count: Nat = 0;
		if (t.size() > 0) {
			count += 1;
		};
		for (word in t.chars()) {
			if (word == ' ') {
				count += 1;
			};
		};
		return count;
	};

    // challenge 5

     public query func find_duplicates(a : [Nat]) : async [Nat] {
        var buf = Buffer.Buffer<Nat>(1);
        for (index in Iter.range(0, a.size() -1)) {
            for (j in Iter.range(index + 1, a.size() - 1)) {
                if (a[index] == a[j] and not Buffer.contains(buf, a[index], Nat.equal)) {
                    buf.add(a[j]);
                };
            };
        };
        return Buffer.toArray(buf);
    };

    // challenge 6

     public query func convert_to_binary(n : Nat) : async Text {
        var Iter : Int = n;
        var bin_string : Text = "";
        while (Iter > 0) {
            bin_string := Text.concat(Int.toText(Iter % 2), bin_string);
            Iter := Iter / 2;
        };
        return bin_string;
    };

}


