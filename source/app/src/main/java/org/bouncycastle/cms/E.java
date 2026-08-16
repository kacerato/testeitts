package org.bouncycastle.cms;

import hi.C13486b;
import java.io.IOException;
import oh.InterfaceC14520i;

public class E {

    public static class a extends N0 {
        public a(N0 n02) {
            super(n02);
        }

        @Override
        public byte[] i() throws IOException {
            return this.f100572l.s(InterfaceC14520i.f98893b);
        }
    }

    public static class b extends N0 {
        public b(N0 n02, C13486b c13486b) {
            super(n02, B(n02.f100569i, c13486b));
        }

        public static uh.Y B(uh.Y y10, C13486b c13486b) {
            return new uh.Y(y10.A(), y10.v(), y10.u(), c13486b, y10.y(), y10.B());
        }
    }

    public static N0 a(N0 n02) {
        return new a(n02);
    }

    public static N0 b(N0 n02, C13486b c13486b) {
        return new b(n02, c13486b);
    }
}
