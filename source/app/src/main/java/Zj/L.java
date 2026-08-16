package Zj;

import bk.AbstractC3895a;

public abstract class L extends AbstractC3895a {
    public void b(Tj.a aVar, String str, String str2, String str3) {
        aVar.d("Mac." + str + "-CMAC", str2);
        aVar.d("Alg.Alias.Mac." + str + "CMAC", str + "-CMAC");
        aVar.d("KeyGenerator." + str + "-CMAC", str3);
        aVar.d("Alg.Alias.KeyGenerator." + str + "CMAC", str + "-CMAC");
    }

    public void c(Tj.a aVar, String str, String str2, String str3) {
        aVar.d("Mac." + str + "-GMAC", str2);
        aVar.d("Alg.Alias.Mac." + str + "GMAC", str + "-GMAC");
        aVar.d("KeyGenerator." + str + "-GMAC", str3);
        aVar.d("Alg.Alias.KeyGenerator." + str + "GMAC", str + "-GMAC");
    }

    public void d(Tj.a aVar, String str, String str2, String str3) {
        aVar.d("Mac.POLY1305-" + str, str2);
        aVar.d("Alg.Alias.Mac.POLY1305" + str, "POLY1305-" + str);
        aVar.d("KeyGenerator.POLY1305-" + str, str3);
        aVar.d("Alg.Alias.KeyGenerator.POLY1305" + str, "POLY1305-" + str);
    }
}
