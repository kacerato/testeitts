package org.openjdk.tools.javac.tree;

import android.provider.CallLog;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import okhttp3.v;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.source.tree.MemberReferenceTree;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.BoundKind;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Convert;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Name;
import ve.j;
import w2.C15883c;

public class Pretty extends JCTree.Visitor {
    private static final int PREFERRED_LENGTH = 20;
    private static final String trimSequence = "[...]";
    Name enclClassName;
    Writer out;
    int prec;
    private final boolean sourceOutput;
    public int width = 4;
    int lmargin = 0;
    DocCommentTable docComments = null;
    String lineSep = System.getProperty("line.separator");

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BYTE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.VOID.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr2 = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr2;
            try {
                iArr2[JCTree.Tag.POS.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NEG.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NOT.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.COMPL.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREINC.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREDEC.ordinal()] = 6;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTINC.ordinal()] = 7;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTDEC.ordinal()] = 8;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NULLCHK.ordinal()] = 9;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.OR.ordinal()] = 10;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.AND.ordinal()] = 11;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.EQ.ordinal()] = 12;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NE.ordinal()] = 13;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LT.ordinal()] = 14;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.GT.ordinal()] = 15;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LE.ordinal()] = 16;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.GE.ordinal()] = 17;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITOR.ordinal()] = 18;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITXOR.ordinal()] = 19;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITAND.ordinal()] = 20;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SL.ordinal()] = 21;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SR.ordinal()] = 22;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.USR.ordinal()] = 23;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PLUS.ordinal()] = 24;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MINUS.ordinal()] = 25;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MUL.ordinal()] = 26;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.DIV.ordinal()] = 27;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MOD.ordinal()] = 28;
            } catch (NoSuchFieldError unused38) {
            }
        }
    }

    public class C1UsedVisitor extends TreeScanner {
        boolean result = false;
        final Symbol val$t;

        public C1UsedVisitor(Symbol symbol) {
            this.val$t = symbol;
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree == null || this.result) {
                return;
            }
            jCTree.accept(this);
        }

        @Override
        public void visitIdent(JCTree.JCIdent jCIdent) {
            if (jCIdent.sym == this.val$t) {
                this.result = true;
            }
        }
    }

    public static class UncheckedIOException extends Error {
        static final long serialVersionUID = -4032692679158424751L;

        public UncheckedIOException(IOException iOException) {
            super(iOException.getMessage(), iOException);
        }
    }

    public Pretty(Writer writer, boolean z10) {
        this.out = writer;
        this.sourceOutput = z10;
    }

    public static int lineEndPos(String str, int i10) {
        int indexOf = str.indexOf(10, i10);
        return indexOf < 0 ? str.length() : indexOf;
    }

    private void printBaseElementType(JCTree jCTree) throws IOException {
        printExpr(TreeInfo.innermostType(jCTree));
    }

    private void printBrackets(JCTree jCTree) throws IOException {
        while (true) {
            if (jCTree.hasTag(JCTree.Tag.ANNOTATED_TYPE)) {
                JCTree.JCAnnotatedType jCAnnotatedType = (JCTree.JCAnnotatedType) jCTree;
                JCTree.JCExpression jCExpression = jCAnnotatedType.underlyingType;
                if (jCExpression.hasTag(JCTree.Tag.TYPEARRAY)) {
                    print(Character.valueOf(C15883c.f126249O));
                    printTypeAnnotations(jCAnnotatedType.annotations);
                }
                jCTree = jCExpression;
            }
            if (!jCTree.hasTag(JCTree.Tag.TYPEARRAY)) {
                return;
            }
            print(v.f99450n);
            jCTree = ((JCTree.JCArrayTypeTree) jCTree).elemtype;
        }
    }

    public static String toSimpleString(JCTree jCTree) {
        return toSimpleString(jCTree, 20);
    }

    public void align() throws IOException {
        for (int i10 = 0; i10 < this.lmargin; i10++) {
            this.out.write(" ");
        }
    }

    public void close(int i10, int i11) throws IOException {
        if (i11 < i10) {
            this.out.write(")");
        }
    }

    public void indent() {
        this.lmargin += this.width;
    }

    public boolean isEnumerator(JCTree jCTree) {
        return jCTree.hasTag(JCTree.Tag.VARDEF) && (((JCTree.JCVariableDecl) jCTree).mods.flags & 16384) != 0;
    }

    public boolean isUsed(Symbol symbol, JCTree jCTree) {
        C1UsedVisitor c1UsedVisitor = new C1UsedVisitor(symbol);
        c1UsedVisitor.scan(jCTree);
        return c1UsedVisitor.result;
    }

    public void open(int i10, int i11) throws IOException {
        if (i11 < i10) {
            this.out.write("(");
        }
    }

    public String operatorName(JCTree.Tag tag) {
        switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[tag.ordinal()]) {
            case 1:
                return "+";
            case 2:
                return "-";
            case 3:
                return "!";
            case 4:
                return "~";
            case 5:
                return "++";
            case 6:
                return "--";
            case 7:
                return "++";
            case 8:
                return "--";
            case 9:
                return "<*nullchk*>";
            case 10:
                return "||";
            case 11:
                return "&&";
            case 12:
                return "==";
            case 13:
                return "!=";
            case 14:
                return "<";
            case 15:
                return ">";
            case 16:
                return "<=";
            case 17:
                return ">=";
            case 18:
                return "|";
            case 19:
                return "^";
            case 20:
                return "&";
            case 21:
                return "<<";
            case 22:
                return ">>";
            case 23:
                return ">>>";
            case 24:
                return "+";
            case 25:
                return "-";
            case 26:
                return "*";
            case 27:
                return "/";
            case 28:
                return j.f121589a;
            default:
                throw new Error();
        }
    }

    public void print(Object obj) throws IOException {
        this.out.write(Convert.escapeUnicode(obj.toString()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void printAnnotations(List<JCTree.JCAnnotation> list) throws IOException {
        for (List<JCTree.JCAnnotation> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            printStat(list2.head);
            println();
            align();
        }
    }

    public void printBlock(List<? extends JCTree> list) throws IOException {
        print("{");
        println();
        indent();
        printStats(list);
        undent();
        align();
        print(VectorFormat.DEFAULT_SUFFIX);
    }

    public void printDocComment(JCTree jCTree) throws IOException {
        String commentText;
        DocCommentTable docCommentTable = this.docComments;
        if (docCommentTable == null || (commentText = docCommentTable.getCommentText(jCTree)) == null) {
            return;
        }
        print("/**");
        println();
        int i10 = 0;
        int lineEndPos = lineEndPos(commentText, 0);
        while (i10 < commentText.length()) {
            align();
            print(" *");
            if (i10 < commentText.length() && commentText.charAt(i10) > ' ') {
                print(" ");
            }
            print(commentText.substring(i10, lineEndPos));
            println();
            i10 = lineEndPos + 1;
            lineEndPos = lineEndPos(commentText, i10);
        }
        align();
        print(" */");
        println();
        align();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void printEnumBody(List<JCTree> list) throws IOException {
        print("{");
        println();
        indent();
        boolean z10 = true;
        for (List list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            if (isEnumerator((JCTree) list2.head)) {
                if (!z10) {
                    print(DocLint.SEPARATOR);
                    println();
                }
                align();
                printStat((JCTree) list2.head);
                z10 = false;
            }
        }
        print(";");
        println();
        for (List<JCTree> list3 = list; list3.nonEmpty(); list3 = list3.tail) {
            if (!isEnumerator(list3.head)) {
                align();
                printStat(list3.head);
                println();
            }
        }
        undent();
        align();
        print(VectorFormat.DEFAULT_SUFFIX);
    }

    public void printExpr(JCTree jCTree, int i10) throws IOException {
        int i11 = this.prec;
        try {
            try {
                this.prec = i10;
                if (jCTree == null) {
                    print("/*missing*/");
                } else {
                    jCTree.accept(this);
                }
                this.prec = i11;
            } catch (UncheckedIOException e10) {
                IOException iOException = new IOException(e10.getMessage());
                iOException.initCause(e10);
                throw iOException;
            }
        } catch (Throwable th2) {
            this.prec = i11;
            throw th2;
        }
    }

    public <T extends JCTree> void printExprs(List<T> list, String str) throws IOException {
        if (!list.nonEmpty()) {
            return;
        }
        printExpr(list.head);
        while (true) {
            list = list.tail;
            if (!list.nonEmpty()) {
                return;
            }
            print(str);
            printExpr(list.head);
        }
    }

    public void printFlags(long j10) throws IOException {
        if ((4096 & j10) != 0) {
            print("/*synthetic*/ ");
        }
        print(TreeInfo.flagNames(j10));
        if ((Flags.ExtendedStandardFlags & j10) != 0) {
            print(" ");
        }
        if ((j10 & 8192) != 0) {
            print("@");
        }
    }

    public void printStat(JCTree jCTree) throws IOException {
        printExpr(jCTree, -1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void printStats(List<? extends JCTree> list) throws IOException {
        for (List<? extends JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            align();
            printStat((JCTree) list2.head);
            println();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r2 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void printTypeAnnotations(List<JCTree.JCAnnotation> list) throws IOException {
        for (List<JCTree.JCAnnotation> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            printExpr(list2.head);
            print(" ");
        }
    }

    public void printTypeParameters(List<JCTree.JCTypeParameter> list) throws IOException {
        if (list.nonEmpty()) {
            print("<");
            printExprs(list);
            print(">");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void printUnit(JCTree.JCCompilationUnit jCCompilationUnit, JCTree.JCClassDecl jCClassDecl) throws IOException {
        this.docComments = jCCompilationUnit.docComments;
        printDocComment(jCCompilationUnit);
        boolean z10 = true;
        for (List list = jCCompilationUnit.defs; list.nonEmpty() && (jCClassDecl == null || ((JCTree) list.head).hasTag(JCTree.Tag.IMPORT) || ((JCTree) list.head).hasTag(JCTree.Tag.PACKAGEDEF)); list = list.tail) {
            if (((JCTree) list.head).hasTag(JCTree.Tag.IMPORT)) {
                JCTree.JCImport jCImport = (JCTree.JCImport) list.head;
                Name name = TreeInfo.name(jCImport.qualid);
                if (name == name.table.names.asterisk || jCClassDecl == null || isUsed(TreeInfo.symbol(jCImport.qualid), jCClassDecl)) {
                    if (z10) {
                        println();
                        z10 = false;
                    }
                    printStat(jCImport);
                }
            } else {
                printStat((JCTree) list.head);
            }
        }
        if (jCClassDecl != null) {
            printStat(jCClassDecl);
            println();
        }
    }

    public void println() throws IOException {
        this.out.write(this.lineSep);
    }

    public void undent() {
        this.lmargin -= this.width;
    }

    @Override
    public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
        try {
            if (jCAnnotatedType.underlyingType.hasTag(JCTree.Tag.SELECT)) {
                JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCAnnotatedType.underlyingType;
                printExpr(jCFieldAccess.selected, 15);
                print(".");
                printTypeAnnotations(jCAnnotatedType.annotations);
                print(jCFieldAccess.name);
                return;
            }
            if (jCAnnotatedType.underlyingType.hasTag(JCTree.Tag.TYPEARRAY)) {
                printBaseElementType(jCAnnotatedType);
                printBrackets(jCAnnotatedType);
            } else {
                printTypeAnnotations(jCAnnotatedType.annotations);
                printExpr(jCAnnotatedType.underlyingType);
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
        try {
            print("@");
            printExpr(jCAnnotation.annotationType);
            print("(");
            printExprs(jCAnnotation.args);
            print(")");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitApply(JCTree.JCMethodInvocation jCMethodInvocation) {
        try {
            if (jCMethodInvocation.typeargs.isEmpty()) {
                printExpr(jCMethodInvocation.meth);
            } else if (jCMethodInvocation.meth.hasTag(JCTree.Tag.SELECT)) {
                JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCMethodInvocation.meth;
                printExpr(jCFieldAccess.selected);
                print(".<");
                printExprs(jCMethodInvocation.typeargs);
                print(">" + ((Object) jCFieldAccess.name));
            } else {
                print("<");
                printExprs(jCMethodInvocation.typeargs);
                print(">");
                printExpr(jCMethodInvocation.meth);
            }
            print("(");
            printExprs(jCMethodInvocation.args);
            print(")");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitAssert(JCTree.JCAssert jCAssert) {
        try {
            print("assert ");
            printExpr(jCAssert.cond);
            if (jCAssert.detail != null) {
                print(" : ");
                printExpr(jCAssert.detail);
            }
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitAssign(JCTree.JCAssign jCAssign) {
        try {
            open(this.prec, 1);
            printExpr(jCAssign.lhs, 2);
            print(" = ");
            printExpr(jCAssign.rhs, 1);
            close(this.prec, 1);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitAssignop(JCTree.JCAssignOp jCAssignOp) {
        try {
            open(this.prec, 2);
            printExpr(jCAssignOp.lhs, 3);
            print(" " + operatorName(jCAssignOp.getTag().noAssignOp()) + "= ");
            printExpr(jCAssignOp.rhs, 2);
            close(this.prec, 2);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitBinary(JCTree.JCBinary jCBinary) {
        try {
            int opPrec = TreeInfo.opPrec(jCBinary.getTag());
            String operatorName = operatorName(jCBinary.getTag());
            open(this.prec, opPrec);
            printExpr(jCBinary.lhs, opPrec);
            print(" " + operatorName + " ");
            printExpr(jCBinary.rhs, opPrec + 1);
            close(this.prec, opPrec);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitBlock(JCTree.JCBlock jCBlock) {
        try {
            printFlags(jCBlock.flags);
            printBlock(jCBlock.stats);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitBreak(JCTree.JCBreak jCBreak) {
        try {
            print("break");
            if (jCBreak.label != null) {
                print(" " + ((Object) jCBreak.label));
            }
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitCase(JCTree.JCCase jCCase) {
        try {
            if (jCCase.pat == null) {
                print("default");
            } else {
                print("case ");
                printExpr(jCCase.pat);
            }
            print(": ");
            println();
            indent();
            printStats(jCCase.stats);
            undent();
            align();
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitCatch(JCTree.JCCatch jCCatch) {
        try {
            print(" catch (");
            printExpr(jCCatch.param);
            print(") ");
            printStat(jCCatch.body);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        try {
            println();
            align();
            printDocComment(jCClassDecl);
            printAnnotations(jCClassDecl.mods.annotations);
            printFlags(jCClassDecl.mods.flags & (-513));
            Name name = this.enclClassName;
            this.enclClassName = jCClassDecl.name;
            long j10 = jCClassDecl.mods.flags;
            if ((512 & j10) != 0) {
                print("interface " + ((Object) jCClassDecl.name));
                printTypeParameters(jCClassDecl.typarams);
                if (jCClassDecl.implementing.nonEmpty()) {
                    print(" extends ");
                    printExprs(jCClassDecl.implementing);
                }
            } else {
                if ((j10 & 16384) != 0) {
                    print("enum " + ((Object) jCClassDecl.name));
                } else {
                    print(ExternalAnnotationProvider.CLASS_PREFIX + ((Object) jCClassDecl.name));
                }
                printTypeParameters(jCClassDecl.typarams);
                if (jCClassDecl.extending != null) {
                    print(" extends ");
                    printExpr(jCClassDecl.extending);
                }
                if (jCClassDecl.implementing.nonEmpty()) {
                    print(" implements ");
                    printExprs(jCClassDecl.implementing);
                }
            }
            print(" ");
            if ((jCClassDecl.mods.flags & 16384) != 0) {
                printEnumBody(jCClassDecl.defs);
            } else {
                printBlock(jCClassDecl.defs);
            }
            this.enclClassName = name;
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitConditional(JCTree.JCConditional jCConditional) {
        try {
            open(this.prec, 3);
            printExpr(jCConditional.cond, 4);
            print(" ? ");
            printExpr(jCConditional.truepart);
            print(" : ");
            printExpr(jCConditional.falsepart, 3);
            close(this.prec, 3);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitContinue(JCTree.JCContinue jCContinue) {
        try {
            print("continue");
            if (jCContinue.label != null) {
                print(" " + ((Object) jCContinue.label));
            }
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitDoLoop(JCTree.JCDoWhileLoop jCDoWhileLoop) {
        try {
            print("do ");
            printStat(jCDoWhileLoop.body);
            align();
            print(" while ");
            if (jCDoWhileLoop.cond.hasTag(JCTree.Tag.PARENS)) {
                printExpr(jCDoWhileLoop.cond);
            } else {
                print("(");
                printExpr(jCDoWhileLoop.cond);
                print(")");
            }
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitErroneous(JCTree.JCErroneous jCErroneous) {
        try {
            print("(ERROR)");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitExec(JCTree.JCExpressionStatement jCExpressionStatement) {
        try {
            printExpr(jCExpressionStatement.expr);
            if (this.prec == -1) {
                print(";");
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitExports(JCTree.JCExports jCExports) {
        try {
            print("exports ");
            printExpr(jCExports.qualid);
            if (jCExports.moduleNames != null) {
                print(" to ");
                printExprs(jCExports.moduleNames);
            }
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitForLoop(JCTree.JCForLoop jCForLoop) {
        try {
            print("for (");
            if (jCForLoop.init.nonEmpty()) {
                if (jCForLoop.init.head.hasTag(JCTree.Tag.VARDEF)) {
                    printExpr(jCForLoop.init.head);
                    List list = jCForLoop.init;
                    while (true) {
                        list = list.tail;
                        if (!list.nonEmpty()) {
                            break;
                        }
                        JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) list.head;
                        print(", " + ((Object) jCVariableDecl.name));
                        if (jCVariableDecl.init != null) {
                            print(" = ");
                            printExpr(jCVariableDecl.init);
                        }
                    }
                } else {
                    printExprs(jCForLoop.init);
                }
            }
            print(VectorFormat.DEFAULT_SEPARATOR);
            JCTree.JCExpression jCExpression = jCForLoop.cond;
            if (jCExpression != null) {
                printExpr(jCExpression);
            }
            print(VectorFormat.DEFAULT_SEPARATOR);
            printExprs(jCForLoop.step);
            print(") ");
            printStat(jCForLoop.body);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitForeachLoop(JCTree.JCEnhancedForLoop jCEnhancedForLoop) {
        try {
            print("for (");
            printExpr(jCEnhancedForLoop.var);
            print(" : ");
            printExpr(jCEnhancedForLoop.expr);
            print(") ");
            printStat(jCEnhancedForLoop.body);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitIdent(JCTree.JCIdent jCIdent) {
        try {
            print(jCIdent.name);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitIf(JCTree.JCIf jCIf) {
        try {
            print("if ");
            if (jCIf.cond.hasTag(JCTree.Tag.PARENS)) {
                printExpr(jCIf.cond);
            } else {
                print("(");
                printExpr(jCIf.cond);
                print(")");
            }
            print(" ");
            printStat(jCIf.thenpart);
            if (jCIf.elsepart != null) {
                print(" else ");
                printStat(jCIf.elsepart);
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitImport(JCTree.JCImport jCImport) {
        try {
            print("import ");
            if (jCImport.staticImport) {
                print("static ");
            }
            printExpr(jCImport.qualid);
            print(";");
            println();
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitIndexed(JCTree.JCArrayAccess jCArrayAccess) {
        try {
            printExpr(jCArrayAccess.indexed, 15);
            print("[");
            printExpr(jCArrayAccess.index);
            print("]");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitLabelled(JCTree.JCLabeledStatement jCLabeledStatement) {
        try {
            print(((Object) jCLabeledStatement.label) + ": ");
            printStat(jCLabeledStatement.body);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitLambda(JCTree.JCLambda jCLambda) {
        try {
            print("(");
            if (jCLambda.paramKind == JCTree.JCLambda.ParameterKind.EXPLICIT) {
                printExprs(jCLambda.params);
            } else {
                String str = "";
                Iterator<JCTree.JCVariableDecl> it = jCLambda.params.iterator();
                while (it.hasNext()) {
                    JCTree.JCVariableDecl next = it.next();
                    print(str);
                    print(next.name);
                    str = DocLint.SEPARATOR;
                }
            }
            print(")->");
            printExpr(jCLambda.body);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitLetExpr(JCTree.LetExpr letExpr) {
        try {
            print("(let " + ((Object) letExpr.defs) + " in " + ((Object) letExpr.expr) + ")");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitLiteral(JCTree.JCLiteral jCLiteral) {
        try {
            switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[jCLiteral.typetag.ordinal()]) {
                case 1:
                    print(jCLiteral.value.toString());
                    return;
                case 2:
                    print(jCLiteral.value + "L");
                    return;
                case 3:
                    print(jCLiteral.value + Signature.SIG_FLOAT);
                    return;
                case 4:
                    print(jCLiteral.value.toString());
                    return;
                case 5:
                    print("'" + Convert.quote(String.valueOf((char) ((Number) jCLiteral.value).intValue())) + "'");
                    return;
                case 6:
                    print(((Number) jCLiteral.value).intValue() == 1 ? "true" : "false");
                    return;
                case 7:
                    print("null");
                    return;
                default:
                    print(JavadocConstants.ANCHOR_PREFIX_END + Convert.quote(jCLiteral.value.toString()) + JavadocConstants.ANCHOR_PREFIX_END);
                    return;
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
        try {
            Name name = jCMethodDecl.name;
            if (name == name.table.names.init && this.enclClassName == null && this.sourceOutput) {
                return;
            }
            println();
            align();
            printDocComment(jCMethodDecl);
            printExpr(jCMethodDecl.mods);
            printTypeParameters(jCMethodDecl.typarams);
            Name name2 = jCMethodDecl.name;
            if (name2 == name2.table.names.init) {
                Name name3 = this.enclClassName;
                if (name3 != null) {
                    name2 = name3;
                }
                print(name2);
            } else {
                printExpr(jCMethodDecl.restype);
                print(" " + ((Object) jCMethodDecl.name));
            }
            print("(");
            JCTree jCTree = jCMethodDecl.recvparam;
            if (jCTree != null) {
                printExpr(jCTree);
                if (jCMethodDecl.params.size() > 0) {
                    print(", ");
                }
            }
            printExprs(jCMethodDecl.params);
            print(")");
            if (jCMethodDecl.thrown.nonEmpty()) {
                print(" throws ");
                printExprs(jCMethodDecl.thrown);
            }
            if (jCMethodDecl.defaultValue != null) {
                print(" default ");
                printExpr(jCMethodDecl.defaultValue);
            }
            if (jCMethodDecl.body == null) {
                print(";");
            } else {
                print(" ");
                printStat(jCMethodDecl.body);
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitModifiers(JCTree.JCModifiers jCModifiers) {
        try {
            printAnnotations(jCModifiers.annotations);
            printFlags(jCModifiers.flags);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        try {
            printDocComment(jCModuleDecl);
            printAnnotations(jCModuleDecl.mods.annotations);
            if (jCModuleDecl.getModuleType() == ModuleTree.ModuleKind.OPEN) {
                print("open ");
            }
            print("module ");
            printExpr(jCModuleDecl.qualId);
            List<JCTree.JCDirective> list = jCModuleDecl.directives;
            if (list == null) {
                print(";");
            } else {
                printBlock(list);
            }
            println();
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitNewArray(JCTree.JCNewArray jCNewArray) {
        try {
            if (jCNewArray.elemtype != null) {
                print("new ");
                JCTree.JCExpression jCExpression = jCNewArray.elemtype;
                printBaseElementType(jCExpression);
                if (!jCNewArray.annotations.isEmpty()) {
                    print(Character.valueOf(C15883c.f126249O));
                    printTypeAnnotations(jCNewArray.annotations);
                }
                if (jCNewArray.elems != null) {
                    print(v.f99450n);
                }
                List<List<JCTree.JCAnnotation>> list = jCNewArray.dimAnnotations;
                int i10 = 0;
                for (List list2 = jCNewArray.dims; list2.nonEmpty(); list2 = list2.tail) {
                    if (list.size() > i10 && !list.get(i10).isEmpty()) {
                        print(Character.valueOf(C15883c.f126249O));
                        printTypeAnnotations(list.get(i10));
                    }
                    print("[");
                    i10++;
                    printExpr((JCTree) list2.head);
                    print("]");
                }
                printBrackets(jCExpression);
            }
            if (jCNewArray.elems != null) {
                print("{");
                printExprs(jCNewArray.elems);
                print(VectorFormat.DEFAULT_SUFFIX);
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitNewClass(JCTree.JCNewClass jCNewClass) {
        try {
            JCTree.JCExpression jCExpression = jCNewClass.encl;
            if (jCExpression != null) {
                printExpr(jCExpression);
                print(".");
            }
            print("new ");
            if (!jCNewClass.typeargs.isEmpty()) {
                print("<");
                printExprs(jCNewClass.typeargs);
                print(">");
            }
            JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
            if (jCClassDecl != null && jCClassDecl.mods.annotations.nonEmpty()) {
                printTypeAnnotations(jCNewClass.def.mods.annotations);
            }
            printExpr(jCNewClass.clazz);
            print("(");
            printExprs(jCNewClass.args);
            print(")");
            JCTree.JCClassDecl jCClassDecl2 = jCNewClass.def;
            if (jCClassDecl2 != null) {
                Name name = this.enclClassName;
                Name name2 = jCClassDecl2.name;
                if (name2 == null) {
                    Type type = jCNewClass.type;
                    if (type != null) {
                        name2 = type.tsym.name;
                        if (name2 != name2.table.names.empty) {
                        }
                    }
                    name2 = null;
                }
                this.enclClassName = name2;
                if ((jCClassDecl2.mods.flags & 16384) != 0) {
                    print("/*enum*/");
                }
                printBlock(jCNewClass.def.defs);
                this.enclClassName = name;
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitOpens(JCTree.JCOpens jCOpens) {
        try {
            print("opens ");
            printExpr(jCOpens.qualid);
            if (jCOpens.moduleNames != null) {
                print(" to ");
                printExprs(jCOpens.moduleNames);
            }
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
        try {
            printDocComment(jCPackageDecl);
            printAnnotations(jCPackageDecl.annotations);
            if (jCPackageDecl.pid != null) {
                print("package ");
                printExpr(jCPackageDecl.pid);
                print(";");
                println();
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitParens(JCTree.JCParens jCParens) {
        try {
            print("(");
            printExpr(jCParens.expr);
            print(")");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitProvides(JCTree.JCProvides jCProvides) {
        try {
            print("provides ");
            printExpr(jCProvides.serviceName);
            print(" with ");
            printExprs(jCProvides.implNames);
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitReference(JCTree.JCMemberReference jCMemberReference) {
        try {
            printExpr(jCMemberReference.expr);
            print("::");
            if (jCMemberReference.typeargs != null) {
                print("<");
                printExprs(jCMemberReference.typeargs);
                print(">");
            }
            print(jCMemberReference.getMode() == MemberReferenceTree.ReferenceMode.INVOKE ? jCMemberReference.name : CallLog.Calls.NEW);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitRequires(JCTree.JCRequires jCRequires) {
        try {
            print("requires ");
            if (jCRequires.isStaticPhase) {
                print("static ");
            }
            if (jCRequires.isTransitive) {
                print("transitive ");
            }
            printExpr(jCRequires.moduleName);
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitReturn(JCTree.JCReturn jCReturn) {
        try {
            print("return");
            if (jCReturn.expr != null) {
                print(" ");
                printExpr(jCReturn.expr);
            }
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
        try {
            printExpr(jCFieldAccess.selected, 15);
            print("." + ((Object) jCFieldAccess.name));
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitSkip(JCTree.JCSkip jCSkip) {
        try {
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitSwitch(JCTree.JCSwitch jCSwitch) {
        try {
            print("switch ");
            if (jCSwitch.selector.hasTag(JCTree.Tag.PARENS)) {
                printExpr(jCSwitch.selector);
            } else {
                print("(");
                printExpr(jCSwitch.selector);
                print(")");
            }
            print(" {");
            println();
            printStats(jCSwitch.cases);
            align();
            print(VectorFormat.DEFAULT_SUFFIX);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitSynchronized(JCTree.JCSynchronized jCSynchronized) {
        try {
            print("synchronized ");
            if (jCSynchronized.lock.hasTag(JCTree.Tag.PARENS)) {
                printExpr(jCSynchronized.lock);
            } else {
                print("(");
                printExpr(jCSynchronized.lock);
                print(")");
            }
            print(" ");
            printStat(jCSynchronized.body);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitThrow(JCTree.JCThrow jCThrow) {
        try {
            print("throw ");
            printExpr(jCThrow.expr);
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTopLevel(JCTree.JCCompilationUnit jCCompilationUnit) {
        try {
            printUnit(jCCompilationUnit, null);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTree(JCTree jCTree) {
        try {
            print("(UNKNOWN: " + ((Object) jCTree.getTag()) + ")");
            println();
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void visitTry(JCTree.JCTry jCTry) {
        try {
            print("try ");
            if (jCTry.resources.nonEmpty()) {
                print("(");
                Iterator<JCTree> it = jCTry.resources.iterator();
                boolean z10 = true;
                while (it.hasNext()) {
                    JCTree next = it.next();
                    if (!z10) {
                        println();
                        indent();
                    }
                    printStat(next);
                    z10 = false;
                }
                print(") ");
            }
            printStat(jCTry.body);
            for (List list = jCTry.catchers; list.nonEmpty(); list = list.tail) {
                printStat((JCTree) list.head);
            }
            if (jCTry.finalizer != null) {
                print(" finally ");
                printStat(jCTry.finalizer);
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
        try {
            printExpr(jCTypeApply.clazz);
            print("<");
            printExprs(jCTypeApply.arguments);
            print(">");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
        try {
            printBaseElementType(jCArrayTypeTree);
            printBrackets(jCArrayTypeTree);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeBoundKind(JCTree.TypeBoundKind typeBoundKind) {
        try {
            print(String.valueOf(typeBoundKind.kind));
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeCast(JCTree.JCTypeCast jCTypeCast) {
        try {
            open(this.prec, 14);
            print("(");
            printExpr(jCTypeCast.clazz);
            print(")");
            printExpr(jCTypeCast.expr, 14);
            close(this.prec, 14);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeIdent(JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree) {
        try {
            switch (AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[jCPrimitiveTypeTree.typetag.ordinal()]) {
                case 1:
                    print("int");
                    return;
                case 2:
                    print("long");
                    return;
                case 3:
                    print(TypedValues.Custom.S_FLOAT);
                    return;
                case 4:
                    print("double");
                    return;
                case 5:
                    print("char");
                    return;
                case 6:
                    print(TypedValues.Custom.S_BOOLEAN);
                    return;
                case 7:
                default:
                    print("error");
                    return;
                case 8:
                    print("byte");
                    return;
                case 9:
                    print("short");
                    return;
                case 10:
                    print("void");
                    return;
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeIntersection(JCTree.JCTypeIntersection jCTypeIntersection) {
        try {
            printExprs(jCTypeIntersection.bounds, " & ");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
        try {
            if (jCTypeParameter.annotations.nonEmpty()) {
                printTypeAnnotations(jCTypeParameter.annotations);
            }
            print(jCTypeParameter.name);
            if (jCTypeParameter.bounds.nonEmpty()) {
                print(" extends ");
                printExprs(jCTypeParameter.bounds, " & ");
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeTest(JCTree.JCInstanceOf jCInstanceOf) {
        try {
            open(this.prec, 10);
            printExpr(jCInstanceOf.expr, 10);
            print(" instanceof ");
            printExpr(jCInstanceOf.clazz, 11);
            close(this.prec, 10);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitTypeUnion(JCTree.JCTypeUnion jCTypeUnion) {
        try {
            printExprs(jCTypeUnion.alternatives, " | ");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitUnary(JCTree.JCUnary jCUnary) {
        try {
            int opPrec = TreeInfo.opPrec(jCUnary.getTag());
            String operatorName = operatorName(jCUnary.getTag());
            open(this.prec, opPrec);
            if (jCUnary.getTag().isPostUnaryOp()) {
                printExpr(jCUnary.arg, opPrec);
                print(operatorName);
            } else {
                print(operatorName);
                printExpr(jCUnary.arg, opPrec);
            }
            close(this.prec, opPrec);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitUses(JCTree.JCUses jCUses) {
        try {
            print("uses ");
            printExpr(jCUses.qualid);
            print(";");
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
        List<JCTree.JCAnnotation> list;
        try {
            DocCommentTable docCommentTable = this.docComments;
            if (docCommentTable != null && docCommentTable.hasComment(jCVariableDecl)) {
                println();
                align();
            }
            printDocComment(jCVariableDecl);
            JCTree.JCModifiers jCModifiers = jCVariableDecl.mods;
            if ((jCModifiers.flags & 16384) != 0) {
                print("/*public static final*/ ");
                print(jCVariableDecl.name);
                JCTree.JCExpression jCExpression = jCVariableDecl.init;
                if (jCExpression != null) {
                    if (!this.sourceOutput || !jCExpression.hasTag(JCTree.Tag.NEWCLASS)) {
                        print(" /* = ");
                        printExpr(jCVariableDecl.init);
                        print(" */");
                        return;
                    }
                    print(" /*enum*/ ");
                    JCTree.JCNewClass jCNewClass = (JCTree.JCNewClass) jCVariableDecl.init;
                    List<JCTree.JCExpression> list2 = jCNewClass.args;
                    if (list2 != null && list2.nonEmpty()) {
                        print("(");
                        print(jCNewClass.args);
                        print(")");
                    }
                    JCTree.JCClassDecl jCClassDecl = jCNewClass.def;
                    if (jCClassDecl == null || jCClassDecl.defs == null) {
                        return;
                    }
                    print(" ");
                    printBlock(jCNewClass.def.defs);
                    return;
                }
                return;
            }
            printExpr(jCModifiers);
            if ((jCVariableDecl.mods.flags & 17179869184L) != 0) {
                JCTree.JCExpression jCExpression2 = jCVariableDecl.vartype;
                if (jCExpression2 instanceof JCTree.JCAnnotatedType) {
                    list = ((JCTree.JCAnnotatedType) jCExpression2).annotations;
                    jCExpression2 = ((JCTree.JCAnnotatedType) jCExpression2).underlyingType;
                } else {
                    list = null;
                }
                printExpr(((JCTree.JCArrayTypeTree) jCExpression2).elemtype);
                if (list != null) {
                    print(Character.valueOf(C15883c.f126249O));
                    printTypeAnnotations(list);
                }
                print("... " + ((Object) jCVariableDecl.name));
            } else {
                printExpr(jCVariableDecl.vartype);
                print(" " + ((Object) jCVariableDecl.name));
            }
            if (jCVariableDecl.init != null) {
                print(" = ");
                printExpr(jCVariableDecl.init);
            }
            if (this.prec == -1) {
                print(";");
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitWhileLoop(JCTree.JCWhileLoop jCWhileLoop) {
        try {
            print("while ");
            if (jCWhileLoop.cond.hasTag(JCTree.Tag.PARENS)) {
                printExpr(jCWhileLoop.cond);
            } else {
                print("(");
                printExpr(jCWhileLoop.cond);
                print(")");
            }
            print(" ");
            printStat(jCWhileLoop.body);
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    @Override
    public void visitWildcard(JCTree.JCWildcard jCWildcard) {
        try {
            print(jCWildcard.kind);
            if (jCWildcard.kind.kind != BoundKind.UNBOUND) {
                printExpr(jCWildcard.inner);
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    public static String toSimpleString(JCTree jCTree, int i10) {
        StringWriter stringWriter = new StringWriter();
        try {
            new Pretty(stringWriter, false).printExpr(jCTree);
            String replaceAll = stringWriter.toString().trim().replaceAll("\\s+", " ").replaceAll("/\\*missing\\*/", "");
            if (replaceAll.length() < i10) {
                return replaceAll;
            }
            int i11 = i10 - 5;
            int i12 = (i11 * 2) / 3;
            return replaceAll.substring(0, i12) + trimSequence + replaceAll.substring(replaceAll.length() - (i11 - i12));
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public <T extends JCTree> void printExprs(List<T> list) throws IOException {
        printExprs(list, ", ");
    }

    public void printExpr(JCTree jCTree) throws IOException {
        printExpr(jCTree, 0);
    }
}
