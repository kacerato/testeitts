package X;

import Y.m;
import android.content.Context;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class a implements C.e {

    public final int f27873c;

    public final C.e f27874d;

    public a(int i10, C.e eVar) {
        this.f27873c = i10;
        this.f27874d = eVar;
    }

    @NonNull
    public static C.e a(@NonNull Context context) {
        return new a(context.getResources().getConfiguration().uiMode & 48, b.c(context));
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f27873c == aVar.f27873c && this.f27874d.equals(aVar.f27874d);
    }

    @Override
    public int hashCode() {
        return m.p(this.f27874d, this.f27873c);
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        this.f27874d.updateDiskCacheKey(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f27873c).array());
    }
}
