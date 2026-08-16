package o2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.play.core.review.ReviewException;
import p2.t;
import p2.v;
import v1.AbstractC15790k;
import v1.C15791l;
import v1.C15793n;

@SuppressLint({"RestrictedApi"})
public final class l {

    public static final p2.i f98467c = new p2.i("ReviewService");

    @Nullable
    @VisibleForTesting
    public t f98468a;

    public final String f98469b;

    public l(Context context) {
        this.f98469b = context.getPackageName();
        if (v.a(context)) {
            this.f98468a = new t(context, f98467c, "com.google.android.finsky.inappreviewservice.InAppReviewService", new Intent("com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE").setPackage("com.android.vending"), h.f98460a, null, null);
        }
    }

    public final AbstractC15790k a() {
        p2.i iVar = f98467c;
        iVar.d("requestInAppReview (%s)", this.f98469b);
        if (this.f98468a == null) {
            iVar.b("Play Store app is either not installed or not the official version", new Object[0]);
            return C15793n.f(new ReviewException(-1));
        }
        C15791l c15791l = new C15791l();
        this.f98468a.p(new i(this, c15791l, c15791l), c15791l);
        return c15791l.a();
    }
}
