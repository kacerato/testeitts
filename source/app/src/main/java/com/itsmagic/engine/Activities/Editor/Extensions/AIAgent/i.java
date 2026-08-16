package com.itsmagic.engine.Activities.Editor.Extensions.AIAgent;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.Utils.DateSerializer;
import com.itsmagic.engine.Engines.Native.OHString.OHStringSerializer;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;

@k0.i
public class i {

    public int f69879d;

    public int f69880e;

    public final String f69881f;

    public final v[] f69882g;

    public int f69884i;

    public final AtomicBoolean f69876a = new AtomicBoolean();

    public final AtomicBoolean f69877b = new AtomicBoolean();

    public final long f69883h = System.currentTimeMillis();

    public final Gson f69878c = new GsonBuilder().serializeSpecialFloatingPointValues().registerTypeAdapter(Date.class, new DateSerializer()).registerTypeAdapter(Ac.b.class, new OHStringSerializer()).setPrettyPrinting().create();

    public class a implements h {

        public final h f69885a;

        public final CountDownLatch f69886b;

        public final AtomicBoolean f69887c;

        public a(final h val$callback, final CountDownLatch val$doneSignal, final AtomicBoolean val$isError) {
            this.f69885a = val$callback;
            this.f69886b = val$doneSignal;
            this.f69887c = val$isError;
        }

        @Override
        public void a() {
            this.f69887c.set(true);
            this.f69886b.countDown();
        }

        @Override
        public void b(String message) {
            this.f69886b.countDown();
            this.f69885a.b(message);
        }

        @Override
        public void c(String partialMessage) {
            this.f69885a.c(partialMessage);
        }
    }

    public class b implements k0.n {

        public final String[] f69889a;

        public final h f69890b;

        public final boolean[] f69891c;

        public final CountDownLatch f69892d;

        public final boolean[] f69893e;

        public b(final String[] val$fullMsg, final h val$callback, final boolean[] val$successAnswer, final CountDownLatch val$doneSignal, final boolean[] val$errorAnswer) {
            this.f69889a = val$fullMsg;
            this.f69890b = val$callback;
            this.f69891c = val$successAnswer;
            this.f69892d = val$doneSignal;
            this.f69893e = val$errorAnswer;
        }

        @Override
        public void a() {
            this.f69891c[0] = true;
            this.f69892d.countDown();
        }

        @Override
        public void b(@NonNull com.google.ai.edge.litertlm.d message) {
            String dVar = message.toString();
            StringBuilder sb2 = new StringBuilder();
            String[] strArr = this.f69889a;
            sb2.append(strArr[0]);
            sb2.append(dVar);
            strArr[0] = sb2.toString();
            if (j.f69895a) {
                i.h("Streaming:" + dVar);
            }
            this.f69890b.c(dVar);
        }

        @Override
        public void onError(@NonNull Throwable throwable) {
            throwable.printStackTrace();
            this.f69893e[0] = true;
            this.f69892d.countDown();
        }
    }

    public i(int seed, String basePrompt, v[] tools) {
        this.f69880e = seed;
        this.f69881f = basePrompt;
        this.f69882g = tools;
    }

    public static void h(String t10) {
        if (j.f69895a) {
            Log.w("AI-Agent CC", t10);
        }
    }

    public void a() {
        this.f69876a.set(true);
    }

    public final void b(com.google.ai.edge.litertlm.c conversation, AtomicBoolean conversationClosed) {
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

    public final void c(String data) {
        this.f69879d = 0;
        if (data == null || data.isEmpty()) {
            return;
        }
        for (String str : data.split("\\s+|(?=[\\p{Punct}])|(?<=[\\p{Punct}])")) {
            if (!str.trim().isEmpty()) {
                this.f69879d++;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d8 A[Catch: all -> 0x00e0, TryCatch #0 {all -> 0x00e0, blocks: (B:38:0x00d1, B:40:0x00d8, B:41:0x00e2), top: B:37:0x00d1 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(String input, h callback, m promptMessageObject) {
        boolean[] zArr;
        boolean[] zArr2;
        char c10;
        com.google.ai.edge.litertlm.c cVar;
        boolean z10 = true;
        String str = input == null ? "" : input;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        CountDownLatch countDownLatch = new CountDownLatch(1);
        String[] strArr = {""};
        boolean[] zArr3 = {false};
        boolean[] zArr4 = {false};
        boolean[] zArr5 = {false};
        com.google.ai.edge.litertlm.c cVar2 = null;
        try {
            if (j.f69895a) {
                try {
                    if (d.f69865f.availablePermits() == 0) {
                        h("Waiting active conversation to finish");
                    }
                } catch (Throwable th2) {
                    th = th2;
                    zArr = zArr5;
                    zArr2 = zArr4;
                    z10 = false;
                    try {
                        b(cVar2, atomicBoolean);
                        if (th instanceof InterruptedException) {
                        }
                        th.printStackTrace();
                        c10 = 0;
                        zArr[0] = true;
                        b(cVar2, atomicBoolean);
                        k(false);
                        if (z10) {
                        }
                        if (zArr[c10]) {
                        }
                        callback.a();
                    } catch (Throwable th3) {
                        b(cVar2, atomicBoolean);
                        k(false);
                        if (z10) {
                            d.f69865f.release();
                        }
                        throw th3;
                    }
                }
            }
            Semaphore semaphore = d.f69865f;
            semaphore.acquire();
            try {
                k(true);
                if (j.f69895a) {
                    try {
                        h("Direct call input:" + str);
                        h("Used tokens:" + this.f69879d);
                    } catch (Throwable th4) {
                        th = th4;
                        zArr = zArr5;
                        zArr2 = zArr4;
                        b(cVar2, atomicBoolean);
                        if (th instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        th.printStackTrace();
                        c10 = 0;
                        zArr[0] = true;
                        b(cVar2, atomicBoolean);
                        k(false);
                        if (z10) {
                            d.f69865f.release();
                        }
                        if (zArr[c10]) {
                        }
                        callback.a();
                    }
                }
                com.google.ai.edge.litertlm.c d10 = d.l().d(l.b(this.f69880e, this.f69881f, null, this.f69882g));
                try {
                    cVar = d10;
                    zArr = zArr5;
                    zArr2 = zArr4;
                    try {
                        cVar.x(str, new b(strArr, callback, zArr3, countDownLatch, zArr4), new HashMap());
                        countDownLatch.await();
                        b(cVar, atomicBoolean);
                        k(false);
                        semaphore.release();
                        c10 = 0;
                    } catch (Throwable th5) {
                        th = th5;
                        cVar2 = cVar;
                        z10 = true;
                        b(cVar2, atomicBoolean);
                        if (th instanceof InterruptedException) {
                        }
                        th.printStackTrace();
                        c10 = 0;
                        zArr[0] = true;
                        b(cVar2, atomicBoolean);
                        k(false);
                        if (z10) {
                        }
                        if (zArr[c10]) {
                        }
                        callback.a();
                    }
                } catch (Throwable th6) {
                    th = th6;
                    cVar = d10;
                    zArr = zArr5;
                    zArr2 = zArr4;
                }
            } catch (Throwable th7) {
                th = th7;
                zArr = zArr5;
                zArr2 = zArr4;
            }
        } catch (Throwable th8) {
            th = th8;
            zArr = zArr5;
            zArr2 = zArr4;
            z10 = false;
        }
        if (!zArr[c10] || zArr2[c10]) {
            callback.a();
        } else if (zArr3[c10]) {
            l(str, strArr[c10], callback);
        }
    }

    public long e() {
        return this.f69883h;
    }

    public int f() {
        return this.f69880e;
    }

    public boolean g() {
        return this.f69877b.get();
    }

    public final m i(String input) {
        if (input == null || input.trim().isEmpty()) {
            return null;
        }
        return new m(n.USER_PROMPT, input);
    }

    public void j(String input, h callback) {
        if (this.f69876a.get()) {
            throw new RuntimeException("Chat ended!");
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        try {
            d(input, new a(callback, countDownLatch, atomicBoolean), i(input == null ? "" : input));
            countDownLatch.await();
        } catch (InterruptedException e10) {
            e10.printStackTrace();
        }
        if (atomicBoolean.get()) {
            this.f69880e = Nc.d.c();
            j(input, callback);
        }
    }

    public final void k(boolean value) {
        this.f69877b.getAndSet(value);
    }

    public final void l(String input, String messageText, h callback) {
        if (j.f69895a) {
            h("AI Output:" + messageText);
            h("Used tokens:" + this.f69879d);
        }
        if (messageText == null || messageText.trim().isEmpty()) {
            callback.a();
        } else {
            callback.b(new m(n.AI_ANSWER, messageText).b());
        }
    }
}
