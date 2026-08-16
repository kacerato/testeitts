package org.bouncycastle.crypto.util;

import hi.C13486b;
import java.security.SecureRandom;
import nj.C14452a;
import nj.C14454c;
import oh.A0;
import oh.C0;
import oh.C14549x;
import wj.InterfaceC16012a;
import yj.C16196a;

public class a {

    public static final C14549x f101043a = new C14549x("1.3.6.1.4.1.188.7.1.1.2").M();

    public static final C14549x f101044b = new C14549x("1.2.840.113533.7.66.10").M();

    public static final short[] f101045c = {189, 86, 234, 242, 162, 241, 172, 42, 176, 147, 209, 156, 27, 51, 253, 208, 48, 4, 182, 220, 125, 223, 50, 75, 247, 203, 69, 155, 49, 187, 33, 90, 65, 159, 225, 217, 74, 77, 158, 218, 160, 104, 44, 195, 39, 95, 128, 54, 62, 238, 251, 149, 26, 254, 206, 168, 52, 169, 19, 240, 166, 63, 216, 12, 120, 36, 175, 35, 82, 193, 103, 23, 245, 102, 144, 231, 232, 7, 184, 96, 72, 230, 30, 83, 243, 146, 164, 114, 140, 8, 21, 110, 134, 0, 132, 250, 244, 127, 138, 66, 25, 246, 219, 205, 20, 141, 80, 18, 186, 60, 6, 78, 236, 179, 53, 17, 161, 136, 142, 43, 148, 153, 183, 113, 116, 211, 228, 191, 58, 222, 150, 14, 188, 10, 237, 119, 252, 55, 107, 3, 121, 137, 98, 198, 215, 192, 210, 124, 106, 139, 34, 163, 91, 5, 93, 2, 117, 213, 97, 227, 24, 143, 85, 81, 173, 31, 11, 94, 133, 229, 194, 87, 99, 202, 61, 108, 180, 197, 204, 112, 178, 145, 89, 13, 71, 32, 200, 79, 88, 224, 1, 226, 22, 56, 196, 111, 59, 15, 101, 70, 190, 126, 45, 123, 130, 249, 64, 181, 29, 115, 248, 235, 38, 199, 135, 151, 37, 84, 177, 40, 170, 152, 157, 165, 100, 109, 122, 212, 16, 129, 68, 239, 73, 214, 174, 46, 221, 118, 92, 47, 167, 28, 201, 9, 105, 154, 131, 207, 41, 57, 185, 233, 76, 255, 67, 171};

    public static C13486b a(C14549x c14549x, int i10, SecureRandom secureRandom) throws IllegalArgumentException {
        if (c14549x.A(Sh.d.f23373y) || c14549x.A(Sh.d.f23314H) || c14549x.A(Sh.d.f23323Q) || c14549x.A(Aj.a.f827a) || c14549x.A(Aj.a.f828b) || c14549x.A(Aj.a.f829c) || c14549x.A(InterfaceC16012a.f127584a)) {
            byte[] bArr = new byte[16];
            secureRandom.nextBytes(bArr);
            return new C13486b(c14549x, new C0(bArr));
        }
        if (c14549x.A(Sh.d.f23309C) || c14549x.A(Sh.d.f23318L) || c14549x.A(Sh.d.f23327U)) {
            byte[] bArr2 = new byte[12];
            secureRandom.nextBytes(bArr2);
            return new C13486b(c14549x, new C14454c(bArr2, 16));
        }
        if (c14549x.A(Sh.d.f23310D) || c14549x.A(Sh.d.f23319M) || c14549x.A(Sh.d.f23328V)) {
            byte[] bArr3 = new byte[8];
            secureRandom.nextBytes(bArr3);
            return new C13486b(c14549x, new C14452a(bArr3, 16));
        }
        if (c14549x.A(Xh.t.f29123n1) || c14549x.A(f101043a) || c14549x.A(Bj.b.f1907e)) {
            byte[] bArr4 = new byte[8];
            secureRandom.nextBytes(bArr4);
            return new C13486b(c14549x, new C0(bArr4));
        }
        if (c14549x.A(f101044b)) {
            byte[] bArr5 = new byte[8];
            secureRandom.nextBytes(bArr5);
            return new C13486b(c14549x, new C16196a(bArr5, i10));
        }
        if (c14549x.A(Xh.t.f29129p1)) {
            return new C13486b(c14549x, A0.f98776c);
        }
        if (!c14549x.A(Xh.t.f29126o1)) {
            throw new IllegalArgumentException("unable to match algorithm");
        }
        byte[] bArr6 = new byte[8];
        secureRandom.nextBytes(bArr6);
        return new C13486b(c14549x, new Xh.w(f101045c[128], bArr6));
    }
}
