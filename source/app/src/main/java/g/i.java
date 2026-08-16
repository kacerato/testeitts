package G;

import G.j;
import android.annotation.SuppressLint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.t;

public class i extends Y.h<C.e, t<?>> implements j {

    public j.a f7242e;

    public i(long j10) {
        super(j10);
    }

    @Override
    @SuppressLint({"InlinedApi"})
    public void a(int i10) {
        if (i10 >= 40) {
            b();
        } else if (i10 >= 20 || i10 == 15) {
            p(e() / 2);
        }
    }

    @Override
    public void d(@NonNull j.a aVar) {
        this.f7242e = aVar;
    }

    @Override
    @Nullable
    public t f(@NonNull C.e eVar, @Nullable t tVar) {
        return (t) super.n(eVar, tVar);
    }

    @Override
    @Nullable
    public t g(@NonNull C.e eVar) {
        return (t) super.o(eVar);
    }

    @Override
    public int l(@Nullable t<?> tVar) {
        return tVar == null ? super.l(null) : tVar.getSize();
    }

    @Override
    public void m(@NonNull C.e eVar, @Nullable t<?> tVar) {
        j.a aVar = this.f7242e;
        if (aVar == null || tVar == null) {
            return;
        }
        aVar.d(tVar);
    }
}
