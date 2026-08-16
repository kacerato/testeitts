package org.openjdk.tools.javac.model;

import b3.s;
import java.io.Writer;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import org.openjdk.javax.lang.model.AnnotatedConstruct;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.ModuleElement;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.util.ElementFilter;
import org.openjdk.javax.lang.model.util.Elements;
import org.openjdk.source.util.JavacTask;
import org.openjdk.tools.javac.api.JavacTaskImpl;
import org.openjdk.tools.javac.code.Attribute;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Enter;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.comp.Modules;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.main.JavaCompiler;
import org.openjdk.tools.javac.processing.PrintingProcessor;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.DocCommentTable;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeScanner;
import org.openjdk.tools.javac.util.Constants;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Pair;

public class JavacElements implements Elements {
    private final boolean allowModules;
    private final Set<String> alreadyWarnedDuplicates = new HashSet();
    private final Enter enter;
    private final JavaCompiler javaCompiler;
    private final JavacTaskImpl javacTaskImpl;
    private final Log log;
    private final Modules modules;
    private final Names names;
    private final Resolve resolve;
    private final Symtab syms;
    private final Types types;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$Kinds$Kind;
        static final int[] $SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind;

        static {
            int[] iArr = new int[Kinds.Kind.values().length];
            $SwitchMap$com$sun$tools$javac$code$Kinds$Kind = iArr;
            try {
                iArr[Kinds.Kind.PCK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$Kinds$Kind[Kinds.Kind.MDL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[ModuleElement.DirectiveKind.values().length];
            $SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind = iArr2;
            try {
                iArr2[ModuleElement.DirectiveKind.REQUIRES.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind[ModuleElement.DirectiveKind.EXPORTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind[ModuleElement.DirectiveKind.OPENS.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public class C1TS extends TreeScanner {
        JCTree.JCExpression result = null;
        final Symbol.MethodSymbol val$sym;
        final JCTree val$tree;

        public C1TS(JCTree jCTree, Symbol.MethodSymbol methodSymbol) {
            this.val$tree = jCTree;
            this.val$sym = methodSymbol;
        }

        @Override
        public void scan(JCTree jCTree) {
            if (jCTree == null || this.result != null) {
                return;
            }
            jCTree.accept(this);
        }

        @Override
        public void visitAnnotation(JCTree.JCAnnotation jCAnnotation) {
            if (jCAnnotation == this.val$tree) {
                scan(jCAnnotation.args);
            }
        }

        @Override
        public void visitAssign(JCTree.JCAssign jCAssign) {
            if (jCAssign.lhs.hasTag(JCTree.Tag.IDENT) && ((JCTree.JCIdent) jCAssign.lhs).sym == this.val$sym) {
                this.result = jCAssign.rhs;
            }
        }
    }

    public class C1Vis extends JCTree.Visitor {
        List<JCTree.JCAnnotation> result = null;

        public C1Vis() {
        }

        @Override
        public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
            this.result = jCClassDecl.mods.annotations;
        }

        @Override
        public void visitMethodDef(JCTree.JCMethodDecl jCMethodDecl) {
            this.result = jCMethodDecl.mods.annotations;
        }

        @Override
        public void visitPackageDef(JCTree.JCPackageDecl jCPackageDecl) {
            this.result = jCPackageDecl.annotations;
        }

        @Override
        public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
            this.result = jCTypeParameter.annotations;
        }

        @Override
        public void visitVarDef(JCTree.JCVariableDecl jCVariableDecl) {
            this.result = jCVariableDecl.mods.annotations;
        }
    }

    public class C2Vis implements Attribute.Visitor {
        JCTree result = null;
        final Attribute val$findme;
        final JCTree val$tree;

        public C2Vis(JCTree jCTree, Attribute attribute) {
            this.val$tree = jCTree;
            this.val$findme = attribute;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void visitArray(Attribute.Array array) {
            if (!this.val$tree.hasTag(JCTree.Tag.NEWARRAY)) {
                Attribute[] attributeArr = array.values;
                if (attributeArr.length == 1) {
                    this.result = JavacElements.this.matchAttributeToTree(this.val$findme, attributeArr[0], this.val$tree);
                    return;
                }
                return;
            }
            List list = ((JCTree.JCNewArray) this.val$tree).elems;
            for (Attribute attribute : array.values) {
                JCTree matchAttributeToTree = JavacElements.this.matchAttributeToTree(this.val$findme, attribute, (JCTree) list.head);
                if (matchAttributeToTree != null) {
                    this.result = matchAttributeToTree;
                    return;
                }
                list = list.tail;
            }
        }

        @Override
        public void visitClass(Attribute.Class r12) {
        }

        @Override
        public void visitCompound(Attribute.Compound compound) {
            JCTree matchAttributeToTree;
            Iterator<Pair<Symbol.MethodSymbol, Attribute>> it = compound.values.iterator();
            while (it.hasNext()) {
                Pair<Symbol.MethodSymbol, Attribute> next = it.next();
                JCTree.JCExpression scanForAssign = JavacElements.this.scanForAssign(next.fst, this.val$tree);
                if (scanForAssign != null && (matchAttributeToTree = JavacElements.this.matchAttributeToTree(this.val$findme, next.snd, scanForAssign)) != null) {
                    this.result = matchAttributeToTree;
                    return;
                }
            }
        }

        @Override
        public void visitConstant(Attribute.Constant constant) {
        }

        @Override
        public void visitEnum(Attribute.Enum r12) {
        }

        @Override
        public void visitError(Attribute.Error error) {
        }
    }

    public JavacElements(Context context) {
        context.put((Class<Class>) JavacElements.class, (Class) this);
        this.javaCompiler = JavaCompiler.instance(context);
        this.syms = Symtab.instance(context);
        this.modules = Modules.instance(context);
        this.names = Names.instance(context);
        this.types = Types.instance(context);
        this.enter = Enter.instance(context);
        this.resolve = Resolve.instance(context);
        JavacTask javacTask = (JavacTask) context.get(JavacTask.class);
        this.javacTaskImpl = javacTask instanceof JavacTaskImpl ? (JavacTaskImpl) javacTask : null;
        this.log = Log.instance(context);
        this.allowModules = Source.instance(context).allowModules();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addMembers(Scope.WriteableScope writeableScope, Type type) {
        for (Symbol symbol : type.asElement().members().getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
            Iterator<Symbol> it = writeableScope.getSymbolsByName(symbol.getSimpleName()).iterator();
            while (true) {
                if (it.hasNext()) {
                    Symbol next = it.next();
                    if (next.kind != symbol.kind || (next.flags() & 4096) != 0 || next.getKind() != ElementKind.METHOD || !overrides((ExecutableElement) next, (ExecutableElement) symbol, (TypeElement) type.asElement())) {
                    }
                } else {
                    boolean z10 = symbol.getEnclosingElement() != writeableScope.owner;
                    ElementKind kind = symbol.getKind();
                    boolean z11 = kind == ElementKind.CONSTRUCTOR || kind == ElementKind.INSTANCE_INIT || kind == ElementKind.STATIC_INIT;
                    if (!z10 || (!z11 && symbol.isInheritedIn(writeableScope.owner, this.types))) {
                        writeableScope.enter(symbol);
                    }
                }
            }
        }
    }

    private static <T> T cast(Class<T> cls, Object obj) {
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        throw new IllegalArgumentException(obj.toString());
    }

    private static boolean containsAnnoOfType(List<Attribute.Compound> list, Type type) {
        Iterator<Attribute.Compound> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().type.tsym == type.tsym) {
                return true;
            }
        }
        return false;
    }

    private <S extends Symbol> S doGetElement(ModuleElement moduleElement, String str, CharSequence charSequence, Class<S> cls) {
        String charSequence2 = charSequence.toString();
        if (SourceVersion.isName(charSequence2) || (charSequence2.isEmpty() && cls != Symbol.ClassSymbol.class)) {
            return moduleElement == null ? (S) unboundNameToSymbol(str, charSequence2, cls) : (S) nameToSymbol((Symbol.ModuleSymbol) moduleElement, charSequence2, cls);
        }
        return null;
    }

    private Symbol.PackageSymbol doGetPackageElement(ModuleElement moduleElement, CharSequence charSequence) {
        ensureEntered("getPackageElement");
        return (Symbol.PackageSymbol) doGetElement(moduleElement, "getPackageElement", charSequence, Symbol.PackageSymbol.class);
    }

    private Symbol.ClassSymbol doGetTypeElement(ModuleElement moduleElement, CharSequence charSequence) {
        ensureEntered("getTypeElement");
        return (Symbol.ClassSymbol) doGetElement(moduleElement, "getTypeElement", charSequence, Symbol.ClassSymbol.class);
    }

    private void ensureEntered(String str) {
        JavacTaskImpl javacTaskImpl = this.javacTaskImpl;
        if (javacTaskImpl != null) {
            javacTaskImpl.ensureEntered();
        }
        if (this.javaCompiler.isEnterDone()) {
            return;
        }
        throw new IllegalStateException("Cannot use Elements." + str + " before the TaskEvent.Kind.ENTER finished event.");
    }

    private Env<AttrContext> getEnterEnv(Symbol symbol) {
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$Kinds$Kind[symbol.kind.ordinal()];
        Symbol.TypeSymbol enclClass = i10 != 1 ? i10 != 2 ? symbol.enclClass() : (Symbol.ModuleSymbol) symbol : (Symbol.PackageSymbol) symbol;
        if (enclClass != null) {
            return this.enter.getEnv(enclClass);
        }
        return null;
    }

    private Pair<JCTree, JCTree.JCCompilationUnit> getTreeAndTopLevel(Element element) {
        JCTree declarationFor;
        JCTree.JCCompilationUnit jCCompilationUnit;
        Symbol symbol = (Symbol) cast(Symbol.class, element);
        Env<AttrContext> enterEnv = getEnterEnv(symbol);
        if (enterEnv == null || (declarationFor = TreeInfo.declarationFor(symbol, enterEnv.tree)) == null || (jCCompilationUnit = enterEnv.toplevel) == null) {
            return null;
        }
        return new Pair<>(declarationFor, jCCompilationUnit);
    }

    public static JavacElements instance(Context context) {
        JavacElements javacElements = (JavacElements) context.get(JavacElements.class);
        return javacElements == null ? new JavacElements(context) : javacElements;
    }

    private boolean isInherited(Type type) {
        return type.tsym.attribute(this.syms.inheritedType.tsym) != null;
    }

    public static Symbol.ModuleSymbol lambda$unboundNameToSymbol$0(Symbol symbol) {
        return symbol.packge().modle;
    }

    private JCTree matchAnnoToTree(AnnotationMirror annotationMirror, Element element, JCTree jCTree) {
        Symbol symbol = (Symbol) cast(Symbol.class, element);
        C1Vis c1Vis = new C1Vis();
        jCTree.accept(c1Vis);
        if (c1Vis.result == null) {
            return null;
        }
        return matchAnnoToTree((Attribute.Compound) cast(Attribute.Compound.class, annotationMirror), symbol.getAnnotationMirrors(), c1Vis.result);
    }

    public JCTree matchAttributeToTree(Attribute attribute, Attribute attribute2, JCTree jCTree) {
        if (attribute2 == attribute) {
            return jCTree;
        }
        C2Vis c2Vis = new C2Vis(jCTree, attribute);
        attribute2.accept(c2Vis);
        return c2Vis.result;
    }

    private <S extends Symbol> S nameToSymbol(Symbol.ModuleSymbol moduleSymbol, String str, Class<S> cls) {
        Name fromString = this.names.fromString(str);
        Symbol symbol = cls == Symbol.ClassSymbol.class ? this.syms.getClass(moduleSymbol, fromString) : this.syms.lookupPackage(moduleSymbol, fromString);
        if (symbol == null) {
            try {
                symbol = this.javaCompiler.resolveIdent(moduleSymbol, str);
            } catch (Symbol.CompletionFailure unused) {
                return null;
            }
        }
        symbol.complete();
        if (symbol.kind != Kinds.Kind.ERR && symbol.exists() && cls.isInstance(symbol) && fromString.equals(symbol.getQualifiedName())) {
            return cls.cast(symbol);
        }
        return null;
    }

    public JCTree.JCExpression scanForAssign(Symbol.MethodSymbol methodSymbol, JCTree jCTree) {
        C1TS c1ts = new C1TS(jCTree, methodSymbol);
        jCTree.accept(c1ts);
        return c1ts.result;
    }

    private <S extends Symbol> S unboundNameToSymbol(String str, String str2, Class<S> cls) {
        Symbol.ModuleSymbol defaultModule = this.modules.getDefaultModule();
        Symbol.ModuleSymbol moduleSymbol = this.syms.noModule;
        if (defaultModule == moduleSymbol) {
            return (S) nameToSymbol(moduleSymbol, str2, cls);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Symbol.ModuleSymbol> it = this.modules.allModules().iterator();
        while (it.hasNext()) {
            Symbol nameToSymbol = nameToSymbol(it.next(), str2, cls);
            if (nameToSymbol != null && (!this.allowModules || cls == Symbol.ClassSymbol.class || !nameToSymbol.members().isEmpty())) {
                linkedHashSet.add(nameToSymbol);
            }
        }
        if (linkedHashSet.size() == 1) {
            return (S) linkedHashSet.iterator().next();
        }
        if (linkedHashSet.size() > 1) {
            if (this.alreadyWarnedDuplicates.add(str + s.f32937c + str2)) {
                this.log.note(CompilerProperties.Notes.MultipleElements(str, str2, (String) linkedHashSet.stream().map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        Symbol.ModuleSymbol lambda$unboundNameToSymbol$0;
                        lambda$unboundNameToSymbol$0 = JavacElements.lambda$unboundNameToSymbol$0((Symbol) obj);
                        return lambda$unboundNameToSymbol$0;
                    }
                }).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        String moduleSymbol2;
                        moduleSymbol2 = ((Symbol.ModuleSymbol) obj).toString();
                        return moduleSymbol2;
                    }
                }).collect(Collectors.joining(", "))));
            }
        }
        return null;
    }

    @Override
    public Set<? extends ModuleElement> getAllModuleElements() {
        return this.allowModules ? Collections.unmodifiableSet(this.modules.allModules()) : Collections.emptySet();
    }

    @Override
    public String getConstantExpression(Object obj) {
        return Constants.format(obj);
    }

    @Override
    public String getDocComment(Element element) {
        Pair<JCTree, JCTree.JCCompilationUnit> treeAndTopLevel = getTreeAndTopLevel(element);
        if (treeAndTopLevel == null) {
            return null;
        }
        JCTree jCTree = treeAndTopLevel.fst;
        DocCommentTable docCommentTable = treeAndTopLevel.snd.docComments;
        if (docCommentTable == null) {
            return null;
        }
        return docCommentTable.getCommentText(jCTree);
    }

    @Override
    public Map<Symbol.MethodSymbol, Attribute> getElementValuesWithDefaults(AnnotationMirror annotationMirror) {
        Attribute.Compound compound = (Attribute.Compound) cast(Attribute.Compound.class, annotationMirror);
        DeclaredType annotationType = annotationMirror.getAnnotationType();
        Map<Symbol.MethodSymbol, Attribute> elementValues = compound.getElementValues();
        Iterator<ExecutableElement> it = ElementFilter.methodsIn(annotationType.asElement().getEnclosedElements()).iterator();
        while (it.hasNext()) {
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) it.next();
            Attribute defaultValue = methodSymbol.getDefaultValue();
            if (defaultValue != null && !elementValues.containsKey(methodSymbol)) {
                elementValues.put(methodSymbol, defaultValue);
            }
        }
        return elementValues;
    }

    @Override
    public ModuleElement getModuleOf(Element element) {
        Symbol symbol = (Symbol) cast(Symbol.class, element);
        if (this.modules.getDefaultModule() == this.syms.noModule) {
            return null;
        }
        return symbol.kind == Kinds.Kind.MDL ? (ModuleElement) element : symbol.packge().modle;
    }

    @Override
    public Elements.Origin getOrigin(Element element) {
        if ((((Symbol) cast(Symbol.class, element)).flags() & 68719476736L) != 0) {
            return Elements.Origin.MANDATED;
        }
        return Elements.Origin.EXPLICIT;
    }

    @Override
    public PackageElement getPackageOf(Element element) {
        return ((Symbol) cast(Symbol.class, element)).packge();
    }

    public JCTree getTree(Element element) {
        Pair<JCTree, JCTree.JCCompilationUnit> treeAndTopLevel = getTreeAndTopLevel(element);
        if (treeAndTopLevel != null) {
            return treeAndTopLevel.fst;
        }
        return null;
    }

    @Override
    public boolean hides(Element element, Element element2) {
        Kinds.Kind kind;
        Symbol symbol = (Symbol) cast(Symbol.class, element);
        Symbol symbol2 = (Symbol) cast(Symbol.class, element2);
        if (symbol == symbol2 || (kind = symbol.kind) != symbol2.kind || symbol.name != symbol2.name || (kind == Kinds.Kind.MTH && !(symbol.isStatic() && this.types.isSubSignature(symbol.type, symbol2.type)))) {
            return false;
        }
        Symbol.ClassSymbol enclClass = symbol.owner.enclClass();
        Symbol.ClassSymbol enclClass2 = symbol2.owner.enclClass();
        if (enclClass != null && enclClass2 != null && enclClass.isSubClass(enclClass2, this.types)) {
            return symbol2.isInheritedIn(enclClass, this.types);
        }
        return false;
    }

    @Override
    public boolean isDeprecated(Element element) {
        Symbol symbol = (Symbol) cast(Symbol.class, element);
        symbol.complete();
        return symbol.isDeprecated();
    }

    @Override
    public boolean isFunctionalInterface(TypeElement typeElement) {
        if (typeElement.getKind() != ElementKind.INTERFACE) {
            return false;
        }
        return this.types.isFunctionalInterface((Symbol.TypeSymbol) cast(Symbol.TypeSymbol.class, typeElement));
    }

    @Override
    public boolean overrides(ExecutableElement executableElement, ExecutableElement executableElement2, TypeElement typeElement) {
        Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) cast(Symbol.MethodSymbol.class, executableElement);
        Symbol.MethodSymbol methodSymbol2 = (Symbol.MethodSymbol) cast(Symbol.MethodSymbol.class, executableElement2);
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) cast(Symbol.ClassSymbol.class, typeElement);
        return methodSymbol.name == methodSymbol2.name && methodSymbol != methodSymbol2 && !methodSymbol.isStatic() && methodSymbol2.isMemberOf(classSymbol, this.types) && methodSymbol.overrides(methodSymbol2, classSymbol, this.types, false);
    }

    @Override
    public void printElements(Writer writer, Element... elementArr) {
        for (Element element : elementArr) {
            new PrintingProcessor.PrintingElementVisitor(writer, this).visit(element).flush();
        }
    }

    @Override
    public List<Attribute.Compound> getAllAnnotationMirrors(Element element) {
        Element element2 = (Symbol) cast(Symbol.class, element);
        List<Attribute.Compound> annotationMirrors = element2.getAnnotationMirrors();
        while (element2.getKind() == ElementKind.CLASS) {
            Type superclass = ((Symbol.ClassSymbol) element2).getSuperclass();
            if (!superclass.hasTag(TypeTag.CLASS) || superclass.isErroneous() || (element2 = superclass.tsym) == this.syms.objectType.tsym) {
                break;
            }
            Iterator<Attribute.Compound> it = element2.getAnnotationMirrors().iterator();
            List<Attribute.Compound> list = annotationMirrors;
            while (it.hasNext()) {
                Attribute.Compound next = it.next();
                if (isInherited(next.type) && !containsAnnoOfType(annotationMirrors, next.type)) {
                    list = list.prepend(next);
                }
            }
            annotationMirrors = list;
        }
        return annotationMirrors;
    }

    @Override
    public FilteredMemberList getAllMembers(TypeElement typeElement) {
        Symbol symbol = (Symbol) cast(Symbol.class, typeElement);
        Scope.WriteableScope dupUnshared = symbol.members().dupUnshared();
        Iterator<Type> it = this.types.closure(symbol.asType()).iterator();
        while (it.hasNext()) {
            addMembers(dupUnshared, it.next());
        }
        return new FilteredMemberList(dupUnshared);
    }

    @Override
    public Name getBinaryName(TypeElement typeElement) {
        return ((Symbol.TypeSymbol) cast(Symbol.TypeSymbol.class, typeElement)).flatName();
    }

    @Override
    public Symbol.ModuleSymbol getModuleElement(CharSequence charSequence) {
        ensureEntered("getModuleElement");
        if (this.modules.getDefaultModule() == this.syms.noModule) {
            return null;
        }
        String charSequence2 = charSequence.toString();
        if (charSequence2.equals("")) {
            return this.syms.unnamedModule;
        }
        return this.modules.getObservableModule(this.names.fromString(charSequence2));
    }

    @Override
    public Name getName(CharSequence charSequence) {
        return this.names.fromString(charSequence.toString());
    }

    @Override
    public Symbol.PackageSymbol getPackageElement(CharSequence charSequence) {
        return doGetPackageElement(null, charSequence);
    }

    @Override
    public Symbol.ClassSymbol getTypeElement(CharSequence charSequence) {
        return doGetTypeElement(null, charSequence);
    }

    @Override
    public Symbol.PackageSymbol getPackageElement(ModuleElement moduleElement, CharSequence charSequence) {
        moduleElement.getClass();
        return doGetPackageElement(moduleElement, charSequence);
    }

    @Override
    public Symbol.ClassSymbol getTypeElement(ModuleElement moduleElement, CharSequence charSequence) {
        moduleElement.getClass();
        return doGetTypeElement(moduleElement, charSequence);
    }

    @Override
    public Elements.Origin getOrigin(AnnotatedConstruct annotatedConstruct, AnnotationMirror annotationMirror) {
        if (((Attribute.Compound) cast(Attribute.Compound.class, annotationMirror)).isSynthesized()) {
            return Elements.Origin.MANDATED;
        }
        return Elements.Origin.EXPLICIT;
    }

    public Pair<JCTree, JCTree.JCCompilationUnit> getTreeAndTopLevel(Element element, AnnotationMirror annotationMirror, AnnotationValue annotationValue) {
        Pair<JCTree, JCTree.JCCompilationUnit> treeAndTopLevel;
        JCTree matchAnnoToTree;
        if (element == null || (treeAndTopLevel = getTreeAndTopLevel(element)) == null) {
            return null;
        }
        if (annotationMirror == null || (matchAnnoToTree = matchAnnoToTree(annotationMirror, element, treeAndTopLevel.fst)) == null) {
            return treeAndTopLevel;
        }
        if (annotationValue == null) {
            return new Pair<>(matchAnnoToTree, treeAndTopLevel.snd);
        }
        JCTree matchAttributeToTree = matchAttributeToTree((Attribute) cast(Attribute.class, annotationValue), (Attribute) cast(Attribute.class, annotationMirror), matchAnnoToTree);
        if (matchAttributeToTree == null) {
            return new Pair<>(matchAnnoToTree, treeAndTopLevel.snd);
        }
        return new Pair<>(matchAttributeToTree, treeAndTopLevel.snd);
    }

    private JCTree matchAnnoToTree(Attribute.Compound compound, List<Attribute.Compound> list, List<JCTree.JCAnnotation> list2) {
        JCTree matchAttributeToTree;
        Iterator<Attribute.Compound> it = list.iterator();
        while (it.hasNext()) {
            Attribute.Compound next = it.next();
            Iterator<JCTree.JCAnnotation> it2 = list2.iterator();
            while (it2.hasNext()) {
                JCTree.JCAnnotation next2 = it2.next();
                if (next2.type.tsym == next.type.tsym && (matchAttributeToTree = matchAttributeToTree(compound, next, next2)) != null) {
                    return matchAttributeToTree;
                }
            }
        }
        return null;
    }

    @Override
    public Elements.Origin getOrigin(ModuleElement moduleElement, ModuleElement.Directive directive) {
        int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ModuleElement$DirectiveKind[directive.getKind().ordinal()];
        if (i10 == 1) {
            Directive.RequiresDirective requiresDirective = (Directive.RequiresDirective) cast(Directive.RequiresDirective.class, directive);
            if (requiresDirective.flags.contains(Directive.RequiresFlag.MANDATED)) {
                return Elements.Origin.MANDATED;
            }
            if (requiresDirective.flags.contains(Directive.RequiresFlag.SYNTHETIC)) {
                return Elements.Origin.SYNTHETIC;
            }
            return Elements.Origin.EXPLICIT;
        }
        if (i10 == 2) {
            Directive.ExportsDirective exportsDirective = (Directive.ExportsDirective) cast(Directive.ExportsDirective.class, directive);
            if (exportsDirective.flags.contains(Directive.ExportsFlag.MANDATED)) {
                return Elements.Origin.MANDATED;
            }
            if (exportsDirective.flags.contains(Directive.ExportsFlag.SYNTHETIC)) {
                return Elements.Origin.SYNTHETIC;
            }
            return Elements.Origin.EXPLICIT;
        }
        if (i10 != 3) {
            return Elements.Origin.EXPLICIT;
        }
        Directive.OpensDirective opensDirective = (Directive.OpensDirective) cast(Directive.OpensDirective.class, directive);
        if (opensDirective.flags.contains(Directive.OpensFlag.MANDATED)) {
            return Elements.Origin.MANDATED;
        }
        if (opensDirective.flags.contains(Directive.OpensFlag.SYNTHETIC)) {
            return Elements.Origin.SYNTHETIC;
        }
        return Elements.Origin.EXPLICIT;
    }
}
