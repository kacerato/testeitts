package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.Utils.DateSerializer;
import com.itsmagic.engine.Engines.Native.OHString.OHStringSerializer;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;

@k0.i
public class r {

    public static final o f69905m = o.EXPLAIN;

    public int f69910e;

    public int f69911f;

    public final String f69912g;

    public final com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g f69913h;

    public int f69915j;

    public p f69916k;

    public final AtomicBoolean f69906a = new AtomicBoolean();

    public final AtomicBoolean f69907b = new AtomicBoolean();

    public o f69917l = f69905m;

    public final long f69914i = System.currentTimeMillis();

    public final k f69908c = new k();

    public final Gson f69909d = new GsonBuilder().serializeSpecialFloatingPointValues().registerTypeAdapter(Date.class, new DateSerializer()).registerTypeAdapter(Ac.b.class, new OHStringSerializer()).setPrettyPrinting().create();

    public class a implements Runnable {

        public final String[] f69918b;

        public final String f69919c;

        public final o f69920d;

        public final t f69921e;

        public final m f69922f;

        public class C1041a implements q {
            public C1041a() {
            }

            @Override
            public void a(m messageObject) {
                r.this.f69908c.a(messageObject);
                a aVar = a.this;
                aVar.f69918b[0] = r.this.i();
            }
        }

        public class b extends TypeToken<List<String>> {
            public b() {
            }
        }

        public a(final String[] val$contextObjectJson, final String val$input, final o val$promptMode, final t val$callback, final m val$promptMessageObject) {
            this.f69918b = val$contextObjectJson;
            this.f69919c = val$input;
            this.f69920d = val$promptMode;
            this.f69921e = val$callback;
            this.f69922f = val$promptMessageObject;
        }

        @Override
        public void run() {
            C1041a c1041a = new C1041a();
            String g10 = r.this.g(C3.a.h(C3.b.e(this.f69919c, 300000L, c1041a), c1041a), this.f69918b[0]);
            int i10 = g.f69944b[this.f69920d.ordinal()];
            if (i10 == 1) {
                String C10 = r.this.C(g10, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL, this.f69921e);
                if (C10 == null) {
                    this.f69921e.a();
                    return;
                }
                r.this.f69908c.a(new m(n.AI_ANSWER, C10));
                this.f69921e.b(C10, true);
                return;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    return;
                }
                String C11 = r.this.C(g10, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, this.f69921e);
                if (C11 == null) {
                    this.f69921e.a();
                    return;
                }
                r.this.f69908c.a(new m(n.AI_ANSWER, C11));
                this.f69921e.b(C11, true);
                return;
            }
            String C12 = r.this.C(g10, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.PLANNING, this.f69921e);
            if (C12 == null) {
                this.f69921e.a();
                return;
            }
            try {
                List list = (List) r.this.f69909d.fromJson(C12, new b().getType());
                if (list == null || list.isEmpty()) {
                    r.this.f69908c.a(new m(n.AI_ANSWER, "I will execute this plan:\n" + C12));
                    this.f69921e.b(C12, false);
                    r.this.D(r.this.g("Execute this plan:\n" + C12, this.f69918b[0]), this.f69921e, 0, this.f69922f);
                    return;
                }
                String str = "";
                int i11 = 0;
                while (i11 < list.size()) {
                    if (i11 > 0) {
                        str = str + "\n\n";
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    int i12 = i11 + 1;
                    sb2.append(i12);
                    sb2.append(". ");
                    sb2.append((String) list.get(i11));
                    i11 = i12;
                    str = sb2.toString();
                }
                r.this.f69908c.a(new m(n.AI_ANSWER, "I will execute this plan:\n" + str));
                this.f69921e.b(str, false);
                r.this.D(r.this.g("Execute this plan:\n" + str, this.f69918b[0]), this.f69921e, 0, this.f69922f);
            } catch (Exception e10) {
                e10.printStackTrace();
                r.this.f69908c.a(new m(n.AI_ANSWER, "I will execute this plan:\n" + C12));
                this.f69921e.b(C12, false);
                r.this.D(r.this.g("Execute this plan:\n" + C12, this.f69918b[0]), this.f69921e, 0, this.f69922f);
            }
        }
    }

    public class b implements w {

        public final t f69926a;

        public b(final t val$redirectViewCallback) {
            this.f69926a = val$redirectViewCallback;
        }

        @Override
        public void a(String message) {
            this.f69926a.c(message);
        }

        @Override
        public void b(String message, boolean done) {
            this.f69926a.b(message, false);
        }
    }

    public class c implements k0.n {

        public final String[] f69928a;

        public final t f69929b;

        public final boolean[] f69930c;

        public final CountDownLatch f69931d;

        public final boolean[] f69932e;

        public c(final String[] val$fullMsg, final t val$redirectViewCallback, final boolean[] val$successAnswer, final CountDownLatch val$doneSignal, final boolean[] val$errorAnswer) {
            this.f69928a = val$fullMsg;
            this.f69929b = val$redirectViewCallback;
            this.f69930c = val$successAnswer;
            this.f69931d = val$doneSignal;
            this.f69932e = val$errorAnswer;
        }

        @Override
        public void a() {
            this.f69930c[0] = true;
            this.f69931d.countDown();
        }

        @Override
        public void b(@NonNull com.google.ai.edge.litertlm.d message) {
            String dVar = message.toString();
            StringBuilder sb2 = new StringBuilder();
            String[] strArr = this.f69928a;
            sb2.append(strArr[0]);
            sb2.append(dVar);
            strArr[0] = sb2.toString();
            if (j.f69895a) {
                r.v("Streaming:" + dVar);
            }
            this.f69929b.c(dVar);
        }

        @Override
        public void onError(@NonNull Throwable throwable) {
            throwable.printStackTrace();
            this.f69932e[0] = true;
            this.f69931d.countDown();
        }
    }

    public class d implements q {
        public d() {
        }

        @Override
        public void a(m messageObject) {
            r.this.f69908c.a(messageObject);
        }
    }

    public class e implements w {

        public final t f69935a;

        public e(final t val$callback) {
            this.f69935a = val$callback;
        }

        @Override
        public void a(String message) {
            this.f69935a.c(message);
        }

        @Override
        public void b(String message, boolean done) {
            this.f69935a.b(message, false);
        }
    }

    public class f implements k0.n {

        public final String[] f69937a;

        public final t f69938b;

        public final boolean[] f69939c;

        public final CountDownLatch f69940d;

        public final boolean[] f69941e;

        public f(final String[] val$fullMsg, final t val$callback, final boolean[] val$successAnswer, final CountDownLatch val$doneSignal, final boolean[] val$errorAnswer) {
            this.f69937a = val$fullMsg;
            this.f69938b = val$callback;
            this.f69939c = val$successAnswer;
            this.f69940d = val$doneSignal;
            this.f69941e = val$errorAnswer;
        }

        @Override
        public void a() {
            this.f69939c[0] = true;
            this.f69940d.countDown();
        }

        @Override
        public void b(@NonNull com.google.ai.edge.litertlm.d message) {
            String dVar = message.toString();
            StringBuilder sb2 = new StringBuilder();
            String[] strArr = this.f69937a;
            sb2.append(strArr[0]);
            sb2.append(dVar);
            strArr[0] = sb2.toString();
            if (j.f69895a) {
                r.v("Streaming:" + dVar);
            }
            this.f69938b.c(dVar);
        }

        @Override
        public void onError(@NonNull Throwable throwable) {
            throwable.printStackTrace();
            this.f69941e[0] = true;
            this.f69940d.countDown();
        }
    }

    public static class g {

        public static final int[] f69943a;

        public static final int[] f69944b;

        static {
            int[] iArr = new int[o.values().length];
            f69944b = iArr;
            try {
                iArr[o.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69944b[o.PLAN_EXECUTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69944b[o.EXPLAIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.values().length];
            f69943a = iArr2;
            try {
                iArr2[com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69943a[com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69943a[com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public r(int seed, String sessionId, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g specialist) {
        this.f69911f = seed;
        this.f69912g = sessionId;
        this.f69913h = specialist;
        if (specialist == null || g.f69943a[specialist.ordinal()] != 1) {
            return;
        }
        this.f69916k = new x3.b(null);
    }

    public static void v(String t10) {
        if (j.f69895a) {
            Log.w("AI-Agent", t10);
        }
    }

    public void A(o mode) {
        this.f69917l = mode;
    }

    public void B(p orchestrator) {
        this.f69916k = orchestrator;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d1 A[Catch: all -> 0x00d9, TryCatch #3 {all -> 0x00d9, blocks: (B:48:0x00ca, B:50:0x00d1, B:51:0x00db), top: B:47:0x00ca }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String C(String input, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g specialist, t redirectViewCallback) {
        String str;
        boolean[] zArr;
        boolean[] zArr2;
        Semaphore semaphore;
        com.google.ai.edge.litertlm.c cVar;
        boolean z10 = true;
        String str2 = input == null ? "" : input;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        String[] strArr = {""};
        boolean[] zArr3 = {false};
        boolean[] zArr4 = {false};
        boolean[] zArr5 = {false};
        com.google.ai.edge.litertlm.c cVar2 = null;
        try {
            if (j.f69895a && com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f.availablePermits() == 0) {
                v("Waiting active conversation to finish");
            }
            semaphore = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f;
            semaphore.acquire();
            try {
                z(true);
                if (j.f69895a) {
                    try {
                        v("Simple call input:" + str2);
                    } catch (Throwable th2) {
                        th = th2;
                        str = null;
                        zArr = zArr5;
                        zArr2 = zArr4;
                        try {
                            k(cVar2, atomicBoolean);
                            if (th instanceof InterruptedException) {
                                Thread.currentThread().interrupt();
                            }
                            th.printStackTrace();
                            zArr[0] = true;
                            k(cVar2, atomicBoolean);
                            z(false);
                            if (z10) {
                                semaphore = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f;
                                semaphore.release();
                            }
                            if (zArr[0]) {
                            }
                            this.f69911f = Nc.d.c();
                            return C(input, specialist, redirectViewCallback);
                        } catch (Throwable th3) {
                            k(cVar2, atomicBoolean);
                            z(false);
                            if (z10) {
                                com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f.release();
                            }
                            throw th3;
                        }
                    }
                }
                com.google.ai.edge.litertlm.c d10 = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.l().d(l.a(this.f69911f, specialist, null, new b(redirectViewCallback)));
                try {
                    l(str2);
                    cVar = d10;
                    str = null;
                    zArr = zArr5;
                    zArr2 = zArr4;
                    try {
                        cVar.x(str2, new c(strArr, redirectViewCallback, zArr3, countDownLatch, zArr4), new HashMap());
                        countDownLatch.await();
                        k(cVar, atomicBoolean);
                        z(false);
                    } catch (Throwable th4) {
                        th = th4;
                        cVar2 = cVar;
                        z10 = true;
                        k(cVar2, atomicBoolean);
                        if (th instanceof InterruptedException) {
                        }
                        th.printStackTrace();
                        zArr[0] = true;
                        k(cVar2, atomicBoolean);
                        z(false);
                        if (z10) {
                        }
                        if (zArr[0]) {
                        }
                        this.f69911f = Nc.d.c();
                        return C(input, specialist, redirectViewCallback);
                    }
                } catch (Throwable th5) {
                    th = th5;
                    cVar = d10;
                    str = null;
                    zArr = zArr5;
                    zArr2 = zArr4;
                }
            } catch (Throwable th6) {
                th = th6;
                str = null;
                zArr = zArr5;
                zArr2 = zArr4;
            }
        } catch (Throwable th7) {
            th = th7;
            str = null;
            zArr = zArr5;
            zArr2 = zArr4;
            z10 = false;
        }
        semaphore.release();
        if (!zArr[0] || zArr2[0]) {
            this.f69911f = Nc.d.c();
            return C(input, specialist, redirectViewCallback);
        }
        if (zArr3[0]) {
            if (j.f69895a) {
                v("AI Output:" + strArr[0]);
            }
            String str3 = strArr[0];
            if (str3 != null && !str3.trim().isEmpty()) {
                return strArr[0];
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x012c A[Catch: all -> 0x0134, TryCatch #11 {all -> 0x0134, blocks: (B:66:0x0125, B:68:0x012c, B:69:0x0136), top: B:65:0x0125 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void D(String input, t callback, int depth, m promptMessageObject) {
        boolean[] zArr;
        boolean[] zArr2;
        boolean[] zArr3;
        String[] strArr;
        char c10;
        char c11;
        boolean z10 = true;
        String str = input == null ? "" : input;
        p pVar = this.f69916k;
        if (pVar != null) {
            pVar.f69904a = new d();
            try {
                str = this.f69916k.b(str, depth);
            } catch (RecursiveCallOnOrchestrator e10) {
                D(e10.getOutput(), callback, depth + 1, promptMessageObject);
                return;
            } catch (StopOnOrchestrator e11) {
                E(str, e11.getOutput(), callback);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        String str2 = str;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        String[] strArr2 = {""};
        boolean[] zArr4 = {false};
        boolean[] zArr5 = {false};
        boolean[] zArr6 = {false};
        com.google.ai.edge.litertlm.c cVar = null;
        try {
            if (j.f69895a) {
                try {
                    if (com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f.availablePermits() == 0) {
                        v("Waiting active conversation to finish");
                    }
                } catch (Throwable th3) {
                    th = th3;
                    zArr = zArr6;
                    zArr2 = zArr5;
                    zArr3 = zArr4;
                    strArr = strArr2;
                    z10 = false;
                    try {
                        k(cVar, atomicBoolean);
                        if (th instanceof InterruptedException) {
                        }
                        th.printStackTrace();
                        c10 = 0;
                        zArr[0] = true;
                        k(cVar, atomicBoolean);
                        z(false);
                        if (z10) {
                        }
                        if (zArr[c10]) {
                        }
                        this.f69911f = Nc.d.c();
                        D(input, callback, depth, promptMessageObject);
                        return;
                    } catch (Throwable th4) {
                        k(cVar, atomicBoolean);
                        z(false);
                        if (z10) {
                            com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f.release();
                        }
                        throw th4;
                    }
                }
            }
            Semaphore semaphore = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f;
            semaphore.acquire();
            try {
                z(true);
                if (j.f69895a) {
                    try {
                        v("Direct call input:" + str2);
                        v("Used tokens:" + this.f69910e);
                    } catch (Throwable th5) {
                        th = th5;
                        zArr = zArr6;
                        zArr2 = zArr5;
                        zArr3 = zArr4;
                        strArr = strArr2;
                        k(cVar, atomicBoolean);
                        if (th instanceof InterruptedException) {
                        }
                        th.printStackTrace();
                        c10 = 0;
                        zArr[0] = true;
                        k(cVar, atomicBoolean);
                        z(false);
                        if (z10) {
                        }
                        if (zArr[c10]) {
                        }
                        this.f69911f = Nc.d.c();
                        D(input, callback, depth, promptMessageObject);
                        return;
                    }
                }
                com.google.ai.edge.litertlm.c d10 = com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.l().d(l.a(this.f69911f, this.f69913h, null, new e(callback)));
                try {
                    l(str2);
                    zArr = zArr6;
                    zArr2 = zArr5;
                    zArr3 = zArr4;
                    strArr = strArr2;
                    try {
                        d10.x(str2, new f(strArr2, callback, zArr4, countDownLatch, zArr2), new HashMap());
                        countDownLatch.await();
                        k(d10, atomicBoolean);
                        z(false);
                        semaphore.release();
                        c10 = 0;
                    } catch (Throwable th6) {
                        th = th6;
                        cVar = d10;
                        z10 = true;
                        k(cVar, atomicBoolean);
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        th.printStackTrace();
                        c10 = 0;
                        zArr[0] = true;
                        k(cVar, atomicBoolean);
                        z(false);
                        if (z10) {
                            com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.f69865f.release();
                        }
                        if (zArr[c10]) {
                        }
                        this.f69911f = Nc.d.c();
                        D(input, callback, depth, promptMessageObject);
                        return;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    zArr = zArr6;
                    zArr2 = zArr5;
                    zArr3 = zArr4;
                    strArr = strArr2;
                }
            } catch (Throwable th8) {
                th = th8;
                zArr = zArr6;
                zArr2 = zArr5;
                zArr3 = zArr4;
                strArr = strArr2;
            }
        } catch (Throwable th9) {
            th = th9;
            zArr = zArr6;
            zArr2 = zArr5;
            zArr3 = zArr4;
            strArr = strArr2;
            z10 = false;
        }
        if (!zArr[c10] || zArr2[c10]) {
            this.f69911f = Nc.d.c();
            D(input, callback, depth, promptMessageObject);
            return;
        }
        if (zArr3[c10]) {
            p pVar2 = this.f69916k;
            if (pVar2 != null) {
                try {
                    strArr[c10] = pVar2.a(strArr[c10], depth, str2);
                } catch (RecursiveCallOnOrchestrator e12) {
                    D(e12.getOutput(), callback, 1 + depth, promptMessageObject);
                    return;
                } catch (StopOnOrchestrator e13) {
                    E(str2, e13.getOutput(), callback);
                    return;
                } catch (Throwable th10) {
                    th10.printStackTrace();
                }
                c11 = 0;
            } else {
                c11 = c10;
            }
            E(str2, strArr[c11], callback);
        }
    }

    public final void E(String input, String messageText, t callback) {
        if (j.f69895a) {
            v("AI Output:" + messageText);
            v("Used tokens:" + this.f69910e);
        }
        if (messageText == null || messageText.trim().isEmpty()) {
            callback.a();
            return;
        }
        m mVar = new m(n.AI_ANSWER, messageText);
        this.f69908c.a(mVar);
        w(mVar, callback);
    }

    public final String g(String prompt, String contextObjectJson) {
        return "Conversation ContextObject JSON:\n" + contextObjectJson + "\nUse this ContextObject as the previous conversation history. Answer the latest user message sent after this context.\n\n" + prompt;
    }

    public void h() {
        if (this.f69906a.get()) {
            return;
        }
        synchronized (this) {
            this.f69915j++;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.r(this);
    }

    public final String i() {
        String json = this.f69909d.toJson(this.f69908c.d());
        l(json);
        return json;
    }

    public void j() {
        this.f69906a.set(true);
        synchronized (this) {
            this.f69915j = 0;
        }
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.r(this);
    }

    public final void k(com.google.ai.edge.litertlm.c conversation, AtomicBoolean conversationClosed) {
        if (conversation == null || !conversationClosed.compareAndSet(false, true)) {
            return;
        }
        try {
            conversation.close();
        } catch (Throwable th2) {
            if (j.f69895a) {
                th2.printStackTrace();
            }
        }
    }

    public final void l(String data) {
        this.f69910e = 0;
        if (data == null || data.isEmpty()) {
            return;
        }
        for (String str : data.split("\\s+|(?=[\\p{Punct}])|(?<=[\\p{Punct}])")) {
            if (!str.trim().isEmpty()) {
                this.f69910e++;
            }
        }
        v("Counted tokens:" + this.f69910e);
    }

    public void m() {
        synchronized (this) {
            try {
                int i10 = this.f69915j;
                if (i10 > 0) {
                    this.f69915j = i10 - 1;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.r(this);
    }

    public long n() {
        return this.f69914i;
    }

    public o o() {
        return this.f69917l;
    }

    public p p() {
        return this.f69916k;
    }

    public int q() {
        return this.f69911f;
    }

    public String r() {
        return this.f69912g;
    }

    public com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g s() {
        return this.f69913h;
    }

    public final int t() {
        int i10;
        synchronized (this) {
            i10 = this.f69915j;
        }
        return i10;
    }

    public boolean u() {
        return this.f69907b.get() || t() > 0;
    }

    public final void w(m messageObject, t callback) {
        if (j.f69895a) {
            String json = this.f69909d.toJson(this.f69908c);
            l(json);
            v("Finished context:" + json);
            v("Chat seed:" + this.f69911f);
        }
        callback.b(messageObject.b(), true);
    }

    public final m x(String input) {
        if (input == null || input.trim().isEmpty()) {
            return null;
        }
        m mVar = new m(n.USER_PROMPT, input);
        this.f69908c.a(mVar);
        return mVar;
    }

    public void y(String input, t callback) {
        if (this.f69906a.get()) {
            throw new RuntimeException("Chat ended!");
        }
        O9.b.d(new a(new String[]{i()}, input, this.f69917l, callback, x(input == null ? "" : input)));
    }

    public final void z(boolean value) {
        if (this.f69907b.getAndSet(value) != value) {
            com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d.r(this);
        }
    }
}
