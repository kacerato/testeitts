package D0;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
public interface InterfaceC2448i {
    @Nullable
    @C0.a
    <T extends C2446h> T a(@NonNull String str, @NonNull Class<T> cls);

    @Nullable
    @C0.a
    Activity b();

    @C0.a
    void c(@NonNull String str, @NonNull C2446h c2446h);

    @C0.a
    boolean d();

    @C0.a
    boolean isCreated();

    @C0.a
    void startActivityForResult(@NonNull Intent intent, int i10);
}
