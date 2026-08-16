package org.openjdk.tools.javac.comp;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.DeferredLintHandler;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeAnnotations;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Annotate;
import org.openjdk.tools.javac.comp.TypeEnter;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Dependencies;
import org.openjdk.tools.javac.util.FatalError;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class TypeEnter implements Symbol.Completer {
    static final boolean checkClash = true;
    protected static final Context.Key<TypeEnter> typeEnterKey = new Context.Key<>();
    boolean allowDeprecationOnImport;
    boolean allowTypeAnnos;
    private final Annotate annotate;
    private final Attr attr;
    private final Check chk;
    private final DeferredLintHandler deferredLintHandler;
    private final Dependencies dependencies;
    private final JCDiagnostic.Factory diags;
    private final Enter enter;
    private final Lint lint;
    private final Log log;
    private final TreeMaker make;
    private final MemberEnter memberEnter;
    private final Names names;
    private final Symtab syms;
    private final Todo todo;
    private Phase topLevelPhase;
    private final TypeAnnotations typeAnnotations;
    private final TypeEnvs typeEnvs;
    private final Types types;
    boolean completionEnabled = true;
    private final ImportsPhase completeClass = new ImportsPhase();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag;

        static {
            int[] iArr = new int[JCTree.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$tree$JCTree$Tag = iArr;
            try {
                iArr[JCTree.Tag.TYPEAPPLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public abstract class AbstractHeaderPhase extends Phase {
        public AbstractHeaderPhase(Dependencies.CompletionCause completionCause, Phase phase) {
            super(completionCause, phase);
        }

        public void attribSuperTypes(Env<AttrContext> env, Env<AttrContext> env2) {
            Type attribBase;
            JCTree.JCExpression jCExpression;
            JCTree.JCClassDecl jCClassDecl = env.enclClass;
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            Type.ClassType classType = (Type.ClassType) classSymbol.type;
            JCTree.JCExpression jCExpression2 = jCClassDecl.extending;
            ListBuffer listBuffer = null;
            if (jCExpression2 != null) {
                jCExpression = clearTypeParams(jCExpression2);
                attribBase = TypeEnter.this.attr.attribBase(jCExpression, env2, true, false, true);
            } else {
                attribBase = (jCClassDecl.mods.flags & 16384) != 0 ? TypeEnter.this.attr.attribBase(enumBase(jCClassDecl.pos, classSymbol), env2, true, false, false) : classSymbol.fullname == TypeEnter.this.names.java_lang_Object ? Type.noType : TypeEnter.this.syms.objectType;
                jCExpression = null;
            }
            classType.supertype_field = modelMissingTypes(env2, attribBase, jCExpression, false);
            ListBuffer listBuffer2 = new ListBuffer();
            Iterator<JCTree.JCExpression> it = jCClassDecl.implementing.iterator();
            while (it.hasNext()) {
                JCTree.JCExpression clearTypeParams = clearTypeParams(it.next());
                Type attribBase2 = TypeEnter.this.attr.attribBase(clearTypeParams, env2, false, true, true);
                if (attribBase2.hasTag(TypeTag.CLASS)) {
                    listBuffer2.append(attribBase2);
                    if (listBuffer != null) {
                        listBuffer.append(attribBase2);
                    }
                } else {
                    if (listBuffer == null) {
                        listBuffer = new ListBuffer().appendList(listBuffer2);
                    }
                    listBuffer.append(modelMissingTypes(env2, attribBase2, clearTypeParams, true));
                }
            }
            if ((classSymbol.flags_field & 8192) != 0) {
                List<Type> of2 = List.of(TypeEnter.this.syms.annotationType);
                classType.interfaces_field = of2;
                classType.all_interfaces_field = of2;
            } else {
                List<Type> list = listBuffer2.toList();
                classType.interfaces_field = list;
                if (listBuffer != null) {
                    list = listBuffer.toList();
                }
                classType.all_interfaces_field = list;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Env<AttrContext> baseEnv(JCTree.JCClassDecl jCClassDecl, Env<AttrContext> env) {
            Scope.WriteableScope create = Scope.WriteableScope.create(jCClassDecl.sym);
            for (Symbol symbol : env.outer.info.scope.getSymbols(Scope.LookupKind.NON_RECURSIVE)) {
                if (symbol.isLocal()) {
                    create.enter(symbol);
                }
            }
            List list = jCClassDecl.typarams;
            if (list != null) {
                while (list.nonEmpty()) {
                    create.enter(((JCTree.JCTypeParameter) list.head).type.tsym);
                    list = list.tail;
                }
            }
            Env env2 = env.outer;
            Env<AttrContext> dup = env2.dup(jCClassDecl, ((AttrContext) env2.info).dup(create));
            dup.baseClause = true;
            dup.outer = env2;
            dup.info.isSelfCall = false;
            return dup;
        }

        public JCTree.JCExpression clearTypeParams(JCTree.JCExpression jCExpression) {
            return jCExpression;
        }

        public JCTree.JCExpression enumBase(int i10, Symbol.ClassSymbol classSymbol) {
            return TypeEnter.this.make.at(i10).TypeApply(TypeEnter.this.make.QualIdent(TypeEnter.this.syms.enumSym), List.of(TypeEnter.this.make.Type(classSymbol.type)));
        }

        public Type modelMissingTypes(final Env<AttrContext> env, Type type, final JCTree.JCExpression jCExpression, final boolean z10) {
            return !type.hasTag(TypeTag.ERROR) ? type : new Type.ErrorType(type.getOriginalType(), type.tsym) {
                private Type modelType;

                @Override
                public Type getModelType() {
                    if (this.modelType == null) {
                        this.modelType = new Synthesizer(env.toplevel.modle, getOriginalType(), z10).visit(jCExpression);
                    }
                    return this.modelType;
                }
            };
        }

        public class Synthesizer extends JCTree.Visitor {
            boolean interfaceExpected;
            Symbol.ModuleSymbol msym;
            Type originalType;
            Type result;
            List<Symbol.ClassSymbol> synthesizedSymbols = List.nil();

            public Synthesizer(Symbol.ModuleSymbol moduleSymbol, Type type, boolean z10) {
                this.msym = moduleSymbol;
                this.originalType = type;
                this.interfaceExpected = z10;
            }

            public Symbol.ClassSymbol synthesizeClass(Name name, Symbol symbol) {
                Symbol.ClassSymbol classSymbol = new Symbol.ClassSymbol(this.interfaceExpected ? 512 : 0, name, symbol);
                classSymbol.members_field = new Scope.ErrorScope(classSymbol);
                classSymbol.type = new Type.ErrorType(this.originalType, classSymbol) {
                    @Override
                    public List<Type> getTypeArguments() {
                        return this.typarams_field;
                    }
                };
                this.synthesizedSymbols = this.synthesizedSymbols.prepend(classSymbol);
                return classSymbol;
            }

            public void synthesizeTyparams(Symbol.ClassSymbol classSymbol, int i10) {
                Type.ClassType classType = (Type.ClassType) classSymbol.type;
                Assert.check(classType.typarams_field.isEmpty());
                if (i10 == 1) {
                    classType.typarams_field = classType.typarams_field.prepend(new Type.TypeVar(TypeEnter.this.names.fromString(ExifInterface.GPS_DIRECTION_TRUE), classSymbol, TypeEnter.this.syms.botType));
                    return;
                }
                while (i10 > 0) {
                    classType.typarams_field = classType.typarams_field.prepend(new Type.TypeVar(TypeEnter.this.names.fromString(ExifInterface.GPS_DIRECTION_TRUE + i10), classSymbol, TypeEnter.this.syms.botType));
                    i10 += -1;
                }
            }

            public Type visit(JCTree jCTree) {
                jCTree.accept(this);
                return this.result;
            }

            @Override
            public void visitIdent(JCTree.JCIdent jCIdent) {
                if (jCIdent.type.hasTag(TypeTag.ERROR)) {
                    this.result = synthesizeClass(jCIdent.name, this.msym.unnamedPackage).type;
                } else {
                    this.result = jCIdent.type;
                }
            }

            @Override
            public void visitSelect(JCTree.JCFieldAccess jCFieldAccess) {
                if (!jCFieldAccess.type.hasTag(TypeTag.ERROR)) {
                    this.result = jCFieldAccess.type;
                    return;
                }
                boolean z10 = this.interfaceExpected;
                try {
                    this.interfaceExpected = false;
                    Type visit = visit(jCFieldAccess.selected);
                    this.interfaceExpected = z10;
                    this.result = synthesizeClass(jCFieldAccess.name, visit.tsym).type;
                } catch (Throwable th2) {
                    this.interfaceExpected = z10;
                    throw th2;
                }
            }

            @Override
            public void visitTree(JCTree jCTree) {
                this.result = TypeEnter.this.syms.errType;
            }

            @Override
            public void visitTypeApply(JCTree.JCTypeApply jCTypeApply) {
                if (!jCTypeApply.type.hasTag(TypeTag.ERROR)) {
                    this.result = jCTypeApply.type;
                    return;
                }
                Type.ClassType classType = (Type.ClassType) visit(jCTypeApply.clazz);
                if (this.synthesizedSymbols.contains(classType.tsym)) {
                    synthesizeTyparams((Symbol.ClassSymbol) classType.tsym, jCTypeApply.arguments.size());
                }
                final List<Type> visit = visit(jCTypeApply.arguments);
                this.result = new Type.ErrorType(jCTypeApply.type, classType.tsym) {
                    @Override
                    public List<Type> getTypeArguments() {
                        return visit;
                    }
                };
            }

            public List<Type> visit(List<? extends JCTree> list) {
                ListBuffer listBuffer = new ListBuffer();
                Iterator<? extends JCTree> it = list.iterator();
                while (it.hasNext()) {
                    listBuffer.append(visit(it.next()));
                }
                return listBuffer.toList();
            }
        }
    }

    public final class HeaderPhase extends AbstractHeaderPhase {
        public HeaderPhase() {
            super(Dependencies.CompletionCause.HEADER_PHASE, new MembersPhase());
        }

        @Override
        public void runPhase(Env<AttrContext> env) {
            JCTree.JCClassDecl jCClassDecl = env.enclClass;
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            Env<AttrContext> baseEnv = baseEnv(jCClassDecl, env);
            if (jCClassDecl.extending != null) {
                TypeEnter.this.annotate.queueScanTreeAndTypeAnnotate(jCClassDecl.extending, baseEnv, classSymbol, jCClassDecl.pos());
            }
            Iterator<JCTree.JCExpression> it = jCClassDecl.implementing.iterator();
            while (it.hasNext()) {
                TypeEnter.this.annotate.queueScanTreeAndTypeAnnotate(it.next(), baseEnv, classSymbol, jCClassDecl.pos());
            }
            TypeEnter.this.annotate.flush();
            attribSuperTypes(env, baseEnv);
            HashSet hashSet = new HashSet();
            Iterator<JCTree.JCExpression> it2 = jCClassDecl.implementing.iterator();
            while (it2.hasNext()) {
                JCTree.JCExpression next = it2.next();
                Type type = next.type;
                if (type.hasTag(TypeTag.CLASS)) {
                    TypeEnter.this.chk.checkNotRepeated(next.pos(), TypeEnter.this.types.erasure(type), hashSet);
                }
            }
            TypeEnter.this.annotate.annotateLater(jCClassDecl.mods.annotations, baseEnv, classSymbol, jCClassDecl.pos());
            TypeEnter.this.attr.attribTypeVariables(jCClassDecl.typarams, baseEnv);
            Iterator<JCTree.JCTypeParameter> it3 = jCClassDecl.typarams.iterator();
            while (it3.hasNext()) {
                TypeEnter.this.annotate.queueScanTreeAndTypeAnnotate(it3.next(), baseEnv, classSymbol, jCClassDecl.pos());
            }
            Symbol symbol = classSymbol.owner;
            Kinds.Kind kind = symbol.kind;
            Kinds.Kind kind2 = Kinds.Kind.PCK;
            if (kind == kind2 && symbol != env.toplevel.modle.unnamedPackage && TypeEnter.this.syms.packageExists(env.toplevel.modle, classSymbol.fullname)) {
                TypeEnter.this.log.error(jCClassDecl.pos, "clash.with.pkg.of.same.name", Kinds.kindName(classSymbol), classSymbol);
            }
            if (classSymbol.owner.kind == kind2 && (classSymbol.flags_field & 1) == 0 && !env.toplevel.sourcefile.isNameCompatible(classSymbol.name.toString(), JavaFileObject.Kind.SOURCE)) {
                classSymbol.flags_field |= 17592186044416L;
            }
        }
    }

    public final class HierarchyPhase extends AbstractHeaderPhase implements Symbol.Completer {
        public HierarchyPhase() {
            super(Dependencies.CompletionCause.HIERARCHY_PHASE, new HeaderPhase());
        }

        @Override
        public JCTree.JCExpression clearTypeParams(JCTree.JCExpression jCExpression) {
            return AnonymousClass1.$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag[jCExpression.getTag().ordinal()] != 1 ? jCExpression : ((JCTree.JCTypeApply) jCExpression).clazz;
        }

        @Override
        public void complete(Symbol symbol) throws Symbol.CompletionFailure {
            Assert.check((TypeEnter.this.topLevelPhase instanceof ImportsPhase) || TypeEnter.this.topLevelPhase == this);
            if (TypeEnter.this.topLevelPhase != this) {
                symbol.completer = this;
            } else {
                super.doCompleteEnvs(List.of(TypeEnter.this.typeEnvs.get((Symbol.ClassSymbol) symbol)));
            }
        }

        @Override
        public void doCompleteEnvs(List<Env<AttrContext>> list) {
            Iterator<Env<AttrContext>> it = list.iterator();
            while (it.hasNext()) {
                it.next().enclClass.sym.completer = this;
            }
            Iterator<Env<AttrContext>> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().enclClass.sym.complete();
            }
        }

        @Override
        public void runPhase(Env<AttrContext> env) {
            JCTree.JCClassDecl jCClassDecl = env.enclClass;
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            Type.ClassType classType = (Type.ClassType) classSymbol.type;
            Env<AttrContext> baseEnv = baseEnv(jCClassDecl, env);
            attribSuperTypes(env, baseEnv);
            if (classSymbol.fullname == TypeEnter.this.names.java_lang_Object) {
                if (jCClassDecl.extending != null) {
                    TypeEnter.this.chk.checkNonCyclic(jCClassDecl.extending.pos(), classType.supertype_field);
                    classType.supertype_field = Type.noType;
                } else if (jCClassDecl.implementing.nonEmpty()) {
                    TypeEnter.this.chk.checkNonCyclic(jCClassDecl.implementing.head.pos(), classType.interfaces_field.head);
                    classType.interfaces_field = List.nil();
                }
            }
            TypeEnter.this.markDeprecated(classSymbol, jCClassDecl.mods.annotations, baseEnv);
            TypeEnter.this.chk.checkNonCyclicDecl(jCClassDecl);
        }
    }

    public final class ImportsPhase extends Phase {
        BiConsumer<JCTree.JCImport, Symbol.CompletionFailure> cfHandler;
        Env<AttrContext> env;
        Scope.ImportFilter staticImportFilter;
        Scope.ImportFilter typeImportFilter;

        public ImportsPhase() {
            super(Dependencies.CompletionCause.IMPORTS_PHASE, new HierarchyPhase());
            this.cfHandler = new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    TypeEnter.ImportsPhase.this.lambda$new$0((JCTree.JCImport) obj, (Symbol.CompletionFailure) obj2);
                }
            };
        }

        private void checkClassPackageClash(JCTree.JCPackageDecl jCPackageDecl) {
            if (jCPackageDecl.pid != null) {
                for (Symbol symbol = this.env.toplevel.packge; symbol.owner != TypeEnter.this.syms.rootPackage; symbol = symbol.owner) {
                    symbol.owner.complete();
                    if (TypeEnter.this.syms.getClass(TypeEnter.this.syms.lookupPackage(this.env.toplevel.modle, symbol.owner.getQualifiedName()).modle, symbol.getQualifiedName()) != null) {
                        TypeEnter.this.log.error(jCPackageDecl.pos, "pkg.clashes.with.class.of.same.name", symbol);
                    }
                }
            }
            Annotate annotate = TypeEnter.this.annotate;
            List<JCTree.JCAnnotation> list = jCPackageDecl.annotations;
            Env<AttrContext> env = this.env;
            annotate.annotateLater(list, env, env.toplevel.packge, null);
        }

        private void doImport(JCTree.JCImport jCImport) {
            JCTree.JCFieldAccess jCFieldAccess = (JCTree.JCFieldAccess) jCImport.qualid;
            Name name = TreeInfo.name(jCFieldAccess);
            Env<AttrContext> dup = this.env.dup(jCImport);
            Symbol.TypeSymbol typeSymbol = TypeEnter.this.attr.attribImportQualifier(jCImport, dup).tsym;
            if (name == TypeEnter.this.names.asterisk) {
                TypeEnter.this.chk.checkCanonical(jCFieldAccess.selected);
                if (jCImport.staticImport) {
                    importStaticAll(jCImport, typeSymbol, this.env);
                    return;
                } else {
                    importAll(jCImport, typeSymbol, this.env);
                    return;
                }
            }
            if (jCImport.staticImport) {
                importNamedStatic(jCImport, typeSymbol, name, dup);
                TypeEnter.this.chk.checkCanonical(jCFieldAccess.selected);
                return;
            }
            Type attribImportType = attribImportType(jCFieldAccess, dup);
            Type originalType = attribImportType.getOriginalType();
            Symbol symbol = originalType.hasTag(TypeTag.CLASS) ? originalType.tsym : attribImportType.tsym;
            TypeEnter.this.chk.checkCanonical(jCFieldAccess);
            importNamed(jCImport.pos(), symbol, this.env, jCImport);
        }

        private void importAll(JCTree.JCImport jCImport, Symbol.TypeSymbol typeSymbol, Env<AttrContext> env) {
            env.toplevel.starImportScope.importAll(TypeEnter.this.types, typeSymbol.members(), this.typeImportFilter, jCImport, this.cfHandler);
        }

        private void importNamed(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol symbol, Env<AttrContext> env, JCTree.JCImport jCImport) {
            if (symbol.kind == Kinds.Kind.TYP) {
                jCImport.importScope = env.toplevel.namedImportScope.importType(symbol.owner.members(), symbol.owner.members(), symbol);
            }
        }

        private void importNamedStatic(JCTree.JCImport jCImport, Symbol.TypeSymbol typeSymbol, Name name, Env<AttrContext> env) {
            if (typeSymbol.kind != Kinds.Kind.TYP) {
                TypeEnter.this.log.error(JCDiagnostic.DiagnosticFlag.RECOVERABLE, jCImport.pos(), "static.imp.only.classes.and.interfaces", new Object[0]);
                return;
            }
            jCImport.importScope = env.toplevel.namedImportScope.importByName(TypeEnter.this.types, typeSymbol.members(), name, this.staticImportFilter, jCImport, this.cfHandler);
        }

        private void importStaticAll(JCTree.JCImport jCImport, Symbol.TypeSymbol typeSymbol, Env<AttrContext> env) {
            env.toplevel.starImportScope.importAll(TypeEnter.this.types, typeSymbol.members(), this.staticImportFilter, jCImport, this.cfHandler);
        }

        public void lambda$new$0(JCTree.JCImport jCImport, Symbol.CompletionFailure completionFailure) {
            TypeEnter.this.chk.completionError(jCImport.pos(), completionFailure);
        }

        public boolean lambda$resolveImports$1(Symbol.PackageSymbol packageSymbol, Scope scope, Symbol symbol) {
            return symbol.isStatic() && TypeEnter.this.chk.importAccessible(symbol, packageSymbol) && symbol.isMemberOf((Symbol.TypeSymbol) scope.owner, TypeEnter.this.types);
        }

        public boolean lambda$resolveImports$2(Symbol.PackageSymbol packageSymbol, Scope scope, Symbol symbol) {
            return symbol.kind == Kinds.Kind.TYP && TypeEnter.this.chk.importAccessible(symbol, packageSymbol);
        }

        public void resolveImports(JCTree.JCCompilationUnit jCCompilationUnit, Env<AttrContext> env) {
            if (jCCompilationUnit.starImportScope.isFilled()) {
                return;
            }
            Scope.ImportFilter importFilter = this.staticImportFilter;
            Scope.ImportFilter importFilter2 = this.typeImportFilter;
            JCDiagnostic.DiagnosticPosition immediate = TypeEnter.this.deferredLintHandler.immediate();
            Lint lint = TypeEnter.this.chk.setLint(TypeEnter.this.lint);
            Env<AttrContext> env2 = this.env;
            try {
                this.env = env;
                final Symbol.PackageSymbol packageSymbol = env.toplevel.packge;
                this.staticImportFilter = new Scope.ImportFilter() {
                    @Override
                    public final boolean accepts(Scope scope, Symbol symbol) {
                        boolean lambda$resolveImports$1;
                        lambda$resolveImports$1 = TypeEnter.ImportsPhase.this.lambda$resolveImports$1(packageSymbol, scope, symbol);
                        return lambda$resolveImports$1;
                    }
                };
                this.typeImportFilter = new Scope.ImportFilter() {
                    @Override
                    public final boolean accepts(Scope scope, Symbol symbol) {
                        boolean lambda$resolveImports$2;
                        lambda$resolveImports$2 = TypeEnter.ImportsPhase.this.lambda$resolveImports$2(packageSymbol, scope, symbol);
                        return lambda$resolveImports$2;
                    }
                };
                Symbol.PackageSymbol enterPackage = TypeEnter.this.syms.enterPackage(TypeEnter.this.syms.java_base, TypeEnter.this.names.java_lang);
                if (enterPackage.members().isEmpty() && !enterPackage.exists()) {
                    throw new FatalError(TypeEnter.this.diags.fragment("fatal.err.no.java.lang", new Object[0]));
                }
                importAll(TypeEnter.this.make.at(jCCompilationUnit.pos()).Import(TypeEnter.this.make.QualIdent(enterPackage), false), enterPackage, env);
                JCTree.JCModuleDecl moduleDecl = jCCompilationUnit.getModuleDecl();
                if (jCCompilationUnit.getPackage() != null && moduleDecl == null) {
                    checkClassPackageClash(jCCompilationUnit.getPackage());
                }
                Iterator<JCTree.JCImport> it = jCCompilationUnit.getImports().iterator();
                while (it.hasNext()) {
                    doImport(it.next());
                }
                if (moduleDecl != null) {
                    TypeEnter.this.markDeprecated(moduleDecl.sym, moduleDecl.mods.annotations, env);
                    TypeEnter.this.annotate.annotateLater(moduleDecl.mods.annotations, env, env.toplevel.modle, null);
                }
                this.env = env2;
                TypeEnter.this.chk.setLint(lint);
                TypeEnter.this.deferredLintHandler.setPos(immediate);
                this.staticImportFilter = importFilter;
                this.typeImportFilter = importFilter2;
            } catch (Throwable th2) {
                this.env = env2;
                TypeEnter.this.chk.setLint(lint);
                TypeEnter.this.deferredLintHandler.setPos(immediate);
                this.staticImportFilter = importFilter;
                this.typeImportFilter = importFilter2;
                throw th2;
            }
        }

        public Type attribImportType(JCTree jCTree, Env<AttrContext> env) {
            Assert.check(TypeEnter.this.completionEnabled);
            Check check = TypeEnter.this.chk;
            TypeEnter typeEnter = TypeEnter.this;
            Lint lint = check.setLint(typeEnter.allowDeprecationOnImport ? typeEnter.lint : typeEnter.lint.suppress(Lint.LintCategory.DEPRECATION, Lint.LintCategory.REMOVAL));
            try {
                TypeEnter typeEnter2 = TypeEnter.this;
                typeEnter2.completionEnabled = false;
                return typeEnter2.attr.attribType(jCTree, env);
            } finally {
                TypeEnter typeEnter3 = TypeEnter.this;
                typeEnter3.completionEnabled = true;
                typeEnter3.chk.setLint(lint);
            }
        }

        @Override
        public void runPhase(Env<AttrContext> env) {
            Symbol.ClassSymbol classSymbol = env.enclClass.sym;
            if (classSymbol.owner.kind == Kinds.Kind.PCK) {
                resolveImports(env.toplevel, env.enclosing(JCTree.Tag.TOPLEVEL));
                TypeEnter.this.todo.append(env);
            }
            Symbol symbol = classSymbol.owner;
            if (symbol.kind == Kinds.Kind.TYP) {
                symbol.complete();
            }
        }
    }

    public final class MembersPhase extends Phase {
        private boolean completing;
        private List<Env<AttrContext>> todo;

        public MembersPhase() {
            super(Dependencies.CompletionCause.MEMBERS_PHASE, null);
            this.todo = List.nil();
        }

        private void addEnumMembers(JCTree.JCClassDecl jCClassDecl, Env<AttrContext> env) {
            TypeEnter.this.memberEnter.memberEnter(TypeEnter.this.make.MethodDef(TypeEnter.this.make.Modifiers(9L), TypeEnter.this.names.values, TypeEnter.this.make.Type(new Type.ArrayType(jCClassDecl.sym.type, TypeEnter.this.syms.arrayClass)), List.nil(), List.nil(), List.nil(), null, null), env);
            TypeEnter.this.memberEnter.memberEnter(TypeEnter.this.make.MethodDef(TypeEnter.this.make.Modifiers(9L), TypeEnter.this.names.valueOf, TypeEnter.this.make.Type(jCClassDecl.sym.type), List.nil(), List.of(TypeEnter.this.make.VarDef(TypeEnter.this.make.Modifiers(8589967360L), TypeEnter.this.names.fromString("name"), TypeEnter.this.make.Type(TypeEnter.this.syms.stringType), null)), List.nil(), null, null), env);
        }

        @Override
        public void doCompleteEnvs(List<Env<AttrContext>> list) {
            this.todo = this.todo.prependList(list);
            boolean z10 = this.completing;
            if (z10) {
                return;
            }
            this.completing = true;
            while (this.todo.nonEmpty()) {
                try {
                    List<Env<AttrContext>> list2 = this.todo;
                    Env<AttrContext> env = list2.head;
                    this.todo = list2.tail;
                    super.doCompleteEnvs(List.of(env));
                } finally {
                    this.completing = z10;
                }
            }
        }

        public void finishClass(JCTree.JCClassDecl jCClassDecl, Env<AttrContext> env) {
            if ((jCClassDecl.mods.flags & 16384) != 0 && !jCClassDecl.sym.type.hasTag(TypeTag.ERROR) && (TypeEnter.this.types.supertype(jCClassDecl.sym.type).tsym.flags() & 16384) == 0) {
                addEnumMembers(jCClassDecl, env);
            }
            TypeEnter.this.memberEnter.memberEnter(jCClassDecl.defs, env);
            if (jCClassDecl.sym.isAnnotationType()) {
                Assert.check(jCClassDecl.sym.isCompleted());
                jCClassDecl.sym.setAnnotationTypeMetadata(new Annotate.AnnotationTypeMetadata(jCClassDecl.sym, TypeEnter.this.annotate.annotationTypeSourceCompleter()));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void runPhase(Env<AttrContext> env) {
            int i10;
            TypeEnter typeEnter;
            List<Type> list;
            List<Type> list2;
            List<Type> list3;
            boolean z10;
            long j10;
            JCTree.JCNewClass jCNewClass;
            JCTree.JCClassDecl jCClassDecl = env.enclClass;
            Symbol.ClassSymbol classSymbol = jCClassDecl.sym;
            Type.ClassType classType = (Type.ClassType) classSymbol.type;
            if ((classSymbol.flags() & 512) == 0 && !TreeInfo.hasConstructors(jCClassDecl.defs)) {
                List<Type> nil = List.nil();
                List<Type> nil2 = List.nil();
                List<Type> nil3 = List.nil();
                boolean z11 = true;
                if (classSymbol.name.isEmpty()) {
                    jCNewClass = (JCTree.JCNewClass) env.next.tree;
                    Symbol symbol = jCNewClass.constructor;
                    if (symbol != null) {
                        boolean z12 = symbol.kind != Kinds.Kind.ERR;
                        Type memberType = TypeEnter.this.types.memberType(classSymbol.type, jCNewClass.constructor);
                        List<Type> parameterTypes = memberType.getParameterTypes();
                        List<Type> typeArguments = memberType.getTypeArguments();
                        long flags = jCNewClass.constructor.flags() & 17179869184L;
                        JCTree.JCExpression jCExpression = jCNewClass.encl;
                        if (jCExpression != null) {
                            parameterTypes = parameterTypes.prepend(jCExpression.type);
                        } else {
                            z11 = false;
                        }
                        z10 = z11;
                        list2 = typeArguments;
                        j10 = flags;
                        z11 = z12;
                        list3 = memberType.getThrownTypes();
                        list = parameterTypes;
                    } else {
                        list = nil;
                        list2 = nil2;
                        list3 = nil3;
                        z10 = false;
                        j10 = 0;
                    }
                } else {
                    list = nil;
                    list2 = nil2;
                    list3 = nil3;
                    z10 = false;
                    j10 = 0;
                    jCNewClass = null;
                }
                if (z11) {
                    Symbol.MethodSymbol methodSymbol = jCNewClass != null ? (Symbol.MethodSymbol) jCNewClass.constructor : null;
                    TypeEnter typeEnter2 = TypeEnter.this;
                    i10 = 0;
                    jCClassDecl.defs = jCClassDecl.defs.prepend(typeEnter2.DefaultConstructor(typeEnter2.make.at(jCClassDecl.pos), classSymbol, methodSymbol, list2, list, list3, j10, z10));
                    Symbol.VarSymbol varSymbol = new Symbol.VarSymbol(262160L, TypeEnter.this.names._this, classSymbol.type, classSymbol);
                    varSymbol.pos = i10;
                    env.info.scope.enter(varSymbol);
                    if ((classSymbol.flags_field & 512) == 0 && classType.supertype_field.hasTag(TypeTag.CLASS)) {
                        Symbol.VarSymbol varSymbol2 = new Symbol.VarSymbol(262160L, TypeEnter.this.names._super, classType.supertype_field, classSymbol);
                        varSymbol2.pos = i10;
                        env.info.scope.enter(varSymbol2);
                    }
                    finishClass(jCClassDecl, env);
                    typeEnter = TypeEnter.this;
                    if (typeEnter.allowTypeAnnos) {
                        return;
                    }
                    typeEnter.typeAnnotations.organizeTypeAnnotationsSignatures(env, (JCTree.JCClassDecl) env.tree);
                    TypeEnter.this.typeAnnotations.validateTypeAnnotationsSignatures(env, (JCTree.JCClassDecl) env.tree);
                    return;
                }
            }
            i10 = 0;
            Symbol.VarSymbol varSymbol3 = new Symbol.VarSymbol(262160L, TypeEnter.this.names._this, classSymbol.type, classSymbol);
            varSymbol3.pos = i10;
            env.info.scope.enter(varSymbol3);
            if ((classSymbol.flags_field & 512) == 0) {
                Symbol.VarSymbol varSymbol22 = new Symbol.VarSymbol(262160L, TypeEnter.this.names._super, classType.supertype_field, classSymbol);
                varSymbol22.pos = i10;
                env.info.scope.enter(varSymbol22);
            }
            finishClass(jCClassDecl, env);
            typeEnter = TypeEnter.this;
            if (typeEnter.allowTypeAnnos) {
            }
        }
    }

    public abstract class Phase {
        private final Phase next;
        private final Dependencies.CompletionCause phaseName;
        private final ListBuffer<Env<AttrContext>> queue = new ListBuffer<>();

        public Phase(Dependencies.CompletionCause completionCause, Phase phase) {
            this.phaseName = completionCause;
            this.next = phase;
        }

        public final List<Env<AttrContext>> completeEnvs(List<Env<AttrContext>> list) {
            boolean isEmpty = this.queue.isEmpty();
            Phase phase = TypeEnter.this.topLevelPhase;
            try {
                TypeEnter.this.topLevelPhase = this;
                doCompleteEnvs(list);
                if (!isEmpty) {
                    return List.nil();
                }
                List<Env<AttrContext>> list2 = this.queue.toList();
                this.queue.clear();
                Phase phase2 = this.next;
                return phase2 != null ? phase2.completeEnvs(list2) : list2;
            } finally {
                TypeEnter.this.topLevelPhase = phase;
            }
        }

        public void doCompleteEnvs(List<Env<AttrContext>> list) {
            Iterator<Env<AttrContext>> it = list.iterator();
            while (it.hasNext()) {
                Env<AttrContext> next = it.next();
                JCTree.JCClassDecl jCClassDecl = (JCTree.JCClassDecl) next.tree;
                this.queue.add(next);
                JavaFileObject useSource = TypeEnter.this.log.useSource(next.toplevel.sourcefile);
                JCDiagnostic.DiagnosticPosition pos = TypeEnter.this.deferredLintHandler.setPos(jCClassDecl.pos());
                try {
                    try {
                        TypeEnter.this.dependencies.push(next.enclClass.sym, this.phaseName);
                        runPhase(next);
                    } catch (Symbol.CompletionFailure e10) {
                        TypeEnter.this.chk.completionError(jCClassDecl.pos(), e10);
                    }
                } finally {
                    TypeEnter.this.dependencies.pop();
                    TypeEnter.this.deferredLintHandler.setPos(pos);
                    TypeEnter.this.log.useSource(useSource);
                }
            }
        }

        public abstract void runPhase(Env<AttrContext> env);
    }

    public TypeEnter(Context context) {
        context.put((Context.Key<Context.Key<TypeEnter>>) typeEnterKey, (Context.Key<TypeEnter>) this);
        this.names = Names.instance(context);
        this.enter = Enter.instance(context);
        this.memberEnter = MemberEnter.instance(context);
        this.log = Log.instance(context);
        this.chk = Check.instance(context);
        this.attr = Attr.instance(context);
        this.syms = Symtab.instance(context);
        this.make = TreeMaker.instance(context);
        this.todo = Todo.instance(context);
        this.annotate = Annotate.instance(context);
        this.typeAnnotations = TypeAnnotations.instance(context);
        this.types = Types.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        this.deferredLintHandler = DeferredLintHandler.instance(context);
        this.lint = Lint.instance(context);
        this.typeEnvs = TypeEnvs.instance(context);
        this.dependencies = Dependencies.instance(context);
        Source instance = Source.instance(context);
        this.allowTypeAnnos = instance.allowTypeAnnotations();
        this.allowDeprecationOnImport = instance.allowDeprecationOnImport();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private List<Symbol.VarSymbol> createDefaultConstructorParams(TreeMaker treeMaker, Symbol.MethodSymbol methodSymbol, Symbol.MethodSymbol methodSymbol2, List<Type> list, boolean z10) {
        List<Symbol.VarSymbol> list2;
        List<Type> list3;
        List<Symbol.VarSymbol> list4;
        if (z10) {
            list2 = List.nil().append(new Symbol.VarSymbol(8589934592L, treeMaker.paramName(0), list.head, methodSymbol2));
            list3 = list.tail;
        } else {
            list2 = null;
            list3 = list;
        }
        if (methodSymbol != null && (list4 = methodSymbol.params) != null && list4.nonEmpty() && list3.nonEmpty()) {
            if (list2 == null) {
                list2 = List.nil();
            }
            List list5 = methodSymbol.params;
            for (List<Type> list6 = list3; list5.nonEmpty() && list6.nonEmpty(); list6 = list6.tail) {
                list2 = list2.append(new Symbol.VarSymbol(((Symbol.VarSymbol) list5.head).flags() | 8589934592L, ((Symbol.VarSymbol) list5.head).name, list6.head, methodSymbol2));
                list5 = list5.tail;
            }
        }
        return list2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
    
        r6 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void handleDeprecatedAnnotations(List<JCTree.JCAnnotation> list, final Symbol symbol) {
        for (List<JCTree.JCAnnotation> list2 = list; !list2.isEmpty(); list2 = list2.tail) {
            JCTree.JCAnnotation jCAnnotation = list2.head;
            if (jCAnnotation.annotationType.type == this.syms.deprecatedType) {
                symbol.flags_field |= 18014398509613056L;
                jCAnnotation.args.stream().filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$handleDeprecatedAnnotations$2;
                        lambda$handleDeprecatedAnnotations$2 = TypeEnter.lambda$handleDeprecatedAnnotations$2((JCTree.JCExpression) obj);
                        return lambda$handleDeprecatedAnnotations$2;
                    }
                }).map(new Function() {
                    @Override
                    public final Object apply(Object obj) {
                        JCTree.JCAssign lambda$handleDeprecatedAnnotations$3;
                        lambda$handleDeprecatedAnnotations$3 = TypeEnter.lambda$handleDeprecatedAnnotations$3((JCTree.JCExpression) obj);
                        return lambda$handleDeprecatedAnnotations$3;
                    }
                }).filter(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$handleDeprecatedAnnotations$4;
                        lambda$handleDeprecatedAnnotations$4 = TypeEnter.this.lambda$handleDeprecatedAnnotations$4((JCTree.JCAssign) obj);
                        return lambda$handleDeprecatedAnnotations$4;
                    }
                }).findFirst().ifPresent(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        TypeEnter.lambda$handleDeprecatedAnnotations$5(Symbol.this, (JCTree.JCAssign) obj);
                    }
                });
            }
        }
    }

    public static TypeEnter instance(Context context) {
        TypeEnter typeEnter = (TypeEnter) context.get(typeEnterKey);
        return typeEnter == null ? new TypeEnter(context) : typeEnter;
    }

    public static void lambda$complete$1() {
    }

    public void lambda$ensureImportsChecked$0(JCTree.JCCompilationUnit jCCompilationUnit, Env env) {
        this.completeClass.resolveImports(jCCompilationUnit, env);
    }

    public static boolean lambda$handleDeprecatedAnnotations$2(JCTree.JCExpression jCExpression) {
        return jCExpression.hasTag(JCTree.Tag.ASSIGN);
    }

    public static JCTree.JCAssign lambda$handleDeprecatedAnnotations$3(JCTree.JCExpression jCExpression) {
        return (JCTree.JCAssign) jCExpression;
    }

    public boolean lambda$handleDeprecatedAnnotations$4(JCTree.JCAssign jCAssign) {
        return TreeInfo.name(jCAssign.lhs) == this.names.forRemoval;
    }

    public static void lambda$handleDeprecatedAnnotations$5(Symbol symbol, JCTree.JCAssign jCAssign) {
        JCTree.JCExpression skipParens = TreeInfo.skipParens(jCAssign.rhs);
        if (skipParens.hasTag(JCTree.Tag.LITERAL) && Boolean.TRUE.equals(((JCTree.JCLiteral) skipParens).getValue())) {
            symbol.flags_field |= 36028797018963968L;
        }
    }

    public JCTree DefaultConstructor(TreeMaker treeMaker, Symbol.ClassSymbol classSymbol, Symbol.MethodSymbol methodSymbol, List<Type> list, List<Type> list2, List<Type> list3, long j10, boolean z10) {
        long flags = ((classSymbol.flags() & 16384) == 0 || this.types.supertype(classSymbol.type).tsym != this.syms.enumSym) ? j10 | (classSymbol.flags() & 7) | 68719476736L : (j10 & (-8)) | 68719476738L;
        if (classSymbol.name.isEmpty()) {
            flags |= TagBits.HasTypeVariable;
        }
        long j11 = flags;
        Type methodType = new Type.MethodType(list2, null, list3, classSymbol);
        Symbol.MethodSymbol methodSymbol2 = new Symbol.MethodSymbol(j11, this.names.init, list.nonEmpty() ? new Type.ForAll(list, methodType) : methodType, classSymbol);
        methodSymbol2.params = createDefaultConstructorParams(treeMaker, methodSymbol, methodSymbol2, list2, z10);
        List<JCTree.JCVariableDecl> Params = treeMaker.Params(list2, methodSymbol2);
        List<JCTree.JCStatement> nil = List.nil();
        if (classSymbol.type != this.syms.objectType) {
            nil = nil.prepend(SuperCall(treeMaker, list, Params, z10));
        }
        return treeMaker.MethodDef(methodSymbol2, treeMaker.Block(0L, nil));
    }

    public JCTree.JCExpressionStatement SuperCall(TreeMaker treeMaker, List<Type> list, List<JCTree.JCVariableDecl> list2, boolean z10) {
        JCTree.JCExpression Ident;
        List<JCTree.JCVariableDecl> list3;
        if (z10) {
            Ident = treeMaker.Select(treeMaker.Ident(list2.head), this.names._super);
            list3 = list2.tail;
        } else {
            Ident = treeMaker.Ident(this.names._super);
            list3 = list2;
        }
        return treeMaker.Exec(treeMaker.Apply(list.nonEmpty() ? treeMaker.Types(list) : null, Ident, treeMaker.Idents(list3)));
    }

    @Override
    public void complete(Symbol symbol) throws Symbol.CompletionFailure {
        if (!this.completionEnabled) {
            Assert.check((symbol.flags() & 16777216) == 0);
            symbol.completer = this;
            return;
        }
        try {
            this.annotate.blockAnnotations();
            symbol.flags_field |= TagBits.HasUnresolvedMemberTypes;
            this.dependencies.push((Symbol.ClassSymbol) symbol, Dependencies.CompletionCause.MEMBER_ENTER);
            try {
                List<Env<AttrContext>> completeEnvs = this.completeClass.completeEnvs(List.of(this.typeEnvs.get((Symbol.ClassSymbol) symbol)));
                this.dependencies.pop();
                if (!completeEnvs.isEmpty()) {
                    HashSet hashSet = new HashSet();
                    Iterator<Env<AttrContext>> it = completeEnvs.iterator();
                    while (it.hasNext()) {
                        Env<AttrContext> next = it.next();
                        if (next.toplevel.defs.contains(next.enclClass) && hashSet.add(next.toplevel)) {
                            finishImports(next.toplevel, new Runnable() {
                                @Override
                                public final void run() {
                                    TypeEnter.lambda$complete$1();
                                }
                            });
                        }
                    }
                }
            } catch (Throwable th2) {
                this.dependencies.pop();
                throw th2;
            }
        } finally {
            this.annotate.unblockAnnotations();
        }
    }

    public void ensureImportsChecked(List<JCTree.JCCompilationUnit> list) {
        Iterator<JCTree.JCCompilationUnit> it = list.iterator();
        while (it.hasNext()) {
            final JCTree.JCCompilationUnit next = it.next();
            if (!next.starImportScope.isFilled()) {
                final Env<AttrContext> env = this.enter.topLevelEnv(next);
                finishImports(next, new Runnable() {
                    @Override
                    public final void run() {
                        TypeEnter.this.lambda$ensureImportsChecked$0(next, env);
                    }
                });
            }
        }
    }

    public void finishImports(JCTree.JCCompilationUnit jCCompilationUnit, Runnable runnable) {
        JavaFileObject useSource = this.log.useSource(jCCompilationUnit.sourcefile);
        try {
            runnable.run();
            this.chk.checkImportsUnique(jCCompilationUnit);
            this.chk.checkImportsResolvable(jCCompilationUnit);
            this.chk.checkImportedPackagesObservable(jCCompilationUnit);
            jCCompilationUnit.namedImportScope.finalizeScope();
            jCCompilationUnit.starImportScope.finalizeScope();
        } finally {
            this.log.useSource(useSource);
        }
    }

    public void markDeprecated(Symbol symbol, List<JCTree.JCAnnotation> list, Env<AttrContext> env) {
        this.attr.attribAnnotationTypes(list, env);
        handleDeprecatedAnnotations(list, symbol);
    }
}
