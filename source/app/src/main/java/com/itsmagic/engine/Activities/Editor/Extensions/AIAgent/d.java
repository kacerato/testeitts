package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import android.icu.text.DateFormat;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.d;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import k0.AbstractC13908a;

@k0.i
public class d {

    public static k0.g f69862c;

    public static FutureTask<k0.g> f69863d;

    public static final Object f69860a = new Object();

    public static final AtomicBoolean f69861b = new AtomicBoolean();

    public static final List<b> f69864e = new SteppedArrayList();

    public static final Semaphore f69865f = new Semaphore(1, true);

    public class a implements h {

        public final AtomicBoolean f69866a = new AtomicBoolean();

        public final h f69867b;

        public final i f69868c;

        public a(final h val$outputCallback, final i val$chat) {
            this.f69867b = val$outputCallback;
            this.f69868c = val$chat;
        }

        @Override
        public void a() {
            try {
                h hVar = this.f69867b;
                if (hVar != null) {
                    hVar.a();
                }
            } finally {
                d();
            }
        }

        @Override
        public void b(String message) {
            try {
                h hVar = this.f69867b;
                if (hVar != null) {
                    hVar.b(message);
                }
            } finally {
                d();
            }
        }

        @Override
        public void c(String partialMessage) {
            h hVar = this.f69867b;
            if (hVar != null) {
                hVar.c(partialMessage);
            }
        }

        public final void d() {
            if (this.f69866a.compareAndSet(false, true)) {
                this.f69868c.a();
            }
        }
    }

    public static final class b {

        public final String f69869a;

        public final g f69870b;

        public final int f69871c;

        public final long f69872d;

        public final r f69873e;

        public b(String str, g gVar, int i10, long j10, r rVar, a aVar) {
            this(str, gVar, i10, j10, rVar);
        }

        public String c() {
            long currentTimeMillis = System.currentTimeMillis() - this.f69872d;
            if (currentTimeMillis < 60000) {
                return Lang.l(Lang.T.AI_RUNNING_CHAT_NOW);
            }
            long j10 = currentTimeMillis / 60000;
            if (j10 < 60) {
                return j10 + DateFormat.MINUTE;
            }
            long j11 = j10 / 60;
            if (j11 < 24) {
                return j11 + "h";
            }
            return (j11 / 24) + "d";
        }

        public r d() {
            return this.f69873e;
        }

        public long e() {
            return this.f69872d;
        }

        public String f() {
            g gVar = this.f69870b;
            return (gVar != null ? gVar.c() : Lang.l(Lang.T.AI_CHAT)) + " - " + i();
        }

        public int g() {
            return this.f69871c;
        }

        public String h() {
            return this.f69869a;
        }

        public String i() {
            String str = this.f69869a;
            return str == null ? "----" : str.length() > 6 ? this.f69869a.substring(0, 6) : this.f69869a;
        }

        public g j() {
            return this.f69870b;
        }

        public b(String sessionId, g specialist, int seed, long createdAt, r chat) {
            this.f69869a = sessionId;
            this.f69870b = specialist;
            this.f69871c = seed;
            this.f69872d = createdAt;
            this.f69873e = chat;
        }
    }

    public static k0.g d(FutureTask<k0.g> task) {
        k0.g gVar;
        try {
            k0.g gVar2 = task.get();
            Object obj = f69860a;
            synchronized (obj) {
                try {
                    if (f69862c == null) {
                        f69862c = gVar2;
                    }
                    if (f69863d == task) {
                        f69863d = null;
                    }
                    f69861b.set(false);
                    obj.notifyAll();
                    gVar = f69862c;
                } finally {
                }
            }
            return gVar;
        } catch (InterruptedException e10) {
            Object obj2 = f69860a;
            synchronized (obj2) {
                try {
                    if (f69863d == task) {
                        f69863d = null;
                    }
                    f69861b.set(false);
                    obj2.notifyAll();
                    Thread.currentThread().interrupt();
                    throw new RuntimeException(e10);
                } finally {
                }
            }
        } catch (ExecutionException e11) {
            e = e11;
            Object obj3 = f69860a;
            synchronized (obj3) {
                try {
                    if (f69863d == task) {
                        f69863d = null;
                    }
                    f69861b.set(false);
                    obj3.notifyAll();
                    if (e.getCause() != null) {
                        e = e.getCause();
                    }
                    throw new RuntimeException(e);
                } finally {
                }
            }
        }
    }

    public static void e(g specialist, s callback) {
        f(specialist, UUID.randomUUID().toString(), callback);
    }

    public static void f(g specialist, String sessionId, s callback) {
        i();
        if (sessionId == null) {
            sessionId = UUID.randomUUID().toString();
        }
        r rVar = new r(Nc.d.c(), sessionId, specialist);
        if (callback != null) {
            callback.a(rVar);
        }
    }

    public static void g(s callback) {
        e(null, callback);
    }

    public static k0.g h() {
        k0.g gVar;
        Throwable th2;
        StringBuilder sb2 = new StringBuilder();
        C8.a aVar = W7.b.f27306f;
        sb2.append(aVar.f2458a.f());
        sb2.append("/ai/cache/");
        String sb3 = sb2.toString();
        File file = new File(sb3);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = aVar.f2458a.f() + "/ai/gemma-4-E2B-it.litertlm";
        k0.j jVar = k0.j.f94434a;
        jVar.j(Boolean.TRUE);
        jVar.l("");
        try {
            gVar = new k0.g(l.c(str, 10000, new AbstractC13908a.b(), sb3));
        } catch (Throwable th3) {
            gVar = null;
            th2 = th3;
        }
        try {
            gVar.j();
            return gVar;
        } catch (Throwable th4) {
            th2 = th4;
            th2.printStackTrace();
            if (gVar != null) {
                try {
                    gVar.close();
                } catch (Throwable unused) {
                }
            }
            k0.g gVar2 = new k0.g(l.c(str, 10000, new AbstractC13908a.C1829a(), sb3));
            gVar2.j();
            return gVar2;
        }
    }

    public static void i() {
        synchronized (f69860a) {
            if (f69862c == null && f69863d == null) {
                f69861b.set(true);
                final FutureTask<k0.g> futureTask = new FutureTask<>(new com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.b());
                f69863d = futureTask;
                new Thread(new Runnable() {
                    @Override
                    public final void run() {
                        d.k(FutureTask.this);
                    }
                }).start();
            }
        }
    }

    public static b j(String sessionId) {
        if (sessionId == null || sessionId.isEmpty()) {
            return null;
        }
        synchronized (f69864e) {
            int i10 = 0;
            while (true) {
                try {
                    List<b> list = f69864e;
                    if (i10 >= list.size()) {
                        return null;
                    }
                    b bVar = list.get(i10);
                    if (sessionId.equals(bVar.f69869a)) {
                        return bVar;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static void k(FutureTask<k0.g> task) {
        task.run();
        d(task);
    }

    public static k0.g l() {
        boolean z10;
        synchronized (f69860a) {
            try {
                k0.g gVar = f69862c;
                if (gVar != null) {
                    return gVar;
                }
                FutureTask<k0.g> futureTask = f69863d;
                if (futureTask == null) {
                    z10 = true;
                    f69861b.set(true);
                    futureTask = new FutureTask<>(new com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.b());
                    f69863d = futureTask;
                } else {
                    z10 = false;
                }
                if (z10) {
                    futureTask.run();
                }
                return d(futureTask);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static List<b> m() {
        SteppedArrayList steppedArrayList;
        List<b> list = f69864e;
        synchronized (list) {
            steppedArrayList = new SteppedArrayList(list);
            Collections.sort(steppedArrayList, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int q10;
                    q10 = d.q((d.b) obj, (d.b) obj2);
                    return q10;
                }
            });
        }
        return steppedArrayList;
    }

    public static boolean n() {
        synchronized (f69864e) {
            int i10 = 0;
            while (true) {
                try {
                    List<b> list = f69864e;
                    if (i10 >= list.size()) {
                        return false;
                    }
                    b bVar = list.get(i10);
                    if (bVar != null && bVar.d() != null && bVar.d().u()) {
                        return true;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public static boolean o() {
        return f69861b.get();
    }

    public static int q(b bVar, b bVar2) {
        return Long.compare(bVar2.f69872d, bVar.f69872d);
    }

    public static void r(r chat) {
        List<b> list;
        if (chat == null || chat.r() == null || chat.r().isEmpty()) {
            return;
        }
        synchronized (f69864e) {
            int i10 = 0;
            while (true) {
                try {
                    list = f69864e;
                    if (i10 >= list.size()) {
                        i10 = -1;
                        break;
                    }
                    if (chat.r().equals(list.get(i10).f69869a)) {
                        break;
                    } else {
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (chat.u()) {
                b bVar = new b(chat.r(), chat.s(), chat.q(), chat.n(), chat, null);
                if (i10 >= 0) {
                    list.set(i10, bVar);
                } else {
                    list.add(bVar);
                }
            } else if (i10 >= 0) {
                list.remove(i10);
            }
        }
        t();
    }

    public static void s() {
    }

    public static void t() {
        if (n()) {
            return;
        }
        synchronized (f69860a) {
            try {
                if (f69862c == null || n()) {
                    return;
                }
                try {
                    f69862c.close();
                } finally {
                    f69862c = null;
                    f69861b.set(false);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void u(String basePrompt, String promp, h outputCallback, v... tools) {
        i();
        i iVar = new i(Nc.d.c(), basePrompt, tools);
        iVar.j(promp, new a(outputCallback, iVar));
    }

    public static void v(String basePrompt, String promp, v... tools) {
        u(basePrompt, promp, null, tools);
    }
}
