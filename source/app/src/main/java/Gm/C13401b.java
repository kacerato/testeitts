package gm;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.util.io.pem.PemGenerationException;

public class C13401b implements InterfaceC13402c {

    public static final List f90120d = Collections.unmodifiableList(new ArrayList());

    public String f90121a;

    public List f90122b;

    public byte[] f90123c;

    public C13401b(String str, List list, byte[] bArr) {
        this.f90121a = str;
        this.f90122b = Collections.unmodifiableList(list);
        this.f90123c = bArr;
    }

    @Override
    public C13401b a() throws PemGenerationException {
        return this;
    }

    public byte[] b() {
        return this.f90123c;
    }

    public List c() {
        return this.f90122b;
    }

    public String d() {
        return this.f90121a;
    }

    public C13401b(String str, byte[] bArr) {
        this(str, f90120d, bArr);
    }
}
