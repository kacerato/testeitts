package G0;

import android.content.Intent;
import androidx.fragment.app.Fragment;

public final class V extends X {

    public final Intent f7329b;

    public final Fragment f7330c;

    public final int f7331d;

    public V(Intent intent, Fragment fragment, int i10) {
        this.f7329b = intent;
        this.f7330c = fragment;
        this.f7331d = i10;
    }

    @Override
    public final void a() {
        Intent intent = this.f7329b;
        if (intent != null) {
            this.f7330c.startActivityForResult(intent, this.f7331d);
        }
    }
}
