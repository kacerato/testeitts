package org.openjdk.tools.javac.tree;

import java.util.Iterator;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.util.TreePath;
import org.openjdk.tools.javac.code.Flags;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.tree.DCTree;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class TreeInfo {
    public static final int addPrec = 12;
    public static final int andPrec = 5;
    public static final int assignPrec = 1;
    public static final int assignopPrec = 2;
    public static final int bitandPrec = 8;
    public static final int bitorPrec = 6;
    public static final int bitxorPrec = 7;
    public static final int condPrec = 3;
    public static final int eqPrec = 9;
    public static final int mulPrec = 13;
    public static final int noPrec = 0;
    public static final int notExpression = -1;
    public static final int orPrec = 4;
    public static final int ordPrec = 10;
    public static final int postfixPrec = 15;
    public static final int precCount = 16;
    public static final int prefixPrec = 14;
    public static final int shiftPrec = 11;

    public class C1DeclScanner extends TreeScanner {
        JCTree result = null;
        final Symbol val$sym;

        public C1DeclScanner(Symbol symbol) {
            this.val$sym = symbol;
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree == null || this.result != null) {
                return;
            }
            jCTree.accept(this);
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            if (jCClassDecl.sym == this.val$sym) {
                this.result = jCClassDecl;
            } else {
                super.visitClassDef(jCClassDecl);
            }
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            if (jCMethodDecl.sym == this.val$sym) {
                this.result = jCMethodDecl;
            } else {
                super.visitMethodDef(jCMethodDecl);
            }
        }

        @Override
        public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
            if (jCModuleDecl.sym == this.val$sym) {
                this.result = jCModuleDecl;
            }
        }

        @Override
        public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
            if (jCPackageDecl.packge == this.val$sym) {
                this.result = jCPackageDecl;
            } else {
                super.visitPackageDef(jCPackageDecl);
            }
        }

        @Override
        public void visitTopLevel(JCTree.JCCompilationUnit jCCompilationUnit) {
            if (jCCompilationUnit.packge == this.val$sym) {
                this.result = jCCompilationUnit;
            } else {
                super.visitTopLevel(jCCompilationUnit);
            }
        }

        @Override
        public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
            Type type = jCTypeParameter.type;
            if (type == null || type.tsym != this.val$sym) {
                super.visitTypeParameter(jCTypeParameter);
            } else {
                this.result = jCTypeParameter;
            }
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            if (jCVariableDecl.sym == this.val$sym) {
                this.result = jCVariableDecl;
            } else {
                super.visitVarDef(jCVariableDecl);
            }
        }
    }

    public class C1Result extends Error {
        static final long serialVersionUID = -5942088234594905625L;
        List<JCTree> path;

        public C1Result(List<JCTree> list) {
            this.path = list;
        }
    }

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.APPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NEWCLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPEAPPLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.ANNOTATED_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.VARDEF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.REFERENCE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREINC.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PREDEC.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTINC.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POSTDEC.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.ASSIGN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITOR_ASG.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITXOR_ASG.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITAND_ASG.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SL_ASG.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SR_ASG.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.USR_ASG.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PLUS_ASG.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MINUS_ASG.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MUL_ASG.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.DIV_ASG.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MOD_ASG.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.ERRONEOUS.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.IDENT.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SELECT.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPEARRAY.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MODULEDEF.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PACKAGEDEF.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.OR.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.AND.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITOR.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITXOR.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BITAND.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.EQ.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NE.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LT.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.GT.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LE.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.GE.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SL.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SR.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.USR.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.PLUS.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MINUS.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MUL.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.DIV.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MOD.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CLASSDEF.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CONDEXPR.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.EXEC.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.INDEXED.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.METHODDEF.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPETEST.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.POS.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NEG.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NOT.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.COMPL.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CASE.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.CATCH.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.FORLOOP.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.FOREACHLOOP.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.IF.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.LABELLED.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.MODIFIERS.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SYNCHRONIZED.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TOPLEVEL.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TRY.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.WILDCARD.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPECAST.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.WHILELOOP.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.DOLOOP.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.SWITCH.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.ANNOTATION.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPE_ANNOTATION.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPEPARAMETER.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.BLOCK.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.NULLCHK.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.EXPORTS.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.OPENS.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[JCTree.Tag.TYPEIDENT.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
        }
    }

    public static class TypeAnnotationFinder extends TreeScanner {
        public boolean foundTypeAnno;

        private TypeAnnotationFinder() {
            this.foundTypeAnno = false;
        }

        @Override
        public void scan(JCTree jCTree) {
            if (this.foundTypeAnno || jCTree == null) {
                return;
            }
            super.scan(jCTree);
        }

        @Override
        public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
            this.foundTypeAnno = this.foundTypeAnno || jCAnnotation.hasTag(JCTree.Tag.TYPE_ANNOTATION);
        }
    }

    public static List<JCTree.JCExpression> args(JCTree jCTree) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 1) {
            return ((JCTree.JCMethodInvocation) jCTree).args;
        }
        if (i10 != 2) {
            return null;
        }
        return ((JCTree.JCNewClass) jCTree).args;
    }

    public static Name calledMethodName(JCTree jCTree) {
        if (!jCTree.hasTag(JCTree.Tag.EXEC)) {
            return null;
        }
        JCTree.JCExpressionStatement jCExpressionStatement = (JCTree.JCExpressionStatement) jCTree;
        if (jCExpressionStatement.expr.hasTag(JCTree.Tag.APPLY)) {
            return name(((JCTree.JCMethodInvocation) jCExpressionStatement.expr).meth);
        }
        return null;
    }

    public static boolean containsTypeAnnotation(JCTree jCTree) {
        TypeAnnotationFinder typeAnnotationFinder = new TypeAnnotationFinder();
        typeAnnotationFinder.scan(jCTree);
        return typeAnnotationFinder.foundTypeAnno;
    }

    public static JCTree declarationFor(Symbol symbol, JCTree jCTree) {
        C1DeclScanner c1DeclScanner = new C1DeclScanner(symbol);
        jCTree.accept(c1DeclScanner);
        return c1DeclScanner.result;
    }

    public static JCDiagnostic.DiagnosticPosition diagEndPos(final JCTree jCTree) {
        final int endPos = endPos(jCTree);
        return new JCDiagnostic.DiagnosticPosition() {
            @Override
            public int getEndPosition(EndPosTable endPosTable) {
                return TreeInfo.getEndPos(JCTree.this, endPosTable);
            }

            @Override
            public int getPreferredPosition() {
                return endPos;
            }

            @Override
            public int getStartPosition() {
                return TreeInfo.getStartPos(JCTree.this);
            }

            @Override
            public JCTree getTree() {
                return JCTree.this;
            }
        };
    }

    public static JCDiagnostic.DiagnosticPosition diagnosticPositionFor(Symbol symbol, JCTree jCTree) {
        JCTree declarationFor = declarationFor(symbol, jCTree);
        if (declarationFor != null) {
            jCTree = declarationFor;
        }
        return jCTree.pos();
    }

    public static int endPos(JCTree jCTree) {
        int i10;
        if (jCTree.hasTag(JCTree.Tag.BLOCK) && (i10 = ((JCTree.JCBlock) jCTree).endpos) != -1) {
            return i10;
        }
        if (jCTree.hasTag(JCTree.Tag.SYNCHRONIZED)) {
            return endPos(((JCTree.JCSynchronized) jCTree).body);
        }
        if (!jCTree.hasTag(JCTree.Tag.TRY)) {
            return jCTree.pos;
        }
        JCTree.JCTry jCTry = (JCTree.JCTry) jCTree;
        JCTree.JCBlock jCBlock = jCTry.finalizer;
        if (jCBlock == null) {
            jCBlock = jCTry.catchers.nonEmpty() ? jCTry.catchers.last().body : jCTry.body;
        }
        return endPos(jCBlock);
    }

    public static int finalizerPos(JCTree jCTree) {
        if (jCTree.hasTag(JCTree.Tag.TRY)) {
            JCTree.JCTry jCTry = (JCTree.JCTry) jCTree;
            Assert.checkNonNull(jCTry.finalizer);
            return firstStatPos(jCTry.finalizer);
        }
        if (jCTree.hasTag(JCTree.Tag.SYNCHRONIZED)) {
            return endPos(((JCTree.JCSynchronized) jCTree).body);
        }
        throw new AssertionError();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static JCTree.JCMethodInvocation firstConstructorCall(JCTree jCTree) {
        JCTree.JCBlock jCBlock;
        if (!jCTree.hasTag(JCTree.Tag.METHODDEF)) {
            return null;
        }
        JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) jCTree;
        Name name = jCMethodDecl.name;
        if (name != name.table.names.init || (jCBlock = jCMethodDecl.body) == null) {
            return null;
        }
        List list = jCBlock.stats;
        while (list.nonEmpty() && isSyntheticInit((JCTree) list.head)) {
            list = list.tail;
        }
        if (list.isEmpty() || !((JCTree.JCStatement) list.head).hasTag(JCTree.Tag.EXEC)) {
            return null;
        }
        JCTree.JCExpressionStatement jCExpressionStatement = (JCTree.JCExpressionStatement) list.head;
        if (jCExpressionStatement.expr.hasTag(JCTree.Tag.APPLY)) {
            return (JCTree.JCMethodInvocation) jCExpressionStatement.expr;
        }
        return null;
    }

    public static long firstFlag(long j10) {
        long j11 = 1;
        while ((j11 & j10 & Flags.ExtendedStandardFlags) == 0) {
            j11 <<= 1;
        }
        return j11;
    }

    public static int firstStatPos(JCTree jCTree) {
        if (jCTree.hasTag(JCTree.Tag.BLOCK)) {
            JCTree.JCBlock jCBlock = (JCTree.JCBlock) jCTree;
            if (jCBlock.stats.nonEmpty()) {
                return jCBlock.stats.head.pos;
            }
        }
        return jCTree.pos;
    }

    public static String flagNames(long j10) {
        return Flags.toString(j10 & Flags.ExtendedStandardFlags).trim();
    }

    public static long flags(JCTree jCTree) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 5) {
            return ((JCTree.JCVariableDecl) jCTree).mods.flags;
        }
        if (i10 == 48) {
            return ((JCTree.JCClassDecl) jCTree).mods.flags;
        }
        if (i10 == 52) {
            return ((JCTree.JCMethodDecl) jCTree).mods.flags;
        }
        if (i10 != 76) {
            return 0L;
        }
        return ((JCTree.JCBlock) jCTree).flags;
    }

    public static Name fullName(JCTree jCTree) {
        Name fullName;
        JCTree skipParens = skipParens(jCTree);
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[skipParens.getTag().ordinal()];
        if (i10 == 24) {
            return ((JCTree.JCIdent) skipParens).name;
        }
        if (i10 == 25 && (fullName = fullName(((JCTree.JCFieldAccess) skipParens).selected)) != null) {
            return fullName.append('.', name(skipParens));
        }
        return null;
    }

    public static String getCommentText(Env<?> env, JCTree jCTree) {
        DocCommentTable docCommentTable = (jCTree.hasTag(JCTree.Tag.TOPLEVEL) ? (JCTree.JCCompilationUnit) jCTree : env.toplevel).docComments;
        if (docCommentTable == null) {
            return null;
        }
        return docCommentTable.getCommentText(jCTree);
    }

    public static DCTree.DCDocComment getCommentTree(Env<?> env, JCTree jCTree) {
        DocCommentTable docCommentTable = (jCTree.hasTag(JCTree.Tag.TOPLEVEL) ? (JCTree.JCCompilationUnit) jCTree : env.toplevel).docComments;
        if (docCommentTable == null) {
            return null;
        }
        return docCommentTable.getCommentTree(jCTree);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x002c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x002f. Please report as an issue. */
    public static int getEndPos(JCTree jCTree, EndPosTable endPosTable) {
        if (jCTree == null) {
            return -1;
        }
        if (endPosTable == null) {
            return endPos(jCTree);
        }
        int endPos = endPosTable.getEndPos(jCTree);
        if (endPos != -1) {
            return endPos;
        }
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 4) {
            return getEndPos(((JCTree.JCAnnotatedType) jCTree).underlyingType, endPosTable);
        }
        if (i10 == 49) {
            return getEndPos(((JCTree.JCConditional) jCTree).falsepart, endPosTable);
        }
        if (i10 != 7 && i10 != 8) {
            switch (i10) {
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                    break;
                case 23:
                    JCTree.JCErroneous jCErroneous = (JCTree.JCErroneous) jCTree;
                    List<? extends JCTree> list = jCErroneous.errs;
                    if (list != null && list.nonEmpty()) {
                        return getEndPos(jCErroneous.errs.last(), endPosTable);
                    }
                    return -1;
                default:
                    switch (i10) {
                        default:
                            switch (i10) {
                                case 53:
                                    return getEndPos(((JCTree.JCInstanceOf) jCTree).clazz, endPosTable);
                                case 54:
                                case 55:
                                case 56:
                                case 57:
                                    break;
                                case 58:
                                    return getEndPos(((JCTree.JCCase) jCTree).stats.last(), endPosTable);
                                case 59:
                                    return getEndPos(((JCTree.JCCatch) jCTree).body, endPosTable);
                                case 60:
                                    return getEndPos(((JCTree.JCForLoop) jCTree).body, endPosTable);
                                case 61:
                                    return getEndPos(((JCTree.JCEnhancedForLoop) jCTree).body, endPosTable);
                                case 62:
                                    JCTree.JCIf jCIf = (JCTree.JCIf) jCTree;
                                    JCTree.JCStatement jCStatement = jCIf.elsepart;
                                    return jCStatement == null ? getEndPos(jCIf.thenpart, endPosTable) : getEndPos(jCStatement, endPosTable);
                                case 63:
                                    return getEndPos(((JCTree.JCLabeledStatement) jCTree).body, endPosTable);
                                case 64:
                                    return getEndPos(((JCTree.JCModifiers) jCTree).annotations.last(), endPosTable);
                                case 65:
                                    return getEndPos(((JCTree.JCSynchronized) jCTree).body, endPosTable);
                                case 66:
                                    return getEndPos(((JCTree.JCCompilationUnit) jCTree).defs.last(), endPosTable);
                                case 67:
                                    JCTree.JCTry jCTry = (JCTree.JCTry) jCTree;
                                    JCTree.JCBlock jCBlock = jCTry.finalizer;
                                    return jCBlock != null ? getEndPos(jCBlock, endPosTable) : !jCTry.catchers.isEmpty() ? getEndPos(jCTry.catchers.last(), endPosTable) : getEndPos(jCTry.body, endPosTable);
                                case 68:
                                    return getEndPos(((JCTree.JCWildcard) jCTree).inner, endPosTable);
                                case 69:
                                    return getEndPos(((JCTree.JCTypeCast) jCTree).expr, endPosTable);
                                case 70:
                                    return getEndPos(((JCTree.JCWhileLoop) jCTree).body, endPosTable);
                                default:
                                    return -1;
                            }
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                            return getEndPos(((JCTree.JCOperatorExpression) jCTree).getOperand(JCTree.JCOperatorExpression.OperandPos.RIGHT), endPosTable);
                    }
            }
        }
        return getEndPos(((JCTree.JCOperatorExpression) jCTree).getOperand(JCTree.JCOperatorExpression.OperandPos.RIGHT), endPosTable);
    }

    public static JCTree.JCModuleDecl getModule(JCTree.JCCompilationUnit jCCompilationUnit) {
        if (!jCCompilationUnit.defs.nonEmpty()) {
            return null;
        }
        JCTree jCTree = jCCompilationUnit.defs.head;
        if (jCTree.hasTag(JCTree.Tag.MODULEDEF)) {
            return (JCTree.JCModuleDecl) jCTree;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int getStartPos(JCTree jCTree) {
        if (jCTree == null) {
            return -1;
        }
        switch (AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()]) {
            case 1:
                return getStartPos(((JCTree.JCMethodInvocation) jCTree).meth);
            case 2:
                JCTree.JCExpression jCExpression = ((JCTree.JCNewClass) jCTree).encl;
                if (jCExpression != null) {
                    return getStartPos(jCExpression);
                }
                break;
            case 3:
                return getStartPos(((JCTree.JCTypeApply) jCTree).clazz);
            case 4:
                JCTree.JCAnnotatedType jCAnnotatedType = (JCTree.JCAnnotatedType) jCTree;
                return jCAnnotatedType.annotations.nonEmpty() ? (jCAnnotatedType.underlyingType.hasTag(JCTree.Tag.TYPEARRAY) || jCAnnotatedType.underlyingType.hasTag(JCTree.Tag.SELECT)) ? getStartPos(jCAnnotatedType.underlyingType) : getStartPos(jCAnnotatedType.annotations.head) : getStartPos(jCAnnotatedType.underlyingType);
            case 5:
                JCTree.JCVariableDecl jCVariableDecl = (JCTree.JCVariableDecl) jCTree;
                int i10 = jCVariableDecl.mods.pos;
                if (i10 != -1) {
                    return i10;
                }
                JCTree.JCExpression jCExpression2 = jCVariableDecl.vartype;
                return jCExpression2 == null ? jCVariableDecl.pos : getStartPos(jCExpression2);
            case 9:
            case 10:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
                return getStartPos(((JCTree.JCOperatorExpression) jCTree).getOperand(JCTree.JCOperatorExpression.OperandPos.LEFT));
            case 11:
                return getStartPos(((JCTree.JCAssign) jCTree).lhs);
            case 23:
                JCTree.JCErroneous jCErroneous = (JCTree.JCErroneous) jCTree;
                List<? extends JCTree> list = jCErroneous.errs;
                if (list != null && list.nonEmpty()) {
                    return getStartPos((JCTree) jCErroneous.errs.head);
                }
                break;
            case 25:
                return getStartPos(((JCTree.JCFieldAccess) jCTree).selected);
            case 26:
                return getStartPos(((JCTree.JCArrayTypeTree) jCTree).elemtype);
            case 27:
                JCTree.JCModuleDecl jCModuleDecl = (JCTree.JCModuleDecl) jCTree;
                boolean isEmpty = jCModuleDecl.mods.annotations.isEmpty();
                JCTree jCTree2 = jCModuleDecl;
                if (!isEmpty) {
                    jCTree2 = (JCTree.JCAnnotation) jCModuleDecl.mods.annotations.head;
                }
                return jCTree2.pos;
            case 28:
                JCTree.JCPackageDecl jCPackageDecl = (JCTree.JCPackageDecl) jCTree;
                boolean isEmpty2 = jCPackageDecl.annotations.isEmpty();
                JCTree jCTree3 = jCPackageDecl;
                if (!isEmpty2) {
                    jCTree3 = (JCTree.JCAnnotation) jCPackageDecl.annotations.head;
                }
                return jCTree3.pos;
            case 48:
                int i11 = ((JCTree.JCClassDecl) jCTree).mods.pos;
                if (i11 != -1) {
                    return i11;
                }
                break;
            case 49:
                return getStartPos(((JCTree.JCConditional) jCTree).cond);
            case 50:
                return getStartPos(((JCTree.JCExpressionStatement) jCTree).expr);
            case 51:
                return getStartPos(((JCTree.JCArrayAccess) jCTree).indexed);
            case 52:
                JCTree.JCMethodDecl jCMethodDecl = (JCTree.JCMethodDecl) jCTree;
                int i12 = jCMethodDecl.mods.pos;
                if (i12 != -1) {
                    return i12;
                }
                if (jCMethodDecl.typarams.nonEmpty()) {
                    return getStartPos(jCMethodDecl.typarams.head);
                }
                JCTree.JCExpression jCExpression3 = jCMethodDecl.restype;
                return jCExpression3 == null ? jCMethodDecl.pos : getStartPos(jCExpression3);
            case 53:
                return getStartPos(((JCTree.JCInstanceOf) jCTree).expr);
        }
        return jCTree.pos;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r1 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean hasConstructors(List<JCTree> list) {
        for (List<JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            if (isConstructor(list2.head)) {
                return true;
            }
        }
        return false;
    }

    public static JCTree innermostType(JCTree jCTree) {
        JCTree jCTree2;
        int i10;
        while (true) {
            jCTree2 = null;
            while (true) {
                i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
                if (i10 != 4) {
                    break;
                }
                jCTree2 = jCTree;
                jCTree = ((JCTree.JCAnnotatedType) jCTree).underlyingType;
            }
            if (i10 == 26) {
                jCTree = ((JCTree.JCArrayTypeTree) jCTree).elemtype;
            } else {
                if (i10 != 68) {
                    break;
                }
                jCTree = ((JCTree.JCWildcard) jCTree).inner;
            }
        }
        return jCTree2 != null ? jCTree2 : jCTree;
    }

    public static boolean isAnonymousDiamond(JCTree jCTree) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 2) {
            JCTree.JCNewClass jCNewClass = (JCTree.JCNewClass) jCTree;
            return jCNewClass.def != null && isDiamond(jCNewClass.clazz);
        }
        if (i10 != 4) {
            return false;
        }
        return isAnonymousDiamond(((JCTree.JCAnnotatedType) jCTree).underlyingType);
    }

    public static boolean isConstructor(JCTree jCTree) {
        if (!jCTree.hasTag(JCTree.Tag.METHODDEF)) {
            return false;
        }
        Name name = ((JCTree.JCMethodDecl) jCTree).name;
        return name == name.table.names.init;
    }

    public static boolean isDeclaration(JCTree jCTree) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[skipParens(jCTree).getTag().ordinal()];
        return i10 == 5 || i10 == 28 || i10 == 48 || i10 == 52;
    }

    public static boolean isDiamond(JCTree jCTree) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 2) {
            return isDiamond(((JCTree.JCNewClass) jCTree).clazz);
        }
        if (i10 == 3) {
            return ((JCTree.JCTypeApply) jCTree).getTypeArguments().isEmpty();
        }
        if (i10 != 4) {
            return false;
        }
        return isDiamond(((JCTree.JCAnnotatedType) jCTree).underlyingType);
    }

    public static boolean isEnumInit(JCTree jCTree) {
        return AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()] == 5 && (((JCTree.JCVariableDecl) jCTree).mods.flags & 16384) != 0;
    }

    public static boolean isExpressionStatement(JCTree.JCExpression jCExpression) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression.getTag().ordinal()];
        if (i10 != 1 && i10 != 2) {
            switch (i10) {
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public static boolean isInAnnotation(Env<?> env, JCTree jCTree) {
        TreePath path = TreePath.getPath(env.toplevel, jCTree);
        if (path == null) {
            return false;
        }
        Iterator<Tree> it = path.iterator();
        while (it.hasNext()) {
            if (it.next().getKind() == Tree.Kind.ANNOTATION) {
                return true;
            }
        }
        return false;
    }

    public static boolean isInitialConstructor(JCTree jCTree) {
        JCTree.JCMethodInvocation firstConstructorCall = firstConstructorCall(jCTree);
        if (firstConstructorCall == null) {
            return false;
        }
        Name name = name(firstConstructorCall.meth);
        return name == null || name != name.table.names._this;
    }

    public static boolean isModuleInfo(JCTree.JCCompilationUnit jCCompilationUnit) {
        return jCCompilationUnit.sourcefile.isNameCompatible("module-info", JavaFileObject.Kind.SOURCE) && jCCompilationUnit.getModuleDecl() != null;
    }

    public static boolean isMultiCatch(JCTree.JCCatch jCCatch) {
        return jCCatch.param.vartype.hasTag(JCTree.Tag.TYPEUNION);
    }

    public static boolean isNull(JCTree jCTree) {
        return jCTree.hasTag(JCTree.Tag.LITERAL) && ((JCTree.JCLiteral) jCTree).typetag == TypeTag.BOT;
    }

    public static boolean isPackageInfo(JCTree.JCCompilationUnit jCCompilationUnit) {
        return jCCompilationUnit.sourcefile.isNameCompatible("package-info", JavaFileObject.Kind.SOURCE);
    }

    public static boolean isReceiverParam(JCTree jCTree) {
        return jCTree.hasTag(JCTree.Tag.VARDEF) && ((JCTree.JCVariableDecl) jCTree).nameexpr != null;
    }

    public static boolean isSelfCall(JCTree jCTree) {
        Name calledMethodName = calledMethodName(jCTree);
        if (calledMethodName == null) {
            return false;
        }
        Names names = calledMethodName.table.names;
        return calledMethodName == names._this || calledMethodName == names._super;
    }

    public static boolean isStatement(JCTree jCTree) {
        return (!(jCTree instanceof JCTree.JCStatement) || jCTree.hasTag(JCTree.Tag.CLASSDEF) || jCTree.hasTag(JCTree.Tag.BLOCK) || jCTree.hasTag(JCTree.Tag.METHODDEF)) ? false : true;
    }

    public static boolean isStaticSelector(JCTree jCTree, Names names) {
        if (jCTree == null) {
            return false;
        }
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 != 3) {
            if (i10 == 4) {
                return isStaticSelector(((JCTree.JCAnnotatedType) jCTree).underlyingType, names);
            }
            switch (i10) {
                case 24:
                    Name name = ((JCTree.JCIdent) jCTree).name;
                    return (name == names._this || name == names._super || !isStaticSym(jCTree)) ? false : true;
                case 25:
                    return isStaticSym(jCTree) && isStaticSelector(((JCTree.JCFieldAccess) jCTree).selected, names);
                case 26:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    private static boolean isStaticSym(JCTree jCTree) {
        Kinds.Kind kind = symbol(jCTree).kind;
        return kind == Kinds.Kind.TYP || kind == Kinds.Kind.PCK;
    }

    public static boolean isSuperCall(JCTree jCTree) {
        Name calledMethodName = calledMethodName(jCTree);
        return calledMethodName != null && calledMethodName == calledMethodName.table.names._super;
    }

    public static boolean isSyntheticInit(JCTree jCTree) {
        JCTree.JCFieldAccess jCFieldAccess;
        Symbol symbol;
        Name name;
        if (!jCTree.hasTag(JCTree.Tag.EXEC)) {
            return false;
        }
        JCTree.JCExpressionStatement jCExpressionStatement = (JCTree.JCExpressionStatement) jCTree;
        if (!jCExpressionStatement.expr.hasTag(JCTree.Tag.ASSIGN)) {
            return false;
        }
        JCTree.JCAssign jCAssign = (JCTree.JCAssign) jCExpressionStatement.expr;
        return (!jCAssign.lhs.hasTag(JCTree.Tag.SELECT) || (symbol = (jCFieldAccess = (JCTree.JCFieldAccess) jCAssign.lhs).sym) == null || (symbol.flags() & 4096) == 0 || (name = name(jCFieldAccess.selected)) == null || name != name.table.names._this) ? false : true;
    }

    public static Name name(JCTree jCTree) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 3) {
            return name(((JCTree.JCTypeApply) jCTree).clazz);
        }
        if (i10 == 24) {
            return ((JCTree.JCIdent) jCTree).name;
        }
        if (i10 != 25) {
            return null;
        }
        return ((JCTree.JCFieldAccess) jCTree).name;
    }

    public static boolean nonstaticSelect(JCTree jCTree) {
        Kinds.Kind kind;
        JCTree skipParens = skipParens(jCTree);
        if (!skipParens.hasTag(JCTree.Tag.SELECT)) {
            return false;
        }
        Symbol symbol = symbol(((JCTree.JCFieldAccess) skipParens).selected);
        return symbol == null || !((kind = symbol.kind) == Kinds.Kind.PCK || kind == Kinds.Kind.TYP);
    }

    public static int opPrec(JCTree.Tag tag) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[tag.ordinal()];
        if (i10 == 77) {
            return 15;
        }
        switch (i10) {
            case 7:
            case 8:
                return 14;
            case 9:
            case 10:
                return 15;
            case 11:
                return 1;
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                return 2;
            default:
                switch (i10) {
                    case 29:
                        return 4;
                    case 30:
                        return 5;
                    case 31:
                        return 6;
                    case 32:
                        return 7;
                    case 33:
                        return 8;
                    case 34:
                    case 35:
                        return 9;
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                        return 10;
                    case 40:
                    case 41:
                    case 42:
                        return 11;
                    case 43:
                    case 44:
                        return 12;
                    case 45:
                    case 46:
                    case 47:
                        return 13;
                    default:
                        switch (i10) {
                            case 53:
                                return 10;
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                                return 14;
                            default:
                                throw new AssertionError();
                        }
                }
        }
    }

    public static List<JCTree> pathFor(final JCTree jCTree, JCTree.JCCompilationUnit jCCompilationUnit) {
        try {
            new TreeScanner() {
                List<JCTree> path = List.nil();

                @Override
                public void scan(JCTree jCTree2) {
                    if (jCTree2 != null) {
                        this.path = this.path.prepend(jCTree2);
                        if (jCTree2 == JCTree.this) {
                            throw new C1Result(this.path);
                        }
                        super.scan(jCTree2);
                        this.path = this.path.tail;
                    }
                }
            }.scan(jCCompilationUnit);
            return List.nil();
        } catch (C1Result e10) {
            return e10.path;
        }
    }

    public static int positionFor(Symbol symbol, JCTree jCTree) {
        JCTree declarationFor = declarationFor(symbol, jCTree);
        if (declarationFor != null) {
            jCTree = declarationFor;
        }
        return jCTree.pos;
    }

    public static JCTree referencedStatement(JCTree.JCLabeledStatement jCLabeledStatement) {
        JCTree.JCStatement jCStatement = jCLabeledStatement;
        do {
            jCStatement = ((JCTree.JCLabeledStatement) jCStatement).body;
        } while (jCStatement.hasTag(JCTree.Tag.LABELLED));
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCStatement.getTag().ordinal()];
        if (i10 != 60 && i10 != 61) {
            switch (i10) {
                case 70:
                case 71:
                case 72:
                    break;
                default:
                    return jCLabeledStatement;
            }
        }
        return jCStatement;
    }

    public static Env<AttrContext> scopeFor(JCTree jCTree, JCTree.JCCompilationUnit jCCompilationUnit) {
        return scopeFor(pathFor(jCTree, jCCompilationUnit));
    }

    public static void setPolyKind(JCTree jCTree, JCTree.JCPolyExpression.PolyKind polyKind) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 1) {
            ((JCTree.JCMethodInvocation) jCTree).polyKind = polyKind;
            return;
        }
        if (i10 == 2) {
            ((JCTree.JCNewClass) jCTree).polyKind = polyKind;
        } else {
            if (i10 == 6) {
                ((JCTree.JCMemberReference) jCTree).refPolyKind = polyKind;
                return;
            }
            throw new AssertionError((Object) ("Unexpected tree: " + ((Object) jCTree)));
        }
    }

    public static void setSymbol(JCTree jCTree, Symbol symbol) {
        JCTree skipParens = skipParens(jCTree);
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[skipParens.getTag().ordinal()];
        if (i10 == 24) {
            ((JCTree.JCIdent) skipParens).sym = symbol;
        } else {
            if (i10 != 25) {
                return;
            }
            ((JCTree.JCFieldAccess) skipParens).sym = symbol;
        }
    }

    public static void setVarargsElement(JCTree jCTree, Type type) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCTree.getTag().ordinal()];
        if (i10 == 1) {
            ((JCTree.JCMethodInvocation) jCTree).varargsElement = type;
            return;
        }
        if (i10 == 2) {
            ((JCTree.JCNewClass) jCTree).varargsElement = type;
        } else {
            if (i10 == 6) {
                ((JCTree.JCMemberReference) jCTree).varargsElement = type;
                return;
            }
            throw new AssertionError((Object) ("Unexpected tree: " + ((Object) jCTree)));
        }
    }

    public static JCTree.JCExpression skipParens(JCTree.JCExpression jCExpression) {
        while (jCExpression.hasTag(JCTree.Tag.PARENS)) {
            jCExpression = ((JCTree.JCParens) jCExpression).expr;
        }
        return jCExpression;
    }

    public static Symbol symbol(JCTree jCTree) {
        JCTree skipParens = skipParens(jCTree);
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[skipParens.getTag().ordinal()];
        if (i10 == 3) {
            return symbol(((JCTree.JCTypeApply) skipParens).clazz);
        }
        if (i10 == 4) {
            return symbol(((JCTree.JCAnnotatedType) skipParens).underlyingType);
        }
        if (i10 == 6) {
            return ((JCTree.JCMemberReference) skipParens).sym;
        }
        if (i10 == 24) {
            return ((JCTree.JCIdent) skipParens).sym;
        }
        if (i10 != 25) {
            return null;
        }
        return ((JCTree.JCFieldAccess) skipParens).sym;
    }

    public static Symbol symbolFor(JCTree jCTree) {
        Symbol symbolForImpl = symbolForImpl(jCTree);
        if (symbolForImpl != null) {
            return symbolForImpl.baseSymbol();
        }
        return null;
    }

    private static Symbol symbolForImpl(JCTree jCTree) {
        JCTree skipParens = skipParens(jCTree);
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[skipParens.getTag().ordinal()];
        if (i10 == 1) {
            return symbolFor(((JCTree.JCMethodInvocation) skipParens).meth);
        }
        if (i10 == 2) {
            return ((JCTree.JCNewClass) skipParens).constructor;
        }
        if (i10 == 3) {
            return symbolFor(((JCTree.JCTypeApply) skipParens).clazz);
        }
        if (i10 == 5) {
            return ((JCTree.JCVariableDecl) skipParens).sym;
        }
        if (i10 == 6) {
            return ((JCTree.JCMemberReference) skipParens).sym;
        }
        if (i10 == 24) {
            return ((JCTree.JCIdent) skipParens).sym;
        }
        if (i10 == 25) {
            return ((JCTree.JCFieldAccess) skipParens).sym;
        }
        if (i10 == 27) {
            return ((JCTree.JCModuleDecl) skipParens).sym;
        }
        if (i10 == 28) {
            return ((JCTree.JCPackageDecl) skipParens).packge;
        }
        if (i10 == 48) {
            return ((JCTree.JCClassDecl) skipParens).sym;
        }
        if (i10 == 52) {
            return ((JCTree.JCMethodDecl) skipParens).sym;
        }
        if (i10 == 66) {
            JCTree.JCCompilationUnit jCCompilationUnit = (JCTree.JCCompilationUnit) skipParens;
            JCTree.JCModuleDecl moduleDecl = jCCompilationUnit.getModuleDecl();
            return (!isModuleInfo(jCCompilationUnit) || moduleDecl == null) ? jCCompilationUnit.packge : symbolFor(moduleDecl);
        }
        switch (i10) {
            case 73:
            case 74:
            case 75:
                Type type = skipParens.type;
                if (type != null) {
                    return type.tsym;
                }
                return null;
            default:
                return null;
        }
    }

    public static Tree.Kind tagToKind(JCTree.Tag tag) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[tag.ordinal()];
        if (i10 == 73) {
            return Tree.Kind.ANNOTATION;
        }
        if (i10 == 74) {
            return Tree.Kind.TYPE_ANNOTATION;
        }
        switch (i10) {
            case 7:
                return Tree.Kind.PREFIX_INCREMENT;
            case 8:
                return Tree.Kind.PREFIX_DECREMENT;
            case 9:
                return Tree.Kind.POSTFIX_INCREMENT;
            case 10:
                return Tree.Kind.POSTFIX_DECREMENT;
            default:
                switch (i10) {
                    case 12:
                        return Tree.Kind.OR_ASSIGNMENT;
                    case 13:
                        return Tree.Kind.XOR_ASSIGNMENT;
                    case 14:
                        return Tree.Kind.AND_ASSIGNMENT;
                    case 15:
                        return Tree.Kind.LEFT_SHIFT_ASSIGNMENT;
                    case 16:
                        return Tree.Kind.RIGHT_SHIFT_ASSIGNMENT;
                    case 17:
                        return Tree.Kind.UNSIGNED_RIGHT_SHIFT_ASSIGNMENT;
                    case 18:
                        return Tree.Kind.PLUS_ASSIGNMENT;
                    case 19:
                        return Tree.Kind.MINUS_ASSIGNMENT;
                    case 20:
                        return Tree.Kind.MULTIPLY_ASSIGNMENT;
                    case 21:
                        return Tree.Kind.DIVIDE_ASSIGNMENT;
                    case 22:
                        return Tree.Kind.REMAINDER_ASSIGNMENT;
                    default:
                        switch (i10) {
                            case 29:
                                return Tree.Kind.CONDITIONAL_OR;
                            case 30:
                                return Tree.Kind.CONDITIONAL_AND;
                            case 31:
                                return Tree.Kind.OR;
                            case 32:
                                return Tree.Kind.XOR;
                            case 33:
                                return Tree.Kind.AND;
                            case 34:
                                return Tree.Kind.EQUAL_TO;
                            case 35:
                                return Tree.Kind.NOT_EQUAL_TO;
                            case 36:
                                return Tree.Kind.LESS_THAN;
                            case 37:
                                return Tree.Kind.GREATER_THAN;
                            case 38:
                                return Tree.Kind.LESS_THAN_EQUAL;
                            case 39:
                                return Tree.Kind.GREATER_THAN_EQUAL;
                            case 40:
                                return Tree.Kind.LEFT_SHIFT;
                            case 41:
                                return Tree.Kind.RIGHT_SHIFT;
                            case 42:
                                return Tree.Kind.UNSIGNED_RIGHT_SHIFT;
                            case 43:
                                return Tree.Kind.PLUS;
                            case 44:
                                return Tree.Kind.MINUS;
                            case 45:
                                return Tree.Kind.MULTIPLY;
                            case 46:
                                return Tree.Kind.DIVIDE;
                            case 47:
                                return Tree.Kind.REMAINDER;
                            default:
                                switch (i10) {
                                    case 54:
                                        return Tree.Kind.UNARY_PLUS;
                                    case 55:
                                        return Tree.Kind.UNARY_MINUS;
                                    case 56:
                                        return Tree.Kind.LOGICAL_COMPLEMENT;
                                    case 57:
                                        return Tree.Kind.BITWISE_COMPLEMENT;
                                    default:
                                        switch (i10) {
                                            case 77:
                                                return Tree.Kind.OTHER;
                                            case 78:
                                                return Tree.Kind.EXPORTS;
                                            case 79:
                                                return Tree.Kind.OPENS;
                                            default:
                                                return null;
                                        }
                                }
                        }
                }
        }
    }

    public static JCTree.JCExpression typeIn(JCTree.JCExpression jCExpression) {
        int i10 = AnonymousClass2.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression.getTag().ordinal()];
        if (i10 == 3) {
            return jCExpression;
        }
        if (i10 == 4) {
            return ((JCTree.JCAnnotatedType) jCExpression).underlyingType;
        }
        if (i10 == 68 || i10 == 75 || i10 == 80) {
            return jCExpression;
        }
        switch (i10) {
            case 23:
            case 24:
            case 25:
            case 26:
                return jCExpression;
            default:
                throw new AssertionError((Object) ("Unexpected type tree: " + ((Object) jCExpression)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<Type> types(List<? extends JCTree> list) {
        ListBuffer listBuffer = new ListBuffer();
        for (List<? extends JCTree> list2 = list; list2.nonEmpty(); list2 = list2.tail) {
            listBuffer.append(((JCTree) list2.head).type);
        }
        return listBuffer.toList();
    }

    public static Env<AttrContext> scopeFor(List<JCTree> list) {
        throw new UnsupportedOperationException("not implemented yet");
    }

    public static JCTree skipParens(JCTree jCTree) {
        return jCTree.hasTag(JCTree.Tag.PARENS) ? skipParens((JCTree.JCExpression) jCTree) : jCTree;
    }
}
