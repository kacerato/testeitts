package com.google.ai.edge.litertlm;

import Bf.f;
import Bf.q;
import Mf.p;
import com.google.ai.edge.litertlm.LiteRtLmJni;
import com.google.ai.edge.litertlm.a;
import com.google.ai.edge.litertlm.c;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.tonyodev.fetch2.util.FetchDefaults;
import gg.E;
import gg.InterfaceC13358B;
import gg.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import jg.C13844k;
import jg.InterfaceC13842i;
import k0.C13907A;
import k0.i;
import k0.l;
import k0.n;
import k0.w;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.C14418j0;
import nf.P0;
import org.eclipse.jdt.core.IJavaModelMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.o0;

@t0({"SMAP\nConversation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Conversation.kt\ncom/google/ai/edge/litertlm/Conversation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,537:1\n1#2:538\n*E\n"})
public final class c implements AutoCloseable {

    @NotNull
    public static final a f59882f = new a(null);

    public static final int f59883g = 25;

    public final long f59884b;

    @NotNull
    public final C13907A f59885c;

    public final boolean f59886d;

    @NotNull
    public final AtomicBoolean f59887e;

    public static final class a {
        public a(C14026x c14026x) {
            this();
        }

        public final d b(JsonObject messageJsonObject) {
            ArrayList arrayList = new ArrayList();
            if (messageJsonObject.has("content")) {
                Iterator<JsonElement> it = messageJsonObject.getAsJsonArray("content").iterator();
                M.o(it, "iterator(...)");
                while (it.hasNext()) {
                    JsonObject asJsonObject = it.next().getAsJsonObject();
                    if (M.g(asJsonObject.get("type").getAsString(), "text")) {
                        String asString = asJsonObject.get("text").getAsString();
                        M.o(asString, "getAsString(...)");
                        arrayList.add(new a.e(asString));
                    }
                }
            }
            ArrayList arrayList2 = new ArrayList();
            if (messageJsonObject.has("tool_calls")) {
                Iterator<JsonElement> it2 = messageJsonObject.getAsJsonArray("tool_calls").iterator();
                M.o(it2, "iterator(...)");
                while (it2.hasNext()) {
                    JsonObject asJsonObject2 = it2.next().getAsJsonObject();
                    if (asJsonObject2.has("function")) {
                        JsonObject asJsonObject3 = asJsonObject2.getAsJsonObject("function");
                        String asString2 = asJsonObject3.get("name").getAsString();
                        JsonObject asJsonObject4 = asJsonObject3.getAsJsonObject(IJavaModelMarker.ARGUMENTS);
                        M.m(asString2);
                        M.m(asJsonObject4);
                        arrayList2.add(new w(asString2, l.d(asJsonObject4)));
                    }
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (messageJsonObject.has("channels")) {
                for (Map.Entry<String, JsonElement> entry : messageJsonObject.getAsJsonObject("channels").entrySet()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue().getAsString());
                }
            }
            return d.f59898e.a(com.google.ai.edge.litertlm.b.f59880b.c(arrayList), arrayList2, linkedHashMap);
        }

        public a() {
        }
    }

    public final class b implements LiteRtLmJni.JniMessageCallback {

        @NotNull
        public final n f59888a;

        @Nullable
        public JsonObject f59889b;

        public int f59890c;

        public final c f59891d;

        public b(@NotNull c this$0, n callback) {
            M.p(callback, "callback");
            this.f59891d = this$0;
            this.f59888a = callback;
        }

        @Override
        public void a() {
            JsonObject jsonObject = this.f59889b;
            if (jsonObject == null) {
                this.f59888a.a();
                return;
            }
            LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
            long j10 = this.f59891d.f59884b;
            String jsonElement = jsonObject.toString();
            M.o(jsonElement, "toString(...)");
            liteRtLmJni.nativeSendMessageAsync(j10, jsonElement, FetchDefaults.EMPTY_JSON_OBJECT_STRING, this);
            this.f59889b = null;
        }

        @Override
        public void b(@NotNull String messageJsonString) {
            M.p(messageJsonString, "messageJsonString");
            JsonObject asJsonObject = JsonParser.parseString(messageJsonString).getAsJsonObject();
            if (!asJsonObject.has("tool_calls")) {
                if (asJsonObject.has("content") || asJsonObject.has("channels")) {
                    n nVar = this.f59888a;
                    a aVar = c.f59882f;
                    M.m(asJsonObject);
                    nVar.b(aVar.b(asJsonObject));
                    return;
                }
                return;
            }
            if (!this.f59891d.e()) {
                n nVar2 = this.f59888a;
                a aVar2 = c.f59882f;
                M.m(asJsonObject);
                nVar2.b(aVar2.b(asJsonObject));
                return;
            }
            int i10 = this.f59890c;
            if (i10 >= 25) {
                this.f59888a.onError(new IllegalStateException("Exceeded recurring tool call limit of 25"));
                return;
            }
            this.f59890c = i10 + 1;
            c cVar = this.f59891d;
            M.m(asJsonObject);
            this.f59889b = cVar.h(asJsonObject);
        }

        @Override
        public void c(int statusCode, @NotNull String message) {
            M.p(message, "message");
            if (statusCode == 1) {
                this.f59888a.onError(new CancellationException(message));
                return;
            }
            this.f59888a.onError(new LiteRtLmJniException("Status Code: " + statusCode + ". Message: " + message));
        }
    }

    @f(c = "com.google.ai.edge.litertlm.Conversation$sendMessageAsync$1", f = "Conversation.kt", i = {}, l = {265}, m = "invokeSuspend", n = {}, nl = {266}, s = {}, v = 2)
    public static final class C0930c extends q implements p<InterfaceC13358B<? super d>, yf.f<? super P0>, Object> {

        public int f59892b;

        public Object f59893c;

        public final d f59895e;

        public final Map<String, Object> f59896f;

        public static final class a implements n {

            public final InterfaceC13358B<d> f59897a;

            /* JADX WARN: Multi-variable type inference failed */
            public a(InterfaceC13358B<? super d> $$this$callbackFlow) {
                this.f59897a = $$this$callbackFlow;
            }

            @Override
            public void a() {
                E.a.a(this.f59897a, null, 1, null);
            }

            @Override
            public void b(d message) {
                M.p(message, "message");
                this.f59897a.p(message);
            }

            @Override
            public void onError(Throwable throwable) {
                M.p(throwable, "throwable");
                this.f59897a.J(throwable);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0930c(d $message, Map<String, ? extends Object> $extraContext, yf.f<? super C0930c> $completion) {
            super(2, $completion);
            this.f59895e = $message;
            this.f59896f = $extraContext;
        }

        public static final P0 A() {
            return P0.f98194a;
        }

        @Override
        public final yf.f<P0> create(Object value, yf.f<?> $completion) {
            C0930c c0930c = new C0930c(this.f59895e, this.f59896f, $completion);
            c0930c.f59893c = value;
            return c0930c;
        }

        @Override
        public final Object invoke(InterfaceC13358B<? super d> p12, yf.f<? super P0> p22) {
            return ((C0930c) create(p12, p22)).invokeSuspend(P0.f98194a);
        }

        @Override
        public final Object invokeSuspend(Object $result) {
            Object l10 = Af.d.l();
            int i10 = this.f59892b;
            if (i10 == 0) {
                C14418j0.n($result);
                InterfaceC13358B interfaceC13358B = (InterfaceC13358B) this.f59893c;
                c.this.w(this.f59895e, new a(interfaceC13358B), this.f59896f);
                Mf.a aVar = new Mf.a() {
                    @Override
                    public final Object invoke() {
                        P0 A10;
                        A10 = c.C0930c.A();
                        return A10;
                    }
                };
                this.f59892b = 1;
                if (z.a(interfaceC13358B, aVar, this) == l10) {
                    return l10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C14418j0.n($result);
            }
            return P0.f98194a;
        }
    }

    public c(long handle, @NotNull C13907A toolManager, boolean automaticToolCalling) {
        M.p(toolManager, "toolManager");
        this.f59884b = handle;
        this.f59885c = toolManager;
        this.f59886d = automaticToolCalling;
        this.f59887e = new AtomicBoolean(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InterfaceC13842i A(c cVar, String str, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = o0.z();
        }
        return cVar.u(str, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void B(c cVar, com.google.ai.edge.litertlm.b bVar, n nVar, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = o0.z();
        }
        cVar.v(bVar, nVar, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void G(c cVar, d dVar, n nVar, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = o0.z();
        }
        cVar.w(dVar, nVar, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void L(c cVar, String str, n nVar, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            map = o0.z();
        }
        cVar.x(str, nVar, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String l(c cVar, d dVar, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = o0.z();
        }
        return cVar.k(dVar, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static d p(c cVar, com.google.ai.edge.litertlm.b bVar, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = o0.z();
        }
        return cVar.m(bVar, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static d q(c cVar, d dVar, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = o0.z();
        }
        return cVar.n(dVar, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static d r(c cVar, String str, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = o0.z();
        }
        return cVar.o(str, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InterfaceC13842i y(c cVar, com.google.ai.edge.litertlm.b bVar, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = o0.z();
        }
        return cVar.s(bVar, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static InterfaceC13842i z(c cVar, d dVar, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = o0.z();
        }
        return cVar.t(dVar, map);
    }

    public final void c() {
        d();
        LiteRtLmJni.f59865a.nativeConversationCancelProcess(this.f59884b);
    }

    @Override
    public void close() {
        if (!this.f59887e.compareAndSet(true, false)) {
            throw new IllegalStateException("Conversation is closed already.");
        }
        LiteRtLmJni.f59865a.nativeDeleteConversation(this.f59884b);
    }

    public final void d() {
        if (!j()) {
            throw new IllegalStateException("Conversation is not alive.");
        }
    }

    public final boolean e() {
        return this.f59886d;
    }

    @i
    @NotNull
    public final BenchmarkInfo f() {
        d();
        return LiteRtLmJni.f59865a.nativeConversationGetBenchmarkInfo(this.f59884b);
    }

    @NotNull
    public final C13907A g() {
        return this.f59885c;
    }

    public final JsonObject h(JsonObject toolCallsJsonObject) {
        JsonArray asJsonArray = toolCallsJsonObject.getAsJsonArray("tool_calls");
        JsonArray jsonArray = new JsonArray();
        Iterator<JsonElement> it = asJsonArray.iterator();
        M.o(it, "iterator(...)");
        while (it.hasNext()) {
            JsonObject asJsonObject = it.next().getAsJsonObject();
            if (asJsonObject.has("function")) {
                JsonObject asJsonObject2 = asJsonObject.getAsJsonObject("function");
                String asString = asJsonObject2.get("name").getAsString();
                JsonObject asJsonObject3 = asJsonObject2.getAsJsonObject(IJavaModelMarker.ARGUMENTS);
                C13907A c13907a = this.f59885c;
                M.m(asString);
                M.m(asJsonObject3);
                JsonElement a10 = c13907a.a(asString, asJsonObject3);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("type", "tool_response");
                jsonObject.addProperty("name", asString);
                jsonObject.add("response", a10);
                jsonArray.add(jsonObject);
            }
        }
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("role", "tool");
        jsonObject2.add("content", jsonArray);
        return jsonObject2;
    }

    public final boolean j() {
        return this.f59887e.get();
    }

    @i
    @NotNull
    public final String k(@NotNull d message, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(message, "message");
        M.p(extraContext, "extraContext");
        d();
        String jsonElement = l.b(extraContext).toString();
        M.o(jsonElement, "toString(...)");
        LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
        long j10 = this.f59884b;
        String jsonElement2 = message.e().toString();
        M.o(jsonElement2, "toString(...)");
        return liteRtLmJni.nativeConversationRenderMessageIntoString(j10, jsonElement2, jsonElement);
    }

    @NotNull
    public final d m(@NotNull com.google.ai.edge.litertlm.b contents, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(contents, "contents");
        M.p(extraContext, "extraContext");
        return n(d.f59898e.j(contents), extraContext);
    }

    @NotNull
    public final d n(@NotNull d message, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(message, "message");
        M.p(extraContext, "extraContext");
        d();
        JsonObject e10 = message.e();
        String jsonElement = l.b(extraContext).toString();
        M.o(jsonElement, "toString(...)");
        for (int i10 = 0; i10 < 25; i10++) {
            LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
            long j10 = this.f59884b;
            String jsonElement2 = e10.toString();
            M.o(jsonElement2, "toString(...)");
            String nativeSendMessage = liteRtLmJni.nativeSendMessage(j10, jsonElement2, jsonElement);
            JsonObject asJsonObject = JsonParser.parseString(nativeSendMessage).getAsJsonObject();
            if (!asJsonObject.has("tool_calls")) {
                if (asJsonObject.has("content")) {
                    a aVar = f59882f;
                    M.m(asJsonObject);
                    return aVar.b(asJsonObject);
                }
                throw new IllegalStateException("Invalid response from native layer: " + nativeSendMessage);
            }
            if (!this.f59886d) {
                a aVar2 = f59882f;
                M.m(asJsonObject);
                return aVar2.b(asJsonObject);
            }
            M.m(asJsonObject);
            e10 = h(asJsonObject);
        }
        throw new IllegalStateException("Exceeded recurring tool call limit of 25");
    }

    @NotNull
    public final d o(@NotNull String text, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(text, "text");
        M.p(extraContext, "extraContext");
        return m(com.google.ai.edge.litertlm.b.f59880b.b(text), extraContext);
    }

    @NotNull
    public final InterfaceC13842i<d> s(@NotNull com.google.ai.edge.litertlm.b contents, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(contents, "contents");
        M.p(extraContext, "extraContext");
        return t(d.f59898e.j(contents), extraContext);
    }

    @NotNull
    public final InterfaceC13842i<d> t(@NotNull d message, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(message, "message");
        M.p(extraContext, "extraContext");
        return C13844k.s(new C0930c(message, extraContext, null));
    }

    @NotNull
    public final InterfaceC13842i<d> u(@NotNull String text, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(text, "text");
        M.p(extraContext, "extraContext");
        return s(com.google.ai.edge.litertlm.b.f59880b.b(text), extraContext);
    }

    public final void v(@NotNull com.google.ai.edge.litertlm.b contents, @NotNull n callback, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(contents, "contents");
        M.p(callback, "callback");
        M.p(extraContext, "extraContext");
        w(d.f59898e.j(contents), callback, extraContext);
    }

    public final void w(@NotNull d message, @NotNull n callback, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(message, "message");
        M.p(callback, "callback");
        M.p(extraContext, "extraContext");
        d();
        String jsonElement = l.b(extraContext).toString();
        M.o(jsonElement, "toString(...)");
        b bVar = new b(this, callback);
        LiteRtLmJni liteRtLmJni = LiteRtLmJni.f59865a;
        long j10 = this.f59884b;
        String jsonElement2 = message.e().toString();
        M.o(jsonElement2, "toString(...)");
        liteRtLmJni.nativeSendMessageAsync(j10, jsonElement2, jsonElement, bVar);
    }

    public final void x(@NotNull String text, @NotNull n callback, @NotNull Map<String, ? extends Object> extraContext) {
        M.p(text, "text");
        M.p(callback, "callback");
        M.p(extraContext, "extraContext");
        v(com.google.ai.edge.litertlm.b.f59880b.b(text), callback, extraContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(long j10, C13907A c13907a, boolean z10, int i10, C14026x c14026x) {
        this(j10, (i10 & 2) != 0 ? new C13907A(null, 1, 0 == true ? 1 : 0) : c13907a, (i10 & 4) != 0 ? true : z10);
    }
}
