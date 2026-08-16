package org.openjdk.tools.javac.comp;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.DeferredLintHandler;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotationPosition;
import org.openjdk.tools.javac.code.TypeMetadata;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.MemberEnter;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Pair;

public class Annotate {
    protected static final Context.Key<Annotate> annotateKey = new Context.Key<>();
    private final boolean allowRepeatedAnnos;
    private final Attr attr;
    private int blockCount;
    private final ConstFold cfolder;
    private final Check chk;
    private final DeferredLintHandler deferredLintHandler;
    private final Enter enter;
    private final Lint lint;
    private final Log log;
    private final TreeMaker make;
    private final Names names;
    private final Resolve resolve;
    private final String sourceName;
    private final Symtab syms;
    private final Attribute theUnfinishedDefaultValue;
    private final TypeEnvs typeEnvs;
    private final Types types;

    private ListBuffer<Runnable> f102979q = new ListBuffer<>();
    private ListBuffer<Runnable> validateQ = new ListBuffer<>();
    private int flushCount = 0;
    ListBuffer<Runnable> typesQ = new ListBuffer<>();
    ListBuffer<Runnable> afterTypesQ = new ListBuffer<>();
    private AnnotationTypeCompleter theSourceCompleter = new AnnotationTypeCompleter() {
        @Override
        public void complete(Symbol.ClassSymbol classSymbol) throws Symbol.CompletionFailure {
            Annotate.this.attributeAnnotationType(Annotate.this.typeEnvs.get(classSymbol));
        }
    };

    public class AnnotationContext<T extends Attribute.Compound> {
        public final Map<Symbol.TypeSymbol, ListBuffer<T>> annotated;
        public final Env<AttrContext> env;
        public final boolean isTypeCompound;
        public final Map<T, JCDiagnostic.DiagnosticPosition> pos;

        public AnnotationContext(Env<AttrContext> env, Map<Symbol.TypeSymbol, ListBuffer<T>> map, Map<T, JCDiagnostic.DiagnosticPosition> map2, boolean z10) {
            Assert.checkNonNull(env);
            Assert.checkNonNull(map);
            Assert.checkNonNull(map2);
            this.env = env;
            this.annotated = map;
            this.pos = map2;
            this.isTypeCompound = z10;
        }
    }

    public interface AnnotationTypeCompleter {
        void complete(Symbol.ClassSymbol classSymbol) throws Symbol.CompletionFailure;
    }

    public static class AnnotationTypeMetadata {
        private static final AnnotationTypeMetadata NOT_AN_ANNOTATION_TYPE = new AnnotationTypeMetadata(null, 0 == true ? 1 : 0) {
            @Override
            public void complete() {
            }

            @Override
            public Set<Symbol.MethodSymbol> getAnnotationElements() {
                return new LinkedHashSet(0);
            }

            @Override
            public Set<Symbol.MethodSymbol> getAnnotationElementsWithDefault() {
                return new LinkedHashSet(0);
            }

            @Override
            public Attribute.Compound getRepeatable() {
                return null;
            }

            @Override
            public Attribute.Compound getTarget() {
                return null;
            }

            @Override
            public boolean isMetadataForAnnotationType() {
                return false;
            }

            @Override
            public String toString() {
                return "Not an annotation type";
            }
        };
        private AnnotationTypeCompleter annotationTypeCompleter;
        final Symbol.ClassSymbol metaDataFor;
        private Attribute.Compound repeatable;
        private Attribute.Compound target;

        public AnnotationTypeMetadata(Symbol.ClassSymbol classSymbol, AnnotationTypeCompleter annotationTypeCompleter) {
            this.metaDataFor = classSymbol;
            this.annotationTypeCompleter = annotationTypeCompleter;
        }

        private void init() {
            while (!this.metaDataFor.isCompleted()) {
                this.metaDataFor.complete();
            }
            AnnotationTypeCompleter annotationTypeCompleter = this.annotationTypeCompleter;
            if (annotationTypeCompleter != null) {
                this.annotationTypeCompleter = null;
                annotationTypeCompleter.complete(this.metaDataFor);
            }
        }

        public static AnnotationTypeMetadata notAnAnnotationType() {
            return NOT_AN_ANNOTATION_TYPE;
        }

        public void complete() {
            init();
        }

        public Set<Symbol.MethodSymbol> getAnnotationElements() {
            init();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Symbol symbol : this.metaDataFor.members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                if (symbol.kind == Kinds.Kind.MTH) {
                    Name name = symbol.name;
                    if (name != name.table.names.clinit && (symbol.flags() & 4096) == 0) {
                        linkedHashSet.add((Symbol.MethodSymbol) symbol);
                    }
                }
            }
            return linkedHashSet;
        }

        public Set<Symbol.MethodSymbol> getAnnotationElementsWithDefault() {
            init();
            Set<Symbol.MethodSymbol> annotationElements = getAnnotationElements();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Symbol.MethodSymbol methodSymbol : annotationElements) {
                if (methodSymbol.defaultValue != null) {
                    linkedHashSet.add(methodSymbol);
                }
            }
            return linkedHashSet;
        }

        public Attribute.Compound getRepeatable() {
            init();
            return this.repeatable;
        }

        public Attribute.Compound getTarget() {
            init();
            return this.target;
        }

        public boolean isMetadataForAnnotationType() {
            return true;
        }

        public void setRepeatable(Attribute.Compound compound) {
            Assert.checkNull(this.repeatable);
            this.repeatable = compound;
        }

        public void setTarget(Attribute.Compound compound) {
            Assert.checkNull(this.target);
            this.target = compound;
        }

        public String toString() {
            return "Annotation type for: " + ((Object) this.metaDataFor);
        }
    }

    public class AnnotationTypeVisitor extends TreeScanner {
        private final Attr attr;
        private final Check check;
        private Env<AttrContext> env;
        private Attribute.Compound repeatable;
        private final Symtab tab;
        private Attribute.Compound target;
        private final TypeEnvs typeEnvs;

        public AnnotationTypeVisitor(Attr attr, Check check, Symtab symtab, TypeEnvs typeEnvs) {
            this.attr = attr;
            this.check = check;
            this.tab = symtab;
            this.typeEnvs = typeEnvs;
        }

        public Attribute.Compound getRepeatable() {
            return this.repeatable;
        }

        public Attribute.Compound getTarget() {
            return this.target;
        }

        public void scanAnnotationType(JCTree.JCClassDecl jCClassDecl) {
            visitClassDef(jCClassDecl);
        }

        @Override
        public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
            JCTree jCTree = jCAnnotation.annotationType;
            Type type = jCTree.type;
            if (type == null) {
                Type attribType = this.attr.attribType(jCTree, this.env);
                JCTree jCTree2 = jCAnnotation.annotationType;
                Type checkType = this.check.checkType(jCTree2.pos(), attribType, this.tab.annotationType);
                jCTree2.type = checkType;
                type = checkType;
            }
            Symtab symtab = this.tab;
            Type type2 = symtab.annotationTargetType;
            if (type == type2) {
                this.target = Annotate.this.attributeAnnotation(jCAnnotation, type2, this.env);
                return;
            }
            Type type3 = symtab.repeatableType;
            if (type == type3) {
                this.repeatable = Annotate.this.attributeAnnotation(jCAnnotation, type3, this.env);
            }
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            Env<AttrContext> env = this.env;
            this.env = this.typeEnvs.get(jCClassDecl.sym);
            try {
                scan(jCClassDecl.mods);
            } finally {
                this.env = env;
            }
        }
    }

    public class TypeAnnotate extends TreeScanner {
        private JCDiagnostic.DiagnosticPosition deferPos;
        private final Env<AttrContext> env;
        private final Symbol sym;

        public TypeAnnotate(Env<AttrContext> env, Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
            this.env = env;
            this.sym = symbol;
            this.deferPos = diagnosticPosition;
        }

        @Override
        public void visitAnnotatedType(JCTree.JCAnnotatedType jCAnnotatedType) {
            Annotate.this.enterTypeAnnotations(jCAnnotatedType.annotations, this.env, this.sym, this.deferPos, false);
            scan(jCAnnotatedType.underlyingType);
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            scan(jCMethodDecl.mods);
            scan(jCMethodDecl.restype);
            scan(jCMethodDecl.typarams);
            scan(jCMethodDecl.recvparam);
            scan(jCMethodDecl.params);
            scan(jCMethodDecl.thrown);
            scan(jCMethodDecl.defaultValue);
        }

        @Override
        public void visitNewArray(JCTree.JCNewArray jCNewArray) {
            Annotate.this.enterTypeAnnotations(jCNewArray.annotations, this.env, this.sym, this.deferPos, false);
            Iterator<List<JCTree.JCAnnotation>> it = jCNewArray.dimAnnotations.iterator();
            while (it.hasNext()) {
                Annotate.this.enterTypeAnnotations(it.next(), this.env, this.sym, this.deferPos, false);
            }
            scan(jCNewArray.elemtype);
            scan(jCNewArray.elems);
        }

        @Override
        public void visitNewClass(JCTree.JCNewClass jCNewClass) {
            scan(jCNewClass.encl);
            scan(jCNewClass.typeargs);
            scan(jCNewClass.clazz);
            scan(jCNewClass.args);
        }

        @Override
        public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
            Annotate.this.enterTypeAnnotations(jCTypeParameter.annotations, this.env, this.sym, this.deferPos, true);
            scan(jCTypeParameter.bounds);
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            JCDiagnostic.DiagnosticPosition diagnosticPosition = this.deferPos;
            this.deferPos = jCVariableDecl.pos();
            try {
                Symbol symbol = this.sym;
                if (symbol != null && symbol.kind == Kinds.Kind.VAR) {
                    scan(jCVariableDecl.mods);
                    scan(jCVariableDecl.vartype);
                }
                scan(jCVariableDecl.init);
                this.deferPos = diagnosticPosition;
            } catch (Throwable th2) {
                this.deferPos = diagnosticPosition;
                throw th2;
            }
        }
    }

    public Annotate(Context context) {
        this.blockCount = 0;
        context.put((Context.Key<Context.Key<Annotate>>) annotateKey, (Context.Key<Annotate>) this);
        this.attr = Attr.instance(context);
        this.chk = Check.instance(context);
        this.cfolder = ConstFold.instance(context);
        this.deferredLintHandler = DeferredLintHandler.instance(context);
        this.enter = Enter.instance(context);
        this.log = Log.instance(context);
        this.lint = Lint.instance(context);
        this.make = TreeMaker.instance(context);
        this.names = Names.instance(context);
        this.resolve = Resolve.instance(context);
        Symtab instance = Symtab.instance(context);
        this.syms = instance;
        this.typeEnvs = TypeEnvs.instance(context);
        this.types = Types.instance(context);
        this.theUnfinishedDefaultValue = new Attribute.Error(instance.errType);
        Source instance2 = Source.instance(context);
        this.allowRepeatedAnnos = instance2.allowRepeatedAnnotations();
        this.sourceName = instance2.name;
        this.blockCount = 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T extends Attribute.Compound> void annotateNow(Symbol symbol, List<JCTree.JCAnnotation> list, Env<AttrContext> env, boolean z10, boolean z11) {
        List list2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap hashMap = new HashMap();
        for (List list3 = list; !list3.isEmpty(); list3 = list3.tail) {
            JCTree.JCAnnotation jCAnnotation = (JCTree.JCAnnotation) list3.head;
            Attribute.Compound attributeTypeAnnotation = z10 ? attributeTypeAnnotation(jCAnnotation, this.syms.annotationType, env) : attributeAnnotation(jCAnnotation, this.syms.annotationType, env);
            Assert.checkNonNull(attributeTypeAnnotation, "Failed to create annotation");
            if (linkedHashMap.containsKey(jCAnnotation.type.tsym)) {
                if (!this.allowRepeatedAnnos) {
                    this.log.error(JCDiagnostic.DiagnosticFlag.SOURCE_LEVEL, jCAnnotation.pos(), "repeatable.annotations.not.supported.in.source", this.sourceName);
                }
                linkedHashMap.put(jCAnnotation.type.tsym, ((ListBuffer) linkedHashMap.get(jCAnnotation.type.tsym)).append(attributeTypeAnnotation));
                hashMap.put(attributeTypeAnnotation, jCAnnotation.pos());
            } else {
                linkedHashMap.put(jCAnnotation.type.tsym, ListBuffer.of(attributeTypeAnnotation));
                hashMap.put(attributeTypeAnnotation, jCAnnotation.pos());
            }
            if (!attributeTypeAnnotation.type.isErroneous() && ((symbol.kind == Kinds.Kind.MDL || symbol.owner.kind != Kinds.Kind.MTH) && this.types.isSameType(attributeTypeAnnotation.type, this.syms.deprecatedType))) {
                symbol.flags_field |= 18014398509613056L;
                Attribute member = attributeTypeAnnotation.member(this.names.forRemoval);
                if (member instanceof Attribute.Constant) {
                    Attribute.Constant constant = (Attribute.Constant) member;
                    if (constant.type == this.syms.booleanType && ((Integer) constant.value).intValue() != 0) {
                        symbol.flags_field |= 36028797018963968L;
                    }
                }
            }
        }
        List nil = List.nil();
        loop1: while (true) {
            list2 = nil;
            for (V v10 : linkedHashMap.values()) {
                if (v10.size() == 1) {
                    nil = list2.prepend(v10.first());
                } else {
                    Attribute.Compound makeContainerAnnotation = makeContainerAnnotation(v10.toList(), new AnnotationContext<>(env, linkedHashMap, hashMap, z10), symbol, z11);
                    if (makeContainerAnnotation != null) {
                        nil = list2.prepend(makeContainerAnnotation);
                    }
                }
            }
            break loop1;
        }
        if (z10) {
            symbol.appendUniqueTypeAttributes(list2.reverse());
            return;
        }
        List<Attribute.Compound> reverse = list2.reverse();
        symbol.resetAnnotations();
        symbol.setDeclarationAttributes(reverse);
    }

    private Pair<Symbol.MethodSymbol, Attribute> attributeAnnotationNameValuePair(JCTree.JCExpression jCExpression, Type type, boolean z10, Env<AttrContext> env, boolean z11) {
        if (!jCExpression.hasTag(JCTree.Tag.ASSIGN)) {
            this.log.error(jCExpression.pos(), "annotation.value.must.be.name.value", new Object[0]);
            Type type2 = this.syms.errType;
            jCExpression.type = type2;
            attributeAnnotationValue(type2, jCExpression, env);
            return null;
        }
        JCTree.JCAssign jCAssign = (JCTree.JCAssign) jCExpression;
        if (!jCAssign.lhs.hasTag(JCTree.Tag.IDENT)) {
            this.log.error(jCExpression.pos(), "annotation.value.must.be.name.value", new Object[0]);
            Type type3 = this.syms.errType;
            jCExpression.type = type3;
            attributeAnnotationValue(type3, jCExpression, env);
            return null;
        }
        JCTree.JCIdent jCIdent = (JCTree.JCIdent) jCAssign.lhs;
        Symbol resolveQualifiedMethod = this.resolve.resolveQualifiedMethod(z11 ? jCAssign.rhs.pos() : jCIdent.pos(), env, type, jCIdent.name, List.nil(), null);
        jCIdent.sym = resolveQualifiedMethod;
        jCIdent.type = resolveQualifiedMethod.type;
        if (resolveQualifiedMethod.owner != type.tsym && !z10) {
            this.log.error(jCIdent.pos(), "no.annotation.member", jCIdent.name, type);
        }
        Type returnType = resolveQualifiedMethod.type.getReturnType();
        Attribute attributeAnnotationValue = attributeAnnotationValue(returnType, jCAssign.rhs, env);
        jCExpression.type = returnType;
        if (resolveQualifiedMethod.type.isErroneous()) {
            return null;
        }
        return new Pair<>((Symbol.MethodSymbol) resolveQualifiedMethod, attributeAnnotationValue);
    }

    public void attributeAnnotationType(Env<AttrContext> env) {
        Assert.check(((JCTree.JCClassDecl) env.tree).sym.isAnnotationType(), "Trying to annotation type complete a non-annotation type");
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) env.tree;
            AnnotationTypeVisitor annotationTypeVisitor = new AnnotationTypeVisitor(this.attr, this.chk, this.syms, this.typeEnvs);
            annotationTypeVisitor.scanAnnotationType(jCClassDecl);
            jCClassDecl.sym.getAnnotationTypeMetadata().setRepeatable(annotationTypeVisitor.repeatable);
            jCClassDecl.sym.getAnnotationTypeMetadata().setTarget(annotationTypeVisitor.target);
        } finally {
            this.log.useSource(useSource);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Attribute attributeAnnotationValue(Type type, JCTree.JCExpression jCExpression, Env<AttrContext> env) {
        try {
            type.tsym.complete();
        } catch (Symbol.CompletionFailure e10) {
            this.log.error(jCExpression.pos(), "cant.resolve", Kinds.kindName(e10.sym), e10.sym);
            type = this.syms.errType;
        }
        if (type.hasTag(TypeTag.ARRAY)) {
            return getAnnotationArrayValue(type, jCExpression, env);
        }
        if (jCExpression.hasTag(JCTree.Tag.NEWARRAY)) {
            if (!type.isErroneous()) {
                this.log.error(jCExpression.pos(), "annotation.value.not.allowable.type", new Object[0]);
            }
            JCTree.JCNewArray jCNewArray = (JCTree.JCNewArray) jCExpression;
            JCTree.JCExpression jCExpression2 = jCNewArray.elemtype;
            if (jCExpression2 != null) {
                this.log.error(jCExpression2.pos(), "new.not.allowed.in.annotation", new Object[0]);
            }
            for (List list = jCNewArray.elems; list.nonEmpty(); list = list.tail) {
                attributeAnnotationValue(this.syms.errType, (JCTree.JCExpression) list.head, env);
            }
            return new Attribute.Error(this.syms.errType);
        }
        if (type.tsym.isAnnotationType()) {
            if (jCExpression.hasTag(JCTree.Tag.ANNOTATION)) {
                return attributeAnnotation((JCTree.JCAnnotation) jCExpression, type, env);
            }
            this.log.error(jCExpression.pos(), "annotation.value.must.be.annotation", new Object[0]);
            type = this.syms.errType;
        }
        if (jCExpression.hasTag(JCTree.Tag.ANNOTATION)) {
            if (!type.isErroneous()) {
                this.log.error(jCExpression.pos(), "annotation.not.valid.for.type", type);
            }
            JCTree.JCAnnotation jCAnnotation = (JCTree.JCAnnotation) jCExpression;
            attributeAnnotation(jCAnnotation, this.syms.errType, env);
            return new Attribute.Error(jCAnnotation.annotationType.type);
        }
        MemberEnter.InitTreeVisitor initTreeVisitor = new MemberEnter.InitTreeVisitor() {
            @Override
            public void visitTypeArray(JCTree.JCArrayTypeTree jCArrayTypeTree) {
            }

            @Override
            public void visitTypeIdent(JCTree.JCPrimitiveTypeTree jCPrimitiveTypeTree) {
            }
        };
        jCExpression.accept(initTreeVisitor);
        if (!initTreeVisitor.result) {
            this.log.error(jCExpression.pos(), CompilerProperties.Errors.ExpressionNotAllowableAsAnnotationValue);
            return new Attribute.Error(this.syms.errType);
        }
        if (type.isPrimitive() || (this.types.isSameType(type, this.syms.stringType) && !type.hasTag(TypeTag.ERROR))) {
            return getAnnotationPrimitiveValue(type, jCExpression, env);
        }
        if (type.tsym == this.syms.classType.tsym) {
            return getAnnotationClassValue(type, jCExpression, env);
        }
        if (type.hasTag(TypeTag.CLASS) && (type.tsym.flags() & 16384) != 0) {
            return getAnnotationEnumValue(type, jCExpression, env);
        }
        if (!type.isErroneous()) {
            this.log.error(jCExpression.pos(), "annotation.value.not.allowable.type", new Object[0]);
        }
        return new Attribute.Error(this.attr.attribExpr(jCExpression, env, type));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v9, types: [A, org.openjdk.tools.javac.tree.JCTree$JCAssign] */
    private List<Pair<Symbol.MethodSymbol, Attribute>> attributeAnnotationValues(JCTree.JCAnnotation jCAnnotation, Type type, Env<AttrContext> env) {
        JCTree jCTree = jCAnnotation.annotationType;
        Type type2 = jCTree.type;
        if (type2 == null) {
            type2 = this.attr.attribType(jCTree, env);
        }
        Type checkType = this.chk.checkType(jCAnnotation.annotationType.pos(), type2, type);
        jCAnnotation.type = checkType;
        boolean isErroneous = checkType.isErroneous();
        boolean z10 = true;
        if (!jCAnnotation.type.tsym.isAnnotationType() && !isErroneous) {
            this.log.error(jCAnnotation.annotationType.pos(), "not.annotation.type", jCAnnotation.type.toString());
            isErroneous = true;
        }
        List list = jCAnnotation.args;
        if (list.length() != 1 || ((JCTree.JCExpression) list.head).hasTag(JCTree.Tag.ASSIGN)) {
            z10 = false;
        } else {
            list.head = this.make.at(((JCTree.JCExpression) list.head).pos).Assign(this.make.Ident(this.names.value), (JCTree.JCExpression) list.head);
        }
        ListBuffer listBuffer = new ListBuffer();
        while (list.nonEmpty()) {
            Pair<Symbol.MethodSymbol, Attribute> attributeAnnotationNameValuePair = attributeAnnotationNameValuePair((JCTree.JCExpression) list.head, jCAnnotation.type, isErroneous, env, z10);
            if (attributeAnnotationNameValuePair != null && !attributeAnnotationNameValuePair.fst.type.isErroneous()) {
                listBuffer.append(attributeAnnotationNameValuePair);
            }
            list = list.tail;
        }
        return listBuffer.toList();
    }

    private void doneFlushing() {
        this.flushCount--;
    }

    private void enterDefaultValue(JCTree.JCExpression jCExpression, Env<AttrContext> env, Symbol.MethodSymbol methodSymbol) {
        methodSymbol.defaultValue = attributeAnnotationValue(methodSymbol.type.getReturnType(), jCExpression, env);
    }

    private Type extractContainingType(Attribute.Compound compound, JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.TypeSymbol typeSymbol) {
        if (compound.values.isEmpty()) {
            this.log.error(diagnosticPosition, "invalid.repeatable.annotation", typeSymbol);
            return null;
        }
        Pair<Symbol.MethodSymbol, Attribute> pair = compound.values.head;
        if (pair.fst.name != this.names.value) {
            this.log.error(diagnosticPosition, "invalid.repeatable.annotation", typeSymbol);
            return null;
        }
        Attribute attribute = pair.snd;
        if (attribute instanceof Attribute.Class) {
            return ((Attribute.Class) attribute).getValue();
        }
        this.log.error(diagnosticPosition, "invalid.repeatable.annotation", typeSymbol);
        return null;
    }

    private Type filterSame(Type type, Type type2) {
        if (type == null || type2 == null || !this.types.isSameType(type, type2)) {
            return type;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Attribute getAnnotationArrayValue(Type type, JCTree.JCExpression jCExpression, Env<AttrContext> env) {
        if (!jCExpression.hasTag(JCTree.Tag.NEWARRAY)) {
            jCExpression = this.make.at(jCExpression.pos).NewArray(null, List.nil(), List.of(jCExpression));
        }
        JCTree.JCNewArray jCNewArray = (JCTree.JCNewArray) jCExpression;
        JCTree.JCExpression jCExpression2 = jCNewArray.elemtype;
        if (jCExpression2 != null) {
            this.log.error(jCExpression2.pos(), "new.not.allowed.in.annotation", new Object[0]);
        }
        ListBuffer listBuffer = new ListBuffer();
        for (List list = jCNewArray.elems; list.nonEmpty(); list = list.tail) {
            listBuffer.append(attributeAnnotationValue(this.types.elemtype(type), (JCTree.JCExpression) list.head, env));
        }
        jCNewArray.type = type;
        return new Attribute.Array(type, (Attribute[]) listBuffer.toArray(new Attribute[listBuffer.length()]));
    }

    private Attribute getAnnotationClassValue(Type type, JCTree.JCExpression jCExpression, Env<AttrContext> env) {
        Type attribExpr = this.attr.attribExpr(jCExpression, env, type);
        if (!attribExpr.isErroneous()) {
            return new Attribute.Class(this.types, ((JCTree.JCFieldAccess) jCExpression).selected.type);
        }
        if (TreeInfo.name(jCExpression) == this.names._class) {
            JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCExpression;
            if (jCFieldAccess.selected.type.isErroneous()) {
                Name flatName = jCFieldAccess.selected.type.tsym.flatName();
                Types types = this.types;
                Symtab symtab = this.syms;
                return new Attribute.UnresolvedClass(type, types.createErrorType(flatName, symtab.unknownSymbol, symtab.classType));
            }
        }
        return new Attribute.Error(attribExpr.getOriginalType());
    }

    private Attribute getAnnotationEnumValue(Type type, JCTree.JCExpression jCExpression, Env<AttrContext> env) {
        Type attribExpr = this.attr.attribExpr(jCExpression, env, type);
        Symbol symbol = TreeInfo.symbol(jCExpression);
        if (symbol != null && !TreeInfo.nonstaticSelect(jCExpression) && symbol.kind == Kinds.Kind.VAR && (symbol.flags() & 16384) != 0) {
            return new Attribute.Enum(type, (Symbol.VarSymbol) symbol);
        }
        this.log.error(jCExpression.pos(), "enum.annotation.must.be.enum.constant", new Object[0]);
        return new Attribute.Error(attribExpr.getOriginalType());
    }

    private Attribute getAnnotationPrimitiveValue(Type type, JCTree.JCExpression jCExpression, Env<AttrContext> env) {
        Type attribExpr = this.attr.attribExpr(jCExpression, env, type);
        if (attribExpr.isErroneous()) {
            return new Attribute.Error(attribExpr.getOriginalType());
        }
        if (attribExpr.constValue() != null) {
            return new Attribute.Constant(type, this.cfolder.coerce(attribExpr, type).constValue());
        }
        this.log.error(jCExpression.pos(), "attribute.value.must.be.constant", new Object[0]);
        return new Attribute.Error(type);
    }

    private Type getContainingType(Attribute.Compound compound, JCDiagnostic.DiagnosticPosition diagnosticPosition, boolean z10) {
        Type type = compound.type;
        Symbol.TypeSymbol typeSymbol = type.tsym;
        Attribute.Compound repeatable = typeSymbol.getAnnotationTypeMetadata().getRepeatable();
        if (repeatable != null) {
            return filterSame(extractContainingType(repeatable, diagnosticPosition, typeSymbol), type);
        }
        if (!z10) {
            return null;
        }
        this.log.error(diagnosticPosition, "duplicate.annotation.missing.container", type, this.syms.repeatableType);
        return null;
    }

    public static Annotate instance(Context context) {
        Annotate annotate = (Annotate) context.get(annotateKey);
        return annotate == null ? new Annotate(context) : annotate;
    }

    private boolean isFlushing() {
        return this.flushCount > 0;
    }

    public void lambda$annotateDefaultValueLater$2(Env env, JCDiagnostic.DiagnosticPosition diagnosticPosition, JCTree.JCExpression jCExpression, Symbol.MethodSymbol methodSymbol) {
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        JCDiagnostic.DiagnosticPosition pos = this.deferredLintHandler.setPos(diagnosticPosition);
        try {
            enterDefaultValue(jCExpression, env, methodSymbol);
        } finally {
            this.deferredLintHandler.setPos(pos);
            this.log.useSource(useSource);
        }
    }

    public void lambda$annotateDefaultValueLater$3(Env env, JCTree.JCExpression jCExpression) {
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            this.chk.validateAnnotationTree(jCExpression);
        } finally {
            this.log.useSource(useSource);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void lambda$annotateLater$0(Symbol symbol, Env env, JCDiagnostic.DiagnosticPosition diagnosticPosition, List list) {
        Assert.check(symbol.kind == Kinds.Kind.PCK || symbol.annotationsPendingCompletion());
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        JCDiagnostic.DiagnosticPosition pos = diagnosticPosition != null ? this.deferredLintHandler.setPos(diagnosticPosition) : this.deferredLintHandler.immediate();
        Lint lint = diagnosticPosition != null ? null : this.chk.setLint(this.lint);
        try {
            if (symbol.hasAnnotations() && list.nonEmpty()) {
                this.log.error(((JCTree.JCAnnotation) list.head).pos, "already.annotated", Kinds.kindName(symbol), symbol);
            }
            Assert.checkNonNull(symbol, "Symbol argument to actualEnterAnnotations is null");
            annotateNow(symbol, list, env, false, false);
            if (lint != null) {
                this.chk.setLint(lint);
            }
            this.deferredLintHandler.setPos(pos);
            this.log.useSource(useSource);
        } catch (Throwable th2) {
            if (lint != null) {
                this.chk.setLint(lint);
            }
            this.deferredLintHandler.setPos(pos);
            this.log.useSource(useSource);
            throw th2;
        }
    }

    public void lambda$annotateLater$1(Env env, List list, Symbol symbol) {
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            this.chk.validateAnnotations(list, symbol);
        } finally {
            this.log.useSource(useSource);
        }
    }

    public void lambda$annotateTypeParameterSecondStage$6(List list) {
        Assert.check(list.size() == fromAnnotations(list).size());
    }

    public void lambda$annotateTypeSecondStage$5(List list, Type type) {
        List<Attribute.TypeCompound> fromAnnotations = fromAnnotations(list);
        Assert.check(list.size() == fromAnnotations.size());
        type.getMetadataOfKind(TypeMetadata.Entry.Kind.ANNOTATIONS).combine(new TypeMetadata.Annotations(fromAnnotations));
    }

    public void lambda$queueScanTreeAndTypeAnnotate$4(JCTree jCTree, Env env, Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        jCTree.accept(new TypeAnnotate(env, symbol, diagnosticPosition));
    }

    private <T extends Attribute.Compound> T makeContainerAnnotation(List<T> list, AnnotationContext<T> annotationContext, Symbol symbol, boolean z10) {
        ListBuffer<T> listBuffer;
        T t10 = (T) processRepeatedAnnotations(list, annotationContext, symbol, z10);
        if (t10 != null && (listBuffer = annotationContext.annotated.get(t10.type.tsym)) != null) {
            this.log.error(annotationContext.pos.get(listBuffer.first()), "invalid.repeatable.annotation.repeated.and.container.present", listBuffer.first().type.tsym);
        }
        return t10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [org.openjdk.tools.javac.comp.Annotate] */
    /* JADX WARN: Type inference failed for: r7v7, types: [org.openjdk.tools.javac.tree.TreeMaker] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v4 */
    private <T extends Attribute.Compound> T processRepeatedAnnotations(List<T> list, AnnotationContext<T> annotationContext, Symbol symbol, boolean z10) {
        T t10 = list.head;
        List nil = List.nil();
        ?? r92 = 1;
        Assert.check((list.isEmpty() || list.tail.isEmpty()) ? false : true);
        List list2 = list;
        int i10 = 0;
        Type type = null;
        Type.ArrayType arrayType = null;
        Symbol.MethodSymbol methodSymbol = null;
        Type type2 = null;
        while (!list2.isEmpty()) {
            i10 += r92 == true ? 1 : 0;
            Assert.check((i10 > r92 || !list2.tail.isEmpty()) ? r92 == true ? 1 : 0 : false);
            Attribute.Compound compound = (Attribute.Compound) list2.head;
            Type type3 = compound.type;
            if (arrayType == null) {
                arrayType = this.types.makeArrayType(type3);
            }
            if (i10 <= r92) {
                r92 = 0;
            }
            Type containingType = getContainingType(compound, annotationContext.pos.get(compound), r92);
            if (containingType != null) {
                Assert.check(type == null || containingType == type);
                methodSymbol = validateContainer(containingType, type3, annotationContext.pos.get(compound));
                if (methodSymbol != null) {
                    nil = nil.prepend(compound);
                }
                type = containingType;
            }
            list2 = list2.tail;
            type2 = type3;
            r92 = 1;
        }
        if (!nil.isEmpty() && type == null) {
            this.log.error(annotationContext.pos.get(list.head), "duplicate.annotation.invalid.repeated", type2);
            return null;
        }
        if (nil.isEmpty()) {
            return null;
        }
        List reverse = nil.reverse();
        JCDiagnostic.DiagnosticPosition diagnosticPosition = annotationContext.pos.get(t10);
        ?? at = this.make.at(diagnosticPosition);
        Pair pair = new Pair(methodSymbol, new Attribute.Array(arrayType, (List<Attribute>) reverse));
        if (annotationContext.isTypeCompound) {
            Attribute.TypeCompound typeCompound = new Attribute.TypeCompound(type, List.of(pair), ((Attribute.TypeCompound) list.head).position);
            JCTree.JCAnnotation TypeAnnotation = at.TypeAnnotation(typeCompound);
            if (!this.chk.validateAnnotationDeferErrors(TypeAnnotation)) {
                this.log.error(TypeAnnotation.pos(), CompilerProperties.Errors.DuplicateAnnotationInvalidRepeated(type2));
            }
            if (!this.chk.isTypeAnnotation(TypeAnnotation, z10)) {
                this.log.error(diagnosticPosition, z10 ? CompilerProperties.Errors.InvalidRepeatableAnnotationNotApplicable(type, symbol) : CompilerProperties.Errors.InvalidRepeatableAnnotationNotApplicableInContext(type));
            }
            typeCompound.setSynthesized(true);
            return typeCompound;
        }
        JCTree.JCAnnotation Annotation = at.Annotation(new Attribute.Compound(type, List.of(pair)));
        if (!this.chk.annotationApplicable(Annotation, symbol)) {
            this.log.error(Annotation.pos(), CompilerProperties.Errors.InvalidRepeatableAnnotationNotApplicable(type, symbol));
        }
        if (!this.chk.validateAnnotationDeferErrors(Annotation)) {
            this.log.error(Annotation.pos(), "duplicate.annotation.invalid.repeated", type2);
        }
        T t11 = (T) attributeAnnotation(Annotation, type, annotationContext.env);
        t11.setSynthesized(true);
        return t11;
    }

    private void startFlushing() {
        this.flushCount++;
    }

    private Symbol.MethodSymbol validateContainer(Type type, Type type2, JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        boolean z10;
        Iterator<Symbol> it = type.tsym.members().getSymbolsByName(this.names.value).iterator();
        boolean z11 = false;
        Symbol.MethodSymbol methodSymbol = null;
        boolean z12 = false;
        int i10 = 0;
        while (true) {
            z10 = true;
            if (!it.hasNext()) {
                break;
            }
            Symbol next = it.next();
            i10++;
            if (i10 == 1 && next.kind == Kinds.Kind.MTH) {
                methodSymbol = (Symbol.MethodSymbol) next;
            } else {
                z12 = true;
            }
        }
        if (z12) {
            this.log.error(diagnosticPosition, "invalid.repeatable.annotation.multiple.values", type, Integer.valueOf(i10));
            return null;
        }
        if (i10 == 0) {
            this.log.error(diagnosticPosition, "invalid.repeatable.annotation.no.value", type);
            return null;
        }
        if (methodSymbol.kind != Kinds.Kind.MTH) {
            this.log.error(diagnosticPosition, "invalid.repeatable.annotation.invalid.value", type);
            z11 = true;
        }
        Type returnType = methodSymbol.type.getReturnType();
        Type.ArrayType makeArrayType = this.types.makeArrayType(type2);
        if (this.types.isArray(returnType) && this.types.isSameType(makeArrayType, returnType)) {
            z10 = z11;
        } else {
            this.log.error(diagnosticPosition, "invalid.repeatable.annotation.value.return", type, returnType, makeArrayType);
        }
        if (z10) {
            return null;
        }
        return methodSymbol;
    }

    public void afterTypes(Runnable runnable) {
        this.afterTypesQ.append(runnable);
    }

    public void annotateDefaultValueLater(final JCTree.JCExpression jCExpression, final Env<AttrContext> env, final Symbol.MethodSymbol methodSymbol, final JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        normal(new Runnable() {
            @Override
            public final void run() {
                Annotate.this.lambda$annotateDefaultValueLater$2(env, diagnosticPosition, jCExpression, methodSymbol);
            }
        });
        validate(new Runnable() {
            @Override
            public final void run() {
                Annotate.this.lambda$annotateDefaultValueLater$3(env, jCExpression);
            }
        });
    }

    public void annotateLater(final List<JCTree.JCAnnotation> list, final Env<AttrContext> env, final Symbol symbol, final JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        if (list.isEmpty()) {
            return;
        }
        symbol.resetAnnotations();
        normal(new Runnable() {
            @Override
            public final void run() {
                Annotate.this.lambda$annotateLater$0(symbol, env, diagnosticPosition, list);
            }
        });
        validate(new Runnable() {
            @Override
            public final void run() {
                Annotate.this.lambda$annotateLater$1(env, list, symbol);
            }
        });
    }

    public void annotateTypeParameterSecondStage(JCTree jCTree, final List<JCTree.JCAnnotation> list) {
        typeAnnotation(new Runnable() {
            @Override
            public final void run() {
                Annotate.this.lambda$annotateTypeParameterSecondStage$6(list);
            }
        });
    }

    public void annotateTypeSecondStage(JCTree jCTree, final List<JCTree.JCAnnotation> list, final Type type) {
        typeAnnotation(new Runnable() {
            @Override
            public final void run() {
                Annotate.this.lambda$annotateTypeSecondStage$5(list, type);
            }
        });
    }

    public AnnotationTypeCompleter annotationTypeSourceCompleter() {
        return this.theSourceCompleter;
    }

    public boolean annotationsBlocked() {
        return this.blockCount > 0;
    }

    public Attribute.Compound attributeAnnotation(JCTree.JCAnnotation jCAnnotation, Type type, Env<AttrContext> env) {
        Attribute.Compound compound = jCAnnotation.attribute;
        if (compound != null && jCAnnotation.type != null) {
            return compound;
        }
        Attribute.Compound compound2 = new Attribute.Compound(jCAnnotation.type, attributeAnnotationValues(jCAnnotation, type, env));
        jCAnnotation.attribute = compound2;
        return compound2;
    }

    public Attribute.TypeCompound attributeTypeAnnotation(JCTree.JCAnnotation jCAnnotation, Type type, Env<AttrContext> env) {
        Attribute.Compound compound = jCAnnotation.attribute;
        if (compound != null && jCAnnotation.type != null && (compound instanceof Attribute.TypeCompound)) {
            return (Attribute.TypeCompound) compound;
        }
        Attribute.TypeCompound typeCompound = new Attribute.TypeCompound(jCAnnotation.type, attributeAnnotationValues(jCAnnotation, type, env), TypeAnnotationPosition.unknown);
        jCAnnotation.attribute = typeCompound;
        return typeCompound;
    }

    public void blockAnnotations() {
        this.blockCount++;
    }

    public void enterDone() {
        unblockAnnotations();
    }

    public void enterTypeAnnotations(List<JCTree.JCAnnotation> list, Env<AttrContext> env, Symbol symbol, JCDiagnostic.DiagnosticPosition diagnosticPosition, boolean z10) {
        Assert.checkNonNull(symbol, "Symbol argument to actualEnterTypeAnnotations is nul/");
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        JCDiagnostic.DiagnosticPosition pos = diagnosticPosition != null ? this.deferredLintHandler.setPos(diagnosticPosition) : null;
        try {
            annotateNow(symbol, list, env, true, z10);
        } finally {
            if (pos != null) {
                this.deferredLintHandler.setPos(pos);
            }
            this.log.useSource(useSource);
        }
    }

    public void flush() {
        if (annotationsBlocked() || isFlushing()) {
            return;
        }
        startFlushing();
        while (this.f102979q.nonEmpty()) {
            try {
                this.f102979q.next().run();
            } catch (Throwable th2) {
                doneFlushing();
                throw th2;
            }
        }
        while (this.typesQ.nonEmpty()) {
            this.typesQ.next().run();
        }
        while (this.afterTypesQ.nonEmpty()) {
            this.afterTypesQ.next().run();
        }
        while (this.validateQ.nonEmpty()) {
            this.validateQ.next().run();
        }
        doneFlushing();
    }

    public List<Attribute.TypeCompound> fromAnnotations(List<JCTree.JCAnnotation> list) {
        if (list.isEmpty()) {
            return List.nil();
        }
        ListBuffer listBuffer = new ListBuffer();
        Iterator<JCTree.JCAnnotation> it = list.iterator();
        while (it.hasNext()) {
            JCTree.JCAnnotation next = it.next();
            Assert.checkNonNull(next.attribute);
            listBuffer.append((Attribute.TypeCompound) next.attribute);
        }
        return listBuffer.toList();
    }

    public void newRound() {
        this.blockCount = 1;
    }

    public void normal(Runnable runnable) {
        this.f102979q.append(runnable);
    }

    public void queueScanTreeAndTypeAnnotate(final JCTree jCTree, final Env<AttrContext> env, final Symbol symbol, final JCDiagnostic.DiagnosticPosition diagnosticPosition) {
        Assert.checkNonNull(symbol);
        normal(new Runnable() {
            @Override
            public final void run() {
                Annotate.this.lambda$queueScanTreeAndTypeAnnotate$4(jCTree, env, symbol, diagnosticPosition);
            }
        });
    }

    public void typeAnnotation(Runnable runnable) {
        this.typesQ.append(runnable);
    }

    public void unblockAnnotations() {
        int i10 = this.blockCount - 1;
        this.blockCount = i10;
        if (i10 == 0) {
            flush();
        }
    }

    public void unblockAnnotationsNoFlush() {
        this.blockCount--;
    }

    public Attribute unfinishedDefaultValue() {
        return this.theUnfinishedDefaultValue;
    }

    public void validate(Runnable runnable) {
        this.validateQ.append(runnable);
    }
}
