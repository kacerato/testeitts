package com.google.android.gms.measurement;

import G0.A;
import G0.F;
import android.Manifest;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.I0;
import com.google.android.gms.measurement.internal.C12340l5;
import com.google.android.gms.measurement.internal.C12370p3;
import com.google.android.gms.measurement.internal.InterfaceC12268c5;
import com.google.android.gms.measurement.internal.InterfaceC12275d4;
import com.google.android.gms.measurement.internal.InterfaceC12283e4;
import com.google.android.gms.measurement.internal.V3;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import m1.c;
import m1.d;
import n1.C14345a;

@F
@C0.a
@Deprecated
public class AppMeasurement {

    @F
    @NonNull
    @C0.a
    public static final String f62513b = "crash";

    @F
    @NonNull
    @C0.a
    public static final String f62514c = "fcm";

    @F
    @NonNull
    @C0.a
    public static final String f62515d = "fiam";

    public static volatile AppMeasurement f62516e;

    public final d f62517a;

    @F
    @C0.a
    public static class ConditionalUserProperty {

        @F
        @Keep
        @C0.a
        public boolean mActive;

        @F
        @NonNull
        @Keep
        @C0.a
        public String mAppId;

        @F
        @Keep
        @C0.a
        public long mCreationTimestamp;

        @NonNull
        @Keep
        public String mExpiredEventName;

        @NonNull
        @Keep
        public Bundle mExpiredEventParams;

        @F
        @NonNull
        @Keep
        @C0.a
        public String mName;

        @F
        @NonNull
        @Keep
        @C0.a
        public String mOrigin;

        @F
        @Keep
        @C0.a
        public long mTimeToLive;

        @NonNull
        @Keep
        public String mTimedOutEventName;

        @NonNull
        @Keep
        public Bundle mTimedOutEventParams;

        @F
        @NonNull
        @Keep
        @C0.a
        public String mTriggerEventName;

        @F
        @Keep
        @C0.a
        public long mTriggerTimeout;

        @NonNull
        @Keep
        public String mTriggeredEventName;

        @NonNull
        @Keep
        public Bundle mTriggeredEventParams;

        @F
        @Keep
        @C0.a
        public long mTriggeredTimestamp;

        @F
        @NonNull
        @Keep
        @C0.a
        public Object mValue;

        @C0.a
        public ConditionalUserProperty() {
        }

        @VisibleForTesting
        public ConditionalUserProperty(@NonNull Bundle bundle) {
            A.r(bundle);
            this.mAppId = (String) V3.b(bundle, "app_id", String.class, null);
            this.mOrigin = (String) V3.b(bundle, "origin", String.class, null);
            this.mName = (String) V3.b(bundle, "name", String.class, null);
            this.mValue = V3.b(bundle, "value", Object.class, null);
            this.mTriggerEventName = (String) V3.b(bundle, C14345a.C1879a.f97704d, String.class, null);
            this.mTriggerTimeout = ((Long) V3.b(bundle, C14345a.C1879a.f97705e, Long.class, 0L)).longValue();
            this.mTimedOutEventName = (String) V3.b(bundle, C14345a.C1879a.f97706f, String.class, null);
            this.mTimedOutEventParams = (Bundle) V3.b(bundle, C14345a.C1879a.f97707g, Bundle.class, null);
            this.mTriggeredEventName = (String) V3.b(bundle, C14345a.C1879a.f97708h, String.class, null);
            this.mTriggeredEventParams = (Bundle) V3.b(bundle, C14345a.C1879a.f97709i, Bundle.class, null);
            this.mTimeToLive = ((Long) V3.b(bundle, C14345a.C1879a.f97710j, Long.class, 0L)).longValue();
            this.mExpiredEventName = (String) V3.b(bundle, C14345a.C1879a.f97711k, String.class, null);
            this.mExpiredEventParams = (Bundle) V3.b(bundle, C14345a.C1879a.f97712l, Bundle.class, null);
            this.mActive = ((Boolean) V3.b(bundle, C14345a.C1879a.f97714n, Boolean.class, Boolean.FALSE)).booleanValue();
            this.mCreationTimestamp = ((Long) V3.b(bundle, C14345a.C1879a.f97713m, Long.class, 0L)).longValue();
            this.mTriggeredTimestamp = ((Long) V3.b(bundle, C14345a.C1879a.f97715o, Long.class, 0L)).longValue();
        }

        @C0.a
        public ConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
            A.r(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                Object b10 = C12340l5.b(obj);
                this.mValue = b10;
                if (b10 == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            Bundle bundle = conditionalUserProperty.mTimedOutEventParams;
            if (bundle != null) {
                this.mTimedOutEventParams = new Bundle(bundle);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            Bundle bundle2 = conditionalUserProperty.mTriggeredEventParams;
            if (bundle2 != null) {
                this.mTriggeredEventParams = new Bundle(bundle2);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            Bundle bundle3 = conditionalUserProperty.mExpiredEventParams;
            if (bundle3 != null) {
                this.mExpiredEventParams = new Bundle(bundle3);
            }
        }
    }

    @F
    @C0.a
    public interface a extends InterfaceC12275d4 {
        @Override
        @F
        @C0.a
        @WorkerThread
        void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j10);
    }

    @F
    @C0.a
    public interface b extends InterfaceC12283e4 {
        @Override
        @F
        @C0.a
        @WorkerThread
        void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j10);
    }

    public AppMeasurement(C12370p3 c12370p3) {
        this.f62517a = new m1.b(c12370p3);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @F
    @NonNull
    @Keep
    @Deprecated
    @RequiresPermission(allOf = {Manifest.permission.INTERNET, "android.permission.ACCESS_NETWORK_STATE", Manifest.permission.WAKE_LOCK})
    @C0.a
    public static AppMeasurement getInstance(@NonNull Context context) {
        if (f62516e == null) {
            synchronized (AppMeasurement.class) {
                if (f62516e == null) {
                    InterfaceC12268c5 interfaceC12268c5 = (InterfaceC12268c5) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    if (interfaceC12268c5 != null) {
                        f62516e = new AppMeasurement(interfaceC12268c5);
                    } else {
                        f62516e = new AppMeasurement(C12370p3.O(context, new I0(0L, 0L, true, null, null), null));
                    }
                }
            }
        }
        return f62516e;
    }

    @NonNull
    @C0.a
    public Boolean a() {
        return this.f62517a.t();
    }

    @NonNull
    @C0.a
    public Double b() {
        return this.f62517a.x();
    }

    @Keep
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f62517a.i(str);
    }

    @NonNull
    @C0.a
    public Integer c() {
        return this.f62517a.u();
    }

    @F
    @Keep
    @C0.a
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.f62517a.q(str, str2, bundle);
    }

    @NonNull
    @C0.a
    public Long d() {
        return this.f62517a.w();
    }

    @NonNull
    @C0.a
    public String e() {
        return this.f62517a.v();
    }

    @Keep
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.f62517a.g(str);
    }

    @F
    @NonNull
    @C0.a
    @WorkerThread
    public Map<String, Object> f(boolean z10) {
        return this.f62517a.s(z10);
    }

    @F
    @C0.a
    public void g(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j10) {
        this.f62517a.h(str, str2, bundle, j10);
    }

    @Keep
    public long generateEventId() {
        return this.f62517a.e();
    }

    @NonNull
    @Keep
    public String getAppInstanceId() {
        return this.f62517a.d();
    }

    @F
    @NonNull
    @Keep
    @C0.a
    @WorkerThread
    public List<ConditionalUserProperty> getConditionalUserProperties(@NonNull String str, @NonNull @Size(max = 23, min = 1) String str2) {
        List r10 = this.f62517a.r(str, str2);
        ArrayList arrayList = new ArrayList(r10 == null ? 0 : r10.size());
        Iterator it = r10.iterator();
        while (it.hasNext()) {
            arrayList.add(new ConditionalUserProperty((Bundle) it.next()));
        }
        return arrayList;
    }

    @NonNull
    @Keep
    public String getCurrentScreenClass() {
        return this.f62517a.b();
    }

    @NonNull
    @Keep
    public String getCurrentScreenName() {
        return this.f62517a.c();
    }

    @NonNull
    @Keep
    public String getGmpAppId() {
        return this.f62517a.f();
    }

    @F
    @Keep
    @C0.a
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        return this.f62517a.j(str);
    }

    @NonNull
    @Keep
    @VisibleForTesting
    @WorkerThread
    public Map<String, Object> getUserProperties(@NonNull String str, @NonNull @Size(max = 24, min = 1) String str2, boolean z10) {
        return this.f62517a.p(str, str2, z10);
    }

    @F
    @C0.a
    public void h(@NonNull b bVar) {
        this.f62517a.m(bVar);
    }

    @F
    @C0.a
    @WorkerThread
    public void i(@NonNull a aVar) {
        this.f62517a.k(aVar);
    }

    @F
    @C0.a
    public void j(@NonNull b bVar) {
        this.f62517a.l(bVar);
    }

    @F
    @Keep
    public void logEventInternal(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.f62517a.a(str, str2, bundle);
    }

    @F
    @Keep
    @C0.a
    public void setConditionalUserProperty(@NonNull ConditionalUserProperty conditionalUserProperty) {
        A.r(conditionalUserProperty);
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            V3.a(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString(C14345a.C1879a.f97704d, str4);
        }
        bundle.putLong(C14345a.C1879a.f97705e, conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString(C14345a.C1879a.f97706f, str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle(C14345a.C1879a.f97707g, bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString(C14345a.C1879a.f97708h, str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle(C14345a.C1879a.f97709i, bundle3);
        }
        bundle.putLong(C14345a.C1879a.f97710j, conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString(C14345a.C1879a.f97711k, str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle(C14345a.C1879a.f97712l, bundle4);
        }
        d dVar = this.f62517a;
        bundle.putLong(C14345a.C1879a.f97713m, conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean(C14345a.C1879a.f97714n, conditionalUserProperty.mActive);
        bundle.putLong(C14345a.C1879a.f97715o, conditionalUserProperty.mTriggeredTimestamp);
        dVar.n(bundle);
    }

    public AppMeasurement(InterfaceC12268c5 interfaceC12268c5) {
        this.f62517a = new c(interfaceC12268c5);
    }
}
