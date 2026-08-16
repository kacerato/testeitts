package o2;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import v1.C15791l;

public final class f extends ResultReceiver {

    public final C15791l f98457b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(g gVar, Handler handler, C15791l c15791l) {
        super(handler);
        this.f98457b = c15791l;
    }

    @Override
    public final void onReceiveResult(int i10, Bundle bundle) {
        this.f98457b.e(null);
    }
}
