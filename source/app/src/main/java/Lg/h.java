package Lg;

import javax.annotation.Nullable;
import okhttp3.F;
import okhttp3.x;

public final class h extends F {

    @Nullable
    public final String f13439c;

    public final long f13440d;

    public final Tg.e f13441e;

    public h(@Nullable String str, long j10, Tg.e eVar) {
        this.f13439c = str;
        this.f13440d = j10;
        this.f13441e = eVar;
    }

    @Override
    public long g() {
        return this.f13440d;
    }

    @Override
    public x h() {
        String str = this.f13439c;
        if (str != null) {
            return x.d(str);
        }
        return null;
    }

    @Override
    public Tg.e n() {
        return this.f13441e;
    }
}
