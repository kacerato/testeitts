package u2;

import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;

public class C15569d {

    public final boolean f118366a;

    @Nullable
    public final String f118367b;

    @Nullable
    public final C15566a f118368c;

    public static final class a {

        public boolean f118369a;

        @Nullable
        public String f118370b;

        @Nullable
        public C15566a f118371c;

        @RecentlyNonNull
        public C15569d a() {
            return new C15569d(this, null);
        }

        @RecentlyNonNull
        @C0.a
        public a b(@Nullable String str) {
            this.f118370b = str;
            return this;
        }

        @RecentlyNonNull
        public a c(@Nullable C15566a c15566a) {
            this.f118371c = c15566a;
            return this;
        }

        @RecentlyNonNull
        public a d(boolean z10) {
            this.f118369a = z10;
            return this;
        }
    }

    public C15569d(a aVar, C15573h c15573h) {
        this.f118366a = aVar.f118369a;
        this.f118367b = aVar.f118370b;
        this.f118368c = aVar.f118371c;
    }

    @RecentlyNullable
    public C15566a a() {
        return this.f118368c;
    }

    public boolean b() {
        return this.f118366a;
    }

    @RecentlyNullable
    public final String c() {
        return this.f118367b;
    }
}
