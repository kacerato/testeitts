package z0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
public class C16217b {

    public int f130512a = 1;

    @I2.a
    @NonNull
    @C0.a
    public C16217b a(@Nullable Object obj) {
        this.f130512a = (this.f130512a * 31) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    @C0.a
    public int b() {
        return this.f130512a;
    }

    @I2.a
    @NonNull
    public final C16217b c(boolean z10) {
        this.f130512a = (this.f130512a * 31) + (z10 ? 1 : 0);
        return this;
    }
}
