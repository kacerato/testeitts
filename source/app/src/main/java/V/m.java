package V;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public final class m<Z> extends e<Z> {

    public static final int f26402f = 1;

    public static final Handler f26403g = new Handler(Looper.getMainLooper(), new a());

    public final com.bumptech.glide.k f26404e;

    public class a implements Handler.Callback {
        @Override
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((m) message.obj).d();
            return true;
        }
    }

    public m(com.bumptech.glide.k kVar, int i10, int i11) {
        super(i10, i11);
        this.f26404e = kVar;
    }

    public static <Z> m<Z> e(com.bumptech.glide.k kVar, int i10, int i11) {
        return new m<>(kVar, i10, i11);
    }

    public void d() {
        this.f26404e.w(this);
    }

    @Override
    public void f(@Nullable Drawable drawable) {
    }

    @Override
    public void h(@NonNull Z z10, @Nullable W.f<? super Z> fVar) {
        f26403g.obtainMessage(1, this).sendToTarget();
    }
}
