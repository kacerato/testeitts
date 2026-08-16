package bk;

import java.util.Map;
import oh.C14549x;

public abstract class AbstractC3896b extends AbstractC3895a {
    public void b(Tj.a aVar, String str, String str2, C14549x c14549x) {
        aVar.d("Cipher." + str, str2);
        if (c14549x != null) {
            aVar.d("Alg.Alias.Cipher." + ((Object) c14549x), str);
            aVar.d("Alg.Alias.Cipher.OID." + ((Object) c14549x), str);
        }
    }

    public void c(Tj.a aVar, String str, String str2, C14549x c14549x, InterfaceC3897c interfaceC3897c) {
        aVar.d("KeyFactory." + str, str2);
        if (c14549x != null) {
            aVar.d("Alg.Alias.KeyFactory." + ((Object) c14549x), str);
            aVar.d("Alg.Alias.KeyFactory.OID." + ((Object) c14549x), str);
            aVar.c(c14549x, interfaceC3897c);
        }
    }

    public void d(Tj.a aVar, String str, String str2, C14549x c14549x) {
        aVar.d("KeyGenerator." + str, str2);
        if (c14549x != null) {
            aVar.d("Alg.Alias.KeyGenerator." + ((Object) c14549x), str);
            aVar.d("Alg.Alias.KeyGenerator.OID." + ((Object) c14549x), str);
        }
    }

    public void e(Tj.a aVar, String str, String str2, C14549x c14549x) {
        aVar.d("KeyPairGenerator." + str, str2);
        if (c14549x != null) {
            aVar.d("Alg.Alias.KeyPairGenerator." + ((Object) c14549x), str);
            aVar.d("Alg.Alias.KeyPairGenerator.OID." + ((Object) c14549x), str);
        }
    }

    public void f(Tj.a aVar, String str, String str2, String str3) {
        g(aVar, str, str2, str3, null);
    }

    public void g(Tj.a aVar, String str, String str2, String str3, C14549x c14549x) {
        String str4 = str + "WITH" + str2;
        String str5 = str + "with" + str2;
        String str6 = str + "With" + str2;
        aVar.d("Signature." + str4, str3);
        aVar.d("Alg.Alias.Signature." + str5, str4);
        aVar.d("Alg.Alias.Signature." + str6, str4);
        aVar.d("Alg.Alias.Signature." + (str + "/" + str2), str4);
        if (c14549x != null) {
            aVar.d("Alg.Alias.Signature." + ((Object) c14549x), str4);
            aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x), str4);
        }
    }

    public void h(Tj.a aVar, String str, String str2, String str3, C14549x c14549x, Map<String, String> map) {
        String str4 = str + "WITH" + str2;
        String str5 = str + "with" + str2;
        String str6 = str + "With" + str2;
        aVar.d("Signature." + str4, str3);
        aVar.d("Alg.Alias.Signature." + str5, str4);
        aVar.d("Alg.Alias.Signature." + str6, str4);
        aVar.d("Alg.Alias.Signature." + (str + "/" + str2), str4);
        if (c14549x != null) {
            aVar.d("Alg.Alias.Signature." + ((Object) c14549x), str4);
            aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x), str4);
        }
        aVar.h("Signature." + str4, map);
    }

    public void i(Tj.a aVar, String str, String str2, C14549x c14549x) {
        aVar.d("Signature." + str, str2);
        aVar.d("Alg.Alias.Signature." + ((Object) c14549x), str);
        aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x), str);
    }

    public void j(Tj.a aVar, String str, C14549x c14549x) {
        aVar.d("Alg.Alias.Signature." + ((Object) c14549x), str);
        aVar.d("Alg.Alias.Signature.OID." + ((Object) c14549x), str);
    }

    public void k(Tj.a aVar, C14549x c14549x, String str, InterfaceC3897c interfaceC3897c) {
        aVar.d("Alg.Alias.KeyFactory." + ((Object) c14549x), str);
        aVar.d("Alg.Alias.KeyFactory.OID." + ((Object) c14549x), str);
        aVar.c(c14549x, interfaceC3897c);
    }

    public void l(Tj.a aVar, C14549x c14549x, String str, InterfaceC3897c interfaceC3897c) {
        aVar.d("Alg.Alias.KeyFactory." + ((Object) c14549x), str);
        aVar.d("Alg.Alias.KeyPairGenerator." + ((Object) c14549x), str);
        aVar.c(c14549x, interfaceC3897c);
    }

    public void m(Tj.a aVar, C14549x c14549x, String str) {
        aVar.d("Alg.Alias.AlgorithmParameterGenerator." + ((Object) c14549x), str);
        aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) c14549x), str);
    }

    public void n(Tj.a aVar, C14549x c14549x, String str) {
        aVar.d("Alg.Alias.AlgorithmParameters." + ((Object) c14549x), str);
    }
}
