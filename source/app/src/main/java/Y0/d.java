package y0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.u;

@Deprecated
public class d implements u {

    public final Status f129890b;

    @Nullable
    public final GoogleSignInAccount f129891c;

    public d(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull Status status) {
        this.f129891c = googleSignInAccount;
        this.f129890b = status;
    }

    @Nullable
    public GoogleSignInAccount a() {
        return this.f129891c;
    }

    public boolean b() {
        return this.f129890b.x0();
    }

    @Override
    @NonNull
    public Status getStatus() {
        return this.f129890b;
    }
}
