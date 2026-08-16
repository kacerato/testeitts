package com.android.tools.r8.graph;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.DesugarGraphConsumer;
import com.android.tools.r8.graph.E0;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C6072Vd;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9666tu0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.lang.constant.ConstantDescs;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;

public class C4614o4<T extends E0> {

    public static final byte[] f37540d = ByteBuffer.allocate(4).putInt(-889275714).array();

    public static final boolean f37541e = true;

    public final C4482h4 f37542a;

    public final Consumer f37543b;

    public final V f37544c;

    public C4614o4(C4482h4 c4482h4, Consumer<T> consumer, V<T> v10) {
        this.f37542a = c4482h4;
        this.f37543b = consumer;
        this.f37544c = v10;
    }

    public final void a(Origin origin, byte[] bArr) {
        com.android.tools.r8.internal.K4[] k4Arr;
        DesugarGraphConsumer desugarGraphConsumer;
        if (bArr.length < f37540d.length) {
            throw new C5325If(origin, "Invalid empty classfile", null);
        }
        int i10 = 0;
        while (true) {
            byte[] bArr2 = f37540d;
            if (i10 < bArr2.length) {
                if (bArr[i10] != bArr2[i10]) {
                    throw new C5325If(origin, "Invalid classfile header", null);
                }
                i10++;
            } else {
                if (this.f37544c == V.f36877c && this.f37542a.f37267a.f50616L0.b() && (desugarGraphConsumer = this.f37542a.f37267a.f50656Y1) != null) {
                    desugarGraphConsumer.acceptProgramNode(origin);
                }
                C6072Vd c6072Vd = new C6072Vd(bArr, true);
                int i11 = this.f37544c != V.f36877c ? 7 : 5;
                C4519j4 c4519j4 = new C4519j4(origin, this.f37544c, bArr, this.f37542a, this.f37543b);
                if (this.f37544c == V.f36877c) {
                    k4Arr = new com.android.tools.r8.internal.K4[]{new com.android.tools.r8.synthesis.K(null, null, this.f37542a.f37267a.f50660a.f38144r6)};
                } else {
                    k4Arr = new com.android.tools.r8.internal.K4[0];
                }
                c6072Vd.a(c4519j4, k4Arr, i11);
                int[] iArr = c6072Vd.f45108c;
                if (iArr.length <= 2 || iArr[2] <= 0) {
                    return;
                }
                try {
                    Object b10 = c6072Vd.b(2, new char[c6072Vd.f45112g]);
                    if (b10 instanceof String) {
                        C4724u1 c4724u1 = this.f37542a.f37267a.f50660a;
                        L2 b11 = c4724u1.b((String) b10);
                        if (com.android.tools.r8.dex.W.a(b11.f36562f)) {
                            c4724u1.f38009b.put(b11, b11);
                            return;
                        }
                        return;
                    }
                    return;
                } catch (IllegalArgumentException unused) {
                    return;
                }
            }
        }
    }

    public void b(final Origin origin, final byte[] bArr) {
        AbstractC8333lv.a(origin, Position.UNKNOWN, new Runnable() {
            @Override
            public final void run() {
                C4614o4.this.a(origin, bArr);
            }
        });
    }

    public static L4 a(int i10, String str) {
        return L4.a(i10 & (-393217), str.equals(ConstantDescs.INIT_NAME) || str.equals(ConstantDescs.CLASS_INIT_NAME));
    }

    public static C4501i4 a(final String str, boolean z10, final List list, final C4482h4 c4482h4, final BiFunction biFunction) {
        if (!f37541e && biFunction == null) {
            throw new AssertionError();
        }
        if (!z10) {
            if (!C4666r0.a(c4482h4.f37267a, c4482h4.e(str))) {
                return null;
            }
        }
        final int i10 = z10 ? 1 : 0;
        return new C4501i4(c4482h4, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                List.this.add((C4666r0) biFunction.apply(Integer.valueOf(i10), C4614o4.a(str, (List) obj, (List) obj2, c4482h4)));
            }
        });
    }

    public static C4501i4 a(String str, boolean z10, List list, C4482h4 c4482h4, final int i10, final C9666tu0 c9666tu0) {
        if (!f37541e && list == null) {
            throw new AssertionError();
        }
        if (c4482h4.f37267a.f50697l instanceof ClassFileConsumer) {
            return a(str, z10, list, c4482h4, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return C4614o4.a(i10, c9666tu0, (Integer) obj, (C4422e1) obj2);
                }
            });
        }
        return null;
    }

    public static C4666r0 a(int i10, C9666tu0 c9666tu0, Integer num, C4422e1 c4422e1) {
        return new N2(num.intValue(), c4422e1, i10, c9666tu0);
    }

    public static C4422e1 a(String str, List list, List list2, C4482h4 c4482h4) {
        if (!f37541e && ((list != null || !list2.isEmpty()) && (list == null || list.isEmpty() || list.size() != list2.size()))) {
            throw new AssertionError();
        }
        C4704t0[] c4704t0Arr = new C4704t0[list2.size()];
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c4704t0Arr[i10] = new C4704t0((L2) list.get(i10), (R2) list2.get(i10));
        }
        return new C4422e1(c4482h4.e(str), c4704t0Arr);
    }

    public static C4723u0 a(List list, C8570nJ c8570nJ) {
        M2 m22;
        if (list != null && !list.isEmpty()) {
            if (c8570nJ.P()) {
                C4723u0[] c4723u0Arr = C4723u0.f37803f;
                Set c10 = AbstractC5513Ll0.c();
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        m22 = null;
                        break;
                    }
                    C4666r0 c4666r0 = (C4666r0) it.next();
                    if (!C4723u0.f37805h && c4666r0.n0()) {
                        throw new AssertionError();
                    }
                    if (!c10.add(c4666r0.f37693c.f37142b)) {
                        m22 = c4666r0.f37693c.f37142b;
                        break;
                    }
                }
                if (m22 != null) {
                    throw new C5325If("Multiple annotations of type `" + m22.j0() + "`");
                }
            }
            C4666r0[] c4666r0Arr = (C4666r0[]) list.toArray(C4666r0.f37690d);
            C4723u0[] c4723u0Arr2 = C4723u0.f37803f;
            return com.android.tools.r8.internal.X3.a(c4666r0Arr) ? C4723u0.l0() : new C4723u0(c4666r0Arr);
        }
        return C4723u0.l0();
    }
}
