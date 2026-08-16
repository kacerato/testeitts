package D0;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

public final class h1 {

    public final Map f4661a = Collections.synchronizedMap(new ArrayMap());

    public int f4662b = 0;

    @Nullable
    public Bundle f4663c;

    @Nullable
    public final C2446h c(String str, Class cls) {
        return (C2446h) cls.cast(this.f4661a.get(str));
    }

    public final void d(String str, C2446h c2446h) {
        if (this.f4661a.containsKey(str)) {
            throw new IllegalArgumentException("LifecycleCallback with tag " + str + " already added to this fragment.");
        }
        this.f4661a.put(str, c2446h);
        if (this.f4662b > 0) {
            new h1.v(Looper.getMainLooper()).post(new g1(this, c2446h, str));
        }
    }

    public final void e(String str, @Nullable FileDescriptor fileDescriptor, PrintWriter printWriter, @Nullable String[] strArr) {
        Iterator it = this.f4661a.values().iterator();
        while (it.hasNext()) {
            ((C2446h) it.next()).a(str, fileDescriptor, printWriter, strArr);
        }
    }

    public final void f(int i10, int i11, @Nullable Intent intent) {
        Iterator it = this.f4661a.values().iterator();
        while (it.hasNext()) {
            ((C2446h) it.next()).f(i10, i11, intent);
        }
    }

    public final void g(@Nullable Bundle bundle) {
        this.f4662b = 1;
        this.f4663c = bundle;
        for (Map.Entry entry : this.f4661a.entrySet()) {
            ((C2446h) entry.getValue()).g(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    public final void h() {
        this.f4662b = 5;
        Iterator it = this.f4661a.values().iterator();
        while (it.hasNext()) {
            ((C2446h) it.next()).h();
        }
    }

    public final void i() {
        this.f4662b = 3;
        Iterator it = this.f4661a.values().iterator();
        while (it.hasNext()) {
            ((C2446h) it.next()).i();
        }
    }

    public final void j(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f4661a.entrySet()) {
            Bundle bundle2 = new Bundle();
            ((C2446h) entry.getValue()).j(bundle2);
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }

    public final void k() {
        this.f4662b = 2;
        Iterator it = this.f4661a.values().iterator();
        while (it.hasNext()) {
            ((C2446h) it.next()).k();
        }
    }

    public final void l() {
        this.f4662b = 4;
        Iterator it = this.f4661a.values().iterator();
        while (it.hasNext()) {
            ((C2446h) it.next()).l();
        }
    }

    public final boolean m() {
        return this.f4662b > 0;
    }

    public final boolean n() {
        return this.f4662b >= 2;
    }
}
