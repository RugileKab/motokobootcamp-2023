

actor {
    // challenge 1
  public func  multiply(n : Nat, m : Nat) : async Nat {
    return(n * m);
  };

   // challenge 2

  public func volume(n : Nat) : async Nat {
    return(n ** 2);
  };

   // challenge 3

   public func hours_to_minutes(n : Nat) : async Nat {
    return (n * 60);
   };

   // challenge 4

   var counter : Nat = 0;
  public func set_counter(n : Nat) : async () {
    counter := n;
  };

 public query func  get_counter() : async Nat {
    return counter;
 };

   // challenge 5
  
   public func test_divide(n: Nat, m : Nat) : async Bool {
   let remainder : Nat = n % m;
   if (remainder == 0) {
    return (true);
   } else {
    return (false);
   };
   };

   // challenge 6

  public func is_even(n : Nat) : async Bool {
    if (n % 2 == 0) {
        return (true)
    } else {
        return ( false);
    };
  };
}

