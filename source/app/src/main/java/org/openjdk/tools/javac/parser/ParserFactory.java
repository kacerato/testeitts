package org.openjdk.tools.javac.parser;

import java.util.Locale;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.tree.DocTreeMaker;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class ParserFactory {
    protected static final Context.Key<ParserFactory> parserFactoryKey = new Context.Key<>();

    final TreeMaker f103288F;
    final DocTreeMaker docTreeMaker;
    final Locale locale;
    final Log log;
    final Names names;
    final Options options;
    final ScannerFactory scannerFactory;
    final Source source;
    final Tokens tokens;

    public ParserFactory(Context context) {
        context.put((Context.Key<Context.Key<ParserFactory>>) parserFactoryKey, (Context.Key<ParserFactory>) this);
        this.f103288F = TreeMaker.instance(context);
        this.docTreeMaker = DocTreeMaker.instance(context);
        this.log = Log.instance(context);
        this.names = Names.instance(context);
        this.tokens = Tokens.instance(context);
        this.source = Source.instance(context);
        this.options = Options.instance(context);
        this.scannerFactory = ScannerFactory.instance(context);
        this.locale = (Locale) context.get(Locale.class);
    }

    public static ParserFactory instance(Context context) {
        ParserFactory parserFactory = (ParserFactory) context.get(parserFactoryKey);
        return parserFactory == null ? new ParserFactory(context) : parserFactory;
    }

    public JavacParser newParser(CharSequence charSequence, boolean z10, boolean z11, boolean z12) {
        return newParser(charSequence, z10, z11, z12, false);
    }

    public JavacParser newParser(CharSequence charSequence, boolean z10, boolean z11, boolean z12, boolean z13) {
        return new JavacParser(this, this.scannerFactory.newScanner(charSequence, z10), z10, z12, z11, z13);
    }
}
