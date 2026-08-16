package org.openjdk.tools.javac.parser;

import java.nio.CharBuffer;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Names;

public class ScannerFactory {
    public static final Context.Key<ScannerFactory> scannerFactoryKey = new Context.Key<>();
    final Log log;
    final Names names;
    final Source source;
    final Tokens tokens;

    public ScannerFactory(Context context) {
        context.put((Context.Key<Context.Key<ScannerFactory>>) scannerFactoryKey, (Context.Key<ScannerFactory>) this);
        this.log = Log.instance(context);
        this.names = Names.instance(context);
        this.source = Source.instance(context);
        this.tokens = Tokens.instance(context);
    }

    public static ScannerFactory instance(Context context) {
        ScannerFactory scannerFactory = (ScannerFactory) context.get(scannerFactoryKey);
        return scannerFactory == null ? new ScannerFactory(context) : scannerFactory;
    }

    public Scanner newScanner(CharSequence charSequence, boolean z10) {
        if (charSequence instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) charSequence;
            if (z10) {
                return new Scanner(this, new JavadocTokenizer(this, charBuffer));
            }
            return new Scanner(this, charBuffer);
        }
        char[] charArray = charSequence.toString().toCharArray();
        return newScanner(charArray, charArray.length, z10);
    }

    public Scanner newScanner(char[] cArr, int i10, boolean z10) {
        if (z10) {
            return new Scanner(this, new JavadocTokenizer(this, cArr, i10));
        }
        return new Scanner(this, cArr, i10);
    }
}
