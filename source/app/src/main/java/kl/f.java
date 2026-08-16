package kl;

import java.io.DataInputStream;
import java.io.IOException;
import java.util.zip.GZIPInputStream;

public class f extends AbstractC13998c {
    public f() {
        try {
            DataInputStream dataInputStream = new DataInputStream(new GZIPInputStream(AbstractC13998c.class.getResourceAsStream("lowmcL5.bin.properties")));
            this.f95386a = AbstractC13998c.h(dataInputStream);
            this.f95387b = AbstractC13998c.h(dataInputStream);
            this.f95388c = AbstractC13998c.h(dataInputStream);
            this.f95392g = AbstractC13998c.h(dataInputStream);
            this.f95393h = AbstractC13998c.h(dataInputStream);
            this.f95394i = AbstractC13998c.h(dataInputStream);
            this.f95395j = AbstractC13998c.h(dataInputStream);
            this.f95396k = AbstractC13998c.h(dataInputStream);
            this.f95389d = new C13996a(38, 256, 8, this.f95386a);
            this.f95390e = new C13996a(39, 256, 8, this.f95388c);
            this.f95391f = new C13996a(38, 1, 8, this.f95387b);
            this.f95397l = new C13996a(4, 255, 8, this.f95392g);
            this.f95398m = new C13996a(4, 255, 8, this.f95395j);
            this.f95399n = new C13996a(5, 255, 8, this.f95393h);
            this.f95400o = new C13996a(1, 255, 8, this.f95394i);
            this.f95401p = new C13996a(4, 1, 8, this.f95396k);
        } catch (IOException e10) {
            throw org.bouncycastle.util.h.b("unable to load Picnic properties: " + e10.getMessage(), e10);
        }
    }
}
