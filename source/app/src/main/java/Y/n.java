package Y;

import V.o;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.e;
import java.util.Arrays;

public class n<T> implements e.b<T>, o {

    public int[] f29689a;

    public a f29690b;

    public static final class a extends V.f<View, Object> {
        public a(@NonNull View view) {
            super(view);
        }

        @Override
        public void h(@NonNull Object obj, @Nullable W.f<? super Object> fVar) {
        }

        @Override
        public void m(@Nullable Drawable drawable) {
        }

        @Override
        public void o(@Nullable Drawable drawable) {
        }
    }

    public n() {
    }

    @Override
    @Nullable
    public int[] a(@NonNull T t10, int i10, int i11) {
        int[] iArr = this.f29689a;
        if (iArr == null) {
            return null;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    public void b(@NonNull View view) {
        if (this.f29689a == null && this.f29690b == null) {
            a aVar = new a(view);
            this.f29690b = aVar;
            aVar.i(this);
        }
    }

    @Override
    public void d(int i10, int i11) {
        this.f29689a = new int[]{i10, i11};
        this.f29690b = null;
    }

    public n(@NonNull View view) {
        a aVar = new a(view);
        this.f29690b = aVar;
        aVar.i(this);
    }
}
