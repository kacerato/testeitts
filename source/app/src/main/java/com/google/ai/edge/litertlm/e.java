package com.google.ai.edge.litertlm;

import com.google.ai.edge.litertlm.LiteRtLmJni;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import k0.s;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import org.jetbrains.annotations.NotNull;

@t0({"SMAP\nSession.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Session.kt\ncom/google/ai/edge/litertlm/Session\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,201:1\n37#2,2:202\n37#2,2:204\n37#2,2:206\n1#3:208\n*S KotlinDebug\n*F\n+ 1 Session.kt\ncom/google/ai/edge/litertlm/Session\n*L\n60#1:202,2\n90#1:204,2\n105#1:206,2\n*E\n"})
public final class e implements AutoCloseable {

    public final long f59903b;

    @NotNull
    public final AtomicBoolean f59904c = new AtomicBoolean(true);

    public final class a implements LiteRtLmJni.JniInferenceCallback {

        @NotNull
        public final s f59905a;

        public final e f59906b;

        public a(@NotNull e this$0, s callback) {
            M.p(callback, "callback");
            this.f59906b = this$0;
            this.f59905a = callback;
        }

        @Override
        public void a() {
            this.f59905a.a();
        }

        @Override
        public void c(int statusCode, @NotNull String message) {
            M.p(message, "message");
            if (statusCode == 1) {
                this.f59905a.onError(new CancellationException(message));
                return;
            }
            this.f59905a.onError(new LiteRtLmJniException("Status Code: " + statusCode + ". Message: " + message));
        }

        @Override
        public void d(@NotNull String response) {
            M.p(response, "response");
            this.f59905a.d(response);
        }
    }

    public e(long handle) {
        this.f59903b = handle;
    }

    public final void c() {
        d();
        LiteRtLmJni.f59865a.nativeCancelProcess(this.f59903b);
    }

    @Override
    public void close() {
        if (!this.f59904c.compareAndSet(true, false)) {
            throw new IllegalStateException("Session is closed already.");
        }
        LiteRtLmJni.f59865a.nativeDeleteSession(this.f59903b);
    }

    public final void d() {
        if (!g()) {
            throw new IllegalStateException("Session is not alive.");
        }
    }

    @NotNull
    public final String e(@NotNull List<? extends InputData> inputData) {
        M.p(inputData, "inputData");
        d();
        return LiteRtLmJni.f59865a.nativeGenerateContent(this.f59903b, (InputData[]) inputData.toArray(new InputData[0]));
    }

    public final void f(@NotNull List<? extends InputData> inputData, @NotNull s responseCallback) {
        M.p(inputData, "inputData");
        M.p(responseCallback, "responseCallback");
        d();
        LiteRtLmJni.f59865a.nativeGenerateContentStream(this.f59903b, (InputData[]) inputData.toArray(new InputData[0]), new a(this, responseCallback));
    }

    public final boolean g() {
        return this.f59904c.get();
    }

    @NotNull
    public final String h() {
        d();
        return LiteRtLmJni.f59865a.nativeRunDecode(this.f59903b);
    }

    public final void j(@NotNull List<? extends InputData> inputData) {
        M.p(inputData, "inputData");
        d();
        LiteRtLmJni.f59865a.nativeRunPrefill(this.f59903b, (InputData[]) inputData.toArray(new InputData[0]));
    }
}
