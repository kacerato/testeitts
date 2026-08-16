package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.measurement.C12017a3;
import com.google.android.gms.internal.measurement.C12022b;
import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12028b5;
import com.google.android.gms.internal.measurement.C12053e3;
import com.google.android.gms.internal.measurement.C12062f3;
import com.google.android.gms.internal.measurement.C12116l3;
import com.google.android.gms.internal.measurement.C12125m3;
import com.google.android.gms.internal.measurement.C12134n3;
import com.google.android.gms.internal.measurement.C12178s3;
import com.google.android.gms.internal.measurement.C12196u3;
import com.google.android.gms.internal.measurement.C12227x7;
import com.google.android.gms.internal.measurement.G7;
import com.google.android.gms.internal.measurement.zzmq;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.openjdk.tools.doclint.DocLint;

public final class h7 extends N6 {
    public h7(c7 c7Var) {
        super(c7Var);
    }

    public static final String A(boolean z10, boolean z11, boolean z12) {
        StringBuilder sb2 = new StringBuilder();
        if (z10) {
            sb2.append("Dynamic ");
        }
        if (z11) {
            sb2.append("Sequence ");
        }
        if (z12) {
            sb2.append("Session-Scoped ");
        }
        return sb2.toString();
    }

    public static final Object B(C12062f3 c12062f3) {
        if (c12062f3.G()) {
            return c12062f3.H();
        }
        if (c12062f3.I()) {
            return Long.valueOf(c12062f3.J());
        }
        if (c12062f3.M()) {
            return Double.valueOf(c12062f3.N());
        }
        if (c12062f3.P() > 0) {
            return Y(c12062f3.O());
        }
        return null;
    }

    public static final void C(Uri.Builder builder, String[] strArr, Bundle bundle, Set set) {
        for (String str : strArr) {
            String[] split = str.split(DocLint.SEPARATOR);
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                z(builder, str3, string, set);
            }
        }
    }

    public static final void D(StringBuilder sb2, int i10, String str, C12178s3 c12178s3) {
        if (c12178s3 == null) {
            return;
        }
        y(sb2, 3);
        sb2.append(str);
        sb2.append(" {\n");
        if (c12178s3.H() != 0) {
            y(sb2, 4);
            sb2.append("results: ");
            int i11 = 0;
            for (Long l10 : c12178s3.G()) {
                int i12 = i11 + 1;
                if (i11 != 0) {
                    sb2.append(", ");
                }
                sb2.append((Object) l10);
                i11 = i12;
            }
            sb2.append('\n');
        }
        if (c12178s3.F() != 0) {
            y(sb2, 4);
            sb2.append("status: ");
            int i13 = 0;
            for (Long l11 : c12178s3.E()) {
                int i14 = i13 + 1;
                if (i13 != 0) {
                    sb2.append(", ");
                }
                sb2.append((Object) l11);
                i13 = i14;
            }
            sb2.append('\n');
        }
        if (c12178s3.J() != 0) {
            y(sb2, 4);
            sb2.append("dynamic_filter_timestamps: {");
            int i15 = 0;
            for (com.google.android.gms.internal.measurement.Z2 z22 : c12178s3.I()) {
                int i16 = i15 + 1;
                if (i15 != 0) {
                    sb2.append(", ");
                }
                sb2.append((Object) (z22.E() ? Integer.valueOf(z22.F()) : null));
                sb2.append(b3.s.f32937c);
                sb2.append((Object) (z22.G() ? Long.valueOf(z22.H()) : null));
                i15 = i16;
            }
            sb2.append("}\n");
        }
        if (c12178s3.L() != 0) {
            y(sb2, 4);
            sb2.append("sequence_filter_timestamps: {");
            int i17 = 0;
            for (C12196u3 c12196u3 : c12178s3.K()) {
                int i18 = i17 + 1;
                if (i17 != 0) {
                    sb2.append(", ");
                }
                sb2.append((Object) (c12196u3.E() ? Integer.valueOf(c12196u3.F()) : null));
                sb2.append(": [");
                Iterator it = c12196u3.G().iterator();
                int i19 = 0;
                while (it.hasNext()) {
                    long longValue = ((Long) it.next()).longValue();
                    int i20 = i19 + 1;
                    if (i19 != 0) {
                        sb2.append(", ");
                    }
                    sb2.append(longValue);
                    i19 = i20;
                }
                sb2.append("]");
                i17 = i18;
            }
            sb2.append("}\n");
        }
        y(sb2, 3);
        sb2.append("}\n");
    }

    public static final void E(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj == null) {
            return;
        }
        y(sb2, i10 + 1);
        sb2.append(str);
        sb2.append(": ");
        sb2.append(obj);
        sb2.append('\n');
    }

    public static final void F(StringBuilder sb2, int i10, String str, com.google.android.gms.internal.measurement.S1 s12) {
        if (s12 == null) {
            return;
        }
        y(sb2, i10);
        sb2.append(str);
        sb2.append(" {\n");
        if (s12.E()) {
            int P10 = s12.P();
            E(sb2, i10, "comparison_type", P10 != 1 ? P10 != 2 ? P10 != 3 ? P10 != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (s12.F()) {
            E(sb2, i10, "match_as_float", Boolean.valueOf(s12.G()));
        }
        if (s12.H()) {
            E(sb2, i10, "comparison_value", s12.I());
        }
        if (s12.J()) {
            E(sb2, i10, "min_comparison_value", s12.K());
        }
        if (s12.L()) {
            E(sb2, i10, "max_comparison_value", s12.M());
        }
        y(sb2, i10);
        sb2.append("}\n");
    }

    public static boolean O(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    public static boolean P(List list, int i10) {
        if (i10 < list.size() * 64) {
            return ((1 << (i10 % 64)) & ((Long) list.get(i10 / 64)).longValue()) != 0;
        }
        return false;
    }

    public static List Q(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i10 = 0; i10 < length; i10++) {
            long j10 = 0;
            for (int i11 = 0; i11 < 64; i11++) {
                int i12 = (i10 * 64) + i11;
                if (i12 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i12)) {
                    j10 |= 1 << i11;
                }
            }
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    public static com.google.android.gms.internal.measurement.V5 W(com.google.android.gms.internal.measurement.V5 v52, byte[] bArr) throws zzmq {
        C12028b5 a10 = C12028b5.a();
        return a10 != null ? v52.d3(bArr, a10) : v52.i4(bArr);
    }

    public static int X(C12125m3 c12125m3, String str) {
        for (int i10 = 0; i10 < c12125m3.X0(); i10++) {
            if (str.equals(c12125m3.Y0(i10).G())) {
                return i10;
            }
        }
        return -1;
    }

    public static Bundle[] Y(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C12062f3 c12062f3 = (C12062f3) it.next();
            if (c12062f3 != null) {
                Bundle bundle = new Bundle();
                for (C12062f3 c12062f32 : c12062f3.O()) {
                    if (c12062f32.G()) {
                        bundle.putString(c12062f32.F(), c12062f32.H());
                    } else if (c12062f32.I()) {
                        bundle.putLong(c12062f32.F(), c12062f32.J());
                    } else if (c12062f32.M()) {
                        bundle.putDouble(c12062f32.F(), c12062f32.N());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public static final void o(C12017a3 c12017a3, String str, Object obj) {
        List t10 = c12017a3.t();
        int i10 = 0;
        while (true) {
            if (i10 >= t10.size()) {
                i10 = -1;
                break;
            } else if (str.equals(((C12062f3) t10.get(i10)).F())) {
                break;
            } else {
                i10++;
            }
        }
        C12053e3 Q10 = C12062f3.Q();
        Q10.u(str);
        Q10.y(((Long) obj).longValue());
        if (i10 >= 0) {
            c12017a3.x(i10, Q10);
        } else {
            c12017a3.z(Q10);
        }
    }

    @WorkerThread
    public static final boolean p(I i10, o7 o7Var) {
        G0.A.r(i10);
        G0.A.r(o7Var);
        return !TextUtils.isEmpty(o7Var.f63445c);
    }

    public static final Bundle q(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C12062f3 c12062f3 = (C12062f3) it.next();
            String F10 = c12062f3.F();
            if (c12062f3.M()) {
                bundle.putDouble(F10, c12062f3.N());
            } else if (c12062f3.K()) {
                bundle.putFloat(F10, c12062f3.L());
            } else if (c12062f3.G()) {
                bundle.putString(F10, c12062f3.H());
            } else if (c12062f3.I()) {
                bundle.putLong(F10, c12062f3.J());
            }
        }
        return bundle;
    }

    public static final C12062f3 r(C12026b3 c12026b3, String str) {
        for (C12062f3 c12062f3 : c12026b3.E()) {
            if (c12062f3.F().equals(str)) {
                return c12062f3;
            }
        }
        return null;
    }

    public static final Map s(C12026b3 c12026b3, String... strArr) {
        Object B10;
        HashMap hashMap = new HashMap();
        for (C12062f3 c12062f3 : c12026b3.E()) {
            if (Arrays.asList(strArr).contains(c12062f3.F()) && (B10 = B(c12062f3)) != null) {
                hashMap.put(c12062f3.F(), B10);
            }
        }
        return hashMap;
    }

    public static final Map t(C12026b3 c12026b3, String str) {
        Object B10;
        HashMap hashMap = new HashMap();
        for (C12062f3 c12062f3 : c12026b3.E()) {
            if (c12062f3.F().startsWith("gad_") && (B10 = B(c12062f3)) != null) {
                hashMap.put(c12062f3.F(), B10);
            }
        }
        return hashMap;
    }

    public static final Object u(C12026b3 c12026b3, String str) {
        C12062f3 r10 = r(c12026b3, str);
        if (r10 == null) {
            return null;
        }
        return B(r10);
    }

    public static final Object v(C12026b3 c12026b3, String str, Object obj) {
        Object u10 = u(c12026b3, str);
        return u10 == null ? obj : u10;
    }

    public static final void y(StringBuilder sb2, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append(GlideException.a.f59088e);
        }
    }

    public static final void z(Uri.Builder builder, String str, String str2, Set set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    public final void G(com.google.android.gms.internal.measurement.D3 d32, Object obj) {
        G0.A.r(obj);
        d32.w();
        d32.y();
        d32.A();
        if (obj instanceof String) {
            d32.v((String) obj);
            return;
        }
        if (obj instanceof Long) {
            d32.x(((Long) obj).longValue());
        } else if (obj instanceof Double) {
            d32.z(((Double) obj).doubleValue());
        } else {
            this.f62917a.a().o().b("Ignoring invalid (type) user attribute value", obj);
        }
    }

    public final void H(C12053e3 c12053e3, Object obj) {
        G0.A.r(obj);
        c12053e3.x();
        c12053e3.z();
        c12053e3.B();
        c12053e3.F();
        if (obj instanceof String) {
            c12053e3.w((String) obj);
            return;
        }
        if (obj instanceof Long) {
            c12053e3.y(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            c12053e3.A(((Double) obj).doubleValue());
            return;
        }
        if (!(obj instanceof Bundle[])) {
            this.f62917a.a().o().b("Ignoring invalid (type) event param value", obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                C12053e3 Q10 = C12062f3.Q();
                for (String str : bundle.keySet()) {
                    C12053e3 Q11 = C12062f3.Q();
                    Q11.u(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        Q11.y(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        Q11.w((String) obj2);
                    } else if (obj2 instanceof Double) {
                        Q11.A(((Double) obj2).doubleValue());
                    }
                    Q10.D(Q11);
                }
                if (Q10.C() > 0) {
                    arrayList.add((C12062f3) Q10.q());
                }
            }
        }
        c12053e3.E(arrayList);
    }

    @TargetApi(30)
    public final C6 I(String str, C12125m3 c12125m3, C12017a3 c12017a3, String str2) {
        int indexOf;
        C12227x7.a();
        C12370p3 c12370p3 = this.f62917a;
        if (!c12370p3.w().H(str, C12281e2.f63169Q0)) {
            return null;
        }
        long a10 = c12370p3.e().a();
        Set a11 = g7.a(c12370p3.w().C(str, C12281e2.f63242v0).split(DocLint.SEPARATOR));
        c7 c7Var = this.f62657b;
        P6 C02 = c7Var.C0();
        String x10 = C02.f62657b.D0().x(str);
        Uri.Builder builder = new Uri.Builder();
        C12370p3 c12370p32 = C02.f62917a;
        builder.scheme(c12370p32.w().C(str, C12281e2.f63228o0));
        if (TextUtils.isEmpty(x10)) {
            builder.authority(c12370p32.w().C(str, C12281e2.f63230p0));
        } else {
            String C10 = c12370p32.w().C(str, C12281e2.f63230p0);
            StringBuilder sb2 = new StringBuilder(String.valueOf(x10).length() + 1 + String.valueOf(C10).length());
            sb2.append(x10);
            sb2.append(".");
            sb2.append(C10);
            builder.authority(sb2.toString());
        }
        builder.path(c12370p32.w().C(str, C12281e2.f63232q0));
        z(builder, "gmp_app_id", c12125m3.p0(), a11);
        c12370p3.w().A();
        z(builder, "gmp_version", String.valueOf(130000L), a11);
        String O10 = c12125m3.O();
        C12342m w10 = c12370p3.w();
        C12273d2 c12273d2 = C12281e2.f63175T0;
        if (w10.H(str, c12273d2) && c7Var.D0().N(str)) {
            O10 = "";
        }
        z(builder, "app_instance_id", O10, a11);
        z(builder, "rdid", c12125m3.I(), a11);
        z(builder, "bundle_id", c12125m3.D(), a11);
        String D10 = c12017a3.D();
        String a12 = C12251a4.a(D10);
        if (true != TextUtils.isEmpty(a12)) {
            D10 = a12;
        }
        z(builder, "app_event_name", D10, a11);
        z(builder, "app_version", String.valueOf(c12125m3.v0()), a11);
        String w11 = c12125m3.w();
        if (c12370p3.w().H(str, c12273d2) && c7Var.D0().K(str) && !TextUtils.isEmpty(w11) && (indexOf = w11.indexOf(".")) != -1) {
            w11 = w11.substring(0, indexOf);
        }
        z(builder, "os_version", w11, a11);
        z(builder, "timestamp", String.valueOf(c12017a3.G()), a11);
        if (c12125m3.L()) {
            z(builder, "lat", "1", a11);
        }
        z(builder, "privacy_sandbox_version", String.valueOf(c12125m3.c0()), a11);
        z(builder, "trigger_uri_source", "1", a11);
        z(builder, "trigger_uri_timestamp", String.valueOf(a10), a11);
        z(builder, "request_uuid", str2, a11);
        List<C12062f3> t10 = c12017a3.t();
        Bundle bundle = new Bundle();
        for (C12062f3 c12062f3 : t10) {
            String F10 = c12062f3.F();
            if (c12062f3.M()) {
                bundle.putString(F10, String.valueOf(c12062f3.N()));
            } else if (c12062f3.K()) {
                bundle.putString(F10, String.valueOf(c12062f3.L()));
            } else if (c12062f3.G()) {
                bundle.putString(F10, c12062f3.H());
            } else if (c12062f3.I()) {
                bundle.putString(F10, String.valueOf(c12062f3.J()));
            }
        }
        C(builder, c12370p3.w().C(str, C12281e2.f63240u0).split("\\|"), bundle, a11);
        List<com.google.android.gms.internal.measurement.E3> W02 = c12125m3.W0();
        Bundle bundle2 = new Bundle();
        for (com.google.android.gms.internal.measurement.E3 e32 : W02) {
            String G10 = e32.G();
            if (e32.N()) {
                bundle2.putString(G10, String.valueOf(e32.O()));
            } else if (e32.L()) {
                bundle2.putString(G10, String.valueOf(e32.M()));
            } else if (e32.H()) {
                bundle2.putString(G10, e32.I());
            } else if (e32.J()) {
                bundle2.putString(G10, String.valueOf(e32.K()));
            }
        }
        C(builder, c12370p3.w().C(str, C12281e2.f63238t0).split("\\|"), bundle2, a11);
        z(builder, "dma", true != c12125m3.W() ? "0" : "1", a11);
        if (!c12125m3.Y().isEmpty()) {
            z(builder, "dma_cps", c12125m3.Y(), a11);
        }
        if (c12125m3.g0()) {
            com.google.android.gms.internal.measurement.J2 h02 = c12125m3.h0();
            if (!h02.P().isEmpty()) {
                z(builder, "dl_gclid", h02.P(), a11);
            }
            if (!h02.R().isEmpty()) {
                z(builder, "dl_gbraid", h02.R(), a11);
            }
            if (!h02.T().isEmpty()) {
                z(builder, "dl_gs", h02.T(), a11);
            }
            if (h02.V() > 0) {
                z(builder, "dl_ss_ts", String.valueOf(h02.V()), a11);
            }
            if (!h02.X().isEmpty()) {
                z(builder, "mr_gclid", h02.X(), a11);
            }
            if (!h02.Z().isEmpty()) {
                z(builder, "mr_gbraid", h02.Z(), a11);
            }
            if (!h02.b0().isEmpty()) {
                z(builder, "mr_gs", h02.b0(), a11);
            }
            if (h02.d0() > 0) {
                z(builder, "mr_click_ts", String.valueOf(h02.d0()), a11);
            }
        }
        return new C6(builder.build().toString(), a10, 1);
    }

    public final C12026b3 J(D d10) {
        C12017a3 O10 = C12026b3.O();
        O10.J(d10.f62590e);
        G g10 = d10.f62591f;
        F f10 = new F(g10);
        while (f10.hasNext()) {
            String next = f10.next();
            C12053e3 Q10 = C12062f3.Q();
            Q10.u(next);
            Object b10 = g10.b(next);
            G0.A.r(b10);
            H(Q10, b10);
            O10.z(Q10);
        }
        String str = d10.f62588c;
        if (!TextUtils.isEmpty(str) && g10.b("_o") == null) {
            C12053e3 Q11 = C12062f3.Q();
            Q11.u("_o");
            Q11.w(str);
            O10.y((C12062f3) Q11.q());
        }
        return (C12026b3) O10.q();
    }

    public final String K(C12116l3 c12116l3) {
        com.google.android.gms.internal.measurement.N2 Y02;
        if (c12116l3 == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nbatch {\n");
        if (c12116l3.J()) {
            E(sb2, 0, "upload_subdomain", c12116l3.K());
        }
        if (c12116l3.H()) {
            E(sb2, 0, "sgtm_join_id", c12116l3.I());
        }
        for (C12134n3 c12134n3 : c12116l3.E()) {
            if (c12134n3 != null) {
                y(sb2, 1);
                sb2.append("bundle {\n");
                if (c12134n3.e0()) {
                    E(sb2, 1, "protocol_version", Integer.valueOf(c12134n3.f1()));
                }
                G7.a();
                C12370p3 c12370p3 = this.f62917a;
                if (c12370p3.w().H(c12134n3.E(), C12281e2.f63163N0) && c12134n3.L0()) {
                    E(sb2, 1, "session_stitching_token", c12134n3.M0());
                }
                E(sb2, 1, "platform", c12134n3.z2());
                if (c12134n3.G()) {
                    E(sb2, 1, "gmp_version", Long.valueOf(c12134n3.H()));
                }
                if (c12134n3.I()) {
                    E(sb2, 1, "uploading_gmp_version", Long.valueOf(c12134n3.J()));
                }
                if (c12134n3.H0()) {
                    E(sb2, 1, "dynamite_version", Long.valueOf(c12134n3.I0()));
                }
                if (c12134n3.a0()) {
                    E(sb2, 1, "config_version", Long.valueOf(c12134n3.b0()));
                }
                E(sb2, 1, "gmp_app_id", c12134n3.T());
                E(sb2, 1, "app_id", c12134n3.E());
                E(sb2, 1, "app_version", c12134n3.F());
                if (c12134n3.Y()) {
                    E(sb2, 1, "app_version_major", Integer.valueOf(c12134n3.Z()));
                }
                E(sb2, 1, "firebase_instance_id", c12134n3.X());
                if (c12134n3.O()) {
                    E(sb2, 1, "dev_cert_hash", Long.valueOf(c12134n3.P()));
                }
                E(sb2, 1, "app_store", c12134n3.G2());
                if (c12134n3.p2()) {
                    E(sb2, 1, "upload_timestamp_millis", Long.valueOf(c12134n3.q2()));
                }
                if (c12134n3.r2()) {
                    E(sb2, 1, "start_timestamp_millis", Long.valueOf(c12134n3.s2()));
                }
                if (c12134n3.t2()) {
                    E(sb2, 1, "end_timestamp_millis", Long.valueOf(c12134n3.u2()));
                }
                if (c12134n3.v2()) {
                    E(sb2, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(c12134n3.w2()));
                }
                if (c12134n3.x2()) {
                    E(sb2, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(c12134n3.y2()));
                }
                E(sb2, 1, "app_instance_id", c12134n3.N());
                E(sb2, 1, "resettable_device_id", c12134n3.K());
                E(sb2, 1, "ds_id", c12134n3.d0());
                if (c12134n3.L()) {
                    E(sb2, 1, "limited_ad_tracking", Boolean.valueOf(c12134n3.M()));
                }
                E(sb2, 1, "os_version", c12134n3.A2());
                E(sb2, 1, "device_model", c12134n3.B2());
                E(sb2, 1, "user_default_language", c12134n3.C2());
                if (c12134n3.E2()) {
                    E(sb2, 1, "time_zone_offset_minutes", Integer.valueOf(c12134n3.F2()));
                }
                if (c12134n3.Q()) {
                    E(sb2, 1, "bundle_sequential_index", Integer.valueOf(c12134n3.R()));
                }
                if (c12134n3.Z0()) {
                    E(sb2, 1, "delivery_index", Integer.valueOf(c12134n3.a1()));
                }
                if (c12134n3.U()) {
                    E(sb2, 1, "service_upload", Boolean.valueOf(c12134n3.V()));
                }
                E(sb2, 1, "health_monitor", c12134n3.S());
                if (c12134n3.F0()) {
                    E(sb2, 1, "retry_counter", Integer.valueOf(c12134n3.G0()));
                }
                if (c12134n3.J0()) {
                    E(sb2, 1, "consent_signals", c12134n3.K0());
                }
                if (c12134n3.S0()) {
                    E(sb2, 1, "is_dma_region", Boolean.valueOf(c12134n3.T0()));
                }
                if (c12134n3.U0()) {
                    E(sb2, 1, "core_platform_services", c12134n3.V0());
                }
                if (c12134n3.Q0()) {
                    E(sb2, 1, "consent_diagnostics", c12134n3.R0());
                }
                if (c12134n3.N0()) {
                    E(sb2, 1, "target_os_version", Long.valueOf(c12134n3.O0()));
                }
                C12227x7.a();
                if (c12370p3.w().H(c12134n3.E(), C12281e2.f63169Q0)) {
                    E(sb2, 1, "ad_services_version", Integer.valueOf(c12134n3.W0()));
                    if (c12134n3.X0() && (Y02 = c12134n3.Y0()) != null) {
                        y(sb2, 2);
                        sb2.append("attribution_eligibility_status {\n");
                        E(sb2, 2, "eligible", Boolean.valueOf(Y02.E()));
                        E(sb2, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(Y02.F()));
                        E(sb2, 2, "pre_r", Boolean.valueOf(Y02.G()));
                        E(sb2, 2, "r_extensions_too_old", Boolean.valueOf(Y02.H()));
                        E(sb2, 2, "adservices_extension_too_old", Boolean.valueOf(Y02.I()));
                        E(sb2, 2, "ad_storage_not_allowed", Boolean.valueOf(Y02.J()));
                        E(sb2, 2, "measurement_manager_disabled", Boolean.valueOf(Y02.K()));
                        y(sb2, 2);
                        sb2.append("}\n");
                    }
                }
                if (c12134n3.b1()) {
                    com.google.android.gms.internal.measurement.J2 c12 = c12134n3.c1();
                    y(sb2, 2);
                    sb2.append("ad_campaign_info {\n");
                    if (c12.O()) {
                        E(sb2, 2, "deep_link_gclid", c12.P());
                    }
                    if (c12.Q()) {
                        E(sb2, 2, "deep_link_gbraid", c12.R());
                    }
                    if (c12.S()) {
                        E(sb2, 2, "deep_link_gad_source", c12.T());
                    }
                    if (c12.U()) {
                        E(sb2, 2, "deep_link_session_millis", Long.valueOf(c12.V()));
                    }
                    if (c12.W()) {
                        E(sb2, 2, "market_referrer_gclid", c12.X());
                    }
                    if (c12.Y()) {
                        E(sb2, 2, "market_referrer_gbraid", c12.Z());
                    }
                    if (c12.a0()) {
                        E(sb2, 2, "market_referrer_gad_source", c12.b0());
                    }
                    if (c12.c0()) {
                        E(sb2, 2, "market_referrer_click_millis", Long.valueOf(c12.d0()));
                    }
                    y(sb2, 2);
                    sb2.append("}\n");
                }
                if (c12134n3.f0()) {
                    E(sb2, 1, "batching_timestamp_millis", Long.valueOf(c12134n3.g0()));
                }
                if (c12134n3.d1()) {
                    com.google.android.gms.internal.measurement.C3 e12 = c12134n3.e1();
                    y(sb2, 2);
                    sb2.append("sgtm_diagnostics {\n");
                    int J10 = e12.J();
                    E(sb2, 2, "upload_type", J10 != 1 ? J10 != 2 ? J10 != 3 ? J10 != 4 ? "SDK_SERVICE_UPLOAD" : "PACKAGE_SERVICE_UPLOAD" : "SDK_CLIENT_UPLOAD" : "GA_UPLOAD" : "UPLOAD_TYPE_UNKNOWN");
                    E(sb2, 2, "client_upload_eligibility", e12.E().name());
                    int K10 = e12.K();
                    E(sb2, 2, "service_upload_eligibility", K10 != 1 ? K10 != 2 ? K10 != 3 ? K10 != 4 ? K10 != 5 ? "NON_PLAY_MISSING_SGTM_SERVER_URL" : "MISSING_SGTM_PROXY_INFO" : "MISSING_SGTM_SETTINGS" : "NOT_IN_ROLLOUT" : "SERVICE_UPLOAD_ELIGIBLE" : "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN");
                    y(sb2, 2);
                    sb2.append("}\n");
                }
                if (c12134n3.h0()) {
                    com.google.android.gms.internal.measurement.X2 i02 = c12134n3.i0();
                    y(sb2, 2);
                    sb2.append("consent_info_extra {\n");
                    for (com.google.android.gms.internal.measurement.U2 u22 : i02.E()) {
                        y(sb2, 3);
                        sb2.append("limited_data_modes {\n");
                        int G10 = u22.G();
                        E(sb2, 3, "type", G10 != 1 ? G10 != 2 ? G10 != 3 ? G10 != 4 ? "AD_PERSONALIZATION" : "AD_USER_DATA" : "ANALYTICS_STORAGE" : "AD_STORAGE" : "CONSENT_TYPE_UNSPECIFIED");
                        int H10 = u22.H();
                        E(sb2, 3, "mode", H10 != 1 ? H10 != 2 ? "NO_DATA_MODE" : "LIMITED_MODE" : "NOT_LIMITED");
                        y(sb2, 3);
                        sb2.append("}\n");
                    }
                    y(sb2, 2);
                    sb2.append("}\n");
                }
                List<com.google.android.gms.internal.measurement.E3> m22 = c12134n3.m2();
                if (m22 != null) {
                    for (com.google.android.gms.internal.measurement.E3 e32 : m22) {
                        if (e32 != null) {
                            y(sb2, 2);
                            sb2.append("user_property {\n");
                            E(sb2, 2, "set_timestamp_millis", e32.E() ? Long.valueOf(e32.F()) : null);
                            E(sb2, 2, "name", c12370p3.D().c(e32.G()));
                            E(sb2, 2, "string_value", e32.I());
                            E(sb2, 2, "int_value", e32.J() ? Long.valueOf(e32.K()) : null);
                            E(sb2, 2, "double_value", e32.N() ? Double.valueOf(e32.O()) : null);
                            y(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<com.google.android.gms.internal.measurement.P2> W10 = c12134n3.W();
                if (W10 != null) {
                    for (com.google.android.gms.internal.measurement.P2 p22 : W10) {
                        if (p22 != null) {
                            y(sb2, 2);
                            sb2.append("audience_membership {\n");
                            if (p22.E()) {
                                E(sb2, 2, "audience_id", Integer.valueOf(p22.F()));
                            }
                            if (p22.J()) {
                                E(sb2, 2, "new_audience", Boolean.valueOf(p22.K()));
                            }
                            D(sb2, 2, "current_data", p22.G());
                            if (p22.H()) {
                                D(sb2, 2, "previous_data", p22.I());
                            }
                            y(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                List<C12026b3> g22 = c12134n3.g2();
                if (g22 != null) {
                    for (C12026b3 c12026b3 : g22) {
                        if (c12026b3 != null) {
                            y(sb2, 2);
                            sb2.append("event {\n");
                            E(sb2, 2, "name", c12370p3.D().a(c12026b3.H()));
                            if (c12026b3.I()) {
                                E(sb2, 2, "timestamp_millis", Long.valueOf(c12026b3.J()));
                            }
                            if (c12026b3.K()) {
                                E(sb2, 2, "previous_timestamp_millis", Long.valueOf(c12026b3.L()));
                            }
                            if (c12026b3.M()) {
                                E(sb2, 2, oc.c.f98682m, Integer.valueOf(c12026b3.N()));
                            }
                            if (c12026b3.F() != 0) {
                                w(sb2, 2, c12026b3.E());
                            }
                            y(sb2, 2);
                            sb2.append("}\n");
                        }
                    }
                }
                y(sb2, 1);
                sb2.append("}\n");
            }
        }
        sb2.append("} // End-of-batch\n");
        return sb2.toString();
    }

    public final String L(com.google.android.gms.internal.measurement.M1 m12) {
        if (m12 == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nevent_filter {\n");
        if (m12.E()) {
            E(sb2, 0, "filter_id", Integer.valueOf(m12.F()));
        }
        E(sb2, 0, "event_name", this.f62917a.D().a(m12.G()));
        String A10 = A(m12.M(), m12.N(), m12.P());
        if (!A10.isEmpty()) {
            E(sb2, 0, "filter_type", A10);
        }
        if (m12.K()) {
            F(sb2, 1, "event_count_filter", m12.L());
        }
        if (m12.I() > 0) {
            sb2.append("  filters {\n");
            Iterator it = m12.H().iterator();
            while (it.hasNext()) {
                x(sb2, 2, (com.google.android.gms.internal.measurement.O1) it.next());
            }
        }
        y(sb2, 1);
        sb2.append("}\n}\n");
        return sb2.toString();
    }

    public final String M(com.google.android.gms.internal.measurement.U1 u12) {
        if (u12 == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\nproperty_filter {\n");
        if (u12.E()) {
            E(sb2, 0, "filter_id", Integer.valueOf(u12.F()));
        }
        E(sb2, 0, "property_name", this.f62917a.D().c(u12.G()));
        String A10 = A(u12.I(), u12.J(), u12.L());
        if (!A10.isEmpty()) {
            E(sb2, 0, "filter_type", A10);
        }
        x(sb2, 1, u12.H());
        sb2.append("}\n");
        return sb2.toString();
    }

    public final Parcelable N(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                parcelable = (Parcelable) creator.createFromParcel(obtain);
            } catch (SafeParcelReader.ParseException unused) {
                this.f62917a.a().o().a("Failed to load parcelable from buffer");
            }
            return parcelable;
        } finally {
            obtain.recycle();
        }
    }

    public final List R(List list, List list2) {
        int i10;
        ArrayList arrayList = new ArrayList(list);
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                this.f62917a.a().r().b("Ignoring negative bit index to be cleared", num);
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    this.f62917a.a().r().c("Ignoring bit index greater than bitSet size", num, Integer.valueOf(arrayList.size()));
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i11 = size2;
            i10 = size;
            size = i11;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i10);
    }

    public final boolean S(long j10, long j11) {
        return j10 == 0 || j11 <= 0 || Math.abs(this.f62917a.e().a() - j10) > j11;
    }

    @WorkerThread
    public final long T(byte[] bArr) {
        G0.A.r(bArr);
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.C().h();
        MessageDigest C10 = m7.C();
        if (C10 != null) {
            return m7.D(C10.digest(bArr));
        }
        c12370p3.a().o().a("Failed to get MD5");
        return 0L;
    }

    public final long U(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return T(str.getBytes(Charset.forName("UTF-8")));
    }

    public final byte[] V(byte[] bArr) throws IOException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            this.f62917a.a().o().b("Failed to gzip content", e10);
            throw e10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r4 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if (r7 >= r4) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r5.add(Z((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
    
        r0.put(r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        if ((r3 instanceof java.util.ArrayList) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        if (r7 >= r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
    
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0067, code lost:
    
        r5.add(Z((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
    
        if ((r3 instanceof android.os.Bundle) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0077, code lost:
    
        r5.add(Z((android.os.Bundle) r3, false));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Map Z(Bundle bundle, boolean z10) {
        HashMap hashMap = new HashMap();
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            Object obj = bundle.get(next);
            boolean z11 = obj instanceof Parcelable[];
            if (!z11 && !(obj instanceof ArrayList) && !(obj instanceof Bundle)) {
                if (obj != null) {
                    hashMap.put(next, obj);
                }
            }
        }
        return hashMap;
    }

    @Override
    public final boolean l() {
        return false;
    }

    public final I m(C12022b c12022b) {
        Object obj;
        Bundle n10 = n(c12022b.f(), true);
        String obj2 = (!n10.containsKey("_o") || (obj = n10.get("_o")) == null) ? "app" : obj.toString();
        String b10 = C12251a4.b(c12022b.b());
        if (b10 == null) {
            b10 = c12022b.b();
        }
        return new I(b10, new G(n10), obj2, c12022b.a());
    }

    public final Bundle n(Map map, boolean z10) {
        Bundle bundle = new Bundle();
        for (String str : map.o()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z10) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    arrayList2.add(n((Map) arrayList.get(i10), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    public final void w(StringBuilder sb2, int i10, List list) {
        if (list == null) {
            return;
        }
        int i11 = i10 + 1;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C12062f3 c12062f3 = (C12062f3) it.next();
            if (c12062f3 != null) {
                y(sb2, i11);
                sb2.append("param {\n");
                E(sb2, i11, "name", c12062f3.E() ? this.f62917a.D().b(c12062f3.F()) : null);
                E(sb2, i11, "string_value", c12062f3.G() ? c12062f3.H() : null);
                E(sb2, i11, "int_value", c12062f3.I() ? Long.valueOf(c12062f3.J()) : null);
                E(sb2, i11, "double_value", c12062f3.M() ? Double.valueOf(c12062f3.N()) : null);
                if (c12062f3.P() > 0) {
                    w(sb2, i11, c12062f3.O());
                }
                y(sb2, i11);
                sb2.append("}\n");
            }
        }
    }

    public final void x(StringBuilder sb2, int i10, com.google.android.gms.internal.measurement.O1 o12) {
        String str;
        if (o12 == null) {
            return;
        }
        y(sb2, i10);
        sb2.append("filter {\n");
        if (o12.I()) {
            E(sb2, i10, "complement", Boolean.valueOf(o12.J()));
        }
        if (o12.K()) {
            E(sb2, i10, "param_name", this.f62917a.D().b(o12.L()));
        }
        if (o12.E()) {
            int i11 = i10 + 1;
            com.google.android.gms.internal.measurement.Y1 F10 = o12.F();
            if (F10 != null) {
                y(sb2, i11);
                sb2.append("string_filter {\n");
                if (F10.E()) {
                    switch (F10.N()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case 6:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    E(sb2, i11, "match_type", str);
                }
                if (F10.F()) {
                    E(sb2, i11, "expression", F10.G());
                }
                if (F10.H()) {
                    E(sb2, i11, "case_sensitive", Boolean.valueOf(F10.I()));
                }
                if (F10.K() > 0) {
                    y(sb2, i10 + 2);
                    sb2.append("expression_list {\n");
                    for (String str2 : F10.J()) {
                        y(sb2, i10 + 3);
                        sb2.append(str2);
                        sb2.append("\n");
                    }
                    sb2.append("}\n");
                }
                y(sb2, i11);
                sb2.append("}\n");
            }
        }
        if (o12.G()) {
            F(sb2, i10 + 1, "number_filter", o12.H());
        }
        y(sb2, i10);
        sb2.append("}\n");
    }
}
