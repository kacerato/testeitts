package com.google.android.gms.common.server.response;

import G0.A;
import I0.c;
import T0.C3032b;
import T0.C3033c;
import T0.r;
import T0.s;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.server.response.a;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

@C0.a
@c.a(creator = "SafeParcelResponseCreator")
public class c extends b {

    @NonNull
    @C0.a
    public static final Parcelable.Creator<c> CREATOR = new Q0.c();

    @c.h(getter = "getVersionCode", id = 1)
    public final int f61398b;

    @c.InterfaceC0186c(getter = "getParcel", id = 2)
    public final Parcel f61399c;

    public final int f61400d;

    @c.InterfaceC0186c(getter = "getFieldMappingDictionary", id = 3)
    public final q f61401e;

    @Nullable
    public final String f61402f;

    public int f61403g;

    public int f61404h;

    @c.b
    public c(@c.e(id = 1) int i10, @c.e(id = 2) Parcel parcel, @c.e(id = 3) q qVar) {
        this.f61398b = i10;
        this.f61399c = (Parcel) A.r(parcel);
        this.f61400d = 2;
        this.f61401e = qVar;
        this.f61402f = qVar == null ? null : qVar.n();
        this.f61403g = 2;
    }

    @NonNull
    @C0.a
    public static <T extends a & I0.c> c G0(@NonNull T t10) {
        String str = (String) A.r(t10.getClass().getCanonicalName());
        q qVar = new q(t10.getClass());
        I0(qVar, t10);
        qVar.t();
        qVar.b0();
        return new c(t10, qVar, str);
    }

    public static void I0(q qVar, a aVar) {
        Class<?> cls = aVar.getClass();
        if (qVar.u0(cls)) {
            return;
        }
        Map<String, a.C0954a<?, ?>> d10 = aVar.d();
        qVar.n0(cls, d10);
        Iterator<String> it = d10.o().iterator();
        while (it.hasNext()) {
            a.C0954a<?, ?> c0954a = d10.get(it.next());
            Class cls2 = c0954a.f61394i;
            if (cls2 != null) {
                try {
                    I0(qVar, (a) cls2.newInstance());
                } catch (IllegalAccessException e10) {
                    throw new IllegalStateException("Could not access object of type ".concat(String.valueOf(((Class) A.r(c0954a.f61394i)).getCanonicalName())), e10);
                } catch (InstantiationException e11) {
                    throw new IllegalStateException("Could not instantiate an object of type ".concat(String.valueOf(((Class) A.r(c0954a.f61394i)).getCanonicalName())), e11);
                }
            }
        }
    }

    public static final void L0(StringBuilder sb2, int i10, @Nullable Object obj) {
        switch (i10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb2.append(obj);
                return;
            case 7:
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                sb2.append(r.b(A.r(obj).toString()));
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                return;
            case 8:
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                sb2.append(C3033c.d((byte[]) obj));
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                return;
            case 9:
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                sb2.append(C3033c.e((byte[]) obj));
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                return;
            case 10:
                s.a(sb2, (HashMap) A.r(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i10);
        }
    }

    public static final void M0(StringBuilder sb2, a.C0954a c0954a, Object obj) {
        if (!c0954a.f61389d) {
            L0(sb2, c0954a.f61388c, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb2.append("[");
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 != 0) {
                sb2.append(DocLint.SEPARATOR);
            }
            L0(sb2, c0954a.f61388c, arrayList.get(i10));
        }
        sb2.append("]");
    }

    @Override
    public final void B0(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = ((Integer) arrayList.get(i10)).intValue();
        }
        I0.b.G(this.f61399c, c0954a.z0(), iArr, true);
    }

    @Override
    public final void E0(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        long[] jArr = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            jArr[i10] = ((Long) arrayList.get(i10)).longValue();
        }
        I0.b.L(this.f61399c, c0954a.z0(), jArr, true);
    }

    @NonNull
    public final Parcel H0() {
        int i10 = this.f61403g;
        if (i10 == 0) {
            int a10 = I0.b.a(this.f61399c);
            this.f61404h = a10;
            I0.b.b(this.f61399c, a10);
            this.f61403g = 2;
        } else if (i10 == 1) {
            I0.b.b(this.f61399c, this.f61404h);
            this.f61403g = 2;
        }
        return this.f61399c;
    }

    public final void J0(a.C0954a c0954a) {
        if (c0954a.f61393h == -1) {
            throw new IllegalStateException("Field does not have a valid safe parcelable field id.");
        }
        Parcel parcel = this.f61399c;
        if (parcel == null) {
            throw new IllegalStateException("Internal Parcel object is null.");
        }
        int i10 = this.f61403g;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
            }
        } else {
            this.f61404h = I0.b.a(parcel);
            this.f61403g = 1;
        }
    }

    public final void K0(StringBuilder sb2, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((a.C0954a) entry.getValue()).z0(), entry);
        }
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        int i02 = SafeParcelReader.i0(parcel);
        boolean z10 = false;
        while (parcel.dataPosition() < i02) {
            int X10 = SafeParcelReader.X(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.O(X10));
            if (entry2 != null) {
                if (z10) {
                    sb2.append(DocLint.SEPARATOR);
                }
                String str = (String) entry2.getKey();
                a.C0954a c0954a = (a.C0954a) entry2.getValue();
                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                sb2.append(str);
                sb2.append("\":");
                if (c0954a.M0()) {
                    int i10 = c0954a.f61390e;
                    switch (i10) {
                        case 0:
                            M0(sb2, c0954a, a.F(c0954a, Integer.valueOf(SafeParcelReader.Z(parcel, X10))));
                            break;
                        case 1:
                            M0(sb2, c0954a, a.F(c0954a, SafeParcelReader.c(parcel, X10)));
                            break;
                        case 2:
                            M0(sb2, c0954a, a.F(c0954a, Long.valueOf(SafeParcelReader.c0(parcel, X10))));
                            break;
                        case 3:
                            M0(sb2, c0954a, a.F(c0954a, Float.valueOf(SafeParcelReader.V(parcel, X10))));
                            break;
                        case 4:
                            M0(sb2, c0954a, a.F(c0954a, Double.valueOf(SafeParcelReader.T(parcel, X10))));
                            break;
                        case 5:
                            M0(sb2, c0954a, a.F(c0954a, SafeParcelReader.a(parcel, X10)));
                            break;
                        case 6:
                            M0(sb2, c0954a, a.F(c0954a, Boolean.valueOf(SafeParcelReader.P(parcel, X10))));
                            break;
                        case 7:
                            M0(sb2, c0954a, a.F(c0954a, SafeParcelReader.G(parcel, X10)));
                            break;
                        case 8:
                        case 9:
                            M0(sb2, c0954a, a.F(c0954a, SafeParcelReader.h(parcel, X10)));
                            break;
                        case 10:
                            Bundle g10 = SafeParcelReader.g(parcel, X10);
                            HashMap hashMap = new HashMap();
                            for (String str2 : g10.keySet()) {
                                hashMap.put(str2, (String) A.r(g10.getString(str2)));
                            }
                            M0(sb2, c0954a, a.F(c0954a, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            throw new IllegalArgumentException("Unknown field out type = " + i10);
                    }
                } else if (c0954a.f61391f) {
                    sb2.append("[");
                    switch (c0954a.f61390e) {
                        case 0:
                            C3032b.l(sb2, SafeParcelReader.u(parcel, X10));
                            break;
                        case 1:
                            C3032b.n(sb2, SafeParcelReader.d(parcel, X10));
                            break;
                        case 2:
                            C3032b.m(sb2, SafeParcelReader.w(parcel, X10));
                            break;
                        case 3:
                            C3032b.k(sb2, SafeParcelReader.o(parcel, X10));
                            break;
                        case 4:
                            C3032b.j(sb2, SafeParcelReader.l(parcel, X10));
                            break;
                        case 5:
                            C3032b.n(sb2, SafeParcelReader.b(parcel, X10));
                            break;
                        case 6:
                            C3032b.o(sb2, SafeParcelReader.e(parcel, X10));
                            break;
                        case 7:
                            C3032b.p(sb2, SafeParcelReader.H(parcel, X10));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] z11 = SafeParcelReader.z(parcel, X10);
                            int length = z11.length;
                            for (int i11 = 0; i11 < length; i11++) {
                                if (i11 > 0) {
                                    sb2.append(DocLint.SEPARATOR);
                                }
                                z11[i11].setDataPosition(0);
                                K0(sb2, c0954a.I0(), z11[i11]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb2.append("]");
                } else {
                    switch (c0954a.f61390e) {
                        case 0:
                            sb2.append(SafeParcelReader.Z(parcel, X10));
                            break;
                        case 1:
                            sb2.append((Object) SafeParcelReader.c(parcel, X10));
                            break;
                        case 2:
                            sb2.append(SafeParcelReader.c0(parcel, X10));
                            break;
                        case 3:
                            sb2.append(SafeParcelReader.V(parcel, X10));
                            break;
                        case 4:
                            sb2.append(SafeParcelReader.T(parcel, X10));
                            break;
                        case 5:
                            sb2.append((Object) SafeParcelReader.a(parcel, X10));
                            break;
                        case 6:
                            sb2.append(SafeParcelReader.P(parcel, X10));
                            break;
                        case 7:
                            String G10 = SafeParcelReader.G(parcel, X10);
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            sb2.append(r.b(G10));
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            break;
                        case 8:
                            byte[] h10 = SafeParcelReader.h(parcel, X10);
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            sb2.append(C3033c.d(h10));
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            break;
                        case 9:
                            byte[] h11 = SafeParcelReader.h(parcel, X10);
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            sb2.append(C3033c.e(h11));
                            sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                            break;
                        case 10:
                            Bundle g11 = SafeParcelReader.g(parcel, X10);
                            Set<String> keySet = g11.keySet();
                            sb2.append("{");
                            boolean z12 = true;
                            for (String str3 : keySet) {
                                if (!z12) {
                                    sb2.append(DocLint.SEPARATOR);
                                }
                                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                                sb2.append(str3);
                                sb2.append("\":\"");
                                sb2.append(r.b(g11.getString(str3)));
                                sb2.append(JavadocConstants.ANCHOR_PREFIX_END);
                                z12 = false;
                            }
                            sb2.append(VectorFormat.DEFAULT_SUFFIX);
                            break;
                        case 11:
                            Parcel y10 = SafeParcelReader.y(parcel, X10);
                            y10.setDataPosition(0);
                            K0(sb2, c0954a.I0(), y10);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z10 = true;
            }
        }
        if (parcel.dataPosition() == i02) {
            sb2.append(JavaElement.JEM_ANNOTATION);
            return;
        }
        throw new SafeParcelReader.ParseException("Overread allowed size end=" + i02, parcel);
    }

    @Override
    public final void M(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable BigDecimal bigDecimal) {
        J0(c0954a);
        I0.b.c(this.f61399c, c0954a.z0(), bigDecimal, true);
    }

    @Override
    public final void P(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i10 = 0; i10 < size; i10++) {
            bigDecimalArr[i10] = (BigDecimal) arrayList.get(i10);
        }
        I0.b.d(this.f61399c, c0954a.z0(), bigDecimalArr, true);
    }

    @Override
    public final void U(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable BigInteger bigInteger) {
        J0(c0954a);
        I0.b.e(this.f61399c, c0954a.z0(), bigInteger, true);
    }

    @Override
    public final void X(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i10 = 0; i10 < size; i10++) {
            bigIntegerArr[i10] = (BigInteger) arrayList.get(i10);
        }
        I0.b.f(this.f61399c, c0954a.z0(), bigIntegerArr, true);
    }

    @Override
    public final <T extends a> void b(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList<T> arrayList) {
        J0(c0954a);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) A.r(arrayList)).size();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList2.add(((c) arrayList.get(i10)).H0());
        }
        I0.b.Q(this.f61399c, c0954a.z0(), arrayList2, true);
    }

    @Override
    public final <T extends a> void c(@NonNull a.C0954a c0954a, @NonNull String str, @NonNull T t10) {
        J0(c0954a);
        I0.b.O(this.f61399c, c0954a.z0(), ((c) t10).H0(), true);
    }

    @Override
    @Nullable
    public final Map<String, a.C0954a<?, ?>> d() {
        q qVar = this.f61401e;
        if (qVar == null) {
            return null;
        }
        return qVar.p((String) A.r(this.f61402f));
    }

    @Override
    @NonNull
    public final Object f(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override
    public final boolean h(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override
    public final void h0(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i10 = 0; i10 < size; i10++) {
            zArr[i10] = ((Boolean) arrayList.get(i10)).booleanValue();
        }
        I0.b.h(this.f61399c, c0954a.z0(), zArr, true);
    }

    @Override
    public final void i(@NonNull a.C0954a<?, ?> c0954a, @NonNull String str, boolean z10) {
        J0(c0954a);
        I0.b.g(this.f61399c, c0954a.z0(), z10);
    }

    @Override
    public final void l(@NonNull a.C0954a<?, ?> c0954a, @NonNull String str, @Nullable byte[] bArr) {
        J0(c0954a);
        I0.b.m(this.f61399c, c0954a.z0(), bArr, true);
    }

    @Override
    public final void m(@NonNull a.C0954a<?, ?> c0954a, @NonNull String str, int i10) {
        J0(c0954a);
        I0.b.F(this.f61399c, c0954a.z0(), i10);
    }

    @Override
    public final void n(@NonNull a.C0954a<?, ?> c0954a, @NonNull String str, long j10) {
        J0(c0954a);
        I0.b.K(this.f61399c, c0954a.z0(), j10);
    }

    @Override
    public final void p(@NonNull a.C0954a<?, ?> c0954a, @NonNull String str, @Nullable String str2) {
        J0(c0954a);
        I0.b.Y(this.f61399c, c0954a.z0(), str2, true);
    }

    @Override
    public final void q(@NonNull a.C0954a<?, ?> c0954a, @NonNull String str, @Nullable Map<String, String> map) {
        J0(c0954a);
        Bundle bundle = new Bundle();
        for (String str2 : ((Map) A.r(map)).o()) {
            bundle.putString(str2, map.get(str2));
        }
        I0.b.k(this.f61399c, c0954a.z0(), bundle, true);
    }

    @Override
    public final void s0(@NonNull a.C0954a c0954a, @NonNull String str, double d10) {
        J0(c0954a);
        I0.b.r(this.f61399c, c0954a.z0(), d10);
    }

    @Override
    public final void t(@NonNull a.C0954a<?, ?> c0954a, @NonNull String str, @Nullable ArrayList<String> arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        String[] strArr = new String[size];
        for (int i10 = 0; i10 < size; i10++) {
            strArr[i10] = arrayList.get(i10);
        }
        I0.b.Z(this.f61399c, c0954a.z0(), strArr, true);
    }

    @Override
    @NonNull
    public final String toString() {
        A.s(this.f61401e, "Cannot convert to JSON on client side.");
        Parcel H02 = H0();
        H02.setDataPosition(0);
        StringBuilder sb2 = new StringBuilder(100);
        K0(sb2, (Map) A.r(this.f61401e.p((String) A.r(this.f61402f))), H02);
        return sb2.toString();
    }

    @Override
    public final void u0(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        double[] dArr = new double[size];
        for (int i10 = 0; i10 < size; i10++) {
            dArr[i10] = ((Double) arrayList.get(i10)).doubleValue();
        }
        I0.b.s(this.f61399c, c0954a.z0(), dArr, true);
    }

    @Override
    public final void w0(@NonNull a.C0954a c0954a, @NonNull String str, float f10) {
        J0(c0954a);
        I0.b.w(this.f61399c, c0954a.z0(), f10);
    }

    @Override
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f61398b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.O(parcel, 2, H0(), false);
        int i12 = this.f61400d;
        I0.b.S(parcel, 3, i12 != 0 ? i12 != 1 ? this.f61401e : this.f61401e : null, i10, false);
        I0.b.b(parcel, a10);
    }

    @Override
    public final void y0(@NonNull a.C0954a c0954a, @NonNull String str, @Nullable ArrayList arrayList) {
        J0(c0954a);
        int size = ((ArrayList) A.r(arrayList)).size();
        float[] fArr = new float[size];
        for (int i10 = 0; i10 < size; i10++) {
            fArr[i10] = ((Float) arrayList.get(i10)).floatValue();
        }
        I0.b.x(this.f61399c, c0954a.z0(), fArr, true);
    }

    public c(I0.c cVar, q qVar, String str) {
        this.f61398b = 1;
        Parcel obtain = Parcel.obtain();
        this.f61399c = obtain;
        cVar.writeToParcel(obtain, 0);
        this.f61400d = 1;
        this.f61401e = (q) A.r(qVar);
        this.f61402f = (String) A.r(str);
        this.f61403g = 2;
    }

    public c(q qVar, String str) {
        this.f61398b = 1;
        this.f61399c = Parcel.obtain();
        this.f61400d = 0;
        this.f61401e = (q) A.r(qVar);
        this.f61402f = (String) A.r(str);
        this.f61403g = 0;
    }
}
