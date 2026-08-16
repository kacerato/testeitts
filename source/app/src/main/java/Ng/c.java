package Ng;

import Tg.C3089c;
import Tg.p;
import Tg.y;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import qe.C15075d;

public final class c {

    public static final int f16178a = 15;

    public static final int f16179b = 31;

    public static final int f16180c = 63;

    public static final int f16181d = 127;

    public static final Ng.b[] f16182e;

    public static final Map<Tg.f, Integer> f16183f;

    public static final class a {

        public final List<Ng.b> f16184a;

        public final Tg.e f16185b;

        public final int f16186c;

        public int f16187d;

        public Ng.b[] f16188e;

        public int f16189f;

        public int f16190g;

        public int f16191h;

        public a(int i10, y yVar) {
            this(i10, i10, yVar);
        }

        public final void a() {
            int i10 = this.f16187d;
            int i11 = this.f16191h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    d(i11 - i10);
                }
            }
        }

        public final void b() {
            Arrays.fill(this.f16188e, (Object) null);
            this.f16189f = this.f16188e.length - 1;
            this.f16190g = 0;
            this.f16191h = 0;
        }

        public final int c(int i10) {
            return this.f16189f + 1 + i10;
        }

        public final int d(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f16188e.length;
                while (true) {
                    length--;
                    i11 = this.f16189f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f16188e[length].f16177c;
                    i10 -= i13;
                    this.f16191h -= i13;
                    this.f16190g--;
                    i12++;
                }
                Ng.b[] bVarArr = this.f16188e;
                System.arraycopy(bVarArr, i11 + 1, bVarArr, i11 + 1 + i12, this.f16190g);
                this.f16189f += i12;
            }
            return i12;
        }

        public List<Ng.b> e() {
            ArrayList arrayList = new ArrayList(this.f16184a);
            this.f16184a.clear();
            return arrayList;
        }

        public final Tg.f f(int i10) throws IOException {
            if (h(i10)) {
                return c.f16182e[i10].f16175a;
            }
            int c10 = c(i10 - c.f16182e.length);
            if (c10 >= 0) {
                Ng.b[] bVarArr = this.f16188e;
                if (c10 < bVarArr.length) {
                    return bVarArr[c10].f16175a;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        public final void g(int i10, Ng.b bVar) {
            this.f16184a.add(bVar);
            int i11 = bVar.f16177c;
            if (i10 != -1) {
                i11 -= this.f16188e[c(i10)].f16177c;
            }
            int i12 = this.f16187d;
            if (i11 > i12) {
                b();
                return;
            }
            int d10 = d((this.f16191h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f16190g + 1;
                Ng.b[] bVarArr = this.f16188e;
                if (i13 > bVarArr.length) {
                    Ng.b[] bVarArr2 = new Ng.b[bVarArr.length * 2];
                    System.arraycopy(bVarArr, 0, bVarArr2, bVarArr.length, bVarArr.length);
                    this.f16189f = this.f16188e.length - 1;
                    this.f16188e = bVarArr2;
                }
                int i14 = this.f16189f;
                this.f16189f = i14 - 1;
                this.f16188e[i14] = bVar;
                this.f16190g++;
            } else {
                this.f16188e[i10 + c(i10) + d10] = bVar;
            }
            this.f16191h += i11;
        }

        public final boolean h(int i10) {
            return i10 >= 0 && i10 <= c.f16182e.length - 1;
        }

        public int i() {
            return this.f16187d;
        }

        public final int j() throws IOException {
            return this.f16185b.readByte() & 255;
        }

        public Tg.f k() throws IOException {
            int j10 = j();
            boolean z10 = (j10 & 128) == 128;
            int n10 = n(j10, 127);
            return z10 ? Tg.f.J(j.f().c(this.f16185b.M1(n10))) : this.f16185b.x1(n10);
        }

        public void l() throws IOException {
            while (!this.f16185b.b2()) {
                byte readByte = this.f16185b.readByte();
                int i10 = readByte & 255;
                if (i10 == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & 128) == 128) {
                    m(n(i10, 127) - 1);
                } else if (i10 == 64) {
                    p();
                } else if ((readByte & 64) == 64) {
                    o(n(i10, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int n10 = n(i10, 31);
                    this.f16187d = n10;
                    if (n10 < 0 || n10 > this.f16186c) {
                        throw new IOException("Invalid dynamic table size update " + this.f16187d);
                    }
                    a();
                } else if (i10 == 16 || i10 == 0) {
                    r();
                } else {
                    q(n(i10, 15) - 1);
                }
            }
        }

        public final void m(int i10) throws IOException {
            if (h(i10)) {
                this.f16184a.add(c.f16182e[i10]);
                return;
            }
            int c10 = c(i10 - c.f16182e.length);
            if (c10 >= 0) {
                Ng.b[] bVarArr = this.f16188e;
                if (c10 < bVarArr.length) {
                    this.f16184a.add(bVarArr[c10]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        public int n(int i10, int i11) throws IOException {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int j10 = j();
                if ((j10 & 128) == 0) {
                    return i11 + (j10 << i13);
                }
                i11 += (j10 & 127) << i13;
                i13 += 7;
            }
        }

        public final void o(int i10) throws IOException {
            g(-1, new Ng.b(f(i10), k()));
        }

        public final void p() throws IOException {
            g(-1, new Ng.b(c.a(k()), k()));
        }

        public final void q(int i10) throws IOException {
            this.f16184a.add(new Ng.b(f(i10), k()));
        }

        public final void r() throws IOException {
            this.f16184a.add(new Ng.b(c.a(k()), k()));
        }

        public a(int i10, int i11, y yVar) {
            this.f16184a = new ArrayList();
            this.f16188e = new Ng.b[8];
            this.f16189f = r0.length - 1;
            this.f16190g = 0;
            this.f16191h = 0;
            this.f16186c = i10;
            this.f16187d = i11;
            this.f16185b = p.d(yVar);
        }
    }

    public static final class b {

        public static final int f16192k = 4096;

        public static final int f16193l = 16384;

        public final C3089c f16194a;

        public final boolean f16195b;

        public int f16196c;

        public boolean f16197d;

        public int f16198e;

        public int f16199f;

        public Ng.b[] f16200g;

        public int f16201h;

        public int f16202i;

        public int f16203j;

        public b(C3089c c3089c) {
            this(4096, true, c3089c);
        }

        public final void a() {
            int i10 = this.f16199f;
            int i11 = this.f16203j;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    c(i11 - i10);
                }
            }
        }

        public final void b() {
            Arrays.fill(this.f16200g, (Object) null);
            this.f16201h = this.f16200g.length - 1;
            this.f16202i = 0;
            this.f16203j = 0;
        }

        public final int c(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f16200g.length;
                while (true) {
                    length--;
                    i11 = this.f16201h;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f16200g[length].f16177c;
                    i10 -= i13;
                    this.f16203j -= i13;
                    this.f16202i--;
                    i12++;
                }
                Ng.b[] bVarArr = this.f16200g;
                System.arraycopy(bVarArr, i11 + 1, bVarArr, i11 + 1 + i12, this.f16202i);
                Ng.b[] bVarArr2 = this.f16200g;
                int i14 = this.f16201h;
                Arrays.fill(bVarArr2, i14 + 1, i14 + 1 + i12, (Object) null);
                this.f16201h += i12;
            }
            return i12;
        }

        public final void d(Ng.b bVar) {
            int i10 = bVar.f16177c;
            int i11 = this.f16199f;
            if (i10 > i11) {
                b();
                return;
            }
            c((this.f16203j + i10) - i11);
            int i12 = this.f16202i + 1;
            Ng.b[] bVarArr = this.f16200g;
            if (i12 > bVarArr.length) {
                Ng.b[] bVarArr2 = new Ng.b[bVarArr.length * 2];
                System.arraycopy(bVarArr, 0, bVarArr2, bVarArr.length, bVarArr.length);
                this.f16201h = this.f16200g.length - 1;
                this.f16200g = bVarArr2;
            }
            int i13 = this.f16201h;
            this.f16201h = i13 - 1;
            this.f16200g[i13] = bVar;
            this.f16202i++;
            this.f16203j += i10;
        }

        public void e(int i10) {
            this.f16198e = i10;
            int min = Math.min(i10, 16384);
            int i11 = this.f16199f;
            if (i11 == min) {
                return;
            }
            if (min < i11) {
                this.f16196c = Math.min(this.f16196c, min);
            }
            this.f16197d = true;
            this.f16199f = min;
            a();
        }

        public void f(Tg.f fVar) throws IOException {
            if (!this.f16195b || j.f().e(fVar) >= fVar.S()) {
                h(fVar.S(), 127, 0);
                this.f16194a.D(fVar);
                return;
            }
            C3089c c3089c = new C3089c();
            j.f().d(fVar, c3089c);
            Tg.f C12 = c3089c.C1();
            h(C12.S(), 127, 128);
            this.f16194a.D(C12);
        }

        public void g(List<Ng.b> list) throws IOException {
            int i10;
            int i11;
            if (this.f16197d) {
                int i12 = this.f16196c;
                if (i12 < this.f16199f) {
                    h(i12, 31, 32);
                }
                this.f16197d = false;
                this.f16196c = Integer.MAX_VALUE;
                h(this.f16199f, 31, 32);
            }
            int size = list.size();
            for (int i13 = 0; i13 < size; i13++) {
                Ng.b bVar = list.get(i13);
                Tg.f Y10 = bVar.f16175a.Y();
                Tg.f fVar = bVar.f16176b;
                Integer num = c.f16183f.get(Y10);
                if (num != null) {
                    int intValue = num.intValue();
                    i11 = intValue + 1;
                    if (i11 > 1 && i11 < 8) {
                        Ng.b[] bVarArr = c.f16182e;
                        if (Gg.c.r(bVarArr[intValue].f16176b, fVar)) {
                            i10 = i11;
                        } else if (Gg.c.r(bVarArr[i11].f16176b, fVar)) {
                            i11 = intValue + 2;
                            i10 = i11;
                        }
                    }
                    i10 = i11;
                    i11 = -1;
                } else {
                    i10 = -1;
                    i11 = -1;
                }
                if (i11 == -1) {
                    int i14 = this.f16201h + 1;
                    int length = this.f16200g.length;
                    while (true) {
                        if (i14 >= length) {
                            break;
                        }
                        if (Gg.c.r(this.f16200g[i14].f16175a, Y10)) {
                            if (Gg.c.r(this.f16200g[i14].f16176b, fVar)) {
                                i11 = (i14 - this.f16201h) + c.f16182e.length;
                                break;
                            } else if (i10 == -1) {
                                i10 = (i14 - this.f16201h) + c.f16182e.length;
                            }
                        }
                        i14++;
                    }
                }
                if (i11 != -1) {
                    h(i11, 127, 128);
                } else if (i10 == -1) {
                    this.f16194a.writeByte(64);
                    f(Y10);
                    f(fVar);
                    d(bVar);
                } else if (!Y10.T(Ng.b.f16164d) || Ng.b.f16174n.equals(Y10)) {
                    h(i10, 63, 64);
                    f(fVar);
                    d(bVar);
                } else {
                    h(i10, 15, 0);
                    f(fVar);
                }
            }
        }

        public void h(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f16194a.writeByte(i10 | i12);
                return;
            }
            this.f16194a.writeByte(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f16194a.writeByte(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.f16194a.writeByte(i13);
        }

        public b(int i10, boolean z10, C3089c c3089c) {
            this.f16196c = Integer.MAX_VALUE;
            this.f16200g = new Ng.b[8];
            this.f16201h = r0.length - 1;
            this.f16202i = 0;
            this.f16203j = 0;
            this.f16198e = i10;
            this.f16199f = i10;
            this.f16195b = z10;
            this.f16194a = c3089c;
        }
    }

    static {
        Ng.b bVar = new Ng.b(Ng.b.f16174n, "");
        Tg.f fVar = Ng.b.f16171k;
        Ng.b bVar2 = new Ng.b(fVar, FetchCoreUtils.GET_REQUEST_METHOD);
        Ng.b bVar3 = new Ng.b(fVar, "POST");
        Tg.f fVar2 = Ng.b.f16172l;
        Ng.b bVar4 = new Ng.b(fVar2, "/");
        Ng.b bVar5 = new Ng.b(fVar2, "/index.html");
        Tg.f fVar3 = Ng.b.f16173m;
        Ng.b bVar6 = new Ng.b(fVar3, "http");
        Ng.b bVar7 = new Ng.b(fVar3, C15075d.f106134a);
        Tg.f fVar4 = Ng.b.f16170j;
        f16182e = new Ng.b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, new Ng.b(fVar4, "200"), new Ng.b(fVar4, "204"), new Ng.b(fVar4, "206"), new Ng.b(fVar4, "304"), new Ng.b(fVar4, "400"), new Ng.b(fVar4, "404"), new Ng.b(fVar4, "500"), new Ng.b("accept-charset", ""), new Ng.b("accept-encoding", "gzip, deflate"), new Ng.b("accept-language", ""), new Ng.b(FetchCoreUtils.HEADER_ACCEPT_RANGE_LEGACY, ""), new Ng.b("accept", ""), new Ng.b("access-control-allow-origin", ""), new Ng.b("age", ""), new Ng.b("allow", ""), new Ng.b("authorization", ""), new Ng.b("cache-control", ""), new Ng.b("content-disposition", ""), new Ng.b("content-encoding", ""), new Ng.b("content-language", ""), new Ng.b("content-length", ""), new Ng.b("content-location", ""), new Ng.b(FetchCoreUtils.HEADER_CONTENT_RANGE_LEGACY, ""), new Ng.b("content-type", ""), new Ng.b("cookie", ""), new Ng.b("date", ""), new Ng.b("etag", ""), new Ng.b("expect", ""), new Ng.b("expires", ""), new Ng.b(TypedValues.TransitionType.S_FROM, ""), new Ng.b(e.f16228h, ""), new Ng.b("if-match", ""), new Ng.b("if-modified-since", ""), new Ng.b("if-none-match", ""), new Ng.b("if-range", ""), new Ng.b("if-unmodified-since", ""), new Ng.b("last-modified", ""), new Ng.b("link", ""), new Ng.b("location", ""), new Ng.b("max-forwards", ""), new Ng.b("proxy-authenticate", ""), new Ng.b("proxy-authorization", ""), new Ng.b("range", ""), new Ng.b("referer", ""), new Ng.b("refresh", ""), new Ng.b("retry-after", ""), new Ng.b(Telephony.Carriers.SERVER, ""), new Ng.b("set-cookie", ""), new Ng.b("strict-transport-security", ""), new Ng.b("transfer-encoding", ""), new Ng.b("user-agent", ""), new Ng.b("vary", ""), new Ng.b("via", ""), new Ng.b("www-authenticate", "")};
        f16183f = b();
    }

    public static Tg.f a(Tg.f fVar) throws IOException {
        int S10 = fVar.S();
        for (int i10 = 0; i10 < S10; i10++) {
            byte r10 = fVar.r(i10);
            if (r10 >= 65 && r10 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.b0());
            }
        }
        return fVar;
    }

    public static Map<Tg.f, Integer> b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f16182e.length);
        int i10 = 0;
        while (true) {
            Ng.b[] bVarArr = f16182e;
            if (i10 >= bVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(bVarArr[i10].f16175a)) {
                linkedHashMap.put(bVarArr[i10].f16175a, Integer.valueOf(i10));
            }
            i10++;
        }
    }
}
