package org.openjdk.tools.javac.jvm;

import android.speech.RecognizerResultsIntent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.jvm.Items;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public abstract class StringConcat {
    private static final int MAX_INDY_CONCAT_ARG_SLOTS = 200;
    private static final char TAG_ARG = 1;
    private static final char TAG_CONST = 2;
    protected static final Context.Key<StringConcat> concatKey = new Context.Key<>();
    protected final Gen gen;
    protected final TreeMaker make;
    protected final Names names;
    protected final Resolve rs;
    protected final Map<Type, Symbol> sbAppends;
    protected final Symtab syms;
    protected final Types types;

    public static final class IndyConstants extends Indy {
        public IndyConstants(Context context) {
            super(context);
        }

        private void doCall(Type type, JCDiagnostic.DiagnosticPosition diagnosticPosition, String str, List<Object> list, List<Type> list2) {
            Type.MethodType methodType = new Type.MethodType(list2, type, List.nil(), this.syms.methodClass);
            TreeMaker treeMaker = this.make;
            int i10 = treeMaker.pos;
            try {
                treeMaker.at(diagnosticPosition);
                ListBuffer listBuffer = new ListBuffer();
                ListBuffer listBuffer2 = new ListBuffer();
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    listBuffer2.add(it.next());
                    listBuffer.add(this.syms.stringType);
                }
                Symtab symtab = this.syms;
                this.gen.getItems().makeDynamicItem(new Symbol.DynamicMethodSymbol(this.names.makeConcatWithConstants, this.syms.noSymbol, 6, this.rs.resolveInternalMethod(diagnosticPosition, this.gen.getAttrEnv(), this.syms.stringConcatFactory, this.names.makeConcatWithConstants, List.of(symtab.methodHandleLookupType, symtab.stringType, symtab.methodTypeType).append(this.syms.stringType).appendList(listBuffer), null), methodType, List.of(str).appendList(listBuffer2).toArray())).invoke();
                this.make.at(i10);
            } catch (Throwable th2) {
                this.make.at(i10);
                throw th2;
            }
        }

        @Override
        public void emit(List<JCTree> list, Type type, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
            List<List<JCTree>> split = split(list);
            Iterator<List<JCTree>> it = split.iterator();
            while (it.hasNext()) {
                List<JCTree> next = it.next();
                Assert.check(!next.isEmpty(), "Arguments list is empty");
                StringBuilder sb2 = new StringBuilder(next.size());
                ListBuffer listBuffer = new ListBuffer();
                ListBuffer listBuffer2 = new ListBuffer();
                Iterator<JCTree> it2 = next.iterator();
                while (it2.hasNext()) {
                    JCTree next2 = it2.next();
                    Object constValue = next2.type.constValue();
                    if (!"".equals(constValue)) {
                        Type type2 = next2.type;
                        if (type2 == this.syms.botType) {
                            sb2.append((String) null);
                        } else if (constValue != null) {
                            String stringValue = type2.stringValue();
                            if (stringValue.indexOf(2) == -1 && stringValue.indexOf(1) == -1) {
                                sb2.append(stringValue);
                            } else {
                                sb2.append(StringConcat.TAG_CONST);
                                listBuffer2.add(stringValue);
                            }
                        } else {
                            sb2.append(StringConcat.TAG_ARG);
                            listBuffer.add(sharpestAccessible(next2.type));
                            this.gen.genExpr(next2, next2.type).load();
                        }
                    }
                }
                doCall(type, diagnosticPosition, sb2.toString(), listBuffer2.toList(), listBuffer.toList());
            }
            if (split.size() > 1) {
                ListBuffer listBuffer3 = new ListBuffer();
                StringBuilder sb3 = new StringBuilder();
                for (int i10 = 0; i10 < split.size(); i10++) {
                    listBuffer3.append(this.syms.stringType);
                    sb3.append(StringConcat.TAG_ARG);
                }
                doCall(type, diagnosticPosition, sb3.toString(), List.nil(), listBuffer3.toList());
            }
        }
    }

    public static class IndyPlain extends Indy {
        public IndyPlain(Context context) {
            super(context);
        }

        private void doCall(Type type, JCDiagnostic.DiagnosticPosition diagnosticPosition, List<Type> list) {
            Type.MethodType methodType = new Type.MethodType(list, type, List.nil(), this.syms.methodClass);
            TreeMaker treeMaker = this.make;
            int i10 = treeMaker.pos;
            try {
                treeMaker.at(diagnosticPosition);
                Symtab symtab = this.syms;
                this.gen.getItems().makeDynamicItem(new Symbol.DynamicMethodSymbol(this.names.makeConcat, this.syms.noSymbol, 6, this.rs.resolveInternalMethod(diagnosticPosition, this.gen.getAttrEnv(), this.syms.stringConcatFactory, this.names.makeConcat, List.of(symtab.methodHandleLookupType, symtab.stringType, symtab.methodTypeType), null), methodType, List.nil().toArray())).invoke();
            } finally {
                this.make.at(i10);
            }
        }

        @Override
        public void emit(List<JCTree> list, Type type, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
            List<List<JCTree>> split = split(list);
            Iterator<List<JCTree>> it = split.iterator();
            while (it.hasNext()) {
                List<JCTree> next = it.next();
                Assert.check(true ^ next.isEmpty(), "Arguments list is empty");
                ListBuffer listBuffer = new ListBuffer();
                Iterator<JCTree> it2 = next.iterator();
                while (it2.hasNext()) {
                    JCTree next2 = it2.next();
                    if (!"".equals(next2.type.constValue())) {
                        Type type2 = next2.type;
                        Symtab symtab = this.syms;
                        if (type2 == symtab.botType) {
                            listBuffer.add(this.types.boxedClass(symtab.voidType).type);
                        } else {
                            listBuffer.add(sharpestAccessible(type2));
                        }
                        this.gen.genExpr(next2, next2.type).load();
                    }
                }
                doCall(type, diagnosticPosition, listBuffer.toList());
            }
            if (split.size() > 1) {
                ListBuffer listBuffer2 = new ListBuffer();
                for (int i10 = 0; i10 < split.size(); i10++) {
                    listBuffer2.append(this.syms.stringType);
                }
                doCall(type, diagnosticPosition, listBuffer2.toList());
            }
        }
    }

    public StringConcat(Context context) {
        context.put((Context.Key<Context.Key<StringConcat>>) concatKey, (Context.Key<StringConcat>) this);
        this.gen = Gen.instance(context);
        this.syms = Symtab.instance(context);
        this.types = Types.instance(context);
        this.names = Names.instance(context);
        this.make = TreeMaker.instance(context);
        this.rs = Resolve.instance(context);
        this.sbAppends = new HashMap();
    }

    private List<JCTree> collect(JCTree jCTree, List<JCTree> list) {
        JCTree skipParens = TreeInfo.skipParens(jCTree);
        if (skipParens.hasTag(JCTree.Tag.PLUS) && skipParens.type.constValue() == null) {
            JCTree.JCBinary jCBinary = (JCTree.JCBinary) skipParens;
            Symbol.OperatorSymbol operatorSymbol = jCBinary.operator;
            if (operatorSymbol.kind == Kinds.Kind.MTH && operatorSymbol.opcode == 256) {
                return list.appendList(collect(jCBinary.lhs, list)).appendList(collect(jCBinary.rhs, list));
            }
        }
        return list.append(skipParens);
    }

    public static StringConcat instance(Context context) {
        StringConcat stringConcat = (StringConcat) context.get(concatKey);
        return stringConcat == null ? makeConcat(context) : stringConcat;
    }

    private static StringConcat makeConcat(Context context) {
        Target instance = Target.instance(context);
        String str = Options.instance(context).get("stringConcat");
        if (str == null) {
            str = RecognizerResultsIntent.URI_SCHEME_INLINE;
        }
        if (!instance.hasStringConcatFactory()) {
            if (!RecognizerResultsIntent.URI_SCHEME_INLINE.equals(str)) {
                Assert.error("StringConcatFactory-based string concat is requested on a platform that does not support it.");
            }
            str = RecognizerResultsIntent.URI_SCHEME_INLINE;
        }
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1183997287:
                if (str.equals(RecognizerResultsIntent.URI_SCHEME_INLINE)) {
                    c10 = 0;
                    break;
                }
                break;
            case 3236986:
                if (str.equals("indy")) {
                    c10 = TAG_ARG;
                    break;
                }
                break;
            case 671408335:
                if (str.equals("indyWithConstants")) {
                    c10 = TAG_CONST;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new Inline(context);
            case 1:
                return new IndyPlain(context);
            case 2:
                return new IndyConstants(context);
            default:
                Assert.error("Unknown stringConcat: " + str);
                throw new IllegalStateException("Unknown stringConcat: " + str);
        }
    }

    public List<JCTree> collectAll(JCTree jCTree) {
        return collect(jCTree, List.nil());
    }

    public abstract Items.Item makeConcat(JCTree.JCAssignOp jCAssignOp);

    public abstract Items.Item makeConcat(JCTree.JCBinary jCBinary);

    public Type sharpestAccessible(Type type) {
        if (type.hasTag(TypeTag.ARRAY)) {
            Types types = this.types;
            return types.makeArrayType(sharpestAccessible(types.elemtype(type)));
        }
        while (!this.rs.isAccessible(this.gen.getAttrEnv(), type.asElement())) {
            type = this.types.supertype(type);
        }
        return type;
    }

    public List<JCTree> collectAll(JCTree.JCExpression jCExpression, JCTree.JCExpression jCExpression2) {
        return List.nil().appendList(collectAll(jCExpression)).appendList(collectAll(jCExpression2));
    }

    public static abstract class Indy extends StringConcat {
        public Indy(Context context) {
            super(context);
        }

        public abstract void emit(List<JCTree> list, Type type, JCDiagnostic.DiagnosticPosition diagnosticPosition);

        @Override
        public Items.Item makeConcat(JCTree.JCAssignOp jCAssignOp) {
            List<JCTree> collectAll = collectAll(jCAssignOp.lhs, jCAssignOp.rhs);
            Gen gen = this.gen;
            JCTree.JCExpression jCExpression = jCAssignOp.lhs;
            Items.Item genExpr = gen.genExpr(jCExpression, jCExpression.type);
            emit(collectAll, jCAssignOp.type, jCAssignOp.pos());
            return genExpr;
        }

        public List<List<JCTree>> split(List<JCTree> list) {
            ListBuffer listBuffer = new ListBuffer();
            ListBuffer listBuffer2 = new ListBuffer();
            Iterator<JCTree> it = list.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                JCTree next = it.next();
                int i11 = (next.type.getTag() == TypeTag.LONG || next.type.getTag() == TypeTag.DOUBLE) ? 2 : 1;
                if (i10 + i11 >= 200) {
                    listBuffer.add(listBuffer2.toList());
                    listBuffer2.clear();
                    i10 = 0;
                }
                listBuffer2.add(next);
                i10 += i11;
            }
            if (!listBuffer2.isEmpty()) {
                listBuffer.add(listBuffer2.toList());
            }
            return listBuffer.toList();
        }

        @Override
        public Items.Item makeConcat(JCTree.JCBinary jCBinary) {
            emit(collectAll(jCBinary.lhs, jCBinary.rhs), jCBinary.type, jCBinary.pos());
            return this.gen.getItems().makeStackItem(this.syms.stringType);
        }
    }

    public static class Inline extends StringConcat {
        public Inline(Context context) {
            super(context);
        }

        private void appendString(JCTree jCTree) {
            Type baseType = jCTree.type.baseType();
            if (!baseType.isPrimitive()) {
                Symbol.TypeSymbol typeSymbol = baseType.tsym;
                Symtab symtab = this.syms;
                if (typeSymbol != symtab.stringType.tsym) {
                    baseType = symtab.objectType;
                }
            }
            Assert.checkNull(baseType.constValue());
            Symbol symbol = this.sbAppends.get(baseType);
            if (symbol == null) {
                symbol = this.rs.resolveInternalMethod(jCTree.pos(), this.gen.getAttrEnv(), this.syms.stringBuilderType, this.names.append, List.of(baseType), null);
                this.sbAppends.put(baseType, symbol);
            }
            this.gen.getItems().makeMemberItem(symbol, false).invoke();
        }

        private void builderToString(JCDiagnostic.DiagnosticPosition diagnosticPosition) {
            this.gen.callMethod(diagnosticPosition, this.syms.stringBuilderType, this.names.toString, List.nil(), false);
        }

        private JCDiagnostic.DiagnosticPosition newStringBuilder(JCTree jCTree) {
            JCDiagnostic.DiagnosticPosition pos = jCTree.pos();
            this.gen.getCode().emitop2(187, this.gen.makeRef(pos, this.syms.stringBuilderType));
            this.gen.getCode().emitop0(89);
            this.gen.callMethod(pos, this.syms.stringBuilderType, this.names.init, List.nil(), false);
            return pos;
        }

        @Override
        public Items.Item makeConcat(JCTree.JCAssignOp jCAssignOp) {
            JCDiagnostic.DiagnosticPosition pos = jCAssignOp.pos();
            newStringBuilder(jCAssignOp);
            Gen gen = this.gen;
            JCTree.JCExpression jCExpression = jCAssignOp.lhs;
            Items.Item genExpr = gen.genExpr(jCExpression, jCExpression.type);
            if (genExpr.width() > 0) {
                this.gen.getCode().emitop0(((genExpr.width() - 1) * 3) + 90);
            }
            genExpr.load();
            appendString(jCAssignOp.lhs);
            Iterator<JCTree> it = collectAll(jCAssignOp.rhs).iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                this.gen.genExpr(next, next.type).load();
                appendString(next);
            }
            builderToString(pos);
            return genExpr;
        }

        @Override
        public Items.Item makeConcat(JCTree.JCBinary jCBinary) {
            JCDiagnostic.DiagnosticPosition pos = jCBinary.pos();
            newStringBuilder(jCBinary);
            Iterator<JCTree> it = collectAll(jCBinary).iterator();
            while (it.hasNext()) {
                JCTree next = it.next();
                this.gen.genExpr(next, next.type).load();
                appendString(next);
            }
            builderToString(pos);
            return this.gen.getItems().makeStackItem(this.syms.stringType);
        }
    }
}
