package org.openjdk.tools.sjavac;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Locale;
import org.openjdk.javax.tools.DiagnosticListener;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.api.JavacTool;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.sjavac.comp.PubapiVisitor;
import org.openjdk.tools.sjavac.comp.SmartFileManager;
import org.openjdk.tools.sjavac.options.Options;
import org.openjdk.tools.sjavac.pubapi.PubApi;

public class PubApiExtractor {
    final Context context;
    final SmartFileManager fileManager;
    final JavaCompiler.CompilationTask task;

    public PubApiExtractor(Options options) {
        JavacTool create = JavacTool.create();
        SmartFileManager smartFileManager = new SmartFileManager(create.getStandardFileManager((DiagnosticListener<? super JavaFileObject>) null, (Locale) null, (Charset) null));
        this.fileManager = smartFileManager;
        Context context = new Context();
        this.context = context;
        this.task = create.getTask(new PrintWriter(System.err), smartFileManager, null, Arrays.asList(options.prepJavacArgs()), null, null, context);
        org.openjdk.tools.javac.main.JavaCompiler.instance(context);
    }

    public void close() throws IOException {
        this.fileManager.close();
    }

    public PubApi getPubApi(String str) {
        Symtab instance = Symtab.instance(this.context);
        ClassFinder instance2 = ClassFinder.instance(this.context);
        Name fromString = Names.instance(this.context).fromString(str);
        Symbol.ClassSymbol loadClass = instance2.loadClass(instance.inferModule(Convert.packagePart(fromString)), fromString);
        PubapiVisitor pubapiVisitor = new PubapiVisitor();
        pubapiVisitor.visit(loadClass);
        return pubapiVisitor.getCollectedPubApi();
    }
}
