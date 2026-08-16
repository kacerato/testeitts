package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionClassContext;
import com.android.tools.r8.diagnostic.DefinitionContext;
import com.android.tools.r8.diagnostic.DefinitionFieldContext;
import com.android.tools.r8.diagnostic.DefinitionMethodContext;
import com.android.tools.r8.graph.E5;
import com.android.tools.r8.graph.InterfaceC4610o0;
import com.android.tools.r8.internal.C5244Gw;
import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.C7598hX;
import java.util.function.Consumer;
import java.util.function.Function;

public class d {

    public static final boolean f35995a = true;

    public static void a(DefinitionContext definitionContext, Consumer<DefinitionClassContext> consumer, Consumer<DefinitionFieldContext> consumer2, Consumer<DefinitionMethodContext> consumer3) {
        if (definitionContext.isClassContext()) {
            consumer.accept(definitionContext.asClassContext());
            return;
        }
        if (definitionContext.isFieldContext()) {
            consumer2.accept(definitionContext.asFieldContext());
        } else {
            if (!f35995a && !definitionContext.isMethodContext()) {
                throw new AssertionError();
            }
            consumer3.accept(definitionContext.asMethodContext());
        }
    }

    public static DefinitionContext a(E5 e52) {
        AbstractC4327b a10;
        InterfaceC4610o0 context = e52.getContext();
        if (context.isClass()) {
            a10 = C4326a.a().a(context.asClass().M0());
        } else if (context.J()) {
            a10 = e.a().a(context.c().getReference().v0());
        } else if (context.I()) {
            a10 = f.a().a(context.b().w());
        } else {
            throw new C5417Jv0();
        }
        return a10.a(context.getOrigin()).a();
    }

    public static String a(DefinitionContext definitionContext) {
        Object apply;
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                String typeName;
                typeName = ((DefinitionClassContext) obj).getClassReference().getTypeName();
                return typeName;
            }
        };
        Function function2 = new Function() {
            @Override
            public final Object apply(Object obj) {
                String a10;
                a10 = C5244Gw.a(((DefinitionFieldContext) obj).getFieldReference());
                return a10;
            }
        };
        Function function3 = new Function() {
            @Override
            public final Object apply(Object obj) {
                String b10;
                b10 = C7598hX.b(((DefinitionMethodContext) obj).getMethodReference());
                return b10;
            }
        };
        if (definitionContext.isClassContext()) {
            apply = function.apply(definitionContext.asClassContext());
        } else if (definitionContext.isFieldContext()) {
            apply = function2.apply(definitionContext.asFieldContext());
        } else {
            if (!f35995a && !definitionContext.isMethodContext()) {
                throw new AssertionError();
            }
            apply = function3.apply(definitionContext.asMethodContext());
        }
        return (String) apply;
    }
}
