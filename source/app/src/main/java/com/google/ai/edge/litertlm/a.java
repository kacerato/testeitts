package com.google.ai.edge.litertlm;

import F2.i;
import com.google.gson.JsonObject;
import java.util.Arrays;
import k0.l;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class a {

    public static final class C0929a extends a {

        @NotNull
        public final byte[] f59873a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0929a(@NotNull byte[] bytes) {
            super(null);
            M.p(bytes, "bytes");
            this.f59873a = bytes;
        }

        public static C0929a d(C0929a c0929a, byte[] bArr, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bArr = c0929a.f59873a;
            }
            return c0929a.c(bArr);
        }

        @Override
        @NotNull
        public JsonObject a() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", "audio");
            jsonObject.addProperty("blob", Hf.a.u(Hf.a.f8417f, this.f59873a, 0, 0, 6, null));
            return jsonObject;
        }

        @NotNull
        public final byte[] b() {
            return this.f59873a;
        }

        @NotNull
        public final C0929a c(@NotNull byte[] bytes) {
            M.p(bytes, "bytes");
            return new C0929a(bytes);
        }

        @NotNull
        public final byte[] e() {
            return this.f59873a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof C0929a) && M.g(this.f59873a, ((C0929a) other).f59873a);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f59873a);
        }

        @NotNull
        public String toString() {
            return "AudioBytes(bytes=" + Arrays.toString(this.f59873a) + ")";
        }
    }

    public static final class b extends a {

        @NotNull
        public final String f59874a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull String absolutePath) {
            super(null);
            M.p(absolutePath, "absolutePath");
            this.f59874a = absolutePath;
        }

        public static b d(b bVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = bVar.f59874a;
            }
            return bVar.c(str);
        }

        @Override
        @NotNull
        public JsonObject a() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", "audio");
            jsonObject.addProperty("path", this.f59874a);
            return jsonObject;
        }

        @NotNull
        public final String b() {
            return this.f59874a;
        }

        @NotNull
        public final b c(@NotNull String absolutePath) {
            M.p(absolutePath, "absolutePath");
            return new b(absolutePath);
        }

        @NotNull
        public final String e() {
            return this.f59874a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof b) && M.g(this.f59874a, ((b) other).f59874a);
        }

        public int hashCode() {
            return this.f59874a.hashCode();
        }

        @NotNull
        public String toString() {
            return "AudioFile(absolutePath=" + this.f59874a + ")";
        }
    }

    public static final class c extends a {

        @NotNull
        public final byte[] f59875a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull byte[] bytes) {
            super(null);
            M.p(bytes, "bytes");
            this.f59875a = bytes;
        }

        public static c d(c cVar, byte[] bArr, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bArr = cVar.f59875a;
            }
            return cVar.c(bArr);
        }

        @Override
        @NotNull
        public JsonObject a() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", i.f6419n);
            jsonObject.addProperty("blob", Hf.a.u(Hf.a.f8417f, this.f59875a, 0, 0, 6, null));
            return jsonObject;
        }

        @NotNull
        public final byte[] b() {
            return this.f59875a;
        }

        @NotNull
        public final c c(@NotNull byte[] bytes) {
            M.p(bytes, "bytes");
            return new c(bytes);
        }

        @NotNull
        public final byte[] e() {
            return this.f59875a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof c) && M.g(this.f59875a, ((c) other).f59875a);
        }

        public int hashCode() {
            return Arrays.hashCode(this.f59875a);
        }

        @NotNull
        public String toString() {
            return "ImageBytes(bytes=" + Arrays.toString(this.f59875a) + ")";
        }
    }

    public static final class d extends a {

        @NotNull
        public final String f59876a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull String absolutePath) {
            super(null);
            M.p(absolutePath, "absolutePath");
            this.f59876a = absolutePath;
        }

        public static d d(d dVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = dVar.f59876a;
            }
            return dVar.c(str);
        }

        @Override
        @NotNull
        public JsonObject a() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", i.f6419n);
            jsonObject.addProperty("path", this.f59876a);
            return jsonObject;
        }

        @NotNull
        public final String b() {
            return this.f59876a;
        }

        @NotNull
        public final d c(@NotNull String absolutePath) {
            M.p(absolutePath, "absolutePath");
            return new d(absolutePath);
        }

        @NotNull
        public final String e() {
            return this.f59876a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof d) && M.g(this.f59876a, ((d) other).f59876a);
        }

        public int hashCode() {
            return this.f59876a.hashCode();
        }

        @NotNull
        public String toString() {
            return "ImageFile(absolutePath=" + this.f59876a + ")";
        }
    }

    public static final class e extends a {

        @NotNull
        public final String f59877a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull String text) {
            super(null);
            M.p(text, "text");
            this.f59877a = text;
        }

        public static e d(e eVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = eVar.f59877a;
            }
            return eVar.c(str);
        }

        @Override
        @NotNull
        public JsonObject a() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", "text");
            jsonObject.addProperty("text", this.f59877a);
            return jsonObject;
        }

        @NotNull
        public final String b() {
            return this.f59877a;
        }

        @NotNull
        public final e c(@NotNull String text) {
            M.p(text, "text");
            return new e(text);
        }

        @NotNull
        public final String e() {
            return this.f59877a;
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof e) && M.g(this.f59877a, ((e) other).f59877a);
        }

        public int hashCode() {
            return this.f59877a.hashCode();
        }

        @NotNull
        public String toString() {
            return this.f59877a;
        }
    }

    public static final class f extends a {

        @NotNull
        public final String f59878a;

        @Nullable
        public final Object f59879b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull String name, @Nullable Object response) {
            super(null);
            M.p(name, "name");
            this.f59878a = name;
            this.f59879b = response;
        }

        public static f e(f fVar, String str, Object obj, int i10, Object obj2) {
            if ((i10 & 1) != 0) {
                str = fVar.f59878a;
            }
            if ((i10 & 2) != 0) {
                obj = fVar.f59879b;
            }
            return fVar.d(str, obj);
        }

        @Override
        @NotNull
        public JsonObject a() {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("type", "tool_response");
            jsonObject.addProperty("name", this.f59878a);
            jsonObject.add("response", l.a(this.f59879b));
            return jsonObject;
        }

        @NotNull
        public final String b() {
            return this.f59878a;
        }

        @Nullable
        public final Object c() {
            return this.f59879b;
        }

        @NotNull
        public final f d(@NotNull String name, @Nullable Object response) {
            M.p(name, "name");
            return new f(name, response);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof f)) {
                return false;
            }
            f fVar = (f) other;
            return M.g(this.f59878a, fVar.f59878a) && M.g(this.f59879b, fVar.f59879b);
        }

        @NotNull
        public final String f() {
            return this.f59878a;
        }

        @Nullable
        public final Object g() {
            return this.f59879b;
        }

        public int hashCode() {
            int hashCode = this.f59878a.hashCode() * 31;
            Object obj = this.f59879b;
            return hashCode + (obj == null ? 0 : obj.hashCode());
        }

        @NotNull
        public String toString() {
            return "ToolResponse(name=" + this.f59878a + ", response=" + this.f59879b + ")";
        }
    }

    public a(C14026x c14026x) {
        this();
    }

    @NotNull
    public abstract JsonObject a();

    public a() {
    }
}
