package org.openjdk.tools.javac.api;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.BreakIterator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.annotation.processing.ProcessingEnvironment;
import org.openjdk.javax.lang.model.element.AnnotationMirror;
import org.openjdk.javax.lang.model.element.AnnotationValue;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.NestingKind;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.ErrorType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.tools.Diagnostic;
import org.openjdk.javax.tools.FileObject;
import org.openjdk.javax.tools.ForwardingFileObject;
import org.openjdk.javax.tools.JavaCompiler;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.doctree.DocCommentTree;
import org.openjdk.source.doctree.DocTree;
import org.openjdk.source.tree.CatchTree;
import org.openjdk.source.tree.CompilationUnitTree;
import org.openjdk.source.tree.Tree;
import org.openjdk.source.util.DocSourcePositions;
import org.openjdk.source.util.DocTreePath;
import org.openjdk.source.util.DocTreeScanner;
import org.openjdk.source.util.DocTrees;
import org.openjdk.source.util.JavacTask;
import org.openjdk.source.util.TreePath;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Attr;
import org.openjdk.tools.javac.comp.AttrContext;
import org.openjdk.tools.javac.comp.Enter;
import org.openjdk.tools.javac.comp.Env;
import org.openjdk.tools.javac.comp.MemberEnter;
import org.openjdk.tools.javac.comp.Modules;
import org.openjdk.tools.javac.comp.Resolve;
import org.openjdk.tools.javac.file.BaseFileManager;
import org.openjdk.tools.javac.model.JavacElements;
import org.openjdk.tools.javac.parser.DocCommentParser;
import org.openjdk.tools.javac.parser.ParserFactory;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.processing.JavacProcessingEnvironment;
import org.openjdk.tools.javac.tree.DCTree;
import org.openjdk.tools.javac.tree.DocCommentTable;
import org.openjdk.tools.javac.tree.DocTreeMaker;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeCopier;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.util.Abort;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.DiagnosticSource;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Pair;
import org.openjdk.tools.javac.util.Position;

public class JavacTrees extends DocTrees {
    private Attr attr;
    private DocTreeMaker docTreeMaker;
    private JavacElements elements;
    private Enter enter;
    private JavaFileManager fileManager;
    private JavacTaskImpl javacTaskImpl;
    private Log log;
    private MemberEnter memberEnter;
    private Modules modules;
    private Names names;
    private ParserFactory parser;
    private Resolve resolve;
    private Symtab syms;
    private TreeMaker treeMaker;
    private Types types;
    Types.TypeRelation fuzzyMatcher = new Types.TypeRelation() {
        @Override
        public Boolean visitArrayType(Type.ArrayType arrayType, Type type) {
            if (arrayType == type) {
                return Boolean.TRUE;
            }
            if (type.isPartial()) {
                return visit(type, arrayType);
            }
            return Boolean.valueOf(type.hasTag(TypeTag.ARRAY) && visit(arrayType.elemtype, JavacTrees.this.types.elemtype(type)).booleanValue());
        }

        @Override
        public Boolean visitClassType(Type.ClassType classType, Type type) {
            if (classType == type) {
                return Boolean.TRUE;
            }
            if (type.isPartial()) {
                return visit(type, classType);
            }
            return Boolean.valueOf(classType.tsym == type.tsym);
        }

        @Override
        public Boolean visitErrorType(Type.ErrorType errorType, Type type) {
            return Boolean.valueOf(type.hasTag(TypeTag.CLASS) && errorType.tsym.name == ((Type.ClassType) type).tsym.name);
        }

        @Override
        public Boolean visitType(Type type, Type type2) {
            if (type == type2) {
                return Boolean.TRUE;
            }
            if (type2.isPartial()) {
                return visit(type2, type);
            }
            switch (AnonymousClass7.$SwitchMap$com$sun$tools$javac$code$TypeTag[type.getTag().ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                    return Boolean.valueOf(type.hasTag(type2.getTag()));
                default:
                    throw new AssertionError((Object) ("fuzzyMatcher " + ((Object) type.getTag())));
            }
        }
    };
    private BreakIterator breakIterator = null;

    public static class AnonymousClass7 {
        static final int[] $SwitchMap$com$sun$source$doctree$DocTree$Kind;
        static final int[] $SwitchMap$com$sun$source$tree$Tree$Kind;
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;
        static final int[] $SwitchMap$javax$tools$Diagnostic$Kind;

        static {
            int[] iArr = new int[Diagnostic.Kind.values().length];
            $SwitchMap$javax$tools$Diagnostic$Kind = iArr;
            try {
                iArr[Diagnostic.Kind.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$tools$Diagnostic$Kind[Diagnostic.Kind.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$tools$Diagnostic$Kind[Diagnostic.Kind.MANDATORY_WARNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Tree.Kind.values().length];
            $SwitchMap$com$sun$source$tree$Tree$Kind = iArr2;
            try {
                iArr2[Tree.Kind.COMPILATION_UNIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.ANNOTATION_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.CLASS.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.INTERFACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.METHOD.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.VARIABLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sun$source$tree$Tree$Kind[Tree.Kind.BLOCK.ordinal()] = 8;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr3 = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr3;
            try {
                iArr3[TypeTag.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.INT.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.FLOAT.ordinal()] = 6;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.DOUBLE.ordinal()] = 7;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.VOID.ordinal()] = 9;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.BOT.ordinal()] = 10;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.NONE.ordinal()] = 11;
            } catch (NoSuchFieldError unused22) {
            }
            int[] iArr4 = new int[DocTree.Kind.values().length];
            $SwitchMap$com$sun$source$doctree$DocTree$Kind = iArr4;
            try {
                iArr4[DocTree.Kind.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.ERRONEOUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.IDENTIFIER.ordinal()] = 3;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.PARAM.ordinal()] = 4;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.AUTHOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.DEPRECATED.ordinal()] = 6;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.RETURN.ordinal()] = 7;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.SEE.ordinal()] = 8;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.SERIAL.ordinal()] = 9;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.SERIAL_DATA.ordinal()] = 10;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.SERIAL_FIELD.ordinal()] = 11;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.SINCE.ordinal()] = 12;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.THROWS.ordinal()] = 13;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.UNKNOWN_BLOCK_TAG.ordinal()] = 14;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sun$source$doctree$DocTree$Kind[DocTree.Kind.VERSION.ordinal()] = 15;
            } catch (NoSuchFieldError unused37) {
            }
        }
    }

    public static class Copier extends TreeCopier<JCTree> {
        JCTree leafCopy;

        public Copier(TreeMaker treeMaker) {
            super(treeMaker);
            this.leafCopy = null;
        }

        @Override
        public JCTree copy(JCTree jCTree, JCTree jCTree2) {
            return copy2((Copier) jCTree, jCTree2);
        }

        public <T extends JCTree> T copy2(T t10, JCTree jCTree) {
            T t11 = (T) super.copy((Copier) t10, (T) jCTree);
            if (t10 == jCTree) {
                this.leafCopy = t11;
            }
            return t11;
        }
    }

    public static class HtmlFileObject extends ForwardingFileObject<FileObject> implements JavaFileObject {
        public HtmlFileObject(FileObject fileObject) {
            super(fileObject);
        }

        @Override
        public Modifier getAccessLevel() {
            return null;
        }

        @Override
        public JavaFileObject.Kind getKind() {
            return BaseFileManager.getKind(this.fileObject.getName());
        }

        @Override
        public NestingKind getNestingKind() {
            return null;
        }

        @Override
        public boolean isNameCompatible(String str, JavaFileObject.Kind kind) {
            return false;
        }
    }

    public JavacTrees(Context context) {
        context.put((Class<Class>) JavacTrees.class, (Class) this);
        init(context);
    }

    public static JavaFileObject asJavaFileObject(FileObject fileObject) {
        if (!(fileObject instanceof JavaFileObject)) {
            checkHtmlKind(fileObject);
            return new HtmlFileObject(fileObject);
        }
        JavaFileObject javaFileObject = (JavaFileObject) fileObject;
        checkHtmlKind(fileObject, JavaFileObject.Kind.HTML);
        return javaFileObject;
    }

    private Env<AttrContext> attribExprToTree(JCTree.JCExpression jCExpression, Env<AttrContext> env, JCTree jCTree) {
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            return this.attr.attribExprToTree(jCExpression, env, jCTree);
        } finally {
            this.log.useSource(useSource);
        }
    }

    private Env<AttrContext> attribStatToTree(JCTree jCTree, Env<AttrContext> env, JCTree jCTree2) {
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        try {
            return this.attr.attribStatToTree(jCTree, env, jCTree2);
        } finally {
            this.log.useSource(useSource);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0105, code lost:
    
        if (r8.types.isSubtypeUnchecked(r9.enclClass().asType(), r4.enclClass().asType()) != false) goto L55;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Symbol attributeDocReference(TreePath treePath, DCTree.DCReference dCReference) {
        JCTree jCTree;
        Symbol.TypeSymbol typeSymbol;
        Name name;
        List<Type> list;
        Env<AttrContext> attrContext = getAttrContext(treePath);
        if (attrContext == null) {
            return null;
        }
        Log.DeferredDiagnosticHandler deferredDiagnosticHandler = new Log.DeferredDiagnosticHandler(this.log);
        try {
            jCTree = dCReference.qualifierExpression;
        } catch (Abort unused) {
        } catch (Throwable th2) {
            this.log.popDiagnosticHandler(deferredDiagnosticHandler);
            throw th2;
        }
        if (jCTree == null) {
            typeSymbol = attrContext.enclClass.sym;
            name = (Name) dCReference.memberName;
        } else {
            Type attribType = this.attr.attribType(jCTree, attrContext);
            if (attribType.isErroneous()) {
                JCTree.JCCompilationUnit TopLevel = this.treeMaker.TopLevel(List.nil());
                Symbol.ModuleSymbol defaultModule = this.modules.getDefaultModule();
                TopLevel.modle = defaultModule;
                TopLevel.packge = defaultModule.unnamedPackage;
                Symbol attribIdent = this.attr.attribIdent(dCReference.qualifierExpression, TopLevel);
                attribIdent.complete();
                Kinds.Kind kind = attribIdent.kind;
                Kinds.Kind kind2 = Kinds.Kind.PCK;
                if ((kind != kind2 && kind != Kinds.Kind.TYP) || !attribIdent.exists()) {
                    if (dCReference.qualifierExpression.hasTag(JCTree.Tag.IDENT)) {
                        typeSymbol = attrContext.enclClass.sym;
                        name = ((JCTree.JCIdent) dCReference.qualifierExpression).name;
                    }
                    this.log.popDiagnosticHandler(deferredDiagnosticHandler);
                    return null;
                }
                Symbol.TypeSymbol typeSymbol2 = (Symbol.TypeSymbol) attribIdent;
                Name name2 = (Name) dCReference.memberName;
                if (attribIdent.kind != kind2 || name2 == null) {
                    typeSymbol = typeSymbol2;
                    name = name2;
                }
                this.log.popDiagnosticHandler(deferredDiagnosticHandler);
                return null;
            }
            typeSymbol = attribType.tsym;
            name = (Name) dCReference.memberName;
        }
        if (name == null) {
            this.log.popDiagnosticHandler(deferredDiagnosticHandler);
            return typeSymbol;
        }
        if (dCReference.paramTypes == null) {
            list = null;
        } else {
            ListBuffer listBuffer = new ListBuffer();
            for (List list2 = (List) dCReference.paramTypes; list2.nonEmpty(); list2 = list2.tail) {
                listBuffer.add(this.attr.attribType((JCTree) list2.head, attrContext));
            }
            list = listBuffer.toList();
        }
        Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) this.types.skipTypeVars(typeSymbol.type, false).tsym;
        Symbol.MethodSymbol findConstructor = name == classSymbol.name ? findConstructor(classSymbol, list) : findMethod(classSymbol, name, list);
        if (list == null) {
            Symbol.VarSymbol findField = dCReference.paramTypes != null ? null : findField(classSymbol, name);
            if (findField != null) {
                if (findConstructor != null) {
                }
                this.log.popDiagnosticHandler(deferredDiagnosticHandler);
                return findField;
            }
        }
        this.log.popDiagnosticHandler(deferredDiagnosticHandler);
        return findConstructor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Symbol attributeParamIdentifier(TreePath treePath, DCTree.DCParam dCParam) {
        Symbol element = getElement(treePath);
        if (element == null) {
            return null;
        }
        ElementKind kind = element.getKind();
        List nil = List.nil();
        if (kind == ElementKind.METHOD || kind == ElementKind.CONSTRUCTOR) {
            Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) element;
            nil = dCParam.isTypeParameter() ? methodSymbol.getTypeParameters() : methodSymbol.getParameters();
        } else if (kind.isClass() || kind.isInterface()) {
            nil = ((Symbol.ClassSymbol) element).getTypeParameters();
        }
        Iterator<Symbol.TypeVariableSymbol> it = nil.iterator();
        while (it.hasNext()) {
            Symbol.TypeVariableSymbol next = it.next();
            if (next.getSimpleName() == dCParam.getName().getName()) {
                return next;
            }
        }
        return null;
    }

    private static void checkHtmlKind(FileObject fileObject) {
        checkHtmlKind(fileObject, BaseFileManager.getKind(fileObject.getName()));
    }

    private Symbol.VarSymbol findField(Symbol.ClassSymbol classSymbol, Name name) {
        return searchField(classSymbol, name, new HashSet());
    }

    private Symbol.MethodSymbol findMethod(Symbol.ClassSymbol classSymbol, Name name, List<Type> list) {
        return searchMethod(classSymbol, name, list, new HashSet());
    }

    private Env<AttrContext> getAttrContext(TreePath treePath) {
        if (!(treePath.getLeaf() instanceof JCTree)) {
            throw new IllegalArgumentException();
        }
        JavacTaskImpl javacTaskImpl = this.javacTaskImpl;
        if (javacTaskImpl != null) {
            javacTaskImpl.enter(null);
        }
        Copier createCopier = createCopier(this.treeMaker.forToplevel((JCTree.JCCompilationUnit) treePath.getCompilationUnit()));
        List nil = List.nil();
        for (TreePath treePath2 = treePath; treePath2 != null; treePath2 = treePath2.getParentPath()) {
            nil = nil.prepend(treePath2.getLeaf());
        }
        JCTree.JCVariableDecl jCVariableDecl = null;
        Env<AttrContext> env = null;
        JCTree.JCMethodDecl jCMethodDecl = null;
        while (nil.nonEmpty()) {
            Tree tree = (Tree) nil.head;
            switch (AnonymousClass7.$SwitchMap$com$sun$source$tree$Tree$Kind[tree.getKind().ordinal()]) {
                case 1:
                    env = this.enter.getTopLevelEnv((JCTree.JCCompilationUnit) tree);
                    break;
                case 2:
                case 3:
                case 4:
                case 5:
                    env = this.enter.getClassEnv(((JCTree.JCClassDecl) tree).sym);
                    if (env == null) {
                        return null;
                    }
                    break;
                case 6:
                    jCMethodDecl = (JCTree.JCMethodDecl) tree;
                    env = this.memberEnter.getMethodEnv(jCMethodDecl, env);
                    break;
                case 7:
                    jCVariableDecl = (JCTree.JCVariableDecl) tree;
                    break;
                case 8:
                    if (jCMethodDecl == null) {
                        return attribStatToTree((JCTree.JCBlock) createCopier.copy2((Copier) tree, (JCTree) treePath.getLeaf()), env, createCopier.leafCopy);
                    }
                    try {
                        Assert.check(jCMethodDecl.body == tree);
                        JCTree.JCBlock jCBlock = (JCTree.JCBlock) createCopier.copy2((Copier) tree, (JCTree) treePath.getLeaf());
                        jCMethodDecl.body = jCBlock;
                        return attribStatToTree(jCBlock, env, createCopier.leafCopy);
                    } finally {
                        jCMethodDecl.body = (JCTree.JCBlock) tree;
                    }
                default:
                    if (jCVariableDecl != null && jCVariableDecl.getInitializer() == tree) {
                        return attribExprToTree((JCTree.JCExpression) createCopier.copy2((Copier) tree, (JCTree) treePath.getLeaf()), this.memberEnter.getInitEnv(jCVariableDecl, env), createCopier.leafCopy);
                    }
                    break;
            }
            nil = nil.tail;
        }
        return jCVariableDecl != null ? this.memberEnter.getInitEnv(jCVariableDecl, env) : env;
    }

    public DocTree getLastChild(DocTree docTree) {
        final DocTree[] docTreeArr = {null};
        docTree.accept(new DocTreeScanner<Void, Void>() {
            @Override
            public Void scan(DocTree docTree2, Void r32) {
                if (docTree2 == null) {
                    return null;
                }
                docTreeArr[0] = docTree2;
                return null;
            }
        }, null);
        return docTreeArr[0];
    }

    private boolean hasParameterTypes(Symbol.MethodSymbol methodSymbol, List<Type> list) {
        if (list == null) {
            return true;
        }
        if (methodSymbol.params().size() != list.size()) {
            return false;
        }
        List<Type> parameterTypes = this.types.erasureRecursive(methodSymbol.asType()).getParameterTypes();
        return Type.isErroneous(list) ? fuzzyMatch(list, parameterTypes) : this.types.isSameTypes(list, parameterTypes);
    }

    private void init(Context context) {
        this.modules = Modules.instance(context);
        this.attr = Attr.instance(context);
        this.enter = Enter.instance(context);
        this.elements = JavacElements.instance(context);
        this.log = Log.instance(context);
        this.resolve = Resolve.instance(context);
        this.treeMaker = TreeMaker.instance(context);
        this.memberEnter = MemberEnter.instance(context);
        this.names = Names.instance(context);
        this.types = Types.instance(context);
        this.docTreeMaker = DocTreeMaker.instance(context);
        this.parser = ParserFactory.instance(context);
        this.syms = Symtab.instance(context);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        JavacTask javacTask = (JavacTask) context.get(JavacTask.class);
        if (javacTask instanceof JavacTaskImpl) {
            this.javacTaskImpl = (JavacTaskImpl) javacTask;
        }
    }

    public static JavacTrees instance(JavaCompiler.CompilationTask compilationTask) {
        if (compilationTask instanceof BasicJavacTask) {
            return instance(((BasicJavacTask) compilationTask).getContext());
        }
        throw new IllegalArgumentException();
    }

    private TreePath makeTreePath(Symbol.PackageSymbol packageSymbol, final JavaFileObject javaFileObject, final DocCommentTree docCommentTree) {
        JCTree.JCCompilationUnit jCCompilationUnit = new JCTree.JCCompilationUnit(List.nil()) {
            public int getPos() {
                return 0;
            }

            public JavaFileObject getSourcefile() {
                return javaFileObject;
            }

            @Override
            public Position.LineMap getLineMap() {
                try {
                    String charSequence = javaFileObject.getCharContent(true).toString();
                    return Position.makeLineMap(charSequence.toCharArray(), charSequence.length(), true);
                } catch (IOException unused) {
                    return null;
                }
            }
        };
        jCCompilationUnit.docComments = new DocCommentTable() {
            @Override
            public Tokens.Comment getComment(JCTree jCTree) {
                throw new UnsupportedOperationException();
            }

            @Override
            public String getCommentText(JCTree jCTree) {
                throw new UnsupportedOperationException();
            }

            @Override
            public DCTree.DCDocComment getCommentTree(JCTree jCTree) {
                return (DCTree.DCDocComment) docCommentTree;
            }

            @Override
            public boolean hasComment(JCTree jCTree) {
                return false;
            }

            @Override
            public void putComment(JCTree jCTree, Tokens.Comment comment) {
                throw new UnsupportedOperationException();
            }
        };
        jCCompilationUnit.lineMap = jCCompilationUnit.getLineMap();
        jCCompilationUnit.modle = packageSymbol.modle;
        jCCompilationUnit.sourcefile = javaFileObject;
        jCCompilationUnit.namedImportScope = new Scope.NamedImportScope(packageSymbol, jCCompilationUnit.toplevelScope);
        jCCompilationUnit.packge = packageSymbol;
        jCCompilationUnit.starImportScope = new Scope.StarImportScope(packageSymbol);
        jCCompilationUnit.toplevelScope = Scope.WriteableScope.create(packageSymbol);
        return new TreePath(jCCompilationUnit);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Symbol.VarSymbol searchField(Symbol.ClassSymbol classSymbol, Name name, Set<Symbol.ClassSymbol> set) {
        Symbol.VarSymbol searchField;
        Symbol.VarSymbol searchField2;
        Symbol.VarSymbol searchField3;
        if (set.contains(classSymbol)) {
            return null;
        }
        set.add(classSymbol);
        for (Symbol symbol : classSymbol.members().getSymbolsByName(name)) {
            if (symbol.kind == Kinds.Kind.VAR) {
                return (Symbol.VarSymbol) symbol;
            }
        }
        Symbol.ClassSymbol enclClass = classSymbol.owner.enclClass();
        if (enclClass != null && (searchField3 = searchField(enclClass, name, set)) != null) {
            return searchField3;
        }
        Symbol.TypeSymbol typeSymbol = classSymbol.getSuperclass().tsym;
        if (typeSymbol != null && (searchField2 = searchField((Symbol.ClassSymbol) typeSymbol, name, set)) != null) {
            return searchField2;
        }
        for (List interfaces = classSymbol.getInterfaces(); interfaces.nonEmpty(); interfaces = interfaces.tail) {
            Type type = (Type) interfaces.head;
            if (!type.isErroneous() && (searchField = searchField((Symbol.ClassSymbol) type.tsym, name, set)) != null) {
                return searchField;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Symbol.MethodSymbol searchMethod(Symbol.ClassSymbol classSymbol, Name name, List<Type> list, Set<Symbol.ClassSymbol> set) {
        Symbol.MethodSymbol searchMethod;
        Symbol.MethodSymbol searchMethod2;
        Symbol.MethodSymbol searchMethod3;
        if (name == this.names.init || set.contains(classSymbol)) {
            return null;
        }
        set.add(classSymbol);
        if (list == null) {
            Symbol.MethodSymbol methodSymbol = null;
            for (Symbol symbol : classSymbol.members().getSymbolsByName(name)) {
                if (symbol.kind == Kinds.Kind.MTH && symbol.name == name) {
                    methodSymbol = (Symbol.MethodSymbol) symbol;
                }
            }
            if (methodSymbol != null) {
                return methodSymbol;
            }
        } else {
            for (Symbol symbol2 : classSymbol.members().getSymbolsByName(name)) {
                if (symbol2 != null && symbol2.kind == Kinds.Kind.MTH) {
                    Symbol.MethodSymbol methodSymbol2 = (Symbol.MethodSymbol) symbol2;
                    if (hasParameterTypes(methodSymbol2, list)) {
                        return methodSymbol2;
                    }
                }
            }
        }
        Symbol.TypeSymbol typeSymbol = classSymbol.getSuperclass().tsym;
        if (typeSymbol != null && (searchMethod3 = searchMethod((Symbol.ClassSymbol) typeSymbol, name, list, set)) != null) {
            return searchMethod3;
        }
        for (List interfaces = classSymbol.getInterfaces(); interfaces.nonEmpty(); interfaces = interfaces.tail) {
            Type type = (Type) interfaces.head;
            if (!type.isErroneous() && (searchMethod2 = searchMethod((Symbol.ClassSymbol) type.tsym, name, list, set)) != null) {
                return searchMethod2;
            }
        }
        Symbol.ClassSymbol enclClass = classSymbol.owner.enclClass();
        if (enclClass == null || (searchMethod = searchMethod(enclClass, name, list, set)) == null) {
            return null;
        }
        return searchMethod;
    }

    public Copier createCopier(TreeMaker treeMaker) {
        return new Copier(treeMaker);
    }

    public Symbol.MethodSymbol findConstructor(Symbol.ClassSymbol classSymbol, List<Type> list) {
        for (Symbol symbol : classSymbol.members().getSymbolsByName(this.names.init)) {
            if (symbol.kind == Kinds.Kind.MTH) {
                Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) symbol;
                if (hasParameterTypes(methodSymbol, list)) {
                    return methodSymbol;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r3 = r3;
        r4 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean fuzzyMatch(List<Type> list, List<Type> list2) {
        List<Type> list3;
        List<Type> list4;
        while (list4.nonEmpty()) {
            if (!fuzzyMatch(list4.head, list3.head)) {
                return false;
            }
            list4 = list4.tail;
            list3 = list3.tail;
        }
        return true;
    }

    @Override
    public BreakIterator getBreakIterator() {
        return this.breakIterator;
    }

    @Override
    public String getDocComment(TreePath treePath) {
        DocCommentTable docCommentTable;
        CompilationUnitTree compilationUnit = treePath.getCompilationUnit();
        Tree leaf = treePath.getLeaf();
        if ((compilationUnit instanceof JCTree.JCCompilationUnit) && (leaf instanceof JCTree) && (docCommentTable = ((JCTree.JCCompilationUnit) compilationUnit).docComments) != null) {
            return docCommentTable.getCommentText((JCTree) leaf);
        }
        return null;
    }

    @Override
    public DocCommentTree getDocCommentTree(TreePath treePath) {
        DocCommentTable docCommentTable;
        CompilationUnitTree compilationUnit = treePath.getCompilationUnit();
        Tree leaf = treePath.getLeaf();
        if ((compilationUnit instanceof JCTree.JCCompilationUnit) && (leaf instanceof JCTree) && (docCommentTable = ((JCTree.JCCompilationUnit) compilationUnit).docComments) != null) {
            return docCommentTable.getCommentTree((JCTree) leaf);
        }
        return null;
    }

    @Override
    public DocTreePath getDocTreePath(FileObject fileObject, PackageElement packageElement) {
        JavaFileObject asJavaFileObject = asJavaFileObject(fileObject);
        DocCommentTree docCommentTree = getDocCommentTree(asJavaFileObject);
        return new DocTreePath(makeTreePath((Symbol.PackageSymbol) packageElement, asJavaFileObject, docCommentTree), docCommentTree);
    }

    @Override
    public java.util.List<DocTree> getFirstSentence(java.util.List<? extends DocTree> list) {
        return this.docTreeMaker.getFirstSentence(list);
    }

    @Override
    public TypeMirror getLub(CatchTree catchTree) {
        JCTree.JCVariableDecl jCVariableDecl = ((JCTree.JCCatch) catchTree).param;
        Type type = jCVariableDecl.type;
        return (type == null || type.getKind() != TypeKind.UNION) ? jCVariableDecl.type : ((Type.UnionClassType) jCVariableDecl.type).getLub();
    }

    @Override
    public TypeMirror getOriginalType(ErrorType errorType) {
        return errorType instanceof Type.ErrorType ? ((Type.ErrorType) errorType).getOriginalType() : Type.noType;
    }

    @Override
    public TreePath getPath(CompilationUnitTree compilationUnitTree, Tree tree) {
        return TreePath.getPath(compilationUnitTree, tree);
    }

    @Override
    public TypeMirror getTypeMirror(TreePath treePath) {
        Type type = ((JCTree) treePath.getLeaf()).type;
        if (type == null) {
            return null;
        }
        return type.stripMetadataIfNeeded();
    }

    @Override
    public boolean isAccessible(org.openjdk.source.tree.Scope scope, TypeElement typeElement) {
        if (!(scope instanceof JavacScope) || !(typeElement instanceof Symbol.ClassSymbol)) {
            return false;
        }
        return this.resolve.isAccessible(((JavacScope) scope).env, (Symbol.TypeSymbol) typeElement, true);
    }

    @Override
    public void printMessage(Diagnostic.Kind kind, CharSequence charSequence, Tree tree, CompilationUnitTree compilationUnitTree) {
        printMessage(kind, charSequence, ((JCTree) tree).pos(), compilationUnitTree);
    }

    @Override
    public void setBreakIterator(BreakIterator breakIterator) {
        this.breakIterator = breakIterator;
    }

    public void updateContext(Context context) {
        init(context);
    }

    private static void checkHtmlKind(FileObject fileObject, JavaFileObject.Kind kind) {
        if (kind == JavaFileObject.Kind.HTML) {
            return;
        }
        throw new IllegalArgumentException("HTML file expected:" + fileObject.getName());
    }

    @Override
    public DocTreeMaker getDocTreeFactory() {
        return this.docTreeMaker;
    }

    @Override
    public Symbol getElement(TreePath treePath) {
        JCTree.JCClassDecl jCClassDecl;
        Symbol.ClassSymbol classSymbol;
        JCTree jCTree = (JCTree) treePath.getLeaf();
        Symbol symbolFor = TreeInfo.symbolFor(jCTree);
        if (symbolFor != null) {
            return symbolFor;
        }
        while (treePath != null) {
            JCTree jCTree2 = (JCTree) treePath.getLeaf();
            if (jCTree2.hasTag(JCTree.Tag.CLASSDEF) && (classSymbol = (jCClassDecl = (JCTree.JCClassDecl) jCTree2).sym) != null) {
                if ((classSymbol.flags_field & TagBits.HasUnresolvedMemberTypes) == 0) {
                    return symbolFor;
                }
                this.attr.attribClass(jCClassDecl.pos(), jCClassDecl.sym);
                return TreeInfo.symbolFor(jCTree);
            }
            treePath = treePath.getParentPath();
        }
        return symbolFor;
    }

    @Override
    public TreePath getPath(Element element) {
        return getPath(element, null, null);
    }

    @Override
    public JavacScope getScope(TreePath treePath) {
        return JavacScope.create(getAttrContext(treePath));
    }

    @Override
    public DocSourcePositions getSourcePositions() {
        return new DocSourcePositions() {
            @Override
            public long getEndPosition(CompilationUnitTree compilationUnitTree, Tree tree) {
                return TreeInfo.getEndPos((JCTree) tree, ((JCTree.JCCompilationUnit) compilationUnitTree).endPositions);
            }

            @Override
            public long getStartPosition(CompilationUnitTree compilationUnitTree, Tree tree) {
                return TreeInfo.getStartPos((JCTree) tree);
            }

            @Override
            public long getStartPosition(CompilationUnitTree compilationUnitTree, DocCommentTree docCommentTree, DocTree docTree) {
                return ((DCTree) docTree).getSourcePosition((DCTree.DCDocComment) docCommentTree);
            }

            @Override
            public long getEndPosition(CompilationUnitTree compilationUnitTree, DocCommentTree docCommentTree, DocTree docTree) {
                int endPos;
                DCTree.DCDocComment dCDocComment = (DCTree.DCDocComment) docCommentTree;
                if ((docTree instanceof DCTree.DCEndPosTree) && (endPos = ((DCTree.DCEndPosTree) docTree).getEndPos(dCDocComment)) != -1) {
                    return endPos;
                }
                switch (AnonymousClass7.$SwitchMap$com$sun$source$doctree$DocTree$Kind[docTree.getKind().ordinal()]) {
                    case 1:
                        DCTree.DCText dCText = (DCTree.DCText) docTree;
                        return dCDocComment.comment.getSourcePos(dCText.pos + dCText.text.length());
                    case 2:
                        DCTree.DCErroneous dCErroneous = (DCTree.DCErroneous) docTree;
                        return dCDocComment.comment.getSourcePos(dCErroneous.pos + dCErroneous.body.length());
                    case 3:
                        return dCDocComment.comment.getSourcePos(r8.pos + (((DCTree.DCIdentifier) docTree).name != JavacTrees.this.names.error ? r8.name.length() : 0));
                    case 4:
                        DCTree.DCParam dCParam = (DCTree.DCParam) docTree;
                        if (dCParam.isTypeParameter && dCParam.getDescription().isEmpty()) {
                            r3 = 1;
                            break;
                        }
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    default:
                        DocTree lastChild = JavacTrees.this.getLastChild(docTree);
                        if (lastChild != null) {
                            return getEndPosition(compilationUnitTree, docCommentTree, lastChild);
                        }
                        return -1L;
                }
                DocTree lastChild2 = JavacTrees.this.getLastChild(docTree);
                if (lastChild2 != null) {
                    return getEndPosition(compilationUnitTree, docCommentTree, lastChild2) + r3;
                }
                DCTree.DCBlockTag dCBlockTag = (DCTree.DCBlockTag) docTree;
                return dCDocComment.comment.getSourcePos(dCBlockTag.pos + dCBlockTag.getTagName().length() + 1);
            }
        };
    }

    @Override
    public void printMessage(Diagnostic.Kind kind, CharSequence charSequence, DocTree docTree, DocCommentTree docCommentTree, CompilationUnitTree compilationUnitTree) {
        printMessage(kind, charSequence, ((DCTree) docTree).pos((DCTree.DCDocComment) docCommentTree), compilationUnitTree);
    }

    private void printMessage(Diagnostic.Kind kind, CharSequence charSequence, JCDiagnostic.DiagnosticPosition diagnosticPosition, CompilationUnitTree compilationUnitTree) {
        JavaFileObject useSource;
        JavaFileObject sourceFile = compilationUnitTree.getSourceFile();
        if (sourceFile == null) {
            diagnosticPosition = null;
            useSource = null;
        } else {
            useSource = this.log.useSource(sourceFile);
        }
        try {
            int i10 = AnonymousClass7.$SwitchMap$javax$tools$Diagnostic$Kind[kind.ordinal()];
            if (i10 == 1) {
                this.log.error(JCDiagnostic.DiagnosticFlag.MULTIPLE, diagnosticPosition, "proc.messager", charSequence.toString());
            } else if (i10 == 2) {
                this.log.warning(diagnosticPosition, "proc.messager", charSequence.toString());
            } else if (i10 != 3) {
                this.log.note(diagnosticPosition, "proc.messager", charSequence.toString());
            } else {
                this.log.mandatoryWarning(diagnosticPosition, "proc.messager", charSequence.toString());
            }
            if (useSource != null) {
                this.log.useSource(useSource);
            }
        } catch (Throwable th2) {
            if (useSource != null) {
                this.log.useSource(useSource);
            }
            throw th2;
        }
    }

    @Override
    public TreePath getPath(Element element, AnnotationMirror annotationMirror) {
        return getPath(element, annotationMirror, null);
    }

    public static JavacTrees instance(ProcessingEnvironment processingEnvironment) {
        if (processingEnvironment instanceof JavacProcessingEnvironment) {
            return instance(((JavacProcessingEnvironment) processingEnvironment).getContext());
        }
        throw new IllegalArgumentException();
    }

    @Override
    public TreePath getPath(Element element, AnnotationMirror annotationMirror, AnnotationValue annotationValue) {
        Pair<JCTree, JCTree.JCCompilationUnit> treeAndTopLevel = this.elements.getTreeAndTopLevel(element, annotationMirror, annotationValue);
        if (treeAndTopLevel == null) {
            return null;
        }
        return TreePath.getPath(treeAndTopLevel.snd, treeAndTopLevel.fst);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean isAccessible(org.openjdk.source.tree.Scope scope, Element element, DeclaredType declaredType) {
        if (!(scope instanceof JavacScope) || !(element instanceof Symbol) || !(declaredType instanceof Type)) {
            return false;
        }
        return this.resolve.isAccessible(((JavacScope) scope).env, (Type) declaredType, (Symbol) element, true);
    }

    public boolean fuzzyMatch(Type type, Type type2) {
        return this.fuzzyMatcher.visit(type, type2) == Boolean.TRUE;
    }

    @Override
    public JCTree.JCClassDecl getTree(TypeElement typeElement) {
        return (JCTree.JCClassDecl) getTree((Element) typeElement);
    }

    public static JavacTrees instance(Context context) {
        JavacTrees javacTrees = (JavacTrees) context.get(JavacTrees.class);
        return javacTrees == null ? new JavacTrees(context) : javacTrees;
    }

    @Override
    public DocCommentTree getDocCommentTree(Element element) {
        TreePath path = getPath(element);
        if (path == null) {
            return null;
        }
        return getDocCommentTree(path);
    }

    @Override
    public JCTree.JCMethodDecl getTree(ExecutableElement executableElement) {
        return (JCTree.JCMethodDecl) getTree((Element) executableElement);
    }

    @Override
    public JCTree getTree(Element element) {
        return getTree(element, (AnnotationMirror) null);
    }

    @Override
    public DocCommentTree getDocCommentTree(Element element, String str) throws IOException {
        FileObject fileForInput = this.fileManager.getFileForInput(StandardLocation.SOURCE_PATH, this.elements.getPackageOf(element).getQualifiedName().toString(), str);
        if (fileForInput != null) {
            return getDocCommentTree(fileForInput);
        }
        throw new FileNotFoundException(str);
    }

    @Override
    public JCTree getTree(Element element, AnnotationMirror annotationMirror) {
        return getTree(element, annotationMirror, (AnnotationValue) null);
    }

    @Override
    public JCTree getTree(Element element, AnnotationMirror annotationMirror, AnnotationValue annotationValue) {
        Pair<JCTree, JCTree.JCCompilationUnit> treeAndTopLevel = this.elements.getTreeAndTopLevel(element, annotationMirror, annotationValue);
        if (treeAndTopLevel == null) {
            return null;
        }
        return treeAndTopLevel.fst;
    }

    @Override
    public Element getElement(DocTreePath docTreePath) {
        DocTree leaf = docTreePath.getLeaf();
        if (leaf instanceof DCTree.DCReference) {
            return attributeDocReference(docTreePath.getTreePath(), (DCTree.DCReference) leaf);
        }
        if ((leaf instanceof DCTree.DCIdentifier) && (docTreePath.getParentPath().getLeaf() instanceof DCTree.DCParam)) {
            return attributeParamIdentifier(docTreePath.getTreePath(), (DCTree.DCParam) docTreePath.getParentPath().getLeaf());
        }
        return null;
    }

    @Override
    public DocCommentTree getDocCommentTree(final FileObject fileObject) {
        return new DocCommentParser(this.parser, new DiagnosticSource(asJavaFileObject(fileObject), this.log), new Tokens.Comment() {
            int offset = 0;

            @Override
            public int getSourcePos(int i10) {
                return this.offset + i10;
            }

            @Override
            public Tokens.Comment.CommentStyle getStyle() {
                throw new UnsupportedOperationException();
            }

            @Override
            public String getText() {
                try {
                    Matcher matcher = Pattern.compile("(?is).*?<body\\b[^>]*>(.*)</body\\b.*").matcher(fileObject.getCharContent(true));
                    if (!matcher.matches()) {
                        return "";
                    }
                    this.offset = matcher.end(1);
                    return matcher.group(1);
                } catch (IOException unused) {
                    return "";
                }
            }

            @Override
            public boolean isDeprecated() {
                throw new UnsupportedOperationException();
            }
        }).parse();
    }
}
