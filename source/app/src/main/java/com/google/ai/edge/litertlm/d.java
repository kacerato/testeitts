package com.google.ai.edge.litertlm;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import k0.t;
import k0.w;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;
import pf.H;
import pf.o0;

public final class d {

    @NotNull
    public static final a f59898e = new a(null);

    @NotNull
    public final t f59899a;

    @NotNull
    public final b f59900b;

    @NotNull
    public final List<w> f59901c;

    @NotNull
    public final Map<String, String> f59902d;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static d c(a aVar, b bVar, List list, Map map, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                bVar = b.f59880b.a();
            }
            if ((i10 & 2) != 0) {
                list = H.J();
            }
            if ((i10 & 4) != 0) {
                map = o0.z();
            }
            return aVar.a(bVar, list, map);
        }

        @NotNull
        public final d a(@NotNull b contents, @NotNull List<w> toolCalls, @NotNull Map<String, String> channels) {
            M.p(contents, "contents");
            M.p(toolCalls, "toolCalls");
            M.p(channels, "channels");
            return new d(t.MODEL, contents, toolCalls, channels);
        }

        @NotNull
        public final d b(@NotNull String text) {
            M.p(text, "text");
            return c(this, b.f59880b.b(text), null, null, 6, null);
        }

        @InterfaceC14427o(message = "Use factory methods like user(), model() or Contents.of().")
        @NotNull
        public final d d(@NotNull String text) {
            M.p(text, "text");
            return k(text);
        }

        @InterfaceC14427o(message = "Use factory methods like user(), model() or Contents.of().")
        @NotNull
        public final d e(@NotNull List<? extends com.google.ai.edge.litertlm.a> contents) {
            M.p(contents, "contents");
            return j(b.f59880b.c(contents));
        }

        @InterfaceC14427o(message = "Use factory methods like user(), model() or Contents.of().")
        @NotNull
        public final d f(@NotNull com.google.ai.edge.litertlm.a... contents) {
            M.p(contents, "contents");
            return j(b.f59880b.c(C14960A.cz(contents)));
        }

        @NotNull
        public final d g(@NotNull b contents) {
            M.p(contents, "contents");
            return new d(t.SYSTEM, contents, null, null, 12, null);
        }

        @NotNull
        public final d h(@NotNull String text) {
            M.p(text, "text");
            return g(b.f59880b.b(text));
        }

        @NotNull
        public final d i(@NotNull b contents) {
            M.p(contents, "contents");
            return new d(t.TOOL, contents, null, null, 12, null);
        }

        @NotNull
        public final d j(@NotNull b contents) {
            M.p(contents, "contents");
            return new d(t.USER, contents, null, null, 12, null);
        }

        @NotNull
        public final d k(@NotNull String text) {
            M.p(text, "text");
            return j(b.f59880b.b(text));
        }

        public a() {
        }
    }

    public d(@NotNull t role, @NotNull b contents, @NotNull List<w> toolCalls, @NotNull Map<String, String> channels) {
        M.p(role, "role");
        M.p(contents, "contents");
        M.p(toolCalls, "toolCalls");
        M.p(channels, "channels");
        this.f59899a = role;
        this.f59900b = contents;
        this.f59901c = toolCalls;
        this.f59902d = channels;
    }

    @NotNull
    public final Map<String, String> a() {
        return this.f59902d;
    }

    @NotNull
    public final b b() {
        return this.f59900b;
    }

    @NotNull
    public final t c() {
        return this.f59899a;
    }

    @NotNull
    public final List<w> d() {
        return this.f59901c;
    }

    @NotNull
    public final JsonObject e() {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("role", this.f59899a.c());
        if (!this.f59900b.a().isEmpty()) {
            jsonObject.add("content", this.f59900b.b());
        }
        if (!this.f59901c.isEmpty()) {
            JsonArray jsonArray = new JsonArray();
            Iterator<w> it = this.f59901c.iterator();
            while (it.hasNext()) {
                jsonArray.add(it.next().g());
            }
            jsonObject.add("tool_calls", jsonArray);
        }
        if (!this.f59902d.isEmpty()) {
            JsonObject jsonObject2 = new JsonObject();
            for (Map.Entry<String, String> entry : this.f59902d.entrySet()) {
                jsonObject2.addProperty(entry.getKey(), entry.getValue());
            }
            jsonObject.add("channels", jsonObject2);
        }
        return jsonObject;
    }

    @NotNull
    public String toString() {
        return this.f59900b.toString();
    }

    public d(t tVar, b bVar, List list, Map map, int i10, C14026x c14026x) {
        this(tVar, (i10 & 2) != 0 ? b.f59880b.a() : bVar, (i10 & 4) != 0 ? H.J() : list, (i10 & 8) != 0 ? o0.z() : map);
    }
}
