package r2;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import com.google.android.play.core.review.ReviewException;
import o2.AbstractC14478a;
import o2.InterfaceC14479b;
import v1.AbstractC15790k;
import v1.C15793n;

public class C15145a implements InterfaceC14479b {

    public final Context f108548a;

    public AbstractC14478a f108549b;

    public C15145a(Context context) {
        this.f108548a = context;
    }

    @Override
    @NonNull
    public AbstractC15790k<AbstractC14478a> a() {
        AbstractC14478a d10 = AbstractC14478a.d(PendingIntent.getBroadcast(this.f108548a, 0, new Intent(), 67108864), false);
        this.f108549b = d10;
        return C15793n.g(d10);
    }

    @Override
    @NonNull
    public AbstractC15790k<Void> b(@NonNull Activity activity, @NonNull AbstractC14478a abstractC14478a) {
        return abstractC14478a != this.f108549b ? C15793n.f(new ReviewException(-2)) : C15793n.g(null);
    }
}
