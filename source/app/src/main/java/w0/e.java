package W0;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
public interface e {
    @C0.a
    void a();

    @C0.a
    void b();

    @C0.a
    void c();

    @C0.a
    void d();

    @C0.a
    void e(@Nullable Bundle bundle);

    @C0.a
    void f(@NonNull Activity activity, @NonNull Bundle bundle, @Nullable Bundle bundle2);

    @NonNull
    @C0.a
    View g(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle);

    @C0.a
    void h(@NonNull Bundle bundle);

    @C0.a
    void onLowMemory();

    @C0.a
    void onResume();

    @C0.a
    void onStart();
}
