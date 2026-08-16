package o2;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import v1.AbstractC15790k;
import v1.C15791l;
import v1.C15793n;

@SuppressLint({"RestrictedApi"})
public final class g implements InterfaceC14479b {

    public final l f98458a;

    public final Handler f98459b = new Handler(Looper.getMainLooper());

    public g(l lVar) {
        this.f98458a = lVar;
    }

    @Override
    @NonNull
    public final AbstractC15790k<AbstractC14478a> a() {
        return this.f98458a.a();
    }

    @Override
    @NonNull
    public final AbstractC15790k<Void> b(@NonNull Activity activity, @NonNull AbstractC14478a abstractC14478a) {
        if (abstractC14478a.c()) {
            return C15793n.g(null);
        }
        Intent intent = new Intent(activity, (Class<?>) PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", abstractC14478a.b());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        C15791l c15791l = new C15791l();
        intent.putExtra("result_receiver", new f(this, this.f98459b, c15791l));
        activity.startActivity(intent);
        return c15791l.a();
    }
}
