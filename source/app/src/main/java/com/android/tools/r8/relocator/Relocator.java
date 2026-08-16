package com.android.tools.r8.relocator;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.CompilationFailedException;
import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.dex.W;
import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4552l;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.AbstractC8333lv;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C10682zz;
import com.android.tools.r8.internal.C5354It;
import com.android.tools.r8.internal.C5467Kr0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.T8;
import com.android.tools.r8.synthesis.E;
import com.android.tools.r8.utils.C11662i;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

public class Relocator {
    public static void a(RelocatorCommand relocatorCommand, ExecutorService executorService, C11662i c11662i, C8570nJ c8570nJ) {
        try {
            c(relocatorCommand, executorService, c11662i, c8570nJ);
        } finally {
            executorService.shutdown();
        }
    }

    public static void c(RelocatorCommand relocatorCommand, ExecutorService executorService, C11662i c11662i, C8570nJ c8570nJ) {
        C8659ns0 a10 = C8659ns0.a(c8570nJ, "Relocator");
        try {
            try {
                C4477h a11 = C4477h.a(new C4303c(c11662i, c8570nJ, a10).a(executorService), E.d());
                C4798y c4798y = new C4798y(a11, C5354It.f41240c, AbstractC9148qo0.b(), 2, C8659ns0.c());
                c4798y.a(C4552l.a((C4798y<?>) c4798y).a());
                c4798y.f38419l = relocatorCommand.getMapping().a(c4798y);
                new C10682zz(c4798y).a(a11.d(), executorService);
                T8 t82 = new T8(c4798y, new W(W.b.f35807g));
                ClassFileConsumer consumer = relocatorCommand.getConsumer();
                if (!T8.f44394e && t82.f44397c.J()) {
                    throw new AssertionError();
                }
                t82.a(consumer, (C11662i) null, executorService);
                c8570nJ.Z();
                c11662i.b(c8570nJ.f50691j);
                c8570nJ.f0();
                if (c8570nJ.U()) {
                    a10.e();
                }
            } catch (ExecutionException e10) {
                throw new RuntimeException(e10);
            }
        } catch (Throwable th2) {
            c11662i.b(c8570nJ.f50691j);
            c8570nJ.f0();
            if (c8570nJ.U()) {
                a10.e();
            }
            throw th2;
        }
    }

    public static void run(final RelocatorCommand relocatorCommand) throws CompilationFailedException {
        final C11662i app = relocatorCommand.getApp();
        final C8570nJ internalOptions = relocatorCommand.getInternalOptions();
        final ExecutorService a10 = C5467Kr0.a(internalOptions);
        AbstractC8333lv.a(relocatorCommand.getReporter(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                Relocator.a(RelocatorCommand.this, a10, app, internalOptions);
            }
        });
    }

    public static void run(final RelocatorCommand relocatorCommand, final ExecutorService executorService) throws CompilationFailedException {
        final C11662i app = relocatorCommand.getApp();
        final C8570nJ internalOptions = relocatorCommand.getInternalOptions();
        AbstractC8333lv.a(relocatorCommand.getReporter(), new AbstractC8333lv.a() {
            @Override
            public final void run() {
                Relocator.c(RelocatorCommand.this, executorService, app, internalOptions);
            }
        });
    }
}
