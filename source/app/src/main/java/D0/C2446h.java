package D0;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;

@C0.a
public class C2446h {

    @NonNull
    @C0.a
    public final InterfaceC2448i f4660b;

    @C0.a
    public C2446h(@NonNull InterfaceC2448i interfaceC2448i) {
        this.f4660b = interfaceC2448i;
    }

    @NonNull
    @C0.a
    public static InterfaceC2448i c(@NonNull C2444g c2444g) {
        if (c2444g.d()) {
            return i1.e(c2444g.b());
        }
        if (c2444g.c()) {
            return f1.e(c2444g.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @NonNull
    @C0.a
    public static InterfaceC2448i d(@NonNull Activity activity) {
        return c(new C2444g(activity));
    }

    @NonNull
    @C0.a
    public static InterfaceC2448i e(@NonNull ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    @C0.a
    @MainThread
    public void a(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    @NonNull
    @C0.a
    public Activity b() {
        Activity b10 = this.f4660b.b();
        G0.A.r(b10);
        return b10;
    }

    @C0.a
    @MainThread
    public void f(int i10, int i11, @Nullable Intent intent) {
    }

    @C0.a
    @MainThread
    public void g(@Nullable Bundle bundle) {
    }

    @C0.a
    @MainThread
    public void h() {
    }

    @C0.a
    @MainThread
    public void i() {
    }

    @C0.a
    @MainThread
    public void j(@NonNull Bundle bundle) {
    }

    @C0.a
    @MainThread
    public void k() {
    }

    @C0.a
    @MainThread
    public void l() {
    }
}
