package com.android.tools.r8;

import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.dex.C4311k;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4765w4;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.C10620ze0;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9539t70;
import com.android.tools.r8.synthesis.C11617z;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

public class R8Assistant {

    static final boolean f35451a = true;

    public static void a(R8AssistantCommand r8AssistantCommand, C8570nJ c8570nJ) {
        b(r8AssistantCommand, c8570nJ, C5467Kr0.a(c8570nJ));
    }

    public static void run(final R8AssistantCommand r8AssistantCommand) throws CompilationFailedException {
        final C8570nJ b10 = r8AssistantCommand.b();
        AbstractC8333lv.a(b10.f50691j, new AbstractC8333lv.a() {
            @Override
            public final void run() {
                R8Assistant.a(R8AssistantCommand.this, b10);
            }
        });
    }

    public static void b(R8AssistantCommand r8AssistantCommand, C8570nJ c8570nJ, ExecutorService executorService) {
        C8659ns0 c8659ns0 = new C8659ns0("R8 Assistant 8.10.21", false);
        try {
            try {
                C4765w4 a10 = new C4303c(r8AssistantCommand.a(), c8570nJ, c8659ns0).a(executorService);
                if (!f35451a && r8AssistantCommand.a().k()) {
                    throw new AssertionError();
                }
                C4798y a11 = C4798y.a(C4477h.a(a10, com.android.tools.r8.synthesis.E.e()));
                C9539t70 c9539t70 = new C9539t70(a11, c8659ns0);
                C10620ze0 c10620ze0 = new C10620ze0(a11, c9539t70, c8659ns0);
                c10620ze0.a();
                c9539t70.a(a11, executorService);
                if (r8AssistantCommand.getReflectiveReceiverDescriptor() != null) {
                    c10620ze0.a(r8AssistantCommand.getReflectiveReceiverDescriptor());
                }
                C11617z.a(a11, c8659ns0, executorService);
                C4311k.a((C4798y<?>) a11, c8570nJ.y()).c(executorService);
                c8570nJ.f0();
                if (c8570nJ.U()) {
                    c8659ns0.e();
                }
            } catch (ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th2) {
            c8570nJ.f0();
            if (c8570nJ.U()) {
                c8659ns0.e();
            }
            throw th2;
        }
    }

    public static void run(final R8AssistantCommand r8AssistantCommand, final ExecutorService executorService) throws CompilationFailedException {
        final C8570nJ b10 = r8AssistantCommand.b();
        AbstractC8333lv.b(r8AssistantCommand.g(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                R8Assistant.b(R8AssistantCommand.this, b10, executorService);
            }
        });
    }
}
