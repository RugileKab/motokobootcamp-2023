1. ledger canister is controlled by r7inp-6aaaa-aaaaa-aaabq-cai
2. The subnet of the canister is pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe.
16 Nodes are running this subnet.
3. It would be 17.68 voting power.
4. Need to import Nat as follows -> import Nat "mo:base/Nat";
5. actor {
  let languages : [ Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages() : async [ Text] {
    return (languages);
  };
}
6. need to import Array as follows -> import Array "mo:base/Array";