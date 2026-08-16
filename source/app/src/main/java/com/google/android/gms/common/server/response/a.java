package com.google.android.gms.common.server.response;

import G0.A;
import G0.C2601y;
import G0.F;
import I0.c;
import T0.C3033c;
import T0.r;
import T0.s;
import android.os.Parcel;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

@F
@C0.a
public abstract class a {

    @F
    public interface b<I, O> {
        int c();

        int d();

        @NonNull
        Object e(@NonNull Object obj);

        @Nullable
        Object f(@NonNull Object obj);
    }

    @NonNull
    public static final Object F(@NonNull C0954a c0954a, @Nullable Object obj) {
        return c0954a.f61397l != null ? c0954a.G0(obj) : obj;
    }

    public static final void I(StringBuilder sb2, C0954a c0954a, Object obj) {
        int i10 = c0954a.f61388c;
        if (i10 == 11) {
            Class cls = c0954a.f61394i;
            A.r(cls);
            sb2.append(((a) cls.cast(obj)).toString());
        } else {
            if (i10 != 7) {
                sb2.append(obj);
                return;
            }
            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
            sb2.append(r.b((String) obj));
            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
        }
    }

    public static final void J(String str) {
        if (Log.isLoggable("FastJsonResponse", 6)) {
            Log.e("FastJsonResponse", "Output field (" + str + ") has a null value, but expected a primitive");
        }
    }

    public final void A0(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            B0(c0954a, c0954a.f61392g, arrayList);
        }
    }

    public void B0(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    public final void C(@NonNull C0954a c0954a, @Nullable String str) {
        if (c0954a.f61397l != null) {
            H(c0954a, str);
        } else {
            p(c0954a, c0954a.f61392g, str);
        }
    }

    public final void C0(@NonNull C0954a c0954a, long j10) {
        if (c0954a.f61397l != null) {
            H(c0954a, Long.valueOf(j10));
        } else {
            n(c0954a, c0954a.f61392g, j10);
        }
    }

    public final void D(@NonNull C0954a c0954a, @Nullable Map map) {
        if (c0954a.f61397l != null) {
            H(c0954a, map);
        } else {
            q(c0954a, c0954a.f61392g, map);
        }
    }

    public final void D0(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            E0(c0954a, c0954a.f61392g, arrayList);
        }
    }

    public final void E(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            t(c0954a, c0954a.f61392g, arrayList);
        }
    }

    public void E0(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    public final void H(C0954a c0954a, @Nullable Object obj) {
        int i10 = c0954a.f61390e;
        Object F02 = c0954a.F0(obj);
        String str = c0954a.f61392g;
        switch (i10) {
            case 0:
                if (F02 != null) {
                    m(c0954a, str, ((Integer) F02).intValue());
                    return;
                } else {
                    J(str);
                    return;
                }
            case 1:
                U(c0954a, str, (BigInteger) F02);
                return;
            case 2:
                if (F02 != null) {
                    n(c0954a, str, ((Long) F02).longValue());
                    return;
                } else {
                    J(str);
                    return;
                }
            case 3:
            default:
                throw new IllegalStateException("Unsupported type for conversion: " + i10);
            case 4:
                if (F02 != null) {
                    s0(c0954a, str, ((Double) F02).doubleValue());
                    return;
                } else {
                    J(str);
                    return;
                }
            case 5:
                M(c0954a, str, (BigDecimal) F02);
                return;
            case 6:
                if (F02 != null) {
                    i(c0954a, str, ((Boolean) F02).booleanValue());
                    return;
                } else {
                    J(str);
                    return;
                }
            case 7:
                p(c0954a, str, (String) F02);
                return;
            case 8:
            case 9:
                if (F02 != null) {
                    l(c0954a, str, (byte[]) F02);
                    return;
                } else {
                    J(str);
                    return;
                }
        }
    }

    public final void K(@NonNull C0954a c0954a, @Nullable BigDecimal bigDecimal) {
        if (c0954a.f61397l != null) {
            H(c0954a, bigDecimal);
        } else {
            M(c0954a, c0954a.f61392g, bigDecimal);
        }
    }

    public void M(@NonNull C0954a c0954a, @NonNull String str, @Nullable BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    public final void O(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            P(c0954a, c0954a.f61392g, arrayList);
        }
    }

    public void P(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    public final void T(@NonNull C0954a c0954a, @Nullable BigInteger bigInteger) {
        if (c0954a.f61397l != null) {
            H(c0954a, bigInteger);
        } else {
            U(c0954a, c0954a.f61392g, bigInteger);
        }
    }

    public void U(@NonNull C0954a c0954a, @NonNull String str, @Nullable BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    public final void W(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            X(c0954a, c0954a.f61392g, arrayList);
        }
    }

    public void X(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    public final void a0(@NonNull C0954a c0954a, boolean z10) {
        if (c0954a.f61397l != null) {
            H(c0954a, Boolean.valueOf(z10));
        } else {
            i(c0954a, c0954a.f61392g, z10);
        }
    }

    @C0.a
    public <T extends a> void b(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    public final void b0(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            h0(c0954a, c0954a.f61392g, arrayList);
        }
    }

    @C0.a
    public <T extends a> void c(@NonNull C0954a c0954a, @NonNull String str, @NonNull T t10) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    @NonNull
    @C0.a
    public abstract Map<String, C0954a<?, ?>> d();

    @Nullable
    @C0.a
    public Object e(@NonNull C0954a c0954a) {
        String str = c0954a.f61392g;
        if (c0954a.f61394i == null) {
            return f(str);
        }
        A.z(f(str) == null, "Concrete field shouldn't be value object: %s", c0954a.f61392g);
        try {
            return getClass().getMethod("get" + Character.toUpperCase(str.charAt(0)) + str.substring(1), null).invoke(this, null);
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    @Nullable
    @C0.a
    public abstract Object f(@NonNull String str);

    @C0.a
    public boolean g(@NonNull C0954a c0954a) {
        if (c0954a.f61390e != 11) {
            return h(c0954a.f61392g);
        }
        if (c0954a.f61391f) {
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    @C0.a
    public abstract boolean h(@NonNull String str);

    public void h0(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    @C0.a
    public void i(@NonNull C0954a<?, ?> c0954a, @NonNull String str, boolean z10) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    @C0.a
    public void l(@NonNull C0954a<?, ?> c0954a, @NonNull String str, @Nullable byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    public final void l0(@NonNull C0954a c0954a, @Nullable byte[] bArr) {
        if (c0954a.f61397l != null) {
            H(c0954a, bArr);
        } else {
            l(c0954a, c0954a.f61392g, bArr);
        }
    }

    @C0.a
    public void m(@NonNull C0954a<?, ?> c0954a, @NonNull String str, int i10) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    @C0.a
    public void n(@NonNull C0954a<?, ?> c0954a, @NonNull String str, long j10) {
        throw new UnsupportedOperationException("Long not supported");
    }

    public final void n0(@NonNull C0954a c0954a, double d10) {
        if (c0954a.f61397l != null) {
            H(c0954a, Double.valueOf(d10));
        } else {
            s0(c0954a, c0954a.f61392g, d10);
        }
    }

    @C0.a
    public void p(@NonNull C0954a<?, ?> c0954a, @NonNull String str, @Nullable String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    @C0.a
    public void q(@NonNull C0954a<?, ?> c0954a, @NonNull String str, @Nullable Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    public void s0(@NonNull C0954a c0954a, @NonNull String str, double d10) {
        throw new UnsupportedOperationException("Double not supported");
    }

    @C0.a
    public void t(@NonNull C0954a<?, ?> c0954a, @NonNull String str, @Nullable ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    public final void t0(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            u0(c0954a, c0954a.f61392g, arrayList);
        }
    }

    @NonNull
    @C0.a
    public String toString() {
        Map<String, C0954a<?, ?>> d10 = d();
        StringBuilder sb2 = new StringBuilder(100);
        for (String str : d10.o()) {
            C0954a<?, ?> c0954a = d10.get(str);
            if (g(c0954a)) {
                Object F10 = F(c0954a, e(c0954a));
                if (sb2.length() == 0) {
                    sb2.append("{");
                } else {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                sb2.append(str);
                sb2.append("\":");
                if (F10 != null) {
                    switch (c0954a.f61390e) {
                        case 8:
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            sb2.append(C3033c.d((byte[]) F10));
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            break;
                        case 9:
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            sb2.append(C3033c.e((byte[]) F10));
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            break;
                        case 10:
                            s.a(sb2, (HashMap) F10);
                            break;
                        default:
                            if (c0954a.f61389d) {
                                ArrayList arrayList = (ArrayList) F10;
                                sb2.append("[");
                                int size = arrayList.size();
                                for (int i10 = 0; i10 < size; i10++) {
                                    if (i10 > 0) {
                                        sb2.append(DocLint.SEPARATOR);
                                    }
                                    Object obj = arrayList.get(i10);
                                    if (obj != null) {
                                        I(sb2, c0954a, obj);
                                    }
                                }
                                sb2.append("]");
                                break;
                            } else {
                                I(sb2, c0954a, F10);
                                break;
                            }
                    }
                } else {
                    sb2.append("null");
                }
            }
        }
        if (sb2.length() > 0) {
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
        } else {
            sb2.append(FetchDefaults.EMPTY_JSON_OBJECT_STRING);
        }
        return sb2.toString();
    }

    public void u0(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    public final void v0(@NonNull C0954a c0954a, float f10) {
        if (c0954a.f61397l != null) {
            H(c0954a, Float.valueOf(f10));
        } else {
            w0(c0954a, c0954a.f61392g, f10);
        }
    }

    public void w0(@NonNull C0954a c0954a, @NonNull String str, float f10) {
        throw new UnsupportedOperationException("Float not supported");
    }

    public final void x0(@NonNull C0954a c0954a, @Nullable ArrayList arrayList) {
        if (c0954a.f61397l != null) {
            H(c0954a, arrayList);
        } else {
            y0(c0954a, c0954a.f61392g, arrayList);
        }
    }

    public void y0(@NonNull C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    public final void z0(@NonNull C0954a c0954a, int i10) {
        if (c0954a.f61397l != null) {
            H(c0954a, Integer.valueOf(i10));
        } else {
            m(c0954a, c0954a.f61392g, i10);
        }
    }

    @F
    @c.a(creator = "FieldCreator")
    @C0.a
    public static class C0954a<I, O> extends I0.a {
        public static final m CREATOR = new m();

        @c.h(getter = "getVersionCode", id = 1)
        public final int f61387b;

        @c.InterfaceC0186c(getter = "getTypeIn", id = 2)
        public final int f61388c;

        @c.InterfaceC0186c(getter = "isTypeInArray", id = 3)
        public final boolean f61389d;

        @c.InterfaceC0186c(getter = "getTypeOut", id = 4)
        public final int f61390e;

        @c.InterfaceC0186c(getter = "isTypeOutArray", id = 5)
        public final boolean f61391f;

        @NonNull
        @c.InterfaceC0186c(getter = "getOutputFieldName", id = 6)
        public final String f61392g;

        @c.InterfaceC0186c(getter = "getSafeParcelableFieldId", id = 7)
        public final int f61393h;

        @Nullable
        public final Class f61394i;

        @Nullable
        @c.InterfaceC0186c(getter = "getConcreteTypeName", id = 8)
        public final String f61395j;

        public q f61396k;

        @Nullable
        @c.InterfaceC0186c(getter = "getWrappedConverter", id = 9, type = "com.google.android.gms.common.server.converter.ConverterWrapper")
        public final b f61397l;

        @c.b
        public C0954a(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @c.e(id = 3) boolean z10, @c.e(id = 4) int i12, @c.e(id = 5) boolean z11, @c.e(id = 6) String str, @c.e(id = 7) int i13, @Nullable @c.e(id = 8) String str2, @Nullable @c.e(id = 9) P0.b bVar) {
            this.f61387b = i10;
            this.f61388c = i11;
            this.f61389d = z10;
            this.f61390e = i12;
            this.f61391f = z11;
            this.f61392g = str;
            this.f61393h = i13;
            if (str2 == null) {
                this.f61394i = null;
                this.f61395j = null;
            } else {
                this.f61394i = c.class;
                this.f61395j = str2;
            }
            if (bVar == null) {
                this.f61397l = null;
            } else {
                this.f61397l = bVar.n();
            }
        }

        @NonNull
        @C0.a
        public static C0954a A0(@NonNull String str, int i10, @NonNull b<?, ?> bVar, boolean z10) {
            bVar.c();
            bVar.d();
            return new C0954a(7, z10, 0, false, str, i10, null, bVar);
        }

        @NonNull
        @C0.a
        public static C0954a<byte[], byte[]> b(@NonNull String str, int i10) {
            return new C0954a<>(8, false, 8, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static C0954a<Double, Double> b0(@NonNull String str, int i10) {
            return new C0954a<>(4, false, 4, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static C0954a<Boolean, Boolean> n(@NonNull String str, int i10) {
            return new C0954a<>(6, false, 6, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static C0954a<Float, Float> n0(@NonNull String str, int i10) {
            return new C0954a<>(3, false, 3, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static <T extends a> C0954a<T, T> p(@NonNull String str, int i10, @NonNull Class<T> cls) {
            return new C0954a<>(11, false, 11, false, str, i10, cls, null);
        }

        @NonNull
        @C0.a
        public static <T extends a> C0954a<ArrayList<T>, ArrayList<T>> t(@NonNull String str, int i10, @NonNull Class<T> cls) {
            return new C0954a<>(11, true, 11, true, str, i10, cls, null);
        }

        @NonNull
        @C0.a
        public static C0954a<Integer, Integer> u0(@NonNull String str, int i10) {
            return new C0954a<>(0, false, 0, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static C0954a<Long, Long> v0(@NonNull String str, int i10) {
            return new C0954a<>(2, false, 2, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static C0954a<String, String> w0(@NonNull String str, int i10) {
            return new C0954a<>(7, false, 7, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static C0954a<HashMap<String, String>, HashMap<String, String>> x0(@NonNull String str, int i10) {
            return new C0954a<>(10, false, 10, false, str, i10, null, null);
        }

        @NonNull
        @C0.a
        public static C0954a<ArrayList<String>, ArrayList<String>> y0(@NonNull String str, int i10) {
            return new C0954a<>(7, true, 7, true, str, i10, null, null);
        }

        @Nullable
        public final P0.b B0() {
            b bVar = this.f61397l;
            if (bVar == null) {
                return null;
            }
            return P0.b.b(bVar);
        }

        @NonNull
        public final C0954a C0() {
            return new C0954a(this.f61387b, this.f61388c, this.f61389d, this.f61390e, this.f61391f, this.f61392g, this.f61393h, this.f61395j, B0());
        }

        @NonNull
        public final a E0() throws InstantiationException, IllegalAccessException {
            A.r(this.f61394i);
            Class cls = this.f61394i;
            if (cls != c.class) {
                return (a) cls.newInstance();
            }
            A.r(this.f61395j);
            A.s(this.f61396k, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
            return new c(this.f61396k, this.f61395j);
        }

        @NonNull
        public final Object F0(@Nullable Object obj) {
            A.r(this.f61397l);
            return A.r(this.f61397l.f(obj));
        }

        @NonNull
        public final Object G0(@NonNull Object obj) {
            A.r(this.f61397l);
            return this.f61397l.e(obj);
        }

        @Nullable
        public final String H0() {
            String str = this.f61395j;
            if (str == null) {
                return null;
            }
            return str;
        }

        @NonNull
        public final Map I0() {
            A.r(this.f61395j);
            A.r(this.f61396k);
            return (Map) A.r(this.f61396k.p(this.f61395j));
        }

        public final void J0(q qVar) {
            this.f61396k = qVar;
        }

        public final boolean M0() {
            return this.f61397l != null;
        }

        @NonNull
        public final String toString() {
            C2601y.a a10 = C2601y.d(this).a("versionCode", Integer.valueOf(this.f61387b)).a("typeIn", Integer.valueOf(this.f61388c)).a("typeInArray", Boolean.valueOf(this.f61389d)).a("typeOut", Integer.valueOf(this.f61390e)).a("typeOutArray", Boolean.valueOf(this.f61391f)).a("outputFieldName", this.f61392g).a("safeParcelFieldId", Integer.valueOf(this.f61393h)).a("concreteTypeName", H0());
            Class cls = this.f61394i;
            if (cls != null) {
                a10.a("concreteType.class", cls.getCanonicalName());
            }
            b bVar = this.f61397l;
            if (bVar != null) {
                a10.a("converterName", bVar.getClass().getCanonicalName());
            }
            return a10.toString();
        }

        @Override
        public final void writeToParcel(@NonNull Parcel parcel, int i10) {
            int i11 = this.f61387b;
            int a10 = I0.b.a(parcel);
            I0.b.F(parcel, 1, i11);
            I0.b.F(parcel, 2, this.f61388c);
            I0.b.g(parcel, 3, this.f61389d);
            I0.b.F(parcel, 4, this.f61390e);
            I0.b.g(parcel, 5, this.f61391f);
            I0.b.Y(parcel, 6, this.f61392g, false);
            I0.b.F(parcel, 7, z0());
            I0.b.Y(parcel, 8, H0(), false);
            I0.b.S(parcel, 9, B0(), i10, false);
            I0.b.b(parcel, a10);
        }

        @C0.a
        public int z0() {
            return this.f61393h;
        }

        public C0954a(int i10, boolean z10, int i11, boolean z11, @NonNull String str, int i12, @Nullable Class cls, @Nullable b bVar) {
            this.f61387b = 1;
            this.f61388c = i10;
            this.f61389d = z10;
            this.f61390e = i11;
            this.f61391f = z11;
            this.f61392g = str;
            this.f61393h = i12;
            this.f61394i = cls;
            if (cls == null) {
                this.f61395j = null;
            } else {
                this.f61395j = cls.getCanonicalName();
            }
            this.f61397l = bVar;
        }
    }
}
