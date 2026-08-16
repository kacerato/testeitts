package org.openjdk.tools.javac.comp;

import java.util.Iterator;
import java.util.Map;
import java.util.Optional;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.Scope;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.tree.TreeMaker;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class Enter extends JCTree.Visitor {
    protected static final Context.Key<Enter> enterKey = new Context.Key<>();
    Annotate annotate;
    Check chk;
    JCDiagnostic.Factory diags;
    protected Env<AttrContext> env;
    JavaFileManager fileManager;
    Lint lint;
    Log log;
    TreeMaker make;
    Modules modules;
    Names names;
    Option.PkgInfo pkginfoOpt;
    private JCTree.JCClassDecl predefClassDef;
    Type result;
    Symtab syms;
    private final Todo todo;
    TypeEnter typeEnter;
    TypeEnvs typeEnvs;
    Types types;
    ListBuffer<Symbol.ClassSymbol> uncompleted;
    ListBuffer<JCTree.JCCompilationUnit> unfinishedModules = new ListBuffer<>();

    public Enter(Context context) {
        context.put((Context.Key<Context.Key<Enter>>) enterKey, (Context.Key<Enter>) this);
        this.log = Log.instance(context);
        this.make = TreeMaker.instance(context);
        this.syms = Symtab.instance(context);
        this.chk = Check.instance(context);
        this.typeEnter = TypeEnter.instance(context);
        this.types = Types.instance(context);
        this.annotate = Annotate.instance(context);
        this.lint = Lint.instance(context);
        this.names = Names.instance(context);
        this.modules = Modules.instance(context);
        this.diags = JCDiagnostic.Factory.instance(context);
        TreeMaker treeMaker = this.make;
        JCTree.JCClassDecl ClassDef = treeMaker.ClassDef(treeMaker.Modifiers(1L), this.syms.predefClass.name, List.nil(), null, List.nil(), List.nil());
        this.predefClassDef = ClassDef;
        ClassDef.sym = this.syms.predefClass;
        this.todo = Todo.instance(context);
        this.fileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.pkginfoOpt = Option.PkgInfo.get(Options.instance(context));
        this.typeEnvs = TypeEnvs.instance(context);
    }

    private static boolean classNameMatchesFileName(Symbol.ClassSymbol classSymbol, Env<AttrContext> env) {
        return env.toplevel.sourcefile.isNameCompatible(classSymbol.name.toString(), JavaFileObject.Kind.SOURCE);
    }

    public static Enter instance(Context context) {
        Enter enter = (Enter) context.get(enterKey);
        return enter == null ? new Enter(context) : enter;
    }

    public static String lambda$visitClassDef$2(Symbol.ClassSymbol classSymbol) {
        return classSymbol.owner.toString();
    }

    public static boolean lambda$visitTopLevel$0(JCTree.JCCompilationUnit jCCompilationUnit, Symbol.ModuleSymbol moduleSymbol) {
        return moduleSymbol != jCCompilationUnit.modle;
    }

    public boolean lambda$visitTopLevel$1(Map map, JCTree.JCCompilationUnit jCCompilationUnit, Symbol.ModuleSymbol moduleSymbol) {
        return map.get(jCCompilationUnit.packge.fullname) == this.syms.getPackage(moduleSymbol, jCCompilationUnit.packge.fullname);
    }

    public Type classEnter(JCTree jCTree, Env<AttrContext> env) {
        Type completionError;
        Env<AttrContext> env2 = this.env;
        try {
            try {
                this.env = env;
                this.annotate.blockAnnotations();
                jCTree.accept(this);
                completionError = this.result;
            } catch (Symbol.CompletionFailure e10) {
                completionError = this.chk.completionError(jCTree.pos(), e10);
            }
            return completionError;
        } finally {
            this.annotate.unblockAnnotations();
            this.env = env2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Env<AttrContext> classEnv(JCTree.JCClassDecl jCClassDecl, Env<AttrContext> env) {
        Env<AttrContext> dup = env.dup(jCClassDecl, ((AttrContext) env.info).dup(Scope.WriteableScope.create(jCClassDecl.sym)));
        dup.enclClass = jCClassDecl;
        dup.outer = env;
        AttrContext attrContext = dup.info;
        attrContext.isSelfCall = false;
        attrContext.lint = null;
        attrContext.isAnonymousDiamond = TreeInfo.isDiamond(env.tree);
        return dup;
    }

    public void complete(List<JCTree.JCCompilationUnit> list, Symbol.ClassSymbol classSymbol) {
        this.annotate.blockAnnotations();
        ListBuffer<Symbol.ClassSymbol> listBuffer = this.uncompleted;
        if (this.typeEnter.completionEnabled) {
            this.uncompleted = new ListBuffer<>();
        }
        try {
            classEnter(list, (Env<AttrContext>) null);
            if (this.typeEnter.completionEnabled) {
                while (this.uncompleted.nonEmpty()) {
                    Symbol.ClassSymbol next = this.uncompleted.next();
                    if (classSymbol != null && classSymbol != next && listBuffer != null) {
                        listBuffer.append(next);
                    }
                    next.complete();
                }
                if (this.modules.modulesInitialized()) {
                    this.typeEnter.ensureImportsChecked(this.unfinishedModules.toList());
                    this.unfinishedModules.clear();
                    this.typeEnter.ensureImportsChecked(list);
                } else {
                    Iterator<JCTree.JCCompilationUnit> it = list.iterator();
                    while (it.hasNext()) {
                        JCTree.JCCompilationUnit next2 = it.next();
                        if (next2.getModuleDecl() != null) {
                            this.unfinishedModules.append(next2);
                        } else {
                            this.typeEnter.ensureImportsChecked(List.of(next2));
                        }
                    }
                }
            }
            this.uncompleted = listBuffer;
            this.annotate.unblockAnnotations();
        } catch (Throwable th2) {
            this.uncompleted = listBuffer;
            this.annotate.unblockAnnotations();
            throw th2;
        }
    }

    public void duplicateClass(JCDiagnostic.DiagnosticPosition diagnosticPosition, Symbol.ClassSymbol classSymbol) {
        this.log.error(diagnosticPosition, "duplicate.class", classSymbol.fullname);
    }

    public Scope.WriteableScope enterScope(Env<AttrContext> env) {
        return env.tree.hasTag(JCTree.Tag.CLASSDEF) ? ((JCTree.JCClassDecl) env.tree).sym.members_field : env.info.scope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Env<AttrContext> getClassEnv(Symbol.TypeSymbol typeSymbol) {
        Env<AttrContext> env = getEnv(typeSymbol);
        if (env == null) {
            return null;
        }
        Env env2 = env;
        while (true) {
            A a10 = env2.info;
            if (((AttrContext) a10).lint != null) {
                env.info.lint = ((AttrContext) a10).lint.augment(typeSymbol);
                return env;
            }
            env2 = env2.next;
        }
    }

    public Env<AttrContext> getEnv(Symbol.TypeSymbol typeSymbol) {
        return this.typeEnvs.get(typeSymbol);
    }

    public Iterable<Env<AttrContext>> getEnvs() {
        return this.typeEnvs.values();
    }

    public Env<AttrContext> getTopLevelEnv(JCTree.JCCompilationUnit jCCompilationUnit) {
        Env<AttrContext> env = new Env<>(jCCompilationUnit, new AttrContext());
        env.toplevel = jCCompilationUnit;
        env.enclClass = this.predefClassDef;
        AttrContext attrContext = env.info;
        attrContext.scope = jCCompilationUnit.toplevelScope;
        attrContext.lint = this.lint;
        return env;
    }

    public void main(List<JCTree.JCCompilationUnit> list) {
        complete(list, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Env<AttrContext> moduleEnv(JCTree.JCModuleDecl jCModuleDecl, Env<AttrContext> env) {
        Assert.checkNonNull(jCModuleDecl.sym);
        Env<AttrContext> dup = env.dup(jCModuleDecl, ((AttrContext) env.info).dup(Scope.WriteableScope.create(jCModuleDecl.sym)));
        dup.enclClass = this.predefClassDef;
        dup.outer = env;
        AttrContext attrContext = dup.info;
        attrContext.isSelfCall = false;
        attrContext.lint = null;
        return dup;
    }

    public void newRound() {
        this.typeEnvs.clear();
    }

    public Env<AttrContext> topLevelEnv(JCTree.JCCompilationUnit jCCompilationUnit) {
        Env<AttrContext> env = new Env<>(jCCompilationUnit, new AttrContext());
        env.toplevel = jCCompilationUnit;
        env.enclClass = this.predefClassDef;
        jCCompilationUnit.toplevelScope = Scope.WriteableScope.create(jCCompilationUnit.packge);
        jCCompilationUnit.namedImportScope = new Scope.NamedImportScope(jCCompilationUnit.packge, jCCompilationUnit.toplevelScope);
        jCCompilationUnit.starImportScope = new Scope.StarImportScope(jCCompilationUnit.packge);
        AttrContext attrContext = env.info;
        attrContext.scope = jCCompilationUnit.toplevelScope;
        attrContext.lint = this.lint;
        return env;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x014e  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void visitClassDef(JCTree.JCClassDecl jCClassDecl) {
        Symbol.ClassSymbol defineClass;
        Symbol.ClassSymbol classSymbol;
        ListBuffer<Symbol.ClassSymbol> listBuffer;
        Env<AttrContext> env = this.env;
        final Symbol symbol = env.info.scope.owner;
        Scope.WriteableScope enterScope = enterScope(env);
        if (symbol.kind == Kinds.Kind.PCK) {
            Symbol.PackageSymbol packageSymbol = (Symbol.PackageSymbol) symbol;
            for (Symbol symbol2 = packageSymbol; symbol2 != null && symbol2.kind == Kinds.Kind.PCK; symbol2 = symbol2.owner) {
                symbol2.flags_field |= 8388608;
            }
            defineClass = this.syms.enterClass(this.env.toplevel.modle, jCClassDecl.name, packageSymbol);
            packageSymbol.members().enterIfAbsent(defineClass);
            if ((jCClassDecl.mods.flags & 1) != 0 && !classNameMatchesFileName(defineClass, this.env)) {
                Kinds.KindName kindName = Kinds.KindName.CLASS;
                long j10 = jCClassDecl.mods.flags;
                if ((16384 & j10) != 0) {
                    kindName = Kinds.KindName.ENUM;
                } else if ((512 & j10) != 0) {
                    kindName = Kinds.KindName.INTERFACE;
                }
                this.log.error(jCClassDecl.pos(), "class.public.should.be.in.file", kindName, jCClassDecl.name);
            }
        } else {
            if (!jCClassDecl.name.isEmpty() && !this.chk.checkUniqueClassName(jCClassDecl.pos(), jCClassDecl.name, enterScope)) {
                this.result = null;
                return;
            }
            Kinds.Kind kind = symbol.kind;
            Kinds.Kind kind2 = Kinds.Kind.TYP;
            if (kind == kind2) {
                final Symbol.ClassSymbol enterClass = this.syms.enterClass(this.env.toplevel.modle, jCClassDecl.name, (Symbol.TypeSymbol) symbol);
                if (enterClass.owner != symbol) {
                    Assert.check(symbol.owner.kind != kind2, (Supplier<String>) new Supplier() {
                        @Override
                        public final Object get() {
                            return Symbol.this.toString();
                        }
                    });
                    Assert.check(enterClass.owner.kind == kind2, (Supplier<String>) new Supplier() {
                        @Override
                        public final Object get() {
                            String lambda$visitClassDef$2;
                            lambda$visitClassDef$2 = Enter.lambda$visitClassDef$2(Symbol.ClassSymbol.this);
                            return lambda$visitClassDef$2;
                        }
                    });
                    Scope.WriteableScope writeableScope = ((Symbol.ClassSymbol) enterClass.owner).members_field;
                    if (writeableScope != null) {
                        writeableScope.remove(enterClass);
                    }
                    enterClass.owner = symbol;
                }
                if ((symbol.flags_field & 512) != 0) {
                    jCClassDecl.mods.flags |= 9;
                }
                classSymbol = enterClass;
                jCClassDecl.sym = classSymbol;
                if (this.chk.getCompiled(classSymbol) == null) {
                    duplicateClass(jCClassDecl.pos(), classSymbol);
                    Type createErrorType = this.types.createErrorType(jCClassDecl.name, (Symbol.TypeSymbol) symbol, Type.noType);
                    this.result = createErrorType;
                    jCClassDecl.sym = (Symbol.ClassSymbol) createErrorType.tsym;
                    return;
                }
                this.chk.putCompiled(classSymbol);
                enterScope.enter(classSymbol);
                Env<AttrContext> classEnv = classEnv(jCClassDecl, this.env);
                this.typeEnvs.put(classSymbol, classEnv);
                classSymbol.completer = Symbol.Completer.NULL_COMPLETER;
                classSymbol.flags_field = this.chk.checkFlags(jCClassDecl.pos(), jCClassDecl.mods.flags, classSymbol, jCClassDecl);
                classSymbol.sourcefile = this.env.toplevel.sourcefile;
                classSymbol.members_field = Scope.WriteableScope.create(classSymbol);
                classSymbol.clearAnnotationMetadata();
                Type.ClassType classType = (Type.ClassType) classSymbol.type;
                if (symbol.kind != Kinds.Kind.PCK && (classSymbol.flags_field & 8) == 0) {
                    while (symbol.kind.matches(Kinds.KindSelector.VAL_MTH) && (symbol.flags_field & 8) == 0) {
                        symbol = symbol.owner;
                    }
                    if (symbol.kind == Kinds.Kind.TYP) {
                        classType.setEnclosingType(symbol.type);
                    }
                }
                classType.typarams_field = classEnter(jCClassDecl.typarams, classEnv);
                classType.allparams_field = null;
                classSymbol.completer = this.typeEnter;
                if (!classSymbol.isLocal() && (listBuffer = this.uncompleted) != null) {
                    listBuffer.append(classSymbol);
                }
                classEnter(jCClassDecl.defs, classEnv);
                this.result = classSymbol.type;
                return;
            }
            defineClass = this.syms.defineClass(jCClassDecl.name, symbol);
            defineClass.flatname = this.chk.localClassName(defineClass);
            if (!defineClass.name.isEmpty()) {
                this.chk.checkTransparentClass(jCClassDecl.pos(), defineClass, this.env.info.scope);
            }
        }
        classSymbol = defineClass;
        jCClassDecl.sym = classSymbol;
        if (this.chk.getCompiled(classSymbol) == null) {
        }
    }

    @Override
    public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
        Env<AttrContext> moduleEnv = moduleEnv(jCModuleDecl, this.env);
        this.typeEnvs.put(jCModuleDecl.sym, moduleEnv);
        if (this.modules.isInModuleGraph(jCModuleDecl.sym)) {
            this.todo.append(moduleEnv);
        }
    }

    @Override
    public void visitTopLevel(final JCTree.JCCompilationUnit jCCompilationUnit) {
        JavaFileObject useSource = this.log.useSource(jCCompilationUnit.sourcefile);
        boolean isNameCompatible = jCCompilationUnit.sourcefile.isNameCompatible("package-info", JavaFileObject.Kind.SOURCE);
        if (TreeInfo.isModuleInfo(jCCompilationUnit)) {
            JCTree.JCPackageDecl jCPackageDecl = jCCompilationUnit.getPackage();
            if (jCPackageDecl != null) {
                this.log.error(jCPackageDecl.pos(), CompilerProperties.Errors.NoPkgInModuleInfoJava);
            }
            jCCompilationUnit.packge = this.syms.rootPackage;
            classEnter(jCCompilationUnit.defs, topLevelEnv(jCCompilationUnit));
            jCCompilationUnit.modle.usesProvidesCompleter = this.modules.getUsesProvidesCompleter();
        } else {
            JCTree.JCPackageDecl jCPackageDecl2 = jCCompilationUnit.getPackage();
            boolean z10 = false;
            if (jCPackageDecl2 != null) {
                Symbol.PackageSymbol enterPackage = this.syms.enterPackage(jCCompilationUnit.modle, TreeInfo.fullName(jCPackageDecl2.pid));
                jCPackageDecl2.packge = enterPackage;
                jCCompilationUnit.packge = enterPackage;
                if (jCPackageDecl2.annotations.nonEmpty() || this.pkginfoOpt == Option.PkgInfo.ALWAYS || jCCompilationUnit.docComments != null) {
                    if (isNameCompatible) {
                        z10 = true;
                    } else if (jCPackageDecl2.annotations.nonEmpty()) {
                        this.log.error(jCPackageDecl2.annotations.head.pos(), "pkg.annotations.sb.in.package-info.java", new Object[0]);
                    }
                }
            } else {
                jCCompilationUnit.packge = jCCompilationUnit.modle.unnamedPackage;
            }
            final Map<Name, Symbol.PackageSymbol> map = jCCompilationUnit.modle.visiblePackages;
            Optional<Symbol.ModuleSymbol> findAny = this.syms.listPackageModules(jCCompilationUnit.packge.fullname).stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$visitTopLevel$0;
                    lambda$visitTopLevel$0 = Enter.lambda$visitTopLevel$0(JCTree.JCCompilationUnit.this, (Symbol.ModuleSymbol) obj);
                    return lambda$visitTopLevel$0;
                }
            }).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$visitTopLevel$1;
                    lambda$visitTopLevel$1 = Enter.this.lambda$visitTopLevel$1(map, jCCompilationUnit, (Symbol.ModuleSymbol) obj);
                    return lambda$visitTopLevel$1;
                }
            }).findAny();
            if (findAny.isPresent()) {
                this.log.error(jCPackageDecl2, CompilerProperties.Errors.PackageInOtherModule(findAny.get()));
            }
            jCCompilationUnit.packge.complete();
            Env<AttrContext> env = topLevelEnv(jCCompilationUnit);
            Env<AttrContext> dup = isNameCompatible ? env.dup(jCPackageDecl2) : null;
            if (isNameCompatible) {
                Env<AttrContext> env2 = this.typeEnvs.get(jCCompilationUnit.packge);
                if (env2 != null) {
                    if (!this.fileManager.isSameFile(jCCompilationUnit.sourcefile, env2.toplevel.sourcefile)) {
                        this.log.warning(jCPackageDecl2 != null ? jCPackageDecl2.pid.pos() : null, "pkg-info.already.seen", jCCompilationUnit.packge);
                    }
                }
                this.typeEnvs.put(jCCompilationUnit.packge, dup);
                for (Symbol symbol = jCCompilationUnit.packge; symbol != null && symbol.kind == Kinds.Kind.PCK; symbol = symbol.owner) {
                    symbol.flags_field |= 8388608;
                }
                Name name = this.names.package_info;
                Symbol.ClassSymbol enterClass = this.syms.enterClass(jCCompilationUnit.modle, name, jCCompilationUnit.packge);
                enterClass.flatname = this.names.fromString(((Object) jCCompilationUnit.packge) + "." + ((Object) name));
                enterClass.sourcefile = jCCompilationUnit.sourcefile;
                enterClass.completer = Symbol.Completer.NULL_COMPLETER;
                enterClass.members_field = Scope.WriteableScope.create(enterClass);
                jCCompilationUnit.packge.package_info = enterClass;
            }
            classEnter(jCCompilationUnit.defs, env);
            if (z10) {
                this.todo.append(dup);
            }
        }
        this.log.useSource(useSource);
        this.result = null;
    }

    @Override
    public void visitTree(JCTree jCTree) {
        this.result = null;
    }

    @Override
    public void visitTypeParameter(JCTree.JCTypeParameter jCTypeParameter) {
        Type type = jCTypeParameter.type;
        Type.TypeVar typeVar = type != null ? (Type.TypeVar) type : new Type.TypeVar(jCTypeParameter.name, this.env.info.scope.owner, this.syms.botType);
        jCTypeParameter.type = typeVar;
        if (this.chk.checkUnique(jCTypeParameter.pos(), typeVar.tsym, this.env.info.scope)) {
            this.env.info.scope.enter(typeVar.tsym);
        }
        this.result = typeVar;
    }

    public <T extends JCTree> List<Type> classEnter(List<T> list, Env<AttrContext> env) {
        ListBuffer listBuffer = new ListBuffer();
        while (list.nonEmpty()) {
            Type classEnter = classEnter(list.head, env);
            if (classEnter != null) {
                listBuffer.append(classEnter);
            }
            list = list.tail;
        }
        return listBuffer.toList();
    }
}
