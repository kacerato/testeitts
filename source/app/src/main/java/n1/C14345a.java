package n1;

import G0.F;
import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.I1;
import com.google.android.gms.internal.measurement.K0;
import com.google.android.gms.measurement.internal.InterfaceC12275d4;
import com.google.android.gms.measurement.internal.InterfaceC12283e4;
import java.util.List;
import java.util.Map;

@F
@C0.a
public class C14345a {

    public final I1 f97700a;

    @C0.a
    public static final class C1879a {

        @NonNull
        @C0.a
        public static final String f97701a = "origin";

        @NonNull
        @C0.a
        public static final String f97702b = "name";

        @NonNull
        @C0.a
        public static final String f97703c = "value";

        @NonNull
        @C0.a
        public static final String f97704d = "trigger_event_name";

        @NonNull
        @C0.a
        public static final String f97705e = "trigger_timeout";

        @NonNull
        @C0.a
        public static final String f97706f = "timed_out_event_name";

        @NonNull
        @C0.a
        public static final String f97707g = "timed_out_event_params";

        @NonNull
        @C0.a
        public static final String f97708h = "triggered_event_name";

        @NonNull
        @C0.a
        public static final String f97709i = "triggered_event_params";

        @NonNull
        @C0.a
        public static final String f97710j = "time_to_live";

        @NonNull
        @C0.a
        public static final String f97711k = "expired_event_name";

        @NonNull
        @C0.a
        public static final String f97712l = "expired_event_params";

        @NonNull
        @C0.a
        public static final String f97713m = "creation_timestamp";

        @NonNull
        @C0.a
        public static final String f97714n = "active";

        @NonNull
        @C0.a
        public static final String f97715o = "triggered_timestamp";
    }

    @F
    @C0.a
    public interface b extends InterfaceC12275d4 {
        @Override
        @F
        @C0.a
        @WorkerThread
        void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j10);
    }

    @F
    @C0.a
    public interface c extends InterfaceC12283e4 {
        @Override
        @F
        @C0.a
        @WorkerThread
        void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j10);
    }

    public C14345a(I1 i12) {
        this.f97700a = i12;
    }

    @F
    @NonNull
    @RequiresPermission(allOf = {Manifest.permission.INTERNET, "android.permission.ACCESS_NETWORK_STATE", Manifest.permission.WAKE_LOCK})
    @C0.a
    public static C14345a k(@NonNull Context context) {
        return I1.v(context, null).w();
    }

    @NonNull
    @Deprecated
    @RequiresPermission(allOf = {Manifest.permission.INTERNET, "android.permission.ACCESS_NETWORK_STATE", Manifest.permission.WAKE_LOCK})
    @C0.a
    public static C14345a l(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3, @NonNull Bundle bundle) {
        return I1.v(context, bundle).w();
    }

    @F
    @C0.a
    public void A(@NonNull c cVar) {
        this.f97700a.B(cVar);
    }

    public final void B(boolean z10) {
        this.f97700a.k(z10);
    }

    @C0.a
    public void a(@NonNull @Size(min = 1) String str) {
        this.f97700a.P(str);
    }

    @C0.a
    public void b(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.f97700a.H(str, str2, bundle);
    }

    @C0.a
    public void c(@NonNull @Size(min = 1) String str) {
        this.f97700a.Q(str);
    }

    @C0.a
    public long d() {
        return this.f97700a.U();
    }

    @Nullable
    @C0.a
    public String e() {
        return this.f97700a.i();
    }

    @Nullable
    @C0.a
    public String f() {
        return this.f97700a.T();
    }

    @NonNull
    @C0.a
    @WorkerThread
    public List<Bundle> g(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        return this.f97700a.I(str, str2);
    }

    @Nullable
    @C0.a
    public String h() {
        return this.f97700a.b();
    }

    @Nullable
    @C0.a
    public String i() {
        return this.f97700a.a();
    }

    @Nullable
    @C0.a
    public String j() {
        return this.f97700a.S();
    }

    @C0.a
    @WorkerThread
    public int m(@NonNull @Size(min = 1) String str) {
        return this.f97700a.f(str);
    }

    @NonNull
    @C0.a
    @WorkerThread
    public Map<String, Object> n(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z10) {
        return this.f97700a.c(str, str2, z10);
    }

    @C0.a
    public void o(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle) {
        this.f97700a.D(str, str2, bundle);
    }

    @C0.a
    public void p(@NonNull String str, @NonNull String str2, @Nullable Bundle bundle, long j10) {
        this.f97700a.E(str, str2, bundle, j10);
    }

    @C0.a
    public void q(@NonNull Bundle bundle) {
        this.f97700a.e(bundle, false);
    }

    @Nullable
    @C0.a
    public Bundle r(@NonNull Bundle bundle) {
        return this.f97700a.e(bundle, true);
    }

    @F
    @C0.a
    public void s(@NonNull c cVar) {
        this.f97700a.A(cVar);
    }

    @C0.a
    public void t(@NonNull Bundle bundle) {
        this.f97700a.G(bundle);
    }

    @C0.a
    @Deprecated
    public void u(@NonNull Bundle bundle) {
    }

    @C0.a
    public void v(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.f97700a.K(K0.b(activity), str, str2);
    }

    @F
    @C0.a
    @WorkerThread
    public void w(@NonNull b bVar) {
        this.f97700a.y(bVar);
    }

    @C0.a
    @Deprecated
    public void x(@Nullable Boolean bool) {
    }

    @C0.a
    @Deprecated
    public void y(boolean z10) {
    }

    @C0.a
    public void z(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        this.f97700a.F(str, str2, obj, true);
    }
}
