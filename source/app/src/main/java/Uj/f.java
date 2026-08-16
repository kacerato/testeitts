package Uj;

import bk.AbstractC3895a;
import oh.C14549x;

public abstract class f extends AbstractC3895a {
    public void b(Tj.a aVar, String str, String str2, String str3) {
        String str4 = "HMAC" + str;
        aVar.d("Mac." + str4, str2);
        aVar.d("Alg.Alias.Mac.HMAC-" + str, str4);
        aVar.d("Alg.Alias.Mac.HMAC/" + str, str4);
        aVar.d("KeyGenerator." + str4, str3);
        aVar.d("Alg.Alias.KeyGenerator.HMAC-" + str, str4);
        aVar.d("Alg.Alias.KeyGenerator.HMAC/" + str, str4);
    }

    public void c(Tj.a aVar, String str, C14549x c14549x) {
        String str2 = "HMAC" + str;
        aVar.d("Alg.Alias.Mac." + ((Object) c14549x), str2);
        aVar.d("Alg.Alias.KeyGenerator." + ((Object) c14549x), str2);
    }

    public void d(Tj.a aVar, String str, String str2, String str3) {
        String str4 = "KMAC" + str;
        aVar.d("Mac." + str4, str2);
        aVar.d("KeyGenerator." + str4, str3);
        aVar.d("Alg.Alias.KeyGenerator.KMAC" + str, str4);
    }
}
