package ij;

import ij.s;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.Map;

public class k {

    public final String f92321a;

    public final URL f92322b;

    public s.a f92323c;

    public final byte[] f92324d;

    public final j f92325e;

    public final InterfaceC13752g f92326f;

    public final p f92327g;

    public k(String str, URL url, byte[] bArr, j jVar, p pVar, s.a aVar, InterfaceC13752g interfaceC13752g) {
        new s.a();
        this.f92321a = str;
        this.f92322b = url;
        this.f92324d = bArr;
        this.f92325e = jVar;
        this.f92327g = pVar;
        this.f92323c = aVar;
        this.f92326f = interfaceC13752g;
    }

    public InterfaceC13752g a() {
        return this.f92326f;
    }

    public Map<String, String[]> b() {
        return (Map) this.f92323c.clone();
    }

    public j c() {
        return this.f92325e;
    }

    public p d() {
        return this.f92327g;
    }

    public String e() {
        return this.f92321a;
    }

    public URL f() {
        return this.f92322b;
    }

    public void g(OutputStream outputStream) throws IOException {
        byte[] bArr = this.f92324d;
        if (bArr != null) {
            outputStream.write(bArr);
        }
    }
}
