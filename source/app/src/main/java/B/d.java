package B;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

public class d {

    public static final String f1078e = "GifHeaderParser";

    public static final int f1079f = 255;

    public static final int f1080g = 44;

    public static final int f1081h = 33;

    public static final int f1082i = 59;

    public static final int f1083j = 249;

    public static final int f1084k = 255;

    public static final int f1085l = 254;

    public static final int f1086m = 1;

    public static final int f1087n = 28;

    public static final int f1088o = 2;

    public static final int f1089p = 1;

    public static final int f1090q = 128;

    public static final int f1091r = 64;

    public static final int f1092s = 7;

    public static final int f1093t = 128;

    public static final int f1094u = 7;

    public static final int f1095v = 2;

    public static final int f1096w = 10;

    public static final int f1097x = 256;

    public ByteBuffer f1099b;

    public c f1100c;

    public final byte[] f1098a = new byte[256];

    public int f1101d = 0;

    public void a() {
        this.f1099b = null;
        this.f1100c = null;
    }

    public final boolean b() {
        return this.f1100c.f1066b != 0;
    }

    public boolean c() {
        l();
        if (!b()) {
            j(2);
        }
        return this.f1100c.f1067c > 1;
    }

    @NonNull
    public c d() {
        if (this.f1099b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (b()) {
            return this.f1100c;
        }
        l();
        if (!b()) {
            i();
            c cVar = this.f1100c;
            if (cVar.f1067c < 0) {
                cVar.f1066b = 1;
            }
        }
        return this.f1100c;
    }

    public final int e() {
        try {
            return this.f1099b.get() & 255;
        } catch (Exception unused) {
            this.f1100c.f1066b = 1;
            return 0;
        }
    }

    public final void f() {
        this.f1100c.f1068d.f1052a = o();
        this.f1100c.f1068d.f1053b = o();
        this.f1100c.f1068d.f1054c = o();
        this.f1100c.f1068d.f1055d = o();
        int e10 = e();
        boolean z10 = (e10 & 128) != 0;
        int pow = (int) Math.pow(2.0d, (e10 & 7) + 1);
        b bVar = this.f1100c.f1068d;
        bVar.f1056e = (e10 & 64) != 0;
        if (z10) {
            bVar.f1062k = h(pow);
        } else {
            bVar.f1062k = null;
        }
        this.f1100c.f1068d.f1061j = this.f1099b.position();
        t();
        if (b()) {
            return;
        }
        c cVar = this.f1100c;
        cVar.f1067c++;
        cVar.f1069e.add(cVar.f1068d);
    }

    public final void g() {
        int e10 = e();
        this.f1101d = e10;
        if (e10 <= 0) {
            return;
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                i11 = this.f1101d;
                if (i10 >= i11) {
                    return;
                }
                i11 -= i10;
                this.f1099b.get(this.f1098a, i10, i11);
                i10 += i11;
            } catch (Exception e11) {
                if (Log.isLoggable(f1078e, 3)) {
                    Log.d(f1078e, "Error Reading Block n: " + i10 + " count: " + i11 + " blockSize: " + this.f1101d, e11);
                }
                this.f1100c.f1066b = 1;
                return;
            }
        }
    }

    @Nullable
    public final int[] h(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.f1099b.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = bArr[i12] & 255;
                int i14 = i12 + 2;
                int i15 = bArr[i12 + 1] & 255;
                i12 += 3;
                int i16 = i11 + 1;
                iArr[i11] = (i15 << 8) | (i13 << 16) | (-16777216) | (bArr[i14] & 255);
                i11 = i16;
            }
        } catch (BufferUnderflowException e10) {
            if (Log.isLoggable(f1078e, 3)) {
                Log.d(f1078e, "Format Error Reading Color Table", e10);
            }
            this.f1100c.f1066b = 1;
        }
        return iArr;
    }

    public final void i() {
        j(Integer.MAX_VALUE);
    }

    public final void j(int i10) {
        boolean z10 = false;
        while (!z10 && !b() && this.f1100c.f1067c <= i10) {
            int e10 = e();
            if (e10 == 33) {
                int e11 = e();
                if (e11 == 1) {
                    s();
                } else if (e11 == 249) {
                    this.f1100c.f1068d = new b();
                    k();
                } else if (e11 == 254) {
                    s();
                } else if (e11 != 255) {
                    s();
                } else {
                    g();
                    StringBuilder sb2 = new StringBuilder();
                    for (int i11 = 0; i11 < 11; i11++) {
                        sb2.append((char) this.f1098a[i11]);
                    }
                    if (sb2.toString().equals("NETSCAPE2.0")) {
                        n();
                    } else {
                        s();
                    }
                }
            } else if (e10 == 44) {
                c cVar = this.f1100c;
                if (cVar.f1068d == null) {
                    cVar.f1068d = new b();
                }
                f();
            } else if (e10 != 59) {
                this.f1100c.f1066b = 1;
            } else {
                z10 = true;
            }
        }
    }

    public final void k() {
        e();
        int e10 = e();
        b bVar = this.f1100c.f1068d;
        int i10 = (e10 & 28) >> 2;
        bVar.f1058g = i10;
        if (i10 == 0) {
            bVar.f1058g = 1;
        }
        bVar.f1057f = (e10 & 1) != 0;
        int o10 = o();
        if (o10 < 2) {
            o10 = 10;
        }
        b bVar2 = this.f1100c.f1068d;
        bVar2.f1060i = o10 * 10;
        bVar2.f1059h = e();
        e();
    }

    public final void l() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < 6; i10++) {
            sb2.append((char) e());
        }
        if (!sb2.toString().startsWith("GIF")) {
            this.f1100c.f1066b = 1;
            return;
        }
        m();
        if (!this.f1100c.f1072h || b()) {
            return;
        }
        c cVar = this.f1100c;
        cVar.f1065a = h(cVar.f1073i);
        c cVar2 = this.f1100c;
        cVar2.f1076l = cVar2.f1065a[cVar2.f1074j];
    }

    public final void m() {
        this.f1100c.f1070f = o();
        this.f1100c.f1071g = o();
        int e10 = e();
        c cVar = this.f1100c;
        cVar.f1072h = (e10 & 128) != 0;
        cVar.f1073i = (int) Math.pow(2.0d, (e10 & 7) + 1);
        this.f1100c.f1074j = e();
        this.f1100c.f1075k = e();
    }

    public final void n() {
        do {
            g();
            byte[] bArr = this.f1098a;
            if (bArr[0] == 1) {
                this.f1100c.f1077m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.f1101d <= 0) {
                return;
            }
        } while (!b());
    }

    public final int o() {
        return this.f1099b.getShort();
    }

    public final void p() {
        this.f1099b = null;
        Arrays.fill(this.f1098a, (byte) 0);
        this.f1100c = new c();
        this.f1101d = 0;
    }

    public d q(@NonNull ByteBuffer byteBuffer) {
        p();
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f1099b = asReadOnlyBuffer;
        asReadOnlyBuffer.position(0);
        this.f1099b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public d r(@Nullable byte[] bArr) {
        if (bArr != null) {
            q(ByteBuffer.wrap(bArr));
        } else {
            this.f1099b = null;
            this.f1100c.f1066b = 2;
        }
        return this;
    }

    public final void s() {
        int e10;
        do {
            e10 = e();
            this.f1099b.position(Math.min(this.f1099b.position() + e10, this.f1099b.limit()));
        } while (e10 > 0);
    }

    public final void t() {
        e();
        s();
    }
}
