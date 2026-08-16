package org.openjdk.tools.javac.parser;

import okhttp3.v;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import yd.C16181m;

public class ReferenceParser {
    private final ParserFactory fac;

    public static class ParseException extends Exception {
        private static final long serialVersionUID = 0;

        public ParseException(String str) {
            super(str);
        }
    }

    public static class Reference {
        public final Name member;
        public final List<JCTree> paramTypes;
        public final JCTree qualExpr;

        public Reference(JCTree jCTree, Name name, List<JCTree> list) {
            this.qualExpr = jCTree;
            this.member = name;
            this.paramTypes = list;
        }
    }

    public ReferenceParser(ParserFactory parserFactory) {
        this.fac = parserFactory;
    }

    private Name parseMember(String str) throws ParseException {
        JavacParser newParser = this.fac.newParser(str, false, false, false);
        Name ident = newParser.ident();
        if (newParser.token().kind == Tokens.TokenKind.EOF) {
            return ident;
        }
        throw new ParseException("dc.ref.unexpected.input");
    }

    private List<JCTree> parseParams(String str) throws ParseException {
        if (str.trim().isEmpty()) {
            return List.nil();
        }
        JavacParser newParser = this.fac.newParser(str.replace("...", v.f99450n), false, false, false);
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.add(newParser.parseType());
        if (newParser.token().kind == Tokens.TokenKind.IDENTIFIER) {
            newParser.nextToken();
        }
        while (newParser.token().kind == Tokens.TokenKind.COMMA) {
            newParser.nextToken();
            listBuffer.add(newParser.parseType());
            if (newParser.token().kind == Tokens.TokenKind.IDENTIFIER) {
                newParser.nextToken();
            }
        }
        if (newParser.token().kind == Tokens.TokenKind.EOF) {
            return listBuffer.toList();
        }
        throw new ParseException("dc.ref.unexpected.input");
    }

    private JCTree parseType(String str) throws ParseException {
        JavacParser newParser = this.fac.newParser(str, false, false, false);
        JCTree.JCExpression parseType = newParser.parseType();
        if (newParser.token().kind == Tokens.TokenKind.EOF) {
            return parseType;
        }
        throw new ParseException("dc.ref.unexpected.input");
    }

    public Reference parse(String str) throws ParseException {
        JCTree parseType;
        Name parseMember;
        Log.DeferredDiagnosticHandler deferredDiagnosticHandler = new Log.DeferredDiagnosticHandler(this.fac.log);
        try {
            int indexOf = str.indexOf(C16181m.f130230g);
            int i10 = indexOf + 1;
            int indexOf2 = str.indexOf("(", i10);
            List<JCTree> list = null;
            if (indexOf != -1) {
                parseType = indexOf == 0 ? null : parseType(str.substring(0, indexOf));
                parseMember = indexOf2 == -1 ? parseMember(str.substring(i10)) : parseMember(str.substring(i10, indexOf2));
            } else if (indexOf2 == -1) {
                parseType = parseType(str);
                parseMember = null;
            } else {
                parseMember = parseMember(str.substring(0, indexOf2));
                parseType = null;
            }
            if (indexOf2 >= 0) {
                int indexOf3 = str.indexOf(")", indexOf2);
                if (indexOf3 != str.length() - 1) {
                    throw new ParseException("dc.ref.bad.parens");
                }
                list = parseParams(str.substring(indexOf2 + 1, indexOf3));
            }
            if (!deferredDiagnosticHandler.getDiagnostics().isEmpty()) {
                throw new ParseException("dc.ref.syntax.error");
            }
            this.fac.log.popDiagnosticHandler(deferredDiagnosticHandler);
            return new Reference(parseType, parseMember, list);
        } catch (Throwable th2) {
            this.fac.log.popDiagnosticHandler(deferredDiagnosticHandler);
            throw th2;
        }
    }
}
