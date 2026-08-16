package org.openjdk.tools.sjavac.comp.dependencies;

import ei.C13155a;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.util.TaskEvent;
import org.openjdk.source.util.TaskListener;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.sjavac.Log;
import org.openjdk.tools.sjavac.comp.PubAPIs;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class PublicApiCollector implements TaskListener {
    private final Set<Symbol.ClassSymbol> classSymbols = new HashSet();
    private Context context;
    private final Collection<JavaFileObject> explicitJFOs;
    private Map<String, PubApi> explicitPubApis;
    private Map<String, PubApi> nonExplicitPubApis;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$source$util$TaskEvent$Kind;

        static {
            int[] iArr = new int[TaskEvent.Kind.values().length];
            $SwitchMap$com$sun$source$util$TaskEvent$Kind = iArr;
            try {
                iArr[TaskEvent.Kind.ANALYZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$source$util$TaskEvent$Kind[TaskEvent.Kind.COMPILATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public PublicApiCollector(Context context, Collection<JavaFileObject> collection) {
        this.context = context;
        this.explicitJFOs = collection;
    }

    private void collectClassSymbols(JCTree.JCCompilationUnit jCCompilationUnit) {
        Iterator<JCTree> it = jCCompilationUnit.getTypeDecls().iterator();
        while (it.hasNext()) {
            JCTree next = it.next();
            if (next instanceof JCTree.JCClassDecl) {
                this.classSymbols.add(((JCTree.JCClassDecl) next).sym);
            }
        }
    }

    private void extractPubApis() {
        final PubAPIs instance = PubAPIs.instance(this.context);
        Set<Symbol.ClassSymbol> set = this.classSymbols;
        instance.getClass();
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                PubAPIs.this.visitPubapi((Symbol.ClassSymbol) obj);
            }
        });
    }

    @Override
    public void finished(TaskEvent taskEvent) {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$source$util$TaskEvent$Kind[taskEvent.getKind().ordinal()];
        if (i10 == 1) {
            collectClassSymbols((JCTree.JCCompilationUnit) taskEvent.getCompilationUnit());
            return;
        }
        if (i10 != 2) {
            return;
        }
        Log.debug("Compilation finished");
        Log.debug("Extracting pub APIs for the following symbols:");
        Iterator<Symbol.ClassSymbol> it = this.classSymbols.iterator();
        while (it.hasNext()) {
            Log.debug(C13155a.f85806a + ((Object) it.next().fullname));
        }
        extractPubApis();
        PubAPIs instance = PubAPIs.instance(this.context);
        this.explicitPubApis = instance.getPubapis(this.explicitJFOs, true);
        this.nonExplicitPubApis = instance.getPubapis(this.explicitJFOs, false);
        Log.debug("done");
    }

    public Map<String, PubApi> getPubApis(boolean z10) {
        return z10 ? this.explicitPubApis : this.nonExplicitPubApis;
    }
}
