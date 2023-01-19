import Error "mo:base/Error";
import Array "mo:base/Array";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import Debug "mo:base/Debug";

module Utils {

    // Challenge 1
    
    public func second_maximum(array : [Int]) : Int {
        if (array.size() < 2) {
            Debug.trap("parameter 'array' must contain at least two elements");
        };
       
        var max = Int.min(array[0], array[1]);
        var second_max = max;

        
        for (n in array.vals()) {
            if (n > second_max) {
                if (n > max) {
                    second_max := max;
                    max := n;
                } else {
                    second_max := n;
                };
            };
        };

        return second_max;
    };

    // Challenge 2
    
    public func remove_even(array : [Nat]) : [Nat] {
        let vals = array.vals();
        let filtered = Iter.filter<Nat>(vals, func(n : Nat) = (n % 2 == 1));
        return Iter.toArray(filtered);
    };

    // Challenge 3
    
    public func drop<T>(xs : [T], n : Nat) : [T] {
        if (xs.size() <= n) return [];

        let range = Iter.range(n, xs.size() - 1);
        let values = Iter.map<Nat, T>(range, func(i : Nat) = xs[i]);

        return Iter.toArray(values);
    };
};