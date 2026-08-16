package com.android.tools.r8.graph;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.G;
import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10045w9;
import com.android.tools.r8.internal.C10106wa;
import com.android.tools.r8.internal.C10127wh;
import com.android.tools.r8.internal.C10212x9;
import com.android.tools.r8.internal.C10273xa;
import com.android.tools.r8.internal.C10443yb;
import com.android.tools.r8.internal.C10546z9;
import com.android.tools.r8.internal.C10607za;
import com.android.tools.r8.internal.C4866Ah;
import com.android.tools.r8.internal.C4904Ba;
import com.android.tools.r8.internal.C4907Bb;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C4965Cb;
import com.android.tools.r8.internal.C5023Db;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C5541Ma;
import com.android.tools.r8.internal.C5829Qz;
import com.android.tools.r8.internal.C6440ab;
import com.android.tools.r8.internal.C6607bb;
import com.android.tools.r8.internal.C7028e40;
import com.android.tools.r8.internal.C7167ev0;
import com.android.tools.r8.internal.C7437ga;
import com.android.tools.r8.internal.C7501gv0;
import com.android.tools.r8.internal.C7604ha;
import com.android.tools.r8.internal.C7710i9;
import com.android.tools.r8.internal.C7771ia;
import com.android.tools.r8.internal.C8103ka;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8938pa;
import com.android.tools.r8.internal.C9044q9;
import com.android.tools.r8.internal.C9271ra;
import com.android.tools.r8.internal.C9438sa;
import com.android.tools.r8.internal.C9544t9;
import com.android.tools.r8.internal.C9605ta;
import com.android.tools.r8.internal.C9663tt0;
import com.android.tools.r8.internal.C9708u8;
import com.android.tools.r8.internal.C9711u9;
import com.android.tools.r8.internal.C9878v9;
import com.android.tools.r8.internal.C9939va;
import com.android.tools.r8.internal.CH;
import com.android.tools.r8.internal.DX;
import com.android.tools.r8.internal.EF;
import com.android.tools.r8.internal.EnumC5477Kw0;
import com.android.tools.r8.internal.G9;
import com.android.tools.r8.internal.InterfaceC7896jG;
import com.android.tools.r8.internal.InterfaceC8008jy;
import com.android.tools.r8.internal.InterfaceC9861v30;
import com.android.tools.r8.internal.NB;
import com.android.tools.r8.internal.S60;
import com.android.tools.r8.internal.XQ;
import com.android.tools.r8.internal.XX;
import com.android.tools.r8.internal.YV;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.position.TextPosition;
import com.android.tools.r8.position.TextRange;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.function.Function;
import java.util.function.Supplier;
import org.objectweb.asm.Opcodes;

public final class C4708t4 extends DX {

    public static final boolean f37760w = true;

    public final C4482h4 f37761c;

    public final C4724u1 f37762d;

    public final C4652q4 f37763e;

    public int f37764f;

    public int f37765g;

    public boolean f37766h;

    public ArrayList f37767i;

    public ArrayList f37768j;

    public ArrayList f37769k;

    public final HashMap f37770l;

    public C8103ka f37771m;

    public CH f37772n;

    public IdentityHashMap f37773o;

    public IdentityHashMap f37774p;

    public final C4727u4 f37775q;

    public final A2 f37776r;

    public final Origin f37777s;

    public int f37778t;

    public int f37779u;

    public final Supplier f37780v;

    public C4708t4(C4482h4 c4482h4, A2 a22, C4727u4 c4727u4, Origin origin, C4652q4 c4652q4, Supplier supplier) {
        super(Opcodes.ASM9, null);
        this.f37770l = new HashMap();
        this.f37778t = Integer.MAX_VALUE;
        this.f37779u = -1;
        this.f37763e = c4652q4;
        this.f37761c = c4482h4;
        this.f37762d = c4482h4.f37267a.f50660a;
        this.f37775q = c4727u4;
        this.f37776r = a22;
        this.f37777s = origin;
        this.f37780v = supplier;
    }

    public static C4515j0 a(C4515j0 c4515j0, C4515j0 c4515j02) {
        return c4515j0;
    }

    @Override
    public final void b() {
        this.f37764f = 0;
        this.f37765g = 0;
        this.f37767i = new ArrayList();
        this.f37768j = new ArrayList();
        this.f37769k = new ArrayList();
        this.f37771m = null;
        this.f37772n = new CH(16);
        this.f37773o = new IdentityHashMap();
        this.f37774p = new IdentityHashMap();
    }

    @Override
    public final void c() {
        Position textRange;
        Position position;
        if (this.f37767i == null) {
            if (!f37760w && (this.f37768j != null || this.f37769k != null || this.f37773o != null)) {
                throw new AssertionError();
            }
            Origin origin = this.f37777s;
            MethodReference v02 = this.f37776r.v0();
            int i10 = this.f37778t;
            if (i10 != Integer.MAX_VALUE) {
                if (i10 == this.f37779u) {
                    position = new TextPosition(0L, this.f37778t, -1);
                } else {
                    position = new TextRange(new TextPosition(0L, this.f37778t, -1), new TextPosition(0L, this.f37779u, -1));
                }
            } else {
                position = Position.UNKNOWN;
            }
            throw new C5325If(origin, MethodPosition.create(v02, position));
        }
        Iterator o10 = this.f37772n.o(0);
        while (o10.hasNext()) {
            int r10 = ((com.android.tools.r8.internal.X) o10).r();
            com.android.tools.r8.internal.W9 w92 = (com.android.tools.r8.internal.W9) this.f37767i.get(r10);
            if (!f37760w && !w92.K()) {
                throw new AssertionError();
            }
            com.android.tools.r8.internal.G9 g10 = w92.g();
            G9.a V10 = com.android.tools.r8.internal.G9.V();
            InterfaceC7896jG interfaceC7896jG = g10.f40404c;
            V10.f40407a = interfaceC7896jG;
            InterfaceC9861v30 it = interfaceC7896jG.b().iterator();
            while (it.hasNext()) {
                EF ef2 = (EF) it.next();
                InterfaceC8008jy interfaceC8008jy = (InterfaceC8008jy) ef2.getValue();
                if (interfaceC8008jy.y() && interfaceC8008jy.j() == null) {
                    C7167ev0 z10 = interfaceC8008jy.z();
                    C8103ka c8103ka = z10.f47807c;
                    C10106wa c10106wa = (C10106wa) this.f37774p.get(c8103ka);
                    if (c10106wa != null) {
                        z10 = new C7167ev0(c10106wa.getType(), c8103ka);
                    }
                    ef2.setValue(z10);
                }
            }
            for (S60 s60 : g10.f40405d) {
                if (s60.y() && s60.j() == null) {
                    C7167ev0 z11 = s60.z();
                    C8103ka c8103ka2 = z11.f47807c;
                    C10106wa c10106wa2 = (C10106wa) this.f37774p.get(c8103ka2);
                    if (c10106wa2 != null) {
                        z11 = new C7167ev0(c10106wa2.getType(), c8103ka2);
                    }
                    V10.a((S60) z11);
                } else {
                    V10.a(s60);
                }
            }
            this.f37767i.set(r10, V10.a());
        }
        C4727u4 c4727u4 = this.f37775q;
        M2 m22 = this.f37776r.f38297f;
        int i11 = this.f37766h ? Integer.MAX_VALUE : this.f37764f;
        int i12 = this.f37765g;
        ArrayList arrayList = this.f37767i;
        ArrayList arrayList2 = this.f37768j;
        ArrayList arrayList3 = this.f37769k;
        int i13 = this.f37778t;
        if (i13 == Integer.MAX_VALUE) {
            textRange = Position.UNKNOWN;
        } else if (i13 == this.f37779u) {
            textRange = new TextPosition(0L, this.f37778t, -1);
        } else {
            textRange = new TextRange(new TextPosition(0L, this.f37778t, -1), new TextPosition(0L, this.f37779u, -1));
        }
        G g11 = new G(m22, i11, i12, arrayList, arrayList2, arrayList3, textRange, C9708u8.f52785b);
        boolean z12 = C4727u4.f38271i;
        if (!z12 && c4727u4.f38274g != null) {
            throw new AssertionError();
        }
        if (!z12 && c4727u4.f38275h == null) {
            throw new AssertionError();
        }
        c4727u4.f38274g = g11;
        c4727u4.f38275h = null;
        c4727u4.f38273f = null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0004. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(int i10, int i11) {
        EnumC5477Kw0 enumC5477Kw0;
        if (i10 == 169) {
            a((com.android.tools.r8.internal.W9) new C7771ia(i11));
            return;
        }
        switch (i10) {
            case 21:
                enumC5477Kw0 = EnumC5477Kw0.f41825c;
                if (21 <= i10 || i10 > 25) {
                    a((com.android.tools.r8.internal.W9) new C10443yb(enumC5477Kw0, i11));
                    return;
                } else {
                    a((com.android.tools.r8.internal.W9) new C8938pa(enumC5477Kw0, i11));
                    return;
                }
            case 22:
                enumC5477Kw0 = EnumC5477Kw0.f41827e;
                if (21 <= i10) {
                    break;
                }
                a((com.android.tools.r8.internal.W9) new C10443yb(enumC5477Kw0, i11));
                return;
            case 23:
                enumC5477Kw0 = EnumC5477Kw0.f41826d;
                if (21 <= i10) {
                }
                a((com.android.tools.r8.internal.W9) new C10443yb(enumC5477Kw0, i11));
                return;
            case 24:
                enumC5477Kw0 = EnumC5477Kw0.f41828f;
                if (21 <= i10) {
                }
                a((com.android.tools.r8.internal.W9) new C10443yb(enumC5477Kw0, i11));
                return;
            case 25:
                enumC5477Kw0 = EnumC5477Kw0.f41824b;
                if (21 <= i10) {
                }
                a((com.android.tools.r8.internal.W9) new C10443yb(enumC5477Kw0, i11));
                return;
            default:
                switch (i10) {
                    case 54:
                        break;
                    case 55:
                        break;
                    case 56:
                        break;
                    case 57:
                        break;
                    case 58:
                        break;
                    default:
                        throw new C5417Jv0("Unexpected VarInsn opcode: " + i10);
                }
                if (21 <= i10) {
                }
                a((com.android.tools.r8.internal.W9) new C10443yb(enumC5477Kw0, i11));
                return;
        }
    }

    public final void a(com.android.tools.r8.internal.W9 w92) {
        this.f37767i.add(w92);
        if (w92.K() || (w92 instanceof C5541Ma)) {
            return;
        }
        this.f37771m = null;
    }

    @Override
    public final void a(int i10, int i11, Object[] objArr, int i12, Object[] objArr2) {
        if (!f37760w && i10 != -1) {
            throw new AssertionError();
        }
        G9.a V10 = com.android.tools.r8.internal.G9.V();
        for (int i13 = 0; i13 < i11; i13++) {
            V10.a(a(objArr[i13], V10));
        }
        V10.a(i12);
        for (int i14 = 0; i14 < i12; i14++) {
            InterfaceC8008jy a10 = a(objArr2[i14], V10);
            if (a10.D()) {
                V10.a(a10.k());
            } else {
                this.f37761c.f37267a.f50691j.warning(new StringDiagnostic("Unexpected frame with imprecise value on stack", this.f37777s));
                return;
            }
        }
        if (V10.f40409c) {
            this.f37772n.add(this.f37767i.size());
        }
        a((com.android.tools.r8.internal.W9) V10.a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C8103ka b(XQ xq) {
        return (C8103ka) this.f37773o.computeIfAbsent(xq, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4708t4.c((XQ) obj);
            }
        });
    }

    public final M2 b(Object obj) {
        if (!f37760w && (obj == null || obj == 0)) {
            throw new AssertionError();
        }
        if (obj == 1) {
            return this.f37762d.f37884J1;
        }
        if (obj == 2) {
            return this.f37762d.f37877I1;
        }
        if (obj == 4) {
            return this.f37762d.f37891K1;
        }
        if (obj == 3) {
            return this.f37762d.f37870H1;
        }
        if (obj == 5) {
            return C4724u1.f37808E6;
        }
        if (obj instanceof String) {
            return a((String) obj);
        }
        throw new C5417Jv0("Unexpected ASM type: " + obj);
    }

    public final InterfaceC8008jy a(Object obj, G9.a aVar) {
        if (obj instanceof XQ) {
            C8103ka b10 = b((XQ) obj);
            C10106wa c10106wa = (C10106wa) this.f37774p.get(b10);
            if (c10106wa != null) {
                M2 type = c10106wa.getType();
                int i10 = InterfaceC8008jy.f49436a;
                return new C7167ev0(type, b10);
            }
            aVar.f40409c = true;
            int i11 = InterfaceC8008jy.f49436a;
            return new C7167ev0(null, b10);
        }
        if (obj == 6) {
            int i12 = InterfaceC8008jy.f49436a;
            return C7501gv0.f48381c;
        }
        if (obj != null && obj != 0) {
            return InterfaceC8008jy.a(b(obj));
        }
        int i13 = InterfaceC8008jy.f49436a;
        return C7028e40.f47586c;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:1:0x0000. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static YV b(int i10) {
        switch (i10) {
            case 46:
                return YV.f45999f;
            case 47:
                return YV.f46001h;
            case 48:
                return YV.f46000g;
            case 49:
                return YV.f46002i;
            case 50:
                return YV.f45995b;
            case 51:
                return YV.f45996c;
            case 52:
                return YV.f45997d;
            case 53:
                return YV.f45998e;
            default:
                switch (i10) {
                    case 79:
                        break;
                    case 80:
                        break;
                    case 81:
                        break;
                    case 82:
                        break;
                    case 83:
                        break;
                    case 84:
                        break;
                    case 85:
                        break;
                    case 86:
                        break;
                    default:
                        throw new C5417Jv0("Unexpected array opcode " + i10);
                }
        }
    }

    public final M2 a(String str) {
        if (f37760w || str.indexOf(46) == -1) {
            return this.f37762d.d(C9663tt0.d(str).b());
        }
        throw new AssertionError();
    }

    @Override
    public final void a(int i10) {
        if (i10 == 190) {
            a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.W8());
            return;
        }
        if (i10 == 191) {
            a((com.android.tools.r8.internal.W9) new C4965Cb());
            return;
        }
        if (i10 == 194) {
            a((com.android.tools.r8.internal.W9) new C9438sa(XX.f45732b));
            return;
        }
        if (i10 != 195) {
            switch (i10) {
                case 0:
                    a((com.android.tools.r8.internal.W9) new C10607za());
                    return;
                case 1:
                    a((com.android.tools.r8.internal.W9) new C10212x9());
                    return;
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    a((com.android.tools.r8.internal.W9) new C10546z9(i10 - 3, EnumC5477Kw0.f41825c));
                    return;
                case 9:
                case 10:
                    a((com.android.tools.r8.internal.W9) new C10546z9(i10 - 9, EnumC5477Kw0.f41827e));
                    return;
                case 11:
                case 12:
                case 13:
                    a((com.android.tools.r8.internal.W9) new C10546z9(Float.floatToRawIntBits(i10 - 11), EnumC5477Kw0.f41826d));
                    return;
                case 14:
                case 15:
                    a((com.android.tools.r8.internal.W9) new C10546z9(Double.doubleToRawLongBits(i10 - 14), EnumC5477Kw0.f41828f));
                    return;
                default:
                    switch (i10) {
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                            a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.X8(b(i10)));
                            return;
                        default:
                            switch (i10) {
                                case 79:
                                case 80:
                                case 81:
                                case 82:
                                case 83:
                                case 84:
                                case 85:
                                case 86:
                                    a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.Z8(b(i10)));
                                    return;
                                case 87:
                                case 88:
                                case 89:
                                case 90:
                                case 91:
                                case 92:
                                case 93:
                                case 94:
                                case 95:
                                    a((com.android.tools.r8.internal.W9) C8106kb.a(i10));
                                    return;
                                case 96:
                                case 97:
                                case 98:
                                case 99:
                                case 100:
                                case 101:
                                case 102:
                                case 103:
                                case 104:
                                case 105:
                                case 106:
                                case 107:
                                case 108:
                                case 109:
                                case 110:
                                case 111:
                                case 112:
                                case 113:
                                case 114:
                                case 115:
                                    a((com.android.tools.r8.internal.W9) com.android.tools.r8.internal.V8.a(i10));
                                    return;
                                case 116:
                                case 117:
                                case 118:
                                case 119:
                                    a((com.android.tools.r8.internal.W9) C9939va.a(i10));
                                    return;
                                case 120:
                                case 121:
                                case 122:
                                case 123:
                                case 124:
                                case 125:
                                case 126:
                                case 127:
                                case 128:
                                case 129:
                                case 130:
                                case 131:
                                    a((com.android.tools.r8.internal.W9) C9271ra.a(i10));
                                    return;
                                default:
                                    switch (i10) {
                                        case 133:
                                        case 134:
                                        case 135:
                                        case 136:
                                        case 137:
                                        case 138:
                                        case 139:
                                        case 140:
                                        case 141:
                                        case 142:
                                        case 143:
                                        case 144:
                                        case 145:
                                        case 146:
                                        case 147:
                                            a((com.android.tools.r8.internal.W9) C4904Ba.a(i10));
                                            return;
                                        case 148:
                                        case 149:
                                        case 150:
                                        case 151:
                                        case 152:
                                            a((com.android.tools.r8.internal.W9) C9044q9.a(i10));
                                            return;
                                        default:
                                            switch (i10) {
                                                case 172:
                                                    a((com.android.tools.r8.internal.W9) new C6440ab(EnumC5477Kw0.f41825c));
                                                    return;
                                                case 173:
                                                    a((com.android.tools.r8.internal.W9) new C6440ab(EnumC5477Kw0.f41827e));
                                                    return;
                                                case 174:
                                                    a((com.android.tools.r8.internal.W9) new C6440ab(EnumC5477Kw0.f41826d));
                                                    return;
                                                case 175:
                                                    a((com.android.tools.r8.internal.W9) new C6440ab(EnumC5477Kw0.f41828f));
                                                    return;
                                                case 176:
                                                    a((com.android.tools.r8.internal.W9) new C6440ab(EnumC5477Kw0.f41824b));
                                                    return;
                                                case 177:
                                                    a((com.android.tools.r8.internal.W9) new C6607bb());
                                                    return;
                                                default:
                                                    throw new C5417Jv0("Unknown instruction");
                                            }
                                    }
                            }
                    }
            }
        }
        a((com.android.tools.r8.internal.W9) new C9438sa(XX.f45733c));
    }

    @Override
    public final void b(int i10, int i11) {
        if (i10 == 16 || i10 == 17) {
            a((com.android.tools.r8.internal.W9) new C10546z9(i11, EnumC5477Kw0.f41825c));
            return;
        }
        if (i10 == 188) {
            C4724u1 c4724u1 = this.f37762d;
            a((com.android.tools.r8.internal.W9) new C10273xa(c4724u1.a(1, a(i11, c4724u1))));
        } else {
            throw new C5417Jv0("Unexpected int opcode " + i10);
        }
    }

    @Override
    public final void b(int i10, XQ xq) {
        this.f37778t = Math.min(i10, this.f37778t);
        this.f37779u = Math.max(i10, this.f37779u);
        this.f37763e.getClass();
        a((com.android.tools.r8.internal.W9) new C5541Ma(b(xq), B60.b.t().a(i10).a(this.f37776r).a()));
    }

    public static C8103ka c(XQ xq) {
        return new C8103ka();
    }

    @Override
    public final void c(int i10, String str) {
        M2 d10 = this.f37762d.d(C9663tt0.d(str).b());
        if (i10 == 187) {
            C8103ka c8103ka = this.f37771m;
            C10106wa c10106wa = new C10106wa(d10, c8103ka);
            if (c8103ka != null) {
                this.f37774p.put(c10106wa.f53524d, c10106wa);
            }
            a((com.android.tools.r8.internal.W9) c10106wa);
            return;
        }
        if (i10 == 189) {
            a(new C10273xa(this.f37762d.a(1, d10)));
            return;
        }
        if (i10 == 192) {
            a(new C7710i9(d10));
        } else {
            if (i10 == 193) {
                a(new com.android.tools.r8.internal.V9(d10));
                return;
            }
            throw new C5417Jv0("Unexpected TypeInsn opcode: " + i10);
        }
    }

    public static M2 a(int i10, C4724u1 c4724u1) {
        switch (i10) {
            case 4:
                return c4724u1.f37849E1;
            case 5:
                return c4724u1.f37863G1;
            case 6:
                return c4724u1.f37877I1;
            case 7:
                return c4724u1.f37870H1;
            case 8:
                return c4724u1.f37856F1;
            case 9:
                return c4724u1.f37898L1;
            case 10:
                return c4724u1.f37884J1;
            case 11:
                return c4724u1.f37891K1;
            default:
                throw new C5417Jv0("Unexpected array-type code " + i10);
        }
    }

    public static NB c(int i10) {
        switch (i10) {
            case 153:
            case 159:
            case 165:
                return NB.f42527b;
            case 154:
            case 160:
            case 166:
                return NB.f42532g;
            case 155:
            case 161:
                return NB.f42531f;
            case 156:
            case 162:
                return NB.f42528c;
            case 157:
            case 163:
                return NB.f42529d;
            case 158:
            case 164:
                return NB.f42530e;
            default:
                throw new C5417Jv0("Unexpected If instruction opcode: " + i10);
        }
    }

    @Override
    public final void a(int i10, String str, String str2, String str3) {
        a((com.android.tools.r8.internal.W9) com.android.tools.r8.internal.F9.a(i10, this.f37762d.a(a(str), this.f37762d.d(str3), str2)));
    }

    @Override
    public final void a(int i10, String str, String str2, String str3, boolean z10) {
        C4482h4 c4482h4 = this.f37761c;
        A2 a10 = c4482h4.a(c4482h4.f(str), str2, str3);
        C4724u1 c4724u1 = this.f37761c.f37267a.f50660a;
        c4724u1.getClass();
        if (a10.f38298g != c4724u1.f38075j1) {
            a((com.android.tools.r8.internal.W9) new C7437ga(i10, a10, z10));
            return;
        }
        throw new C5325If("Invalid input code with a call to <clinit>");
    }

    @Override
    public final void c(int i10, int i11) {
        boolean z10 = f37760w;
        if (!z10 && i10 < 0) {
            throw new AssertionError();
        }
        if (!z10 && i11 < 0) {
            throw new AssertionError();
        }
        this.f37764f = i10;
        this.f37765g = i11;
    }

    @Override
    public final void a(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        a((com.android.tools.r8.internal.W9) new C7604ha(D0.a(this.f37761c, this.f37776r.f38297f, str, str2, c5829Qz, objArr, this.f37780v)));
    }

    @Override
    public final void a(int i10, XQ xq) {
        EnumC5477Kw0 enumC5477Kw0;
        C8103ka b10 = b(xq);
        if (153 <= i10 && i10 <= 166) {
            if (i10 <= 158) {
                a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.O9(c(i10), EnumC5477Kw0.f41825c, b10));
                return;
            }
            if (i10 <= 164) {
                enumC5477Kw0 = EnumC5477Kw0.f41825c;
            } else {
                enumC5477Kw0 = EnumC5477Kw0.f41824b;
            }
            a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.Q9(c(i10), enumC5477Kw0, b10));
            return;
        }
        if (i10 == 167) {
            a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.M9(b10));
            return;
        }
        if (i10 == 168) {
            throw new C4689s4();
        }
        if (i10 != 198 && i10 != 199) {
            throw new C5417Jv0("Unexpected JumpInsn opcode: " + i10);
        }
        a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.O9(i10 == 198 ? NB.f42527b : NB.f42532g, EnumC5477Kw0.f41824b, b10));
    }

    @Override
    public final void a(XQ xq) {
        C8103ka b10 = b(xq);
        a((com.android.tools.r8.internal.W9) b10);
        this.f37771m = b10;
    }

    @Override
    public final void a(Object obj) {
        if (obj instanceof C9663tt0) {
            C9663tt0 c9663tt0 = (C9663tt0) obj;
            if (c9663tt0.c() == 11) {
                a((com.android.tools.r8.internal.W9) new C10045w9(this.f37761c.c(c9663tt0.b())));
                return;
            } else {
                a((com.android.tools.r8.internal.W9) new C9544t9(this.f37762d.d(c9663tt0.b()), false));
                return;
            }
        }
        if (obj instanceof String) {
            a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.A9(this.f37762d.b((String) obj)));
            return;
        }
        if (obj instanceof Long) {
            a((com.android.tools.r8.internal.W9) new C10546z9(((Long) obj).longValue(), EnumC5477Kw0.f41827e));
            return;
        }
        if (obj instanceof Double) {
            a((com.android.tools.r8.internal.W9) new C10546z9(Double.doubleToRawLongBits(((Double) obj).doubleValue()), EnumC5477Kw0.f41828f));
            return;
        }
        if (obj instanceof Integer) {
            a((com.android.tools.r8.internal.W9) new C10546z9(((Integer) obj).intValue(), EnumC5477Kw0.f41825c));
            return;
        }
        if (obj instanceof Float) {
            a((com.android.tools.r8.internal.W9) new C10546z9(Float.floatToRawIntBits(((Float) obj).floatValue()), EnumC5477Kw0.f41826d));
            return;
        }
        if (obj instanceof C5829Qz) {
            a((com.android.tools.r8.internal.W9) new C9878v9(C2.a((C5829Qz) obj, this.f37761c, this.f37776r.f38297f)));
            return;
        }
        if (obj instanceof C10127wh) {
            C10127wh c10127wh = (C10127wh) obj;
            C4482h4 c4482h4 = this.f37761c;
            M2 m22 = this.f37776r.f38297f;
            Supplier supplier = this.f37780v;
            if (!C9711u9.f52797d && c10127wh.f53560d.length != 0) {
                throw new AssertionError();
            }
            a((com.android.tools.r8.internal.W9) new C9711u9(C4866Ah.a(c10127wh, c4482h4, m22, supplier)));
            return;
        }
        throw new C5325If("Unsupported constant: " + obj.toString());
    }

    @Override
    public final void a(int i10, int i11) {
        a((com.android.tools.r8.internal.W9) new com.android.tools.r8.internal.R9(i10, i11));
    }

    @Override
    public final void a(int i10, int i11, XQ xq, XQ... xqArr) {
        if (!f37760w && i11 != (xqArr.length + i10) - 1) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(xqArr.length);
        for (XQ xq2 : xqArr) {
            arrayList.add(b(xq2));
        }
        a((com.android.tools.r8.internal.W9) new C4907Bb(C4907Bb.a.f38948c, b(xq), new int[]{i10}, arrayList));
    }

    @Override
    public final void a(XQ xq, int[] iArr, XQ[] xqArr) {
        ArrayList arrayList = new ArrayList(xqArr.length);
        for (XQ xq2 : xqArr) {
            arrayList.add(b(xq2));
        }
        a((com.android.tools.r8.internal.W9) new C4907Bb(C4907Bb.a.f38947b, b(xq), iArr, arrayList));
    }

    @Override
    public final void a(int i10, String str) {
        C8570nJ c8570nJ = this.f37761c.f37267a;
        if ((c8570nJ.f50697l instanceof ClassFileConsumer) && !c8570nJ.f50599F1.f50871e0) {
            a((com.android.tools.r8.internal.W9) new C9605ta(i10, this.f37762d.d(str)));
            return;
        }
        a(Integer.valueOf(i10));
        b(188, 10);
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            a(90);
            a(95);
            a(Integer.valueOf(i11));
            a(95);
            a(79);
        }
        String substring = str.substring(i10);
        AbstractC8552nC abstractC8552nC = C4932Bl.f39005a;
        if (substring.length() != 1 ? false : C4932Bl.a(substring.charAt(0))) {
            a((com.android.tools.r8.internal.W9) com.android.tools.r8.internal.F9.a(178, this.f37762d.a(a(C4932Bl.b(substring.charAt(0))), this.f37762d.d("Ljava/lang/Class;"), "TYPE")));
        } else if (C4932Bl.G(substring)) {
            a((com.android.tools.r8.internal.W9) com.android.tools.r8.internal.F9.a(178, this.f37762d.a(a("java/lang/Void"), this.f37762d.d("Ljava/lang/Class;"), "TYPE")));
        } else {
            a(C9663tt0.a(substring, 0, substring.length()));
        }
        a(95);
        a(184, "java/lang/reflect/Array", "newInstance", "(Ljava/lang/Class;[I)Ljava/lang/Object;", false);
        c(192, str);
        this.f37766h = true;
    }

    @Override
    public final void a(XQ xq, XQ xq2, XQ xq3, String str) {
        this.f37768j.add(new C5023Db(b(xq), b(xq2), Collections.singletonList(str == null ? this.f37762d.f38173v3 : a(str)), Collections.singletonList(b(xq3))));
    }

    @Override
    public final void a(String str, String str2, String str3, XQ xq, XQ xq2, int i10) {
        this.f37763e.getClass();
        this.f37769k.add(new G.a(i10, a(new C4515j0(this.f37762d.b(str), this.f37762d.d(str2), str3 == null ? null : this.f37762d.b(str3))), b(xq), b(xq2)));
    }

    public final C4515j0 a(final C4515j0 c4515j0) {
        return (C4515j0) this.f37770l.computeIfAbsent(c4515j0, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C4708t4.a(C4515j0.this, (C4515j0) obj);
            }
        });
    }
}
