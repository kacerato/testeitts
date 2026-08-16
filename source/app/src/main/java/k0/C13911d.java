package k0;

import com.google.gson.JsonObject;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C13911d {

    @NotNull
    public final String f94413a;

    @NotNull
    public final String f94414b;

    @NotNull
    public final String f94415c;

    public C13911d(@NotNull String channelName, @NotNull String start, @NotNull String end) {
        M.p(channelName, "channelName");
        M.p(start, "start");
        M.p(end, "end");
        this.f94413a = channelName;
        this.f94414b = start;
        this.f94415c = end;
    }

    public static C13911d e(C13911d c13911d, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = c13911d.f94413a;
        }
        if ((i10 & 2) != 0) {
            str2 = c13911d.f94414b;
        }
        if ((i10 & 4) != 0) {
            str3 = c13911d.f94415c;
        }
        return c13911d.d(str, str2, str3);
    }

    @NotNull
    public final String a() {
        return this.f94413a;
    }

    @NotNull
    public final String b() {
        return this.f94414b;
    }

    @NotNull
    public final String c() {
        return this.f94415c;
    }

    @NotNull
    public final C13911d d(@NotNull String channelName, @NotNull String start, @NotNull String end) {
        M.p(channelName, "channelName");
        M.p(start, "start");
        M.p(end, "end");
        return new C13911d(channelName, start, end);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof C13911d)) {
            return false;
        }
        C13911d c13911d = (C13911d) other;
        return M.g(this.f94413a, c13911d.f94413a) && M.g(this.f94414b, c13911d.f94414b) && M.g(this.f94415c, c13911d.f94415c);
    }

    @NotNull
    public final String f() {
        return this.f94413a;
    }

    @NotNull
    public final String g() {
        return this.f94415c;
    }

    @NotNull
    public final String h() {
        return this.f94414b;
    }

    public int hashCode() {
        return (((this.f94413a.hashCode() * 31) + this.f94414b.hashCode()) * 31) + this.f94415c.hashCode();
    }

    @NotNull
    public final JsonObject i() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("channel_name", this.f94413a);
        jsonObject.addProperty("start", this.f94414b);
        jsonObject.addProperty("end", this.f94415c);
        return jsonObject;
    }

    @NotNull
    public String toString() {
        return "Channel(channelName=" + this.f94413a + ", start=" + this.f94414b + ", end=" + this.f94415c + ")";
    }
}
