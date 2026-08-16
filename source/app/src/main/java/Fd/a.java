package Fd;

import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;

public final class a {

    public final JSONObject f6780a;

    public static final b f6779c = new b(null);

    @NotNull
    public static final a f6778b = new C0129a().c();

    public static final class C0129a {

        public static final String f6781b = "autoplay";

        public static final String f6782c = "controls";

        public static final String f6783d = "enablejsapi";

        public static final String f6784e = "fs";

        @NotNull
        public static final String f6785f = "origin";

        public static final String f6786g = "rel";

        public static final String f6787h = "showinfo";

        public static final String f6788i = "iv_load_policy";

        public static final String f6789j = "modestbranding";

        public static final String f6790k = "cc_load_policy";

        public static final String f6791l = "cc_lang_pref";

        public static final C0130a f6792m = new C0130a(null);

        public final JSONObject f6793a = new JSONObject();

        public static final class C0130a {
            public C0130a() {
            }

            public C0130a(C14026x c14026x) {
                this();
            }
        }

        public C0129a() {
            a(f6781b, 0);
            a(f6782c, 0);
            a(f6783d, 1);
            a(f6784e, 0);
            b("origin", "https://www.youtube.com");
            a(f6786g, 0);
            a(f6787h, 0);
            a(f6788i, 3);
            a(f6789j, 1);
            a(f6790k, 0);
        }

        public final void a(String str, int i10) {
            try {
                this.f6793a.put(str, i10);
            } catch (JSONException unused) {
                throw new RuntimeException("Illegal JSON value " + str + ": " + i10);
            }
        }

        public final void b(String str, String str2) {
            try {
                this.f6793a.put(str, str2);
            } catch (JSONException unused) {
                throw new RuntimeException("Illegal JSON value " + str + ": " + str2);
            }
        }

        @NotNull
        public final a c() {
            return new a(this.f6793a, null);
        }

        @NotNull
        public final C0129a d(int i10) {
            a(f6790k, i10);
            return this;
        }

        @NotNull
        public final C0129a e(int i10) {
            a(f6782c, i10);
            return this;
        }

        @NotNull
        public final C0129a f(int i10) {
            a(f6788i, i10);
            return this;
        }

        @NotNull
        public final C0129a g(@NotNull String languageCode) {
            M.q(languageCode, "languageCode");
            b(f6791l, languageCode);
            return this;
        }

        @NotNull
        public final C0129a h(@NotNull String origin) {
            M.q(origin, "origin");
            b("origin", origin);
            return this;
        }

        @NotNull
        public final C0129a i(int i10) {
            a(f6786g, i10);
            return this;
        }
    }

    public static final class b {
        public b() {
        }

        @NotNull
        public final a a() {
            return a.f6778b;
        }

        public b(C14026x c14026x) {
            this();
        }
    }

    public a(JSONObject jSONObject) {
        this.f6780a = jSONObject;
    }

    @NotNull
    public final String b() {
        String string = this.f6780a.getString("origin");
        M.h(string, "playerOptions.getString(Builder.ORIGIN)");
        return string;
    }

    @NotNull
    public String toString() {
        String jSONObject = this.f6780a.toString();
        M.h(jSONObject, "playerOptions.toString()");
        return jSONObject;
    }

    public a(JSONObject jSONObject, C14026x c14026x) {
        this(jSONObject);
    }
}
