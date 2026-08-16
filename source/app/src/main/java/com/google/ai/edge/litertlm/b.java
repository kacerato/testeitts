package com.google.ai.edge.litertlm;

import com.google.ai.edge.litertlm.a;
import com.google.gson.JsonArray;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import pf.C14960A;
import pf.H;
import pf.S;

public final class b {

    @NotNull
    public static final a f59880b = new a(null);

    @NotNull
    public final List<com.google.ai.edge.litertlm.a> f59881a;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        @NotNull
        public final b a() {
            return new b(H.J(), null);
        }

        @NotNull
        public final b b(@NotNull String text) {
            M.p(text, "text");
            return b.f59880b.d(new a.e(text));
        }

        @NotNull
        public final b c(@NotNull List<? extends com.google.ai.edge.litertlm.a> contents) {
            M.p(contents, "contents");
            return new b(contents, null);
        }

        @NotNull
        public final b d(@NotNull com.google.ai.edge.litertlm.a... contents) {
            M.p(contents, "contents");
            return b.f59880b.c(C14960A.cz(contents));
        }

        public a() {
        }
    }

    public b(List list, C14026x c14026x) {
        this(list);
    }

    @NotNull
    public final List<com.google.ai.edge.litertlm.a> a() {
        return this.f59881a;
    }

    @NotNull
    public final JsonArray b() {
        JsonArray jsonArray = new JsonArray();
        Iterator<com.google.ai.edge.litertlm.a> it = this.f59881a.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().a());
        }
        return jsonArray;
    }

    @NotNull
    public String toString() {
        return S.r3(this.f59881a, "", null, null, 0, null, null, 62, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends com.google.ai.edge.litertlm.a> contents) {
        this.f59881a = contents;
    }
}
