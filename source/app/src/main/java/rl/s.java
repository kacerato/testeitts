package Rl;

import Bi.InterfaceC2392y;
import Ii.J;
import Ii.K;
import Ii.L;
import Ii.M;
import Ii.O;

public class s {
    public static InterfaceC2392y a(String str) {
        if (str.equals("SHA-1")) {
            return new J();
        }
        if (str.equals("SHA-224")) {
            return new K();
        }
        if (str.equals("SHA-256")) {
            return new L();
        }
        if (str.equals("SHA-384")) {
            return new M();
        }
        if (str.equals("SHA-512")) {
            return new O();
        }
        throw new IllegalArgumentException("unrecognised digest algorithm: " + str);
    }
}
