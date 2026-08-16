package com.google.android.gms.measurement.internal;

import B0.C2324i;
import B0.C2326k;
import T0.C3038h;
import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.security.keystore.KeyProperties;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.io.ByteArrayInputStream;
import java.lang.constant.ConstantDescs;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import n1.C14345a;
import org.openjdk.tools.doclint.DocLint;
import vm.InterfaceC15866d;

public final class m7 extends T3 {

    public static final String[] f63406i = {"firebase_", "google_", "ga_"};

    public static final String[] f63407j = {"_err"};

    public static final int f63408k = 0;

    public SecureRandom f63409c;

    public final AtomicLong f63410d;

    public int f63411e;

    public MeasurementManagerFutures f63412f;

    public Boolean f63413g;

    public Integer f63414h;

    public m7(C12370p3 c12370p3) {
        super(c12370p3);
        this.f63414h = null;
        this.f63410d = new AtomicLong(0L);
    }

    public static MessageDigest C() {
        MessageDigest messageDigest;
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                messageDigest = MessageDigest.getInstance(KeyProperties.DIGEST_MD5);
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    @VisibleForTesting
    public static long D(byte[] bArr) {
        G0.A.r(bArr);
        int length = bArr.length;
        int i10 = 0;
        G0.A.x(length > 0);
        long j10 = 0;
        for (int i11 = length - 1; i11 >= 0 && i11 >= bArr.length - 8; i11--) {
            j10 += (bArr[i11] & 255) << i10;
            i10 += 8;
        }
        return j10;
    }

    public static boolean E(Context context, boolean z10) {
        G0.A.r(context);
        return F(context, "com.google.android.gms.measurement.AppMeasurementJobService");
    }

    public static boolean F(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean N(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith(ConstantDescs.DEFAULT_NAME);
    }

    public static boolean O(String str, String[] strArr) {
        G0.A.r(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean U(String str) {
        return !f63407j[0].equals(str);
    }

    public static ArrayList h0(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C12310i c12310i = (C12310i) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", c12310i.f63338b);
            bundle.putString("origin", c12310i.f63339c);
            bundle.putLong(C14345a.C1879a.f97713m, c12310i.f63341e);
            bundle.putString("name", c12310i.f63340d.f63358c);
            V3.a(bundle, G0.A.r(c12310i.f63340d.n()));
            bundle.putBoolean(C14345a.C1879a.f97714n, c12310i.f63342f);
            String str = c12310i.f63343g;
            if (str != null) {
                bundle.putString(C14345a.C1879a.f97704d, str);
            }
            I i10 = c12310i.f63344h;
            if (i10 != null) {
                bundle.putString(C14345a.C1879a.f97706f, i10.f62679b);
                G g10 = i10.f62680c;
                if (g10 != null) {
                    bundle.putBundle(C14345a.C1879a.f97707g, g10.n0());
                }
            }
            bundle.putLong(C14345a.C1879a.f97705e, c12310i.f63345i);
            I i11 = c12310i.f63346j;
            if (i11 != null) {
                bundle.putString(C14345a.C1879a.f97708h, i11.f62679b);
                G g11 = i11.f62680c;
                if (g11 != null) {
                    bundle.putBundle(C14345a.C1879a.f97709i, g11.n0());
                }
            }
            bundle.putLong(C14345a.C1879a.f97715o, c12310i.f63340d.f63359d);
            bundle.putLong(C14345a.C1879a.f97710j, c12310i.f63347k);
            I i12 = c12310i.f63348l;
            if (i12 != null) {
                bundle.putString(C14345a.C1879a.f97711k, i12.f62679b);
                G g12 = i12.f62680c;
                if (g12 != null) {
                    bundle.putBundle(C14345a.C1879a.f97712l, g12.n0());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static boolean j0(Context context) {
        ActivityInfo receiverInfo;
        G0.A.r(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    @WorkerThread
    public static void k0(C12348m5 c12348m5, Bundle bundle, boolean z10) {
        if (bundle != null && c12348m5 != null) {
            if (!bundle.containsKey("_sc") || z10) {
                String str = c12348m5.f63396a;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = c12348m5.f63397b;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", c12348m5.f63398c);
                return;
            }
            z10 = false;
        }
        if (bundle != null && c12348m5 == null && z10) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    public static final boolean m0(Bundle bundle, int i10) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i10);
        return true;
    }

    public static boolean r0(String str) {
        G0.A.l(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public final void A(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.a().t().c("Not putting event parameter. Invalid value type. name, type", c12370p3.D().b(str), simpleName);
        }
    }

    public final int A0(String str) {
        if (!u0("event param", str)) {
            return 3;
        }
        if (!v0("event param", null, null, str)) {
            return 14;
        }
        this.f62917a.w();
        return !w0("event param", 40, str) ? 3 : 0;
    }

    public final void B(l7 l7Var, String str, int i10, String str2, String str3, int i11) {
        Bundle bundle = new Bundle();
        m0(bundle, i10);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i10 == 6 || i10 == 7 || i10 == 2) {
            bundle.putLong("_el", i11);
        }
        l7Var.a(str, "_err", bundle);
    }

    public final boolean B0(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public final boolean C0(String str, String str2, int i10, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String obj2 = obj.toString();
            if (obj2.codePointCount(0, obj2.length()) > i10) {
                this.f62917a.a().t().d("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(obj2.length()));
                return false;
            }
        }
        return true;
    }

    public final void D0(String str, String str2, String str3, Bundle bundle, List list, boolean z10) {
        int z02;
        int i10;
        char c10;
        String str4;
        int i11;
        int r10;
        if (bundle == null) {
            return;
        }
        C12370p3 c12370p3 = this.f62917a;
        char c11 = '\u4e60';
        int i12 = true != c12370p3.w().f62917a.C().V(231100000, true) ? 0 : 35;
        int i13 = 0;
        boolean z11 = false;
        for (String str5 : new TreeSet(bundle.keySet())) {
            if (list == null || !list.contains(str5)) {
                z02 = !z10 ? z0(str5) : 0;
                if (z02 == 0) {
                    z02 = A0(str5);
                }
            } else {
                z02 = 0;
            }
            if (z02 != 0) {
                x(bundle, z02, str5, z02 == 3 ? str5 : null);
                bundle.remove(str5);
                i10 = i12;
                c10 = c11;
            } else {
                if (B0(bundle.get(str5))) {
                    c12370p3.a().t().d("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str2, str3, str5);
                    r10 = 22;
                    str4 = str5;
                    i11 = i12;
                } else {
                    str4 = str5;
                    i11 = i12;
                    r10 = r(str, str2, str5, bundle.get(str5), bundle, list, z10, false);
                }
                if (r10 != 0 && !"_ev".equals(str4)) {
                    x(bundle, r10, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (r0(str4) && !O(str4, C12259b4.f63023d)) {
                    int i14 = i13 + 1;
                    c10 = '\u4e60';
                    if (V(231100000, true)) {
                        i10 = i11;
                        if (i14 > i10) {
                            if (!c12370p3.w().H(null, C12281e2.f63208g1) || !z11) {
                                C12448z2 q10 = c12370p3.a().q();
                                StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 55);
                                sb2.append("Item can't contain more than ");
                                sb2.append(i10);
                                sb2.append(" item-scoped custom params");
                                q10.c(sb2.toString(), c12370p3.D().a(str2), c12370p3.D().e(bundle));
                            }
                            m0(bundle, 28);
                            bundle.remove(str4);
                            i13 = i14;
                            c11 = '\u4e60';
                            i12 = i10;
                            z11 = true;
                        }
                    } else {
                        c12370p3.a().q().c("Item array not supported on client's version of Google Play Services (Android Only)", c12370p3.D().a(str2), c12370p3.D().e(bundle));
                        m0(bundle, 23);
                        bundle.remove(str4);
                        i10 = i11;
                    }
                    i13 = i14;
                }
                i10 = i11;
                c10 = '\u4e60';
            }
            c11 = c10;
            i12 = i10;
        }
    }

    @WorkerThread
    public final boolean G() {
        h();
        return J() == 1;
    }

    public final MeasurementManagerFutures H() {
        if (this.f63412f == null) {
            this.f63412f = MeasurementManagerFutures.from(this.f62917a.d());
        }
        return this.f63412f;
    }

    public final int I() {
        int extensionVersion;
        int extensionVersion2;
        if (Build.VERSION.SDK_INT < 30) {
            return 0;
        }
        extensionVersion = SdkExtensions.getExtensionVersion(30);
        if (extensionVersion <= 3) {
            return 0;
        }
        extensionVersion2 = SdkExtensions.getExtensionVersion(1000000);
        return extensionVersion2;
    }

    @WorkerThread
    public final long J() {
        int extensionVersion;
        long j10;
        h();
        if (!L(this.f62917a.L().q())) {
            return 0L;
        }
        if (Build.VERSION.SDK_INT < 30) {
            j10 = 4;
        } else {
            extensionVersion = SdkExtensions.getExtensionVersion(30);
            if (extensionVersion < 4) {
                j10 = 8;
            } else {
                C12370p3 c12370p3 = this.f62917a;
                int I10 = I();
                c12370p3.w();
                j10 = I10 < ((Integer) C12281e2.f63224m0.b(null)).intValue() ? 16L : 0L;
            }
        }
        if (!M("android.permission.ACCESS_ADSERVICES_ATTRIBUTION")) {
            j10 |= 2;
        }
        if (j10 == 0 && !K()) {
            j10 = 64;
        }
        if (j10 == 0) {
            return 1L;
        }
        return j10;
    }

    @TargetApi(30)
    @WorkerThread
    public final boolean K() {
        Object e10;
        Integer num;
        if (this.f63413g == null) {
            MeasurementManagerFutures H10 = H();
            boolean z10 = false;
            if (H10 == null) {
                return false;
            }
            try {
                num = H10.getMeasurementApiStatusAsync().get(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER, TimeUnit.MILLISECONDS);
                if (num != null) {
                    try {
                        if (num.intValue() == 1) {
                            z10 = true;
                        }
                    } catch (InterruptedException e11) {
                        e10 = e11;
                        this.f62917a.a().r().b("Measurement manager api exception", e10);
                        this.f63413g = Boolean.FALSE;
                        this.f62917a.a().w().b("Measurement manager api status result", num);
                        return this.f63413g.booleanValue();
                    } catch (CancellationException e12) {
                        e10 = e12;
                        this.f62917a.a().r().b("Measurement manager api exception", e10);
                        this.f63413g = Boolean.FALSE;
                        this.f62917a.a().w().b("Measurement manager api status result", num);
                        return this.f63413g.booleanValue();
                    } catch (ExecutionException e13) {
                        e10 = e13;
                        this.f62917a.a().r().b("Measurement manager api exception", e10);
                        this.f63413g = Boolean.FALSE;
                        this.f62917a.a().w().b("Measurement manager api status result", num);
                        return this.f63413g.booleanValue();
                    } catch (TimeoutException e14) {
                        e10 = e14;
                        this.f62917a.a().r().b("Measurement manager api exception", e10);
                        this.f63413g = Boolean.FALSE;
                        this.f62917a.a().w().b("Measurement manager api status result", num);
                        return this.f63413g.booleanValue();
                    }
                }
                this.f63413g = Boolean.valueOf(z10);
            } catch (InterruptedException | CancellationException | ExecutionException | TimeoutException e15) {
                e10 = e15;
                num = null;
            }
            this.f62917a.a().w().b("Measurement manager api status result", num);
        }
        return this.f63413g.booleanValue();
    }

    public final boolean L(String str) {
        String str2 = (String) C12281e2.f63236s0.b(null);
        return str2.equals("*") || Arrays.asList(str2.split(DocLint.SEPARATOR)).contains(str);
    }

    @WorkerThread
    public final boolean M(String str) {
        h();
        C12370p3 c12370p3 = this.f62917a;
        if (V0.d.a(c12370p3.d()).a(str) == 0) {
            return true;
        }
        c12370p3.a().v().b("Permission not granted", str);
        return false;
    }

    public final boolean P(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        C12370p3 c12370p3 = this.f62917a;
        String i10 = c12370p3.w().i();
        c12370p3.c();
        return i10.equals(str);
    }

    public final Bundle Q(Bundle bundle, String str) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str2 : bundle.keySet()) {
                Object s10 = s(str2, bundle.get(str2));
                if (s10 == null) {
                    C12370p3 c12370p3 = this.f62917a;
                    c12370p3.a().t().b("Param value can't be null", c12370p3.D().b(str2));
                } else {
                    A(bundle2, str2, s10);
                }
            }
        }
        return bundle2;
    }

    public final I R(String str, String str2, Bundle bundle, String str3, long j10, boolean z10, boolean z11) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (x0(str2) != 0) {
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.a().o().b("Invalid conditional property event name", c12370p3.D().c(str2));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str3);
        Bundle t10 = t(str, str2, bundle2, C3038h.c("_o"), true);
        if (z10) {
            t10 = Q(t10, str);
        }
        G0.A.r(t10);
        return new I(str2, new G(t10), str3, j10);
    }

    @VisibleForTesting
    public final boolean S(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo f10 = V0.d.a(context).f(str, 64);
            if (f10 == null || (signatureArr = f10.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e10) {
            this.f62917a.a().o().b("Package name not found", e10);
            return true;
        } catch (CertificateException e11) {
            this.f62917a.a().o().b("Error obtaining certificate", e11);
            return true;
        }
    }

    public final byte[] T(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    public final boolean V(int i10, boolean z10) {
        Boolean x10 = this.f62917a.J().x();
        if (W() < i10 / 1000) {
            return (x10 == null || x10.booleanValue()) ? false : true;
        }
        return true;
    }

    @InterfaceC15866d({"this.apkVersion"})
    public final int W() {
        if (this.f63414h == null) {
            this.f63414h = Integer.valueOf(C2324i.i().b(this.f62917a.d()) / 1000);
        }
        return this.f63414h.intValue();
    }

    public final int X(int i10) {
        return C2324i.i().k(this.f62917a.d(), C2326k.f1252a);
    }

    public final long Y(long j10, long j11) {
        return (j10 + (j11 * 60000)) / 86400000;
    }

    @WorkerThread
    public final void Z(Bundle bundle, long j10) {
        long j11 = bundle.getLong("_et");
        if (j11 != 0) {
            this.f62917a.a().r().b("Params already contained engagement", Long.valueOf(j11));
        } else {
            j11 = 0;
        }
        bundle.putLong("_et", j10 + j11);
    }

    public final void a0(InterfaceC12238z0 interfaceC12238z0, String str) {
        Bundle bundle = new Bundle();
        bundle.putString(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, str);
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62917a.a().r().b("Error returning string value to wrapper", e10);
        }
    }

    public final void b0(InterfaceC12238z0 interfaceC12238z0, long j10) {
        Bundle bundle = new Bundle();
        bundle.putLong(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, j10);
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62917a.a().r().b("Error returning long value to wrapper", e10);
        }
    }

    public final void c0(InterfaceC12238z0 interfaceC12238z0, int i10) {
        Bundle bundle = new Bundle();
        bundle.putInt(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, i10);
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62917a.a().r().b("Error returning int value to wrapper", e10);
        }
    }

    public final void d0(InterfaceC12238z0 interfaceC12238z0, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, bArr);
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62917a.a().r().b("Error returning byte array to wrapper", e10);
        }
    }

    public final void e0(InterfaceC12238z0 interfaceC12238z0, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, z10);
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62917a.a().r().b("Error returning boolean value to wrapper", e10);
        }
    }

    public final void f0(InterfaceC12238z0 interfaceC12238z0, Bundle bundle) {
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62917a.a().r().b("Error returning bundle value to wrapper", e10);
        }
    }

    public final void g0(InterfaceC12238z0 interfaceC12238z0, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(com.itsmagic.engine.Engines.Engine.Animation.a.f72595c, arrayList);
        try {
            interfaceC12238z0.l(bundle);
        } catch (RemoteException e10) {
            this.f62917a.a().r().b("Error returning bundle list to wrapper", e10);
        }
    }

    @Override
    public final boolean i() {
        return true;
    }

    public final URL i0(long j10, String str, String str2, long j11, String str3) {
        try {
            G0.A.l(str2);
            G0.A.l(str);
            String format = String.format("https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s", String.format("v%s.%s", 130000L, Integer.valueOf(W())), str2, str, Long.valueOf(j11));
            if (str.equals(this.f62917a.w().j())) {
                format = format.concat("&ddl_test=1");
            }
            if (!str3.isEmpty()) {
                if (str3.charAt(0) != '&') {
                    format = format.concat("&");
                }
                format = format.concat(str3);
            }
            return new URL(format);
        } catch (IllegalArgumentException e10) {
            e = e10;
            this.f62917a.a().o().b("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        } catch (MalformedURLException e11) {
            e = e11;
            this.f62917a.a().o().b("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    @Override
    @WorkerThread
    public final void j() {
        h();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                this.f62917a.a().r().a("Utils falling back to Random for random id");
            }
        }
        this.f63410d.set(nextLong);
    }

    public final String l0() {
        byte[] bArr = new byte[16];
        q0().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final Object n0(int i10, Object obj, boolean z10, boolean z11, String str) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return q(obj.toString(), i10, z10);
        }
        if (!z11 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle Q10 = Q((Bundle) parcelable, null);
                if (!Q10.isEmpty()) {
                    arrayList.add(Q10);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final boolean o(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f62917a.a().q().a("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        G0.A.r(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        this.f62917a.a().q().b("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", B2.x(str));
        return false;
    }

    public final int o0(String str) {
        if ("_ldl".equals(str)) {
            this.f62917a.w();
            return 2048;
        }
        if ("_id".equals(str)) {
            this.f62917a.w();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            this.f62917a.w();
            return 100;
        }
        this.f62917a.w();
        return 36;
    }

    public final boolean p(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            G0.A.r(str);
            if (!str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public final long p0() {
        long andIncrement;
        long j10;
        AtomicLong atomicLong = this.f63410d;
        if (atomicLong.get() != 0) {
            AtomicLong atomicLong2 = this.f63410d;
            synchronized (atomicLong2) {
                atomicLong2.compareAndSet(-1L, 1L);
                andIncrement = atomicLong2.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (atomicLong) {
            long nextLong = new Random(System.nanoTime() ^ this.f62917a.e().a()).nextLong();
            int i10 = this.f63411e + 1;
            this.f63411e = i10;
            j10 = nextLong + i10;
        }
        return j10;
    }

    public final String q(String str, int i10, boolean z10) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i10) {
            return str;
        }
        if (z10) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i10))).concat("...");
        }
        return null;
    }

    @InterfaceC15866d({"this.secureRandom"})
    @WorkerThread
    public final SecureRandom q0() {
        h();
        if (this.f63409c == null) {
            this.f63409c = new SecureRandom();
        }
        return this.f63409c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d4  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int r(String str, String str2, String str3, Object obj, Bundle bundle, List list, boolean z10, boolean z11) {
        int i10;
        int size;
        h();
        if (B0(obj)) {
            if (!z11) {
                return 21;
            }
            if (!O(str3, C12259b4.f63022c)) {
                return 20;
            }
            C12293f6 J10 = this.f62917a.J();
            J10.h();
            J10.j();
            if (J10.y() && J10.f62917a.C().W() < 200900) {
                return 25;
            }
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.w();
            boolean z12 = obj instanceof Parcelable[];
            if (z12) {
                size = ((Parcelable[]) obj).length;
            } else if (obj instanceof ArrayList) {
                size = ((ArrayList) obj).size();
            }
            if (size > 200) {
                c12370p3.a().t().d("Parameter array is too long; discarded. Value kind, name, array length", "param", str3, Integer.valueOf(size));
                c12370p3.w();
                if (z12) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    if (parcelableArr.length > 200) {
                        bundle.putParcelableArray(str3, (Parcelable[]) Arrays.copyOf(parcelableArr, 200));
                    }
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList = (ArrayList) obj;
                    if (arrayList.size() > 200) {
                        bundle.putParcelableArrayList(str3, new ArrayList<>(arrayList.subList(0, 200)));
                    }
                }
                i10 = 17;
                if (!C0("param", str3, (!N(str2) || N(str3)) ? this.f62917a.w().y(null, false) : this.f62917a.w().x(null, false), obj)) {
                    return i10;
                }
                if (!z11) {
                    return 4;
                }
                if (obj instanceof Bundle) {
                    D0(str, str2, str3, (Bundle) obj, list, z10);
                } else if (obj instanceof Parcelable[]) {
                    for (Parcelable parcelable : (Parcelable[]) obj) {
                        if (!(parcelable instanceof Bundle)) {
                            this.f62917a.a().t().c("All Parcelable[] elements must be of type Bundle. Value type, name", parcelable.getClass(), str3);
                            return 4;
                        }
                        D0(str, str2, str3, (Bundle) parcelable, list, z10);
                    }
                } else {
                    if (!(obj instanceof ArrayList)) {
                        return 4;
                    }
                    ArrayList arrayList2 = (ArrayList) obj;
                    int size2 = arrayList2.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        E e10 = arrayList2.get(i11);
                        if (!(e10 instanceof Bundle)) {
                            this.f62917a.a().t().c("All ArrayList elements must be of type Bundle. Value type, name", e10 != 0 ? e10.getClass() : "null", str3);
                            return 4;
                        }
                        D0(str, str2, str3, (Bundle) e10, list, z10);
                    }
                }
                return i10;
            }
        }
        i10 = 0;
        if (!C0("param", str3, (!N(str2) || N(str3)) ? this.f62917a.w().y(null, false) : this.f62917a.w().x(null, false), obj)) {
        }
    }

    public final Object s(String str, Object obj) {
        if ("_ev".equals(str)) {
            return n0(this.f62917a.w().y(null, false), obj, true, true, null);
        }
        return n0(N(str) ? this.f62917a.w().y(null, false) : this.f62917a.w().x(null, false), obj, false, true, null);
    }

    public final Bundle s0(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str = uri.getQueryParameter("utm_campaign");
                str2 = uri.getQueryParameter("utm_source");
                str3 = uri.getQueryParameter("utm_medium");
                str4 = uri.getQueryParameter("gclid");
                str5 = uri.getQueryParameter("gbraid");
                str6 = uri.getQueryParameter("utm_id");
                str7 = uri.getQueryParameter("dclid");
                str8 = uri.getQueryParameter("srsltid");
                str9 = uri.getQueryParameter("sfmc_id");
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                str5 = null;
                str6 = null;
                str7 = null;
                str8 = null;
                str9 = null;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5) && TextUtils.isEmpty(str6) && TextUtils.isEmpty(str7) && TextUtils.isEmpty(str8) && TextUtils.isEmpty(str9)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(str)) {
                str10 = "sfmc_id";
            } else {
                str10 = "sfmc_id";
                bundle.putString(FirebaseAnalytics.d.f67672L, str);
            }
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("source", str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("medium", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString("gclid", str4);
            }
            if (!TextUtils.isEmpty(str5)) {
                bundle.putString("gbraid", str5);
            }
            String queryParameter = uri.getQueryParameter("gad_source");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString("gad_source", queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString(FirebaseAnalytics.d.f67675O, queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("content", queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter(FirebaseAnalytics.d.f67677Q);
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString(FirebaseAnalytics.d.f67677Q, queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter(FirebaseAnalytics.d.f67678R);
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString(FirebaseAnalytics.d.f67678R, queryParameter5);
            }
            String queryParameter6 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("anid", queryParameter6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString(FirebaseAnalytics.d.f67679S, str6);
            }
            if (!TextUtils.isEmpty(str7)) {
                bundle.putString("dclid", str7);
            }
            String queryParameter7 = uri.getQueryParameter("utm_source_platform");
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString(FirebaseAnalytics.d.f67680T, queryParameter7);
            }
            String queryParameter8 = uri.getQueryParameter("utm_creative_format");
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString(FirebaseAnalytics.d.f67681U, queryParameter8);
            }
            String queryParameter9 = uri.getQueryParameter("utm_marketing_tactic");
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString(FirebaseAnalytics.d.f67682V, queryParameter9);
            }
            if (!TextUtils.isEmpty(str8)) {
                bundle.putString("srsltid", str8);
            }
            if (!TextUtils.isEmpty(str9)) {
                bundle.putString(str10, str9);
            }
            for (String str11 : uri.getQueryParameterNames()) {
                if (str11.startsWith("gad_")) {
                    String queryParameter10 = uri.getQueryParameter(str11);
                    if (!TextUtils.isEmpty(queryParameter10)) {
                        bundle.putString(str11, queryParameter10);
                    }
                }
            }
            return bundle;
        } catch (UnsupportedOperationException e10) {
            this.f62917a.a().r().b("Install referrer url isn't a hierarchical URI", e10);
            return null;
        }
    }

    public final Bundle t(String str, String str2, Bundle bundle, List list, boolean z10) {
        int z02;
        int i10;
        C12370p3 c12370p3;
        List list2 = list;
        boolean O10 = O(str2, C12251a4.f63008d);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        C12370p3 c12370p32 = this.f62917a;
        int v10 = c12370p32.w().v();
        int i11 = 0;
        boolean z11 = false;
        for (String str3 : new TreeSet(bundle.keySet())) {
            if (list2 == null || !list2.contains(str3)) {
                z02 = !z10 ? z0(str3) : 0;
                if (z02 == 0) {
                    z02 = A0(str3);
                }
            } else {
                z02 = 0;
            }
            if (z02 != 0) {
                x(bundle2, z02, str3, z02 == 3 ? str3 : null);
                bundle2.remove(str3);
                i10 = v10;
                c12370p3 = c12370p32;
            } else {
                i10 = v10;
                c12370p3 = c12370p32;
                int r10 = r(str, str2, str3, bundle.get(str3), bundle2, list, z10, O10);
                if (r10 == 17) {
                    x(bundle2, 17, str3, Boolean.FALSE);
                } else if (r10 != 0 && !"_ev".equals(str3)) {
                    x(bundle2, r10, r10 == 21 ? str2 : str3, bundle.get(str3));
                    bundle2.remove(str3);
                }
                if (r0(str3)) {
                    int i12 = i11 + 1;
                    if (i12 > i10) {
                        if (!c12370p3.w().H(null, C12281e2.f63208g1) || !z11) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 37);
                            sb2.append("Event can't contain more than ");
                            sb2.append(i10);
                            sb2.append(" params");
                            c12370p3.a().q().c(sb2.toString(), c12370p3.D().a(str2), c12370p3.D().e(bundle));
                        }
                        m0(bundle2, 5);
                        bundle2.remove(str3);
                        z11 = true;
                    }
                    i11 = i12;
                    v10 = i10;
                    c12370p32 = c12370p3;
                    list2 = list;
                }
            }
            v10 = i10;
            c12370p32 = c12370p3;
            list2 = list;
        }
        return bundle2;
    }

    public final boolean t0(String str, String str2) {
        if (str2 == null) {
            this.f62917a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.f62917a.a().q().b("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            this.f62917a.a().q().c("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                this.f62917a.a().q().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public final void u(C2 c22, int i10) {
        Bundle bundle = c22.f62576d;
        int i11 = 0;
        boolean z10 = false;
        for (String str : new TreeSet(bundle.keySet())) {
            if (r0(str) && (i11 = i11 + 1) > i10) {
                C12370p3 c12370p3 = this.f62917a;
                if (!c12370p3.w().H(null, C12281e2.f63208g1) || !z10) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 37);
                    sb2.append("Event can't contain more than ");
                    sb2.append(i10);
                    sb2.append(" params");
                    c12370p3.a().q().c(sb2.toString(), c12370p3.D().a(c22.f62573a), c12370p3.D().e(bundle));
                    m0(bundle, 5);
                }
                bundle.remove(str);
                z10 = true;
            }
        }
    }

    public final boolean u0(String str, String str2) {
        if (str2 == null) {
            this.f62917a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            this.f62917a.a().q().b("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            if (codePointAt != 95) {
                this.f62917a.a().q().c("Name must start with a letter or _ (underscore). Type, name", str, str2);
                return false;
            }
            codePointAt = 95;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                this.f62917a.a().q().c("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public final void v(Parcelable[] parcelableArr, int i10) {
        G0.A.r(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            int i11 = 0;
            boolean z10 = false;
            for (String str : new TreeSet(bundle.keySet())) {
                if (r0(str) && !O(str, C12259b4.f63023d) && (i11 = i11 + 1) > i10) {
                    C12370p3 c12370p3 = this.f62917a;
                    if (!c12370p3.w().H(null, C12281e2.f63208g1) || !z10) {
                        C12448z2 q10 = c12370p3.a().q();
                        StringBuilder sb2 = new StringBuilder(String.valueOf(i10).length() + 60);
                        sb2.append("Param can't contain more than ");
                        sb2.append(i10);
                        sb2.append(" item-scoped custom parameters");
                        q10.c(sb2.toString(), c12370p3.D().b(str), c12370p3.D().e(bundle));
                    }
                    m0(bundle, 28);
                    bundle.remove(str);
                    z10 = true;
                }
            }
        }
    }

    public final boolean v0(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            this.f62917a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        }
        G0.A.r(str2);
        String[] strArr3 = f63406i;
        for (int i10 = 0; i10 < 3; i10++) {
            if (str2.startsWith(strArr3[i10])) {
                this.f62917a.a().q().c("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !O(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && O(str2, strArr2)) {
            return true;
        }
        this.f62917a.a().q().c("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final void w(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                this.f62917a.C().A(bundle, str, bundle2.get(str));
            }
        }
    }

    public final boolean w0(String str, int i10, String str2) {
        if (str2 == null) {
            this.f62917a.a().q().b("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i10) {
            return true;
        }
        this.f62917a.a().q().d("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i10), str2);
        return false;
    }

    public final void x(Bundle bundle, int i10, String str, Object obj) {
        if (m0(bundle, i10)) {
            this.f62917a.w();
            bundle.putString("_ev", q(str, 40, true));
            if (obj != null) {
                G0.A.r(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    public final int x0(String str) {
        if (!u0("event", str)) {
            return 2;
        }
        if (!v0("event", C12251a4.f63005a, C12251a4.f63006b, str)) {
            return 13;
        }
        this.f62917a.w();
        return !w0("event", 40, str) ? 2 : 0;
    }

    public final int y(String str, Object obj) {
        return "_ldl".equals(str) ? C0("user property referrer", str, o0(str), obj) : C0("user property", str, o0(str), obj) ? 0 : 7;
    }

    public final int y0(String str) {
        if (!u0("user property", str)) {
            return 6;
        }
        if (!v0("user property", C12267c4.f63070a, null, str)) {
            return 15;
        }
        this.f62917a.w();
        return !w0("user property", 24, str) ? 6 : 0;
    }

    public final Object z(String str, Object obj) {
        return "_ldl".equals(str) ? n0(o0(str), obj, true, false, null) : n0(o0(str), obj, false, false, null);
    }

    public final int z0(String str) {
        if (!t0("event param", str)) {
            return 3;
        }
        if (!v0("event param", null, null, str)) {
            return 14;
        }
        this.f62917a.w();
        return !w0("event param", 40, str) ? 3 : 0;
    }
}
