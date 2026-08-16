package org.openjdk.tools.javac.comp;

import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.tools.JavaFileManager;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.javax.tools.StandardLocation;
import org.openjdk.source.tree.ModuleTree;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.code.ClassFinder;
import org.openjdk.tools.javac.code.DeferredLintHandler;
import org.openjdk.tools.javac.code.Directive;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Lint;
import org.openjdk.tools.javac.code.ModuleFinder;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Modules;
import org.openjdk.tools.javac.jvm.ClassWriter;
import org.openjdk.tools.javac.jvm.JNIWriter;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.tree.TreeInfo;
import org.openjdk.tools.javac.util.Abort;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Filter;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.ListBuffer;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;
import org.openjdk.tools.javac.util.Options;

public class Modules extends JCTree.Visitor {
    private static final String ALL_MODULE_PATH = "ALL-MODULE-PATH";
    private static final String ALL_SYSTEM = "ALL-SYSTEM";
    private static final Predicate<Symbol.ModuleSymbol> IS_AUTOMATIC = new Predicate() {
        @Override
        public final boolean test(Object obj) {
            boolean lambda$static$15;
            lambda$static$15 = Modules.lambda$static$15((Symbol.ModuleSymbol) obj);
            return lambda$static$15;
        }
    };
    private static final String XMODULES_PREFIX = "-Xmodule:";
    private Map<Symbol.ModuleSymbol, Set<Directive.ExportsDirective>> addExports;
    private final String addExportsOpt;
    private final String addModsOpt;
    private Map<Symbol.ModuleSymbol, Set<Directive.RequiresDirective>> addReads;
    private final String addReadsOpt;
    private Set<Symbol.ModuleSymbol> allModules;
    private final boolean allowAccessIntoSystem;
    private final boolean allowModules;
    private final Attr attr;
    private final Check chk;
    Symbol.ModuleSymbol defaultModule;
    private final DeferredLintHandler deferredLintHandler;
    private final JavaFileManager fileManager;
    public PackageNameFinder findPackageInFile;
    boolean inInitModules;
    private final Name java_;
    private final Name java_se;
    private final String limitModsOpt;
    private final boolean lintOptions;
    private final Log log;
    private final ModuleFinder moduleFinder;
    private final String moduleVersionOpt;
    public final boolean multiModuleMode;
    private final Names names;
    private final Source source;
    private final Symtab syms;
    private final TypeEnvs typeEnvs;
    private final Types types;
    private final Set<String> extraAddMods = new HashSet();
    private final Set<String> extraLimitMods = new HashSet();
    private Set<Symbol.ModuleSymbol> rootModules = null;
    private final Set<Symbol.ModuleSymbol> warnedMissing = new HashSet();
    int depth = -1;
    private final Symbol.Completer mainCompleter = new Symbol.Completer() {
        @Override
        public void complete(Symbol symbol) throws Symbol.CompletionFailure {
            Symbol.ModuleSymbol findModule = Modules.this.moduleFinder.findModule((Symbol.ModuleSymbol) symbol);
            if (findModule.kind == Kinds.Kind.ERR) {
                findModule.directives = List.nil();
                findModule.exports = List.nil();
                findModule.provides = List.nil();
                findModule.requires = List.nil();
                findModule.uses = List.nil();
            } else if ((findModule.flags_field & 4503599627370496L) != 0) {
                Modules.this.setupAutomaticModule(findModule);
            } else {
                findModule.module_info.complete();
            }
            JavaFileObject javaFileObject = findModule.module_info.classfile;
            if (javaFileObject == null || javaFileObject.getKind() == JavaFileObject.Kind.CLASS) {
                Modules.this.lambda$setCompilationUnitModules$3(findModule);
            }
        }

        public String toString() {
            return "mainCompleter";
        }
    };
    private final Map<Symbol.ModuleSymbol, Set<Symbol.ModuleSymbol>> requiresTransitiveCache = new HashMap();

    public class ModuleVisitor extends JCTree.Visitor {
        private Symbol.ModuleSymbol sym;
        private final Set<Symbol.ModuleSymbol> allRequires = new HashSet();
        private final Map<Symbol.PackageSymbol, List<Directive.ExportsDirective>> allExports = new HashMap();
        private final Map<Symbol.PackageSymbol, List<Directive.OpensDirective>> allOpens = new HashMap();

        public ModuleVisitor() {
        }

        private void checkDuplicateExportsToModule(JCTree.JCExpression jCExpression, Symbol.ModuleSymbol moduleSymbol, Directive.ExportsDirective exportsDirective) {
            List<Symbol.ModuleSymbol> list = exportsDirective.modules;
            if (list != null) {
                Iterator<Symbol.ModuleSymbol> it = list.iterator();
                while (it.hasNext()) {
                    if (moduleSymbol == it.next()) {
                        reportExportsConflictToModule(jCExpression, moduleSymbol);
                    }
                }
            }
        }

        private void checkDuplicateOpensToModule(JCTree.JCExpression jCExpression, Symbol.ModuleSymbol moduleSymbol, Directive.OpensDirective opensDirective) {
            List<Symbol.ModuleSymbol> list = opensDirective.modules;
            if (list != null) {
                Iterator<Symbol.ModuleSymbol> it = list.iterator();
                while (it.hasNext()) {
                    if (moduleSymbol == it.next()) {
                        reportOpensConflictToModule(jCExpression, moduleSymbol);
                    }
                }
            }
        }

        private void ensureJavaBase() {
            if (this.sym.name == Modules.this.names.java_base) {
                return;
            }
            Iterator<Directive.RequiresDirective> it = this.sym.requires.iterator();
            while (it.hasNext()) {
                if (it.next().module.name == Modules.this.names.java_base) {
                    return;
                }
            }
            Directive.RequiresDirective requiresDirective = new Directive.RequiresDirective(Modules.this.syms.enterModule(Modules.this.names.java_base), EnumSet.of(Directive.RequiresFlag.MANDATED));
            Symbol.ModuleSymbol moduleSymbol = this.sym;
            moduleSymbol.requires = moduleSymbol.requires.prepend(requiresDirective);
        }

        public static List lambda$visitExports$1(Symbol.PackageSymbol packageSymbol) {
            return List.nil();
        }

        public void lambda$visitModuleDef$0(JCTree.JCDirective jCDirective) {
            jCDirective.accept(this);
        }

        public static List lambda$visitOpens$2(Symbol.PackageSymbol packageSymbol) {
            return List.nil();
        }

        private Symbol.ModuleSymbol lookupModule(JCTree.JCExpression jCExpression) {
            Symbol.ModuleSymbol findModule = Modules.this.moduleFinder.findModule(TreeInfo.fullName(jCExpression));
            TreeInfo.setSymbol(jCExpression, findModule);
            return findModule;
        }

        private void reportExportsConflict(JCTree.JCExports jCExports, Symbol.PackageSymbol packageSymbol) {
            Modules.this.log.error(jCExports.qualid.pos(), CompilerProperties.Errors.ConflictingExports(packageSymbol));
        }

        private void reportExportsConflictToModule(JCTree.JCExpression jCExpression, Symbol.ModuleSymbol moduleSymbol) {
            Modules.this.log.error(jCExpression.pos(), CompilerProperties.Errors.ConflictingExportsToModule(moduleSymbol));
        }

        private void reportOpensConflict(JCTree.JCOpens jCOpens, Symbol.PackageSymbol packageSymbol) {
            Modules.this.log.error(jCOpens.qualid.pos(), CompilerProperties.Errors.ConflictingOpens(packageSymbol));
        }

        private void reportOpensConflictToModule(JCTree.JCExpression jCExpression, Symbol.ModuleSymbol moduleSymbol) {
            Modules.this.log.error(jCExpression.pos(), CompilerProperties.Errors.ConflictingOpensToModule(moduleSymbol));
        }

        @Override
        public void visitExports(JCTree.JCExports jCExports) {
            List list;
            Symbol.PackageSymbol enterPackage = Modules.this.syms.enterPackage(this.sym, TreeInfo.fullName(jCExports.qualid));
            Modules.this.attr.setPackageSymbols(jCExports.qualid, enterPackage);
            List<Directive.ExportsDirective> computeIfAbsent = this.allExports.computeIfAbsent(enterPackage, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Modules.ModuleVisitor.lambda$visitExports$1((Symbol.PackageSymbol) obj);
                }
            });
            Iterator<Directive.ExportsDirective> it = computeIfAbsent.iterator();
            while (it.hasNext()) {
                it.next();
                reportExportsConflict(jCExports, enterPackage);
            }
            if (jCExports.moduleNames != null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator<JCTree.JCExpression> it2 = jCExports.moduleNames.iterator();
                while (it2.hasNext()) {
                    JCTree.JCExpression next = it2.next();
                    Symbol.ModuleSymbol lookupModule = lookupModule(next);
                    Modules.this.chk.checkModuleExists(next.pos(), lookupModule);
                    Iterator<Directive.ExportsDirective> it3 = computeIfAbsent.iterator();
                    while (it3.hasNext()) {
                        checkDuplicateExportsToModule(next, lookupModule, it3.next());
                    }
                    if (!linkedHashSet.add(lookupModule)) {
                        reportExportsConflictToModule(next, lookupModule);
                    }
                }
                list = List.from(linkedHashSet);
            } else {
                list = null;
            }
            if (list == null || !list.isEmpty()) {
                Directive.ExportsDirective exportsDirective = new Directive.ExportsDirective(enterPackage, list, EnumSet.noneOf(Directive.ExportsFlag.class));
                Symbol.ModuleSymbol moduleSymbol = this.sym;
                moduleSymbol.exports = moduleSymbol.exports.prepend(exportsDirective);
                jCExports.directive = exportsDirective;
                this.allExports.put(enterPackage, computeIfAbsent.prepend(exportsDirective));
            }
        }

        @Override
        public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
            this.sym = (Symbol.ModuleSymbol) Assert.checkNonNull(jCModuleDecl.sym);
            if (jCModuleDecl.getModuleType() == ModuleTree.ModuleKind.OPEN) {
                this.sym.flags.add(Symbol.ModuleFlags.OPEN);
            }
            Symbol.ModuleSymbol moduleSymbol = this.sym;
            moduleSymbol.flags_field |= jCModuleDecl.mods.flags & 131072;
            moduleSymbol.requires = List.nil();
            this.sym.exports = List.nil();
            this.sym.opens = List.nil();
            jCModuleDecl.directives.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Modules.ModuleVisitor.this.lambda$visitModuleDef$0((JCTree.JCDirective) obj);
                }
            });
            Symbol.ModuleSymbol moduleSymbol2 = this.sym;
            moduleSymbol2.requires = moduleSymbol2.requires.reverse();
            Symbol.ModuleSymbol moduleSymbol3 = this.sym;
            moduleSymbol3.exports = moduleSymbol3.exports.reverse();
            Symbol.ModuleSymbol moduleSymbol4 = this.sym;
            moduleSymbol4.opens = moduleSymbol4.opens.reverse();
            ensureJavaBase();
        }

        @Override
        public void visitOpens(JCTree.JCOpens jCOpens) {
            List list;
            Symbol.PackageSymbol enterPackage = Modules.this.syms.enterPackage(this.sym, TreeInfo.fullName(jCOpens.qualid));
            Modules.this.attr.setPackageSymbols(jCOpens.qualid, enterPackage);
            if (this.sym.flags.contains(Symbol.ModuleFlags.OPEN)) {
                Modules.this.log.error(jCOpens.pos(), CompilerProperties.Errors.NoOpensUnlessStrong);
            }
            List<Directive.OpensDirective> computeIfAbsent = this.allOpens.computeIfAbsent(enterPackage, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Modules.ModuleVisitor.lambda$visitOpens$2((Symbol.PackageSymbol) obj);
                }
            });
            Iterator<Directive.OpensDirective> it = computeIfAbsent.iterator();
            while (it.hasNext()) {
                it.next();
                reportOpensConflict(jCOpens, enterPackage);
            }
            if (jCOpens.moduleNames != null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator<JCTree.JCExpression> it2 = jCOpens.moduleNames.iterator();
                while (it2.hasNext()) {
                    JCTree.JCExpression next = it2.next();
                    Symbol.ModuleSymbol lookupModule = lookupModule(next);
                    Modules.this.chk.checkModuleExists(next.pos(), lookupModule);
                    Iterator<Directive.OpensDirective> it3 = computeIfAbsent.iterator();
                    while (it3.hasNext()) {
                        checkDuplicateOpensToModule(next, lookupModule, it3.next());
                    }
                    if (!linkedHashSet.add(lookupModule)) {
                        reportOpensConflictToModule(next, lookupModule);
                    }
                }
                list = List.from(linkedHashSet);
            } else {
                list = null;
            }
            if (list == null || !list.isEmpty()) {
                Directive.OpensDirective opensDirective = new Directive.OpensDirective(enterPackage, list, EnumSet.noneOf(Directive.OpensFlag.class));
                Symbol.ModuleSymbol moduleSymbol = this.sym;
                moduleSymbol.opens = moduleSymbol.opens.prepend(opensDirective);
                jCOpens.directive = opensDirective;
                this.allOpens.put(enterPackage, computeIfAbsent.prepend(opensDirective));
            }
        }

        @Override
        public void visitProvides(JCTree.JCProvides jCProvides) {
        }

        @Override
        public void visitRequires(JCTree.JCRequires jCRequires) {
            Symbol.ModuleSymbol lookupModule = lookupModule(jCRequires.moduleName);
            if (lookupModule.kind != Kinds.Kind.MDL) {
                Modules.this.log.error(jCRequires.moduleName.pos(), CompilerProperties.Errors.ModuleNotFound(lookupModule));
                Modules.this.warnedMissing.add(lookupModule);
                return;
            }
            if (this.allRequires.contains(lookupModule)) {
                Modules.this.log.error(jCRequires.moduleName.pos(), CompilerProperties.Errors.DuplicateRequires(lookupModule));
                return;
            }
            this.allRequires.add(lookupModule);
            EnumSet noneOf = EnumSet.noneOf(Directive.RequiresFlag.class);
            if (jCRequires.isTransitive) {
                noneOf.add(Directive.RequiresFlag.TRANSITIVE);
            }
            if (jCRequires.isStaticPhase) {
                noneOf.add(Directive.RequiresFlag.STATIC_PHASE);
            }
            Directive.RequiresDirective requiresDirective = new Directive.RequiresDirective(lookupModule, noneOf);
            jCRequires.directive = requiresDirective;
            Symbol.ModuleSymbol moduleSymbol = this.sym;
            moduleSymbol.requires = moduleSymbol.requires.prepend(requiresDirective);
        }

        @Override
        public void visitUses(JCTree.JCUses jCUses) {
        }
    }

    public interface PackageNameFinder {
        Name findPackageNameOf(JavaFileObject javaFileObject);
    }

    public class UsesProvidesVisitor extends JCTree.Visitor {
        private final Env<AttrContext> env;
        private final Symbol.ModuleSymbol msym;
        private final Set<Symbol.ClassSymbol> allUses = new HashSet();
        private final Map<Symbol.ClassSymbol, Set<Symbol.ClassSymbol>> allProvides = new HashMap();
        Map<Directive.ProvidesDirective, JCTree.JCProvides> directiveToTreeMap = new HashMap();

        public UsesProvidesVisitor(Symbol.ModuleSymbol moduleSymbol, Env<AttrContext> env) {
            this.msym = moduleSymbol;
            this.env = env;
        }

        private void checkForCorrectness() {
            Iterator<Directive.ProvidesDirective> it = this.msym.provides.iterator();
            while (it.hasNext()) {
                Directive.ProvidesDirective next = it.next();
                JCTree.JCProvides jCProvides = this.directiveToTreeMap.get(next);
                Iterator<Symbol.ClassSymbol> it2 = next.impls.iterator();
                while (it2.hasNext()) {
                    Symbol.PackageSymbol packge = it2.next().packge();
                    if (packge.modle != this.msym) {
                        Modules.this.log.error(jCProvides.pos(), CompilerProperties.Errors.ServiceImplementationNotInRightModule(packge.modle));
                    }
                    Symbol.PackageSymbol packge2 = next.service.packge();
                    Symbol.ModuleSymbol moduleSymbol = packge2.modle;
                    Symbol.ModuleSymbol moduleSymbol2 = this.msym;
                    boolean z10 = true;
                    boolean z11 = false;
                    boolean z12 = moduleSymbol == moduleSymbol2;
                    boolean z13 = moduleSymbol2.visiblePackages.get(packge2.fullname) == packge2;
                    if (z12 && !z13) {
                        Iterator<Directive.ExportsDirective> it3 = this.msym.exports.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                break;
                            } else if (packge2 == it3.next().packge) {
                                z10 = false;
                                break;
                            }
                        }
                        if (z10) {
                            Iterator<Directive.UsesDirective> it4 = this.msym.uses.iterator();
                            while (it4.hasNext()) {
                                if (next.service == it4.next().service) {
                                    break;
                                }
                            }
                        }
                        z11 = z10;
                        if (z11) {
                            Modules.this.log.warning(jCProvides.pos(), CompilerProperties.Warnings.ServiceProvidedButNotExportedOrUsed(next.service));
                        }
                    }
                }
            }
        }

        public static boolean lambda$factoryMethod$1(Symbol symbol) {
            return symbol.kind == Kinds.Kind.MTH;
        }

        public void lambda$visitModuleDef$0(JCTree.JCDirective jCDirective) {
            jCDirective.accept(this);
        }

        public static Set lambda$visitProvides$2(Symbol.ClassSymbol classSymbol) {
            return new HashSet();
        }

        public Symbol.MethodSymbol factoryMethod(Symbol.ClassSymbol classSymbol) {
            Iterator<Symbol> it = classSymbol.members().getSymbolsByName(Modules.this.names.provider, new Filter() {
                @Override
                public final boolean accepts(Object obj) {
                    boolean lambda$factoryMethod$1;
                    lambda$factoryMethod$1 = Modules.UsesProvidesVisitor.lambda$factoryMethod$1((Symbol) obj);
                    return lambda$factoryMethod$1;
                }
            }).iterator();
            while (it.hasNext()) {
                Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) it.next();
                if (methodSymbol.isStatic() && (methodSymbol.flags() & 1) != 0 && methodSymbol.params().isEmpty()) {
                    return methodSymbol;
                }
            }
            return null;
        }

        public Symbol.MethodSymbol noArgsConstructor(Symbol.ClassSymbol classSymbol) {
            Iterator<Symbol> it = classSymbol.members().getSymbolsByName(Modules.this.names.init).iterator();
            while (it.hasNext()) {
                Symbol.MethodSymbol methodSymbol = (Symbol.MethodSymbol) it.next();
                if (methodSymbol.params().isEmpty()) {
                    return methodSymbol;
                }
            }
            return null;
        }

        @Override
        public void visitExports(JCTree.JCExports jCExports) {
            boolean z10;
            boolean z11;
            Iterable<Symbol> symbols = jCExports.directive.packge.members().getSymbols();
            List nil = List.nil();
            Iterator<Symbol> it = symbols.iterator();
            while (true) {
                z10 = true;
                if (!it.hasNext()) {
                    z11 = false;
                    break;
                }
                Symbol next = it.next();
                if (next.kind == Kinds.Kind.TYP) {
                    Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) next;
                    if (next.completer.isTerminal() || classSymbol.classfile.getKind() == JavaFileObject.Kind.CLASS) {
                        break;
                    } else if (classSymbol.classfile.getKind() == JavaFileObject.Kind.SOURCE) {
                        nil = nil.prepend(classSymbol.classfile);
                    }
                }
            }
            nil = List.nil();
            z11 = true;
            Iterator it2 = nil.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = z11;
                    break;
                } else {
                    if (Modules.this.findPackageInFile.findPackageNameOf((JavaFileObject) it2.next()) == jCExports.directive.packge.fullname) {
                        break;
                    }
                }
            }
            if (!z10) {
                Modules.this.log.error(jCExports.qualid.pos(), CompilerProperties.Errors.PackageEmptyOrNotFound(jCExports.directive.packge));
            }
            Symbol.ModuleSymbol moduleSymbol = this.msym;
            moduleSymbol.directives = moduleSymbol.directives.prepend(jCExports.directive);
        }

        @Override
        public void visitModuleDef(JCTree.JCModuleDecl jCModuleDecl) {
            this.msym.directives = List.nil();
            this.msym.provides = List.nil();
            this.msym.uses = List.nil();
            jCModuleDecl.directives.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Modules.UsesProvidesVisitor.this.lambda$visitModuleDef$0((JCTree.JCDirective) obj);
                }
            });
            Symbol.ModuleSymbol moduleSymbol = this.msym;
            moduleSymbol.directives = moduleSymbol.directives.reverse();
            Symbol.ModuleSymbol moduleSymbol2 = this.msym;
            moduleSymbol2.provides = moduleSymbol2.provides.reverse();
            Symbol.ModuleSymbol moduleSymbol3 = this.msym;
            moduleSymbol3.uses = moduleSymbol3.uses.reverse();
            if (this.msym.requires.nonEmpty() && this.msym.requires.head.flags.contains(Directive.RequiresFlag.MANDATED)) {
                Symbol.ModuleSymbol moduleSymbol4 = this.msym;
                moduleSymbol4.directives = moduleSymbol4.directives.prepend(moduleSymbol4.requires.head);
            }
            Symbol.ModuleSymbol moduleSymbol5 = this.msym;
            moduleSymbol5.directives = moduleSymbol5.directives.appendList(List.from((Iterable) Modules.this.addReads.getOrDefault(this.msym, Collections.emptySet())));
            checkForCorrectness();
        }

        @Override
        public void visitOpens(JCTree.JCOpens jCOpens) {
            Modules.this.chk.checkPackageExistsForOpens(jCOpens.qualid, jCOpens.directive.packge);
            Symbol.ModuleSymbol moduleSymbol = this.msym;
            moduleSymbol.directives = moduleSymbol.directives.prepend(jCOpens.directive);
        }

        @Override
        public void visitProvides(JCTree.JCProvides jCProvides) {
            Type attribType = Modules.this.attr.attribType(jCProvides.serviceName, this.env, Modules.this.syms.objectType);
            Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) attribType.tsym;
            if (this.allProvides.containsKey(classSymbol)) {
                Modules.this.log.error(jCProvides.serviceName.pos(), CompilerProperties.Errors.RepeatedProvidesForService(classSymbol));
            }
            ListBuffer listBuffer = new ListBuffer();
            Iterator<JCTree.JCExpression> it = jCProvides.implNames.iterator();
            while (it.hasNext()) {
                JCTree.JCExpression next = it.next();
                AttrContext attrContext = this.env.info;
                boolean z10 = attrContext.visitingServiceImplementation;
                try {
                    attrContext.visitingServiceImplementation = true;
                    Type attribType2 = Modules.this.attr.attribType(next, this.env, Modules.this.syms.objectType);
                    this.env.info.visitingServiceImplementation = z10;
                    Symbol.ClassSymbol classSymbol2 = (Symbol.ClassSymbol) attribType2.tsym;
                    if ((classSymbol2.flags_field & 1) == 0) {
                        Modules.this.log.error(next.pos(), CompilerProperties.Errors.NotDefPublic(classSymbol2, classSymbol2.location()));
                    }
                    Symbol.MethodSymbol factoryMethod = factoryMethod(classSymbol2);
                    if (factoryMethod != null) {
                        if (!Modules.this.types.isSubtype(factoryMethod.type.getReturnType(), attribType)) {
                            Modules.this.log.error(next.pos(), CompilerProperties.Errors.ServiceImplementationProviderReturnMustBeSubtypeOfServiceInterface);
                        }
                    } else if (!Modules.this.types.isSubtype(attribType2, attribType)) {
                        Modules.this.log.error(next.pos(), CompilerProperties.Errors.ServiceImplementationMustBeSubtypeOfServiceInterface);
                    } else if ((classSymbol2.flags() & 1024) != 0) {
                        Modules.this.log.error(next.pos(), CompilerProperties.Errors.ServiceImplementationIsAbstract(classSymbol2));
                    } else if (classSymbol2.isInner()) {
                        Modules.this.log.error(next.pos(), CompilerProperties.Errors.ServiceImplementationIsInner(classSymbol2));
                    } else {
                        Symbol.MethodSymbol noArgsConstructor = noArgsConstructor(classSymbol2);
                        if (noArgsConstructor == null) {
                            Modules.this.log.error(next.pos(), CompilerProperties.Errors.ServiceImplementationDoesntHaveANoArgsConstructor(classSymbol2));
                        } else if ((noArgsConstructor.flags() & 1) == 0) {
                            Modules.this.log.error(next.pos(), CompilerProperties.Errors.ServiceImplementationNoArgsConstructorNotPublic(classSymbol2));
                        }
                    }
                    if (attribType2.hasTag(TypeTag.CLASS)) {
                        if (this.allProvides.computeIfAbsent(classSymbol, new Function() {
                            @Override
                            public final Object apply(Object obj) {
                                Set lambda$visitProvides$2;
                                lambda$visitProvides$2 = Modules.UsesProvidesVisitor.lambda$visitProvides$2((Symbol.ClassSymbol) obj);
                                return lambda$visitProvides$2;
                            }
                        }).add(classSymbol2)) {
                            listBuffer.append(classSymbol2);
                        } else {
                            Modules.this.log.error(next.pos(), CompilerProperties.Errors.DuplicateProvides(classSymbol, classSymbol2));
                        }
                    }
                } catch (Throwable th2) {
                    this.env.info.visitingServiceImplementation = z10;
                    throw th2;
                }
            }
            if (!attribType.hasTag(TypeTag.CLASS) || listBuffer.isEmpty()) {
                return;
            }
            Directive.ProvidesDirective providesDirective = new Directive.ProvidesDirective(classSymbol, listBuffer.toList());
            Symbol.ModuleSymbol moduleSymbol = this.msym;
            moduleSymbol.provides = moduleSymbol.provides.prepend(providesDirective);
            Symbol.ModuleSymbol moduleSymbol2 = this.msym;
            moduleSymbol2.directives = moduleSymbol2.directives.prepend(providesDirective);
            this.directiveToTreeMap.put(providesDirective, jCProvides);
        }

        @Override
        public void visitRequires(JCTree.JCRequires jCRequires) {
            if (jCRequires.directive == null || !Modules.this.allModules().contains(jCRequires.directive.module)) {
                return;
            }
            Modules.this.chk.checkDeprecated(jCRequires.moduleName.pos(), this.msym, jCRequires.directive.module);
            Modules.this.chk.checkModuleRequires(jCRequires.moduleName.pos(), jCRequires.directive);
            Symbol.ModuleSymbol moduleSymbol = this.msym;
            moduleSymbol.directives = moduleSymbol.directives.prepend(jCRequires.directive);
        }

        @Override
        public void visitUses(JCTree.JCUses jCUses) {
            Type attribType = Modules.this.attr.attribType(jCUses.qualid, this.env, Modules.this.syms.objectType);
            if ((TreeInfo.symbol(jCUses.qualid).flags() & 16384) != 0) {
                Modules.this.log.error(jCUses.qualid.pos(), CompilerProperties.Errors.ServiceDefinitionIsEnum(attribType.tsym));
                return;
            }
            if (attribType.hasTag(TypeTag.CLASS)) {
                Symbol.ClassSymbol classSymbol = (Symbol.ClassSymbol) attribType.tsym;
                if (!this.allUses.add(classSymbol)) {
                    Modules.this.log.error(jCUses.pos(), CompilerProperties.Errors.DuplicateUses(classSymbol));
                    return;
                }
                Directive.UsesDirective usesDirective = new Directive.UsesDirective(classSymbol);
                Symbol.ModuleSymbol moduleSymbol = this.msym;
                moduleSymbol.uses = moduleSymbol.uses.prepend(usesDirective);
                Symbol.ModuleSymbol moduleSymbol2 = this.msym;
                moduleSymbol2.directives = moduleSymbol2.directives.prepend(usesDirective);
            }
        }
    }

    public Modules(Context context) {
        context.put((Class<Class>) Modules.class, (Class) this);
        this.log = Log.instance(context);
        Names instance = Names.instance(context);
        this.names = instance;
        this.syms = Symtab.instance(context);
        this.attr = Attr.instance(context);
        this.chk = Check.instance(context);
        this.deferredLintHandler = DeferredLintHandler.instance(context);
        this.typeEnvs = TypeEnvs.instance(context);
        this.moduleFinder = ModuleFinder.instance(context);
        this.types = Types.instance(context);
        JavaFileManager javaFileManager = (JavaFileManager) context.get(JavaFileManager.class);
        this.fileManager = javaFileManager;
        Source instance2 = Source.instance(context);
        this.source = instance2;
        this.allowModules = instance2.allowModules();
        Options instance3 = Options.instance(context);
        this.allowAccessIntoSystem = instance3.isUnset(Option.RELEASE);
        this.lintOptions = instance3.isUnset(Option.XLINT_CUSTOM, "-" + Lint.LintCategory.OPTIONS.option);
        boolean hasLocation = javaFileManager.hasLocation(StandardLocation.MODULE_SOURCE_PATH);
        this.multiModuleMode = hasLocation;
        ClassWriter.instance(context).multiModuleMode = hasLocation;
        JNIWriter.instance(context).multiModuleMode = hasLocation;
        this.java_se = instance.fromString("java.se");
        this.java_ = instance.fromString("java.");
        this.addExportsOpt = instance3.get(Option.ADD_EXPORTS);
        this.addReadsOpt = instance3.get(Option.ADD_READS);
        this.addModsOpt = instance3.get(Option.ADD_MODULES);
        this.limitModsOpt = instance3.get(Option.LIMIT_MODULES);
        this.moduleVersionOpt = instance3.get(Option.MODULE_VERSION);
    }

    public void lambda$initVisiblePackages$19(Symbol.ModuleSymbol moduleSymbol, Map<Name, Symbol.ModuleSymbol> map, Symbol.ModuleSymbol moduleSymbol2, Collection<Directive.ExportsDirective> collection) {
        for (Directive.ExportsDirective exportsDirective : collection) {
            List<Symbol.ModuleSymbol> list = exportsDirective.modules;
            if (list == null || list.contains(moduleSymbol)) {
                Name name = exportsDirective.packge.fullname;
                Symbol.ModuleSymbol moduleSymbol3 = map.get(name);
                if (moduleSymbol3 == null || moduleSymbol3 == moduleSymbol2) {
                    map.put(name, moduleSymbol2);
                    Map<Name, Symbol.PackageSymbol> map2 = moduleSymbol.visiblePackages;
                    Symbol.PackageSymbol packageSymbol = exportsDirective.packge;
                    map2.put(packageSymbol.fullname, packageSymbol);
                } else {
                    Env<AttrContext> env = this.typeEnvs.get(moduleSymbol);
                    JavaFileObject useSource = env != null ? this.log.useSource(env.toplevel.sourcefile) : null;
                    JCDiagnostic.DiagnosticPosition pos = env != null ? env.tree.pos() : null;
                    try {
                        if (moduleSymbol.isUnnamed()) {
                            this.log.error(pos, CompilerProperties.Errors.PackageClashFromRequiresInUnnamed(name, moduleSymbol3, moduleSymbol2));
                        } else {
                            this.log.error(pos, CompilerProperties.Errors.PackageClashFromRequires(moduleSymbol, name, moduleSymbol3, moduleSymbol2));
                        }
                        if (env != null) {
                            this.log.useSource(useSource);
                        }
                    } catch (Throwable th2) {
                        if (env != null) {
                            this.log.useSource(useSource);
                        }
                        throw th2;
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void checkCyclicDependencies(JCTree.JCModuleDecl jCModuleDecl) {
        Iterator<JCTree.JCDirective> it = jCModuleDecl.directives.iterator();
        while (it.hasNext()) {
            JCTree.JCDirective next = it.next();
            if (next.hasTag(JCTree.Tag.REQUIRES)) {
                JCTree.JCRequires jCRequires = (JCTree.JCRequires) next;
                if (jCRequires.directive != null) {
                    HashSet hashSet = new HashSet();
                    List of2 = List.of(jCRequires.directive.module);
                    while (of2.nonEmpty()) {
                        final Symbol.ModuleSymbol moduleSymbol = (Symbol.ModuleSymbol) of2.head;
                        of2 = of2.tail;
                        if (hashSet.add(moduleSymbol)) {
                            moduleSymbol.complete();
                            if ((TagBits.HasDirectWildcard & moduleSymbol.flags()) == 0) {
                                Assert.checkNonNull(moduleSymbol.requires, (Supplier<String>) new Supplier() {
                                    @Override
                                    public final Object get() {
                                        return Symbol.ModuleSymbol.this.toString();
                                    }
                                });
                                Iterator<Directive.RequiresDirective> it2 = moduleSymbol.requires.iterator();
                                while (it2.hasNext()) {
                                    Directive.RequiresDirective next2 = it2.next();
                                    if (!next2.flags.contains(Directive.RequiresFlag.EXTRA)) {
                                        of2 = of2.prepend(next2.module);
                                    }
                                }
                            }
                        }
                    }
                    if (hashSet.contains(jCModuleDecl.sym)) {
                        this.log.error(jCRequires.moduleName.pos(), CompilerProperties.Errors.CyclicRequires(jCRequires.directive.module));
                    }
                    jCModuleDecl.sym.flags_field |= TagBits.HasDirectWildcard;
                }
            }
        }
    }

    private void checkNoAllModulePath() {
        String str = this.addModsOpt;
        if (str == null || !Arrays.asList(str.split(DocLint.SEPARATOR)).contains(ALL_MODULE_PATH)) {
            return;
        }
        this.log.error(CompilerProperties.Errors.AddmodsAllModulePathInvalid);
    }

    private void checkSourceLocation(JCTree.JCCompilationUnit jCCompilationUnit, Symbol.ModuleSymbol moduleSymbol) {
        try {
            JavaFileObject javaFileObject = jCCompilationUnit.sourcefile;
            if (this.fileManager.contains(moduleSymbol.sourceLocation, javaFileObject)) {
                return;
            }
            JavaFileManager.Location location = moduleSymbol.patchLocation;
            if (location == null || !this.fileManager.contains(location, javaFileObject)) {
                JavaFileManager javaFileManager = this.fileManager;
                StandardLocation standardLocation = StandardLocation.SOURCE_OUTPUT;
                if (javaFileManager.hasLocation(standardLocation)) {
                    if (this.fileManager.contains(standardLocation, javaFileObject)) {
                        return;
                    }
                } else if (this.fileManager.contains(StandardLocation.CLASS_OUTPUT, javaFileObject)) {
                    return;
                }
                JavaFileObject useSource = this.log.useSource(jCCompilationUnit.sourcefile);
                try {
                    this.log.error(jCCompilationUnit.pos(), "file.sb.on.source.or.patch.path.for.module", new Object[0]);
                } finally {
                    this.log.useSource(useSource);
                }
            }
        } catch (IOException e10) {
            throw new Error(e10);
        }
    }

    private void completeAutomaticModule(Symbol.ModuleSymbol moduleSymbol) throws Symbol.CompletionFailure {
        ListBuffer listBuffer = new ListBuffer();
        listBuffer.addAll(moduleSymbol.directives);
        ListBuffer listBuffer2 = new ListBuffer();
        for (Symbol.ModuleSymbol moduleSymbol2 : allModules()) {
            if (moduleSymbol2 != this.syms.unnamedModule && moduleSymbol2 != moduleSymbol) {
                Directive.RequiresDirective requiresDirective = new Directive.RequiresDirective(moduleSymbol2, (moduleSymbol2.flags_field & 4503599627370496L) != 0 ? EnumSet.of(Directive.RequiresFlag.TRANSITIVE) : EnumSet.noneOf(Directive.RequiresFlag.class));
                listBuffer.add(requiresDirective);
                listBuffer2.add(requiresDirective);
            }
        }
        Directive.RequiresDirective requiresDirective2 = new Directive.RequiresDirective(this.syms.unnamedModule);
        listBuffer.add(requiresDirective2);
        listBuffer2.add(requiresDirective2);
        moduleSymbol.requires = listBuffer2.toList();
        moduleSymbol.directives = listBuffer.toList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void lambda$setCompilationUnitModules$3(final Symbol.ModuleSymbol moduleSymbol) {
        if (this.inInitModules) {
            moduleSymbol.completer = new Symbol.Completer() {
                @Override
                public final void complete(Symbol symbol) {
                    Modules.this.lambda$completeModule$16(moduleSymbol, symbol);
                }
            };
            return;
        }
        if ((moduleSymbol.flags_field & 4503599627370496L) != 0) {
            completeAutomaticModule(moduleSymbol);
        }
        Assert.checkNonNull(moduleSymbol.requires);
        initAddReads();
        List appendList = moduleSymbol.requires.appendList(List.from(this.addReads.getOrDefault(moduleSymbol, Collections.emptySet())));
        moduleSymbol.requires = appendList;
        while (appendList.nonEmpty()) {
            if (!allModules().contains(((Directive.RequiresDirective) appendList.head).module)) {
                Env<AttrContext> env = this.typeEnvs.get(moduleSymbol);
                if (env != null) {
                    JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
                    try {
                        this.log.error(env.tree, CompilerProperties.Errors.ModuleNotFound(((Directive.RequiresDirective) appendList.head).module));
                    } finally {
                        this.log.useSource(useSource);
                    }
                } else {
                    Assert.check((moduleSymbol.flags() & 4503599627370496L) == 0);
                }
                moduleSymbol.requires = List.filter(moduleSymbol.requires, appendList.head);
            }
            appendList = appendList.tail;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        HashSet hashSet = new HashSet();
        Iterator<Directive.RequiresDirective> it = moduleSymbol.requires.iterator();
        while (it.hasNext()) {
            final Directive.RequiresDirective next = it.next();
            next.module.complete();
            linkedHashSet.add(next.module);
            Set<Symbol.ModuleSymbol> retrieveRequiresTransitive = retrieveRequiresTransitive(next.module);
            Assert.checkNonNull(retrieveRequiresTransitive, (Supplier<String>) new Supplier() {
                @Override
                public final Object get() {
                    String lambda$completeModule$17;
                    lambda$completeModule$17 = Modules.lambda$completeModule$17(Directive.RequiresDirective.this);
                    return lambda$completeModule$17;
                }
            });
            linkedHashSet.addAll(retrieveRequiresTransitive);
            if (next.flags.contains(Directive.RequiresFlag.TRANSITIVE)) {
                hashSet.add(next.module);
                hashSet.addAll(retrieveRequiresTransitive);
            }
        }
        this.requiresTransitiveCache.put(moduleSymbol, hashSet);
        initVisiblePackages(moduleSymbol, linkedHashSet);
        Iterator<Directive.ExportsDirective> it2 = moduleSymbol.exports.iterator();
        while (it2.hasNext()) {
            Symbol.PackageSymbol packageSymbol = it2.next().packge;
            if (packageSymbol != null) {
                packageSymbol.modle = moduleSymbol;
            }
        }
        if (this.allowAccessIntoSystem || (moduleSymbol.flags() & 9007199254740992L) == 0 || moduleSymbol.patchLocation == null) {
            return;
        }
        this.log.error(CompilerProperties.Errors.PatchModuleWithRelease(moduleSymbol));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Set<Symbol.ModuleSymbol> computeTransitiveClosure(Set<? extends Symbol.ModuleSymbol> set, Set<? extends Symbol.ModuleSymbol> set2, Set<Symbol.ModuleSymbol> set3) {
        Symbol.ModuleSymbol moduleSymbol;
        boolean z10;
        List nil = List.nil();
        List nil2 = List.nil();
        for (Symbol.ModuleSymbol moduleSymbol2 : set) {
            if (set2.contains(moduleSymbol2)) {
                nil = nil.prepend(moduleSymbol2);
            } else {
                nil2 = nil2.prepend(moduleSymbol2);
            }
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(this.syms.java_base);
        while (true) {
            if (!nil.nonEmpty() && !nil2.nonEmpty()) {
                return linkedHashSet;
            }
            if (nil.nonEmpty()) {
                moduleSymbol = (Symbol.ModuleSymbol) nil.head;
                nil = nil.tail;
                z10 = true;
            } else {
                moduleSymbol = (Symbol.ModuleSymbol) nil2.head;
                nil2 = nil2.tail;
                z10 = false;
            }
            if (set3 == null || set3.contains(moduleSymbol)) {
                if (linkedHashSet.add(moduleSymbol) && moduleSymbol != this.syms.unnamedModule && (moduleSymbol.flags_field & 4503599627370496L) == 0) {
                    moduleSymbol.complete();
                    if (moduleSymbol.kind == Kinds.Kind.ERR && ((z10 || set.contains(moduleSymbol)) && this.warnedMissing.add(moduleSymbol))) {
                        this.log.error(CompilerProperties.Errors.ModuleNotFound(moduleSymbol));
                    }
                    Iterator<Directive.RequiresDirective> it = moduleSymbol.requires.iterator();
                    while (it.hasNext()) {
                        Directive.RequiresDirective next = it.next();
                        if (next.module != this.syms.java_base) {
                            if ((next.isTransitive() && z10) || set2.contains(moduleSymbol)) {
                                nil = nil.prepend(next.module);
                            } else {
                                nil2 = nil2.prepend(next.module);
                            }
                        }
                    }
                }
            }
        }
    }

    private void dprintln(String str) {
        for (int i10 = 0; i10 < this.depth; i10++) {
            System.err.print(GlideException.a.f59088e);
        }
        System.err.println(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5, types: [org.openjdk.tools.javac.tree.JCTree] */
    private void enterModule(JCTree.JCCompilationUnit jCCompilationUnit, Symbol.ClassSymbol classSymbol, Set<Symbol.ModuleSymbol> set) {
        Symbol.ModuleSymbol enterModule;
        boolean isNameCompatible = jCCompilationUnit.sourcefile.isNameCompatible("module-info", JavaFileObject.Kind.SOURCE);
        if (jCCompilationUnit.getModuleDecl() == null) {
            if (isNameCompatible && this.multiModuleMode) {
                boolean isEmpty = jCCompilationUnit.defs.isEmpty();
                JCTree.JCCompilationUnit jCCompilationUnit2 = jCCompilationUnit;
                if (!isEmpty) {
                    jCCompilationUnit2 = jCCompilationUnit.defs.head;
                }
                this.log.error(jCCompilationUnit2.pos(), CompilerProperties.Errors.ExpectedModule);
                return;
            }
            return;
        }
        JCTree.JCModuleDecl moduleDecl = jCCompilationUnit.getModuleDecl();
        if (!isNameCompatible) {
            this.log.error(moduleDecl.pos(), CompilerProperties.Errors.ModuleDeclSbInModuleInfoJava);
        }
        Name fullName = TreeInfo.fullName(moduleDecl.qualId);
        if (classSymbol != null) {
            enterModule = (Symbol.ModuleSymbol) classSymbol.owner;
            Assert.checkNonNull(enterModule.name);
            if (enterModule.name != TreeInfo.fullName(moduleDecl.qualId)) {
                this.log.error(moduleDecl.pos(), CompilerProperties.Errors.ModuleNameMismatch(fullName, enterModule.name));
            }
        } else {
            enterModule = this.syms.enterModule(fullName);
            JavaFileObject javaFileObject = enterModule.module_info.sourcefile;
            if (javaFileObject != null && javaFileObject != jCCompilationUnit.sourcefile) {
                this.log.error(moduleDecl.pos(), CompilerProperties.Errors.DuplicateModule(enterModule));
                return;
            }
        }
        enterModule.completer = getSourceCompleter(jCCompilationUnit);
        enterModule.module_info.sourcefile = jCCompilationUnit.sourcefile;
        moduleDecl.sym = enterModule;
        if (this.multiModuleMode || set.isEmpty()) {
            set.add(enterModule);
        } else {
            this.log.error(jCCompilationUnit.pos(), CompilerProperties.Errors.TooManyModules);
        }
        Env<AttrContext> env = new Env<>(moduleDecl, null);
        env.toplevel = jCCompilationUnit;
        this.typeEnvs.put(enterModule, env);
    }

    private Set<Symbol.ModuleSymbol> enterModules(List<JCTree.JCCompilationUnit> list, Symbol.ClassSymbol classSymbol) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<JCTree.JCCompilationUnit> it = list.iterator();
        while (it.hasNext()) {
            JCTree.JCCompilationUnit next = it.next();
            JavaFileObject useSource = this.log.useSource(next.sourcefile);
            try {
                enterModule(next, classSymbol, linkedHashSet);
            } finally {
                this.log.useSource(useSource);
            }
        }
        return linkedHashSet;
    }

    private JavaFileManager.Location getModuleLocation(JCTree.JCCompilationUnit jCCompilationUnit) throws IOException {
        JavaFileObject javaFileObject = jCCompilationUnit.sourcefile;
        JavaFileManager.Location locationForModule = this.fileManager.getLocationForModule(StandardLocation.MODULE_SOURCE_PATH, javaFileObject);
        if (locationForModule != null) {
            return locationForModule;
        }
        JavaFileManager javaFileManager = this.fileManager;
        StandardLocation standardLocation = StandardLocation.SOURCE_OUTPUT;
        if (!javaFileManager.hasLocation(standardLocation)) {
            standardLocation = StandardLocation.CLASS_OUTPUT;
        }
        return this.fileManager.getLocationForModule(standardLocation, javaFileObject);
    }

    private Symbol.Completer getSourceCompleter(final JCTree.JCCompilationUnit jCCompilationUnit) {
        return new Symbol.Completer() {
            @Override
            public void complete(Symbol symbol) throws Symbol.CompletionFailure {
                Symbol.ModuleSymbol moduleSymbol = (Symbol.ModuleSymbol) symbol;
                moduleSymbol.flags_field |= TagBits.HasUnresolvedMemberTypes;
                ModuleVisitor moduleVisitor = new ModuleVisitor();
                JavaFileObject useSource = Modules.this.log.useSource(jCCompilationUnit.sourcefile);
                JCTree.JCModuleDecl moduleDecl = jCCompilationUnit.getModuleDecl();
                JCDiagnostic.DiagnosticPosition pos = Modules.this.deferredLintHandler.setPos(moduleDecl.pos());
                try {
                    moduleDecl.accept(moduleVisitor);
                    Modules.this.lambda$setCompilationUnitModules$3(moduleSymbol);
                    Modules.this.checkCyclicDependencies(moduleDecl);
                } finally {
                    Modules.this.log.useSource(useSource);
                    Modules.this.deferredLintHandler.setPos(pos);
                    moduleSymbol.flags_field &= -268435457;
                }
            }

            public String toString() {
                return "SourceCompleter: " + jCCompilationUnit.sourcefile.getName();
            }
        };
    }

    private Symbol.Completer getUnnamedModuleCompleter() {
        this.moduleFinder.findAllModules();
        return new Symbol.Completer() {
            @Override
            public void complete(Symbol symbol) throws Symbol.CompletionFailure {
                if (Modules.this.inInitModules) {
                    symbol.completer = this;
                    return;
                }
                Symbol.ModuleSymbol moduleSymbol = (Symbol.ModuleSymbol) symbol;
                HashSet hashSet = new HashSet(Modules.this.allModules());
                hashSet.remove(Modules.this.syms.unnamedModule);
                Iterator<E> it = hashSet.iterator();
                while (it.hasNext()) {
                    ((Symbol.ModuleSymbol) it.next()).complete();
                }
                Modules.this.initVisiblePackages(moduleSymbol, hashSet);
            }

            public String toString() {
                return "unnamedModule Completer";
            }
        };
    }

    private void initAddExports() {
        Symbol.ModuleSymbol enterModule;
        if (this.addExports != null) {
            return;
        }
        this.addExports = new LinkedHashMap();
        Set<Symbol.ModuleSymbol> hashSet = new HashSet<>();
        if (this.addExportsOpt == null) {
            return;
        }
        Pattern compile = Pattern.compile("([^/]+)/([^=]+)=(.*)");
        for (String str : this.addExportsOpt.split("\u0000+")) {
            if (!str.isEmpty()) {
                Matcher matcher = compile.matcher(str);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    String group3 = matcher.group(3);
                    if (isValidName(group)) {
                        Symbol.ModuleSymbol enterModule2 = this.syms.enterModule(this.names.fromString(group));
                        if (isKnownModule(enterModule2, hashSet) && isValidName(group2)) {
                            if (this.allowAccessIntoSystem || (enterModule2.flags() & 9007199254740992L) == 0) {
                                Symbol.PackageSymbol enterPackage = this.syms.enterPackage(enterModule2, this.names.fromString(group2));
                                enterPackage.modle = enterModule2;
                                List nil = List.nil();
                                for (String str2 : group3.split("[ ,]+")) {
                                    if (str2.equals("ALL-UNNAMED")) {
                                        enterModule = this.syms.unnamedModule;
                                    } else {
                                        if (isValidName(str2)) {
                                            enterModule = this.syms.enterModule(this.names.fromString(str2));
                                            if (!isKnownModule(enterModule, hashSet)) {
                                            }
                                        }
                                    }
                                    nil = nil.prepend(enterModule);
                                }
                                this.addExports.computeIfAbsent(enterModule2, new Function() {
                                    @Override
                                    public final Object apply(Object obj) {
                                        Set lambda$initAddExports$20;
                                        lambda$initAddExports$20 = Modules.lambda$initAddExports$20((Symbol.ModuleSymbol) obj);
                                        return lambda$initAddExports$20;
                                    }
                                }).add(new Directive.ExportsDirective(enterPackage, nil));
                            } else {
                                this.log.error(CompilerProperties.Errors.AddExportsWithRelease(enterModule2));
                            }
                        }
                    }
                }
            }
        }
    }

    private void initAddReads() {
        Symbol.ModuleSymbol enterModule;
        if (this.addReads != null) {
            return;
        }
        this.addReads = new LinkedHashMap();
        if (this.addReadsOpt == null) {
            return;
        }
        Pattern compile = Pattern.compile("([^=]+)=(.*)");
        for (String str : this.addReadsOpt.split("\u0000+")) {
            if (!str.isEmpty()) {
                Matcher matcher = compile.matcher(str);
                if (matcher.matches()) {
                    String group = matcher.group(1);
                    String group2 = matcher.group(2);
                    if (isValidName(group)) {
                        Symbol.ModuleSymbol enterModule2 = this.syms.enterModule(this.names.fromString(group));
                        if (this.allModules.contains(enterModule2)) {
                            if (this.allowAccessIntoSystem || (enterModule2.flags() & 9007199254740992L) == 0) {
                                for (String str2 : group2.split("[ ,]+", -1)) {
                                    if (str2.equals("ALL-UNNAMED")) {
                                        enterModule = this.syms.unnamedModule;
                                    } else {
                                        if (isValidName(str2)) {
                                            enterModule = this.syms.enterModule(this.names.fromString(str2));
                                            if (!this.allModules.contains(enterModule)) {
                                                if (this.lintOptions) {
                                                    this.log.warning(Lint.LintCategory.OPTIONS, CompilerProperties.Warnings.ModuleForOptionNotFound(Option.ADD_READS, enterModule));
                                                }
                                            }
                                        }
                                    }
                                    this.addReads.computeIfAbsent(enterModule2, new Function() {
                                        @Override
                                        public final Object apply(Object obj) {
                                            Set lambda$initAddReads$21;
                                            lambda$initAddReads$21 = Modules.lambda$initAddReads$21((Symbol.ModuleSymbol) obj);
                                            return lambda$initAddReads$21;
                                        }
                                    }).add(new Directive.RequiresDirective(enterModule, EnumSet.of(Directive.RequiresFlag.EXTRA)));
                                }
                            } else {
                                this.log.error(CompilerProperties.Errors.AddReadsWithRelease(enterModule2));
                            }
                        } else if (this.lintOptions) {
                            this.log.warning(CompilerProperties.Warnings.ModuleForOptionNotFound(Option.ADD_READS, enterModule2));
                        }
                    }
                }
            }
        }
    }

    public void initVisiblePackages(final Symbol.ModuleSymbol moduleSymbol, Collection<Symbol.ModuleSymbol> collection) {
        initAddExports();
        moduleSymbol.visiblePackages = new LinkedHashMap();
        moduleSymbol.readModules = new HashSet(collection);
        final HashMap hashMap = new HashMap();
        for (Symbol.ModuleSymbol moduleSymbol2 : collection) {
            if (moduleSymbol2 != this.syms.unnamedModule) {
                lambda$initVisiblePackages$19(moduleSymbol, hashMap, moduleSymbol2, moduleSymbol2.exports);
            }
        }
        this.addExports.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                Modules.this.lambda$initVisiblePackages$19(moduleSymbol, hashMap, (Symbol.ModuleSymbol) obj, (Set) obj2);
            }
        });
    }

    public static Modules instance(Context context) {
        Modules modules = (Modules) context.get(Modules.class);
        return modules == null ? new Modules(context) : modules;
    }

    private boolean isKnownModule(Symbol.ModuleSymbol moduleSymbol, Set<Symbol.ModuleSymbol> set) {
        if (this.allModules.contains(moduleSymbol)) {
            return true;
        }
        if (set.contains(moduleSymbol)) {
            return false;
        }
        if (this.lintOptions) {
            this.log.warning(Lint.LintCategory.OPTIONS, CompilerProperties.Warnings.ModuleForOptionNotFound(Option.ADD_EXPORTS, moduleSymbol));
        }
        set.add(moduleSymbol);
        return false;
    }

    private boolean isValidName(CharSequence charSequence) {
        return SourceVersion.isName(charSequence, Source.toSourceVersion(this.source));
    }

    public void lambda$completeModule$16(Symbol.ModuleSymbol moduleSymbol, Symbol symbol) throws Symbol.CompletionFailure {
        lambda$setCompilationUnitModules$3(moduleSymbol);
    }

    public static String lambda$completeModule$17(Directive.RequiresDirective requiresDirective) {
        return "no entry in cache for " + ((Object) requiresDirective.module);
    }

    public static void lambda$enter$1(Set set) {
    }

    public void lambda$getUsesProvidesCompleter$4(Symbol symbol) throws Symbol.CompletionFailure {
        Symbol.ModuleSymbol moduleSymbol = (Symbol.ModuleSymbol) symbol;
        moduleSymbol.complete();
        Env<AttrContext> env = this.typeEnvs.get(moduleSymbol);
        UsesProvidesVisitor usesProvidesVisitor = new UsesProvidesVisitor(moduleSymbol, env);
        JavaFileObject useSource = this.log.useSource(env.toplevel.sourcefile);
        JCTree.JCModuleDecl moduleDecl = env.toplevel.getModuleDecl();
        JCDiagnostic.DiagnosticPosition pos = this.deferredLintHandler.setPos(moduleDecl.pos());
        try {
            moduleDecl.accept(usesProvidesVisitor);
        } finally {
            this.log.useSource(useSource);
            this.deferredLintHandler.setPos(pos);
        }
    }

    public static Set lambda$initAddExports$20(Symbol.ModuleSymbol moduleSymbol) {
        return new LinkedHashSet();
    }

    public static Set lambda$initAddReads$21(Symbol.ModuleSymbol moduleSymbol) {
        return new HashSet();
    }

    public void lambda$initModules$0(Set set) {
        Assert.checkNull(this.rootModules);
        Assert.checkNull(this.allModules);
        this.rootModules = set;
        setupAllModules();
        Assert.checkNonNull(this.allModules);
        this.inInitModules = false;
    }

    public static boolean lambda$null$8(Directive.ExportsDirective exportsDirective) {
        return exportsDirective.modules == null;
    }

    public static String lambda$retrieveRequiresTransitive$18(Symbol.ModuleSymbol moduleSymbol, Symbol.ModuleSymbol moduleSymbol2) {
        return ((Object) moduleSymbol) + ".requires == null; " + ((Object) moduleSymbol2);
    }

    public static boolean lambda$setupAllModules$10(Symbol.ModuleSymbol moduleSymbol) {
        return true;
    }

    public static void lambda$setupAllModules$11(Set set, Set set2, Symbol.ModuleSymbol moduleSymbol) {
        set.add(moduleSymbol);
        if (set2 != null) {
            set2.add(moduleSymbol);
        }
    }

    public static boolean lambda$setupAllModules$12(Symbol.ModuleSymbol moduleSymbol) {
        return moduleSymbol.resolutionFlags.contains(Symbol.ModuleResolutionFlags.WARN_INCUBATING);
    }

    public static String lambda$setupAllModules$13(Symbol.ModuleSymbol moduleSymbol) {
        return moduleSymbol.name.toString();
    }

    public boolean lambda$setupAllModules$5(Set set, Symbol.ModuleSymbol moduleSymbol) {
        return set == null ? this.moduleFinder.findModule(moduleSymbol).kind != Kinds.Kind.ERR : set.contains(moduleSymbol);
    }

    public static boolean lambda$setupAllModules$6(Symbol.ModuleSymbol moduleSymbol) {
        return (moduleSymbol.flags() & 9007199254740992L) != 0;
    }

    public static boolean lambda$setupAllModules$7(Symbol.ModuleSymbol moduleSymbol) {
        moduleSymbol.complete();
        return !moduleSymbol.resolutionFlags.contains(Symbol.ModuleResolutionFlags.DO_NOT_RESOLVE_BY_DEFAULT);
    }

    public boolean lambda$setupAllModules$9(Symbol.ModuleSymbol moduleSymbol) {
        moduleSymbol.complete();
        return !moduleSymbol.name.startsWith(this.java_) && moduleSymbol.exports.stream().anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$null$8;
                lambda$null$8 = Modules.lambda$null$8((Directive.ExportsDirective) obj);
                return lambda$null$8;
            }
        });
    }

    public static boolean lambda$static$15(Symbol.ModuleSymbol moduleSymbol) {
        return (moduleSymbol.flags_field & 4503599627370496L) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Set<Symbol.ModuleSymbol> retrieveRequiresTransitive(final Symbol.ModuleSymbol moduleSymbol) {
        Set<Symbol.ModuleSymbol> set = this.requiresTransitiveCache.get(moduleSymbol);
        if (set == null) {
            set = new HashSet<>();
            HashSet hashSet = new HashSet();
            List of2 = List.of(moduleSymbol);
            while (of2.nonEmpty()) {
                final Symbol.ModuleSymbol moduleSymbol2 = (Symbol.ModuleSymbol) of2.head;
                of2 = of2.tail;
                if (hashSet.add(moduleSymbol2)) {
                    set.add(moduleSymbol2);
                    moduleSymbol2.complete();
                    if (moduleSymbol2 != this.syms.unnamedModule) {
                        Assert.checkNonNull(moduleSymbol2.requires, (Supplier<String>) new Supplier() {
                            @Override
                            public final Object get() {
                                String lambda$retrieveRequiresTransitive$18;
                                lambda$retrieveRequiresTransitive$18 = Modules.lambda$retrieveRequiresTransitive$18(Symbol.ModuleSymbol.this, moduleSymbol);
                                return lambda$retrieveRequiresTransitive$18;
                            }
                        });
                        for (Directive.RequiresDirective requiresDirective : moduleSymbol2.requires) {
                            if (requiresDirective.isTransitive()) {
                                of2 = of2.prepend(requiresDirective.module);
                            }
                        }
                    } else {
                        Iterator<Symbol.ModuleSymbol> it = allModules().iterator();
                        while (it.hasNext()) {
                            of2 = of2.prepend(it.next());
                        }
                    }
                }
            }
            set.remove(moduleSymbol);
        }
        return set;
    }

    private void setCompilationUnitModules(List<JCTree.JCCompilationUnit> list, Set<Symbol.ModuleSymbol> set, Symbol.ClassSymbol classSymbol) {
        Symbol.ModuleSymbol enterModule;
        JavaFileObject javaFileForInput;
        Name fromString;
        Symbol.ModuleSymbol moduleSymbol = null;
        if (!this.multiModuleMode) {
            if (this.defaultModule == null) {
                String singleModuleOverride = singleModuleOverride(list);
                int size = set.size();
                if (size == 0) {
                    Symbol.ModuleSymbol findSingleModule = this.moduleFinder.findSingleModule();
                    this.defaultModule = findSingleModule;
                    if (findSingleModule != this.syms.unnamedModule) {
                        checkNoAllModulePath();
                        this.defaultModule.complete();
                        this.defaultModule.completer = new Symbol.Completer() {
                            @Override
                            public final void complete(Symbol symbol) {
                                Modules.this.lambda$setCompilationUnitModules$2(symbol);
                            }
                        };
                        this.defaultModule.sourceLocation = StandardLocation.SOURCE_PATH;
                    } else if (singleModuleOverride != null) {
                        checkNoAllModulePath();
                        Symbol.ModuleSymbol findModule = this.moduleFinder.findModule(this.names.fromString(singleModuleOverride));
                        this.defaultModule = findModule;
                        findModule.patchOutputLocation = StandardLocation.CLASS_OUTPUT;
                    } else {
                        findSingleModule.completer = getUnnamedModuleCompleter();
                        Symbol.ModuleSymbol moduleSymbol2 = this.defaultModule;
                        moduleSymbol2.sourceLocation = StandardLocation.SOURCE_PATH;
                        moduleSymbol2.classLocation = StandardLocation.CLASS_PATH;
                    }
                    set.add(this.defaultModule);
                } else if (size != 1) {
                    Assert.error("too many modules");
                } else {
                    checkNoAllModulePath();
                    Symbol.ModuleSymbol next = set.iterator().next();
                    this.defaultModule = next;
                    next.sourceLocation = StandardLocation.SOURCE_PATH;
                    JavaFileManager javaFileManager = this.fileManager;
                    StandardLocation standardLocation = StandardLocation.PATCH_MODULE_PATH;
                    if (javaFileManager.hasLocation(standardLocation)) {
                        try {
                            Symbol.ModuleSymbol moduleSymbol3 = this.defaultModule;
                            moduleSymbol3.patchLocation = this.fileManager.getLocationForModule(standardLocation, moduleSymbol3.name.toString());
                        } catch (IOException e10) {
                            throw new Error(e10);
                        }
                    }
                    Symbol.ModuleSymbol moduleSymbol4 = this.defaultModule;
                    if (moduleSymbol4.patchLocation == null) {
                        moduleSymbol4.classLocation = StandardLocation.CLASS_OUTPUT;
                    } else {
                        moduleSymbol4.patchOutputLocation = StandardLocation.CLASS_OUTPUT;
                    }
                }
            } else if (set.size() == 1) {
                moduleSymbol = set.iterator().next();
                moduleSymbol.complete();
                moduleSymbol.completer = new Symbol.Completer() {
                    @Override
                    public final void complete(Symbol symbol) {
                        Modules.this.lambda$setCompilationUnitModules$3(symbol);
                    }
                };
            } else {
                Assert.check(set.isEmpty());
                String singleModuleOverride2 = singleModuleOverride(list);
                moduleSymbol = singleModuleOverride2 != null ? this.moduleFinder.findModule(this.names.fromString(singleModuleOverride2)) : this.defaultModule;
                set.add(moduleSymbol);
            }
            Symbol.ModuleSymbol moduleSymbol5 = this.defaultModule;
            Symbol.ModuleSymbol moduleSymbol6 = this.syms.unnamedModule;
            if (moduleSymbol5 != moduleSymbol6) {
                moduleSymbol6.completer = getUnnamedModuleCompleter();
                this.syms.unnamedModule.classLocation = StandardLocation.CLASS_PATH;
            }
            if (moduleSymbol == null) {
                moduleSymbol = this.defaultModule;
            }
            Iterator<JCTree.JCCompilationUnit> it = list.iterator();
            while (it.hasNext()) {
                JCTree.JCCompilationUnit next2 = it.next();
                Symbol.ModuleSymbol moduleSymbol7 = this.defaultModule;
                if (moduleSymbol7 != this.syms.unnamedModule) {
                    JavaFileManager.Location location = moduleSymbol7.sourceLocation;
                    StandardLocation standardLocation2 = StandardLocation.SOURCE_PATH;
                    if (location == standardLocation2 && this.fileManager.hasLocation(standardLocation2)) {
                        checkSourceLocation(next2, moduleSymbol);
                    }
                }
                next2.modle = moduleSymbol;
            }
            return;
        }
        checkNoAllModulePath();
        Iterator<JCTree.JCCompilationUnit> it2 = list.iterator();
        while (it2.hasNext()) {
            JCTree.JCCompilationUnit next3 = it2.next();
            if (next3.defs.isEmpty()) {
                next3.modle = this.syms.unnamedModule;
            } else {
                JavaFileObject useSource = this.log.useSource(next3.sourcefile);
                try {
                    try {
                        JavaFileManager.Location moduleLocation = getModuleLocation(next3);
                        JavaFileManager javaFileManager2 = this.fileManager;
                        StandardLocation standardLocation3 = StandardLocation.PATCH_MODULE_PATH;
                        JavaFileManager.Location locationForModule = javaFileManager2.hasLocation(standardLocation3) ? this.fileManager.getLocationForModule(standardLocation3, next3.sourcefile) : null;
                        if (locationForModule != null) {
                            Name fromString2 = this.names.fromString(this.fileManager.inferModuleName(locationForModule));
                            Symbol.ModuleSymbol findModule2 = this.moduleFinder.findModule(fromString2);
                            next3.modle = findModule2;
                            set.add(findModule2);
                            if (moduleLocation != null && fromString2 != (fromString = this.names.fromString(this.fileManager.inferModuleName(moduleLocation)))) {
                                this.log.error(next3.pos(), CompilerProperties.Errors.FilePatchedAndMsp(fromString2, fromString));
                            }
                        } else if (moduleLocation != null) {
                            if (next3.getModuleDecl() != null && ((javaFileForInput = this.fileManager.getJavaFileForInput(moduleLocation, "module-info", JavaFileObject.Kind.SOURCE)) == null || !this.fileManager.isSameFile(javaFileForInput, next3.sourcefile))) {
                                this.log.error(next3.pos(), CompilerProperties.Errors.ModuleNotFoundOnModuleSourcePath);
                            }
                            Name fromString3 = this.names.fromString(this.fileManager.inferModuleName(moduleLocation));
                            JCTree.JCModuleDecl moduleDecl = next3.getModuleDecl();
                            if (moduleDecl != null) {
                                enterModule = moduleDecl.sym;
                                Name name = enterModule.name;
                                if (name != fromString3) {
                                    this.log.error(moduleDecl.qualId, CompilerProperties.Errors.ModuleNameMismatch(name, fromString3));
                                }
                            } else {
                                if (next3.getPackage() == null) {
                                    this.log.error(next3.pos(), CompilerProperties.Errors.UnnamedPkgNotAllowedNamedModules);
                                }
                                enterModule = this.syms.enterModule(fromString3);
                            }
                            if (enterModule.sourceLocation == null) {
                                enterModule.sourceLocation = moduleLocation;
                                if (this.fileManager.hasLocation(standardLocation3)) {
                                    enterModule.patchLocation = this.fileManager.getLocationForModule(standardLocation3, enterModule.name.toString());
                                }
                                JavaFileManager javaFileManager3 = this.fileManager;
                                StandardLocation standardLocation4 = StandardLocation.CLASS_OUTPUT;
                                if (javaFileManager3.hasLocation(standardLocation4)) {
                                    JavaFileManager.Location locationForModule2 = this.fileManager.getLocationForModule(standardLocation4, enterModule.name.toString());
                                    if (enterModule.patchLocation == null) {
                                        enterModule.classLocation = locationForModule2;
                                    } else {
                                        enterModule.patchOutputLocation = locationForModule2;
                                    }
                                }
                            }
                            next3.modle = enterModule;
                            set.add(enterModule);
                        } else {
                            if (classSymbol != null) {
                                Symbol.ModuleSymbol moduleSymbol8 = classSymbol.packge().modle;
                                Symbol.ModuleSymbol moduleSymbol9 = this.syms.unnamedModule;
                                if (moduleSymbol8 == moduleSymbol9) {
                                    next3.modle = moduleSymbol9;
                                }
                            }
                            if (next3.getModuleDecl() != null) {
                                this.log.error(next3.pos(), CompilerProperties.Errors.ModuleNotFoundOnModuleSourcePath);
                            } else {
                                this.log.error(next3.pos(), CompilerProperties.Errors.NotInModuleOnModuleSourcePath);
                            }
                            next3.modle = this.syms.errModule;
                        }
                        this.log.useSource(useSource);
                    } catch (IOException e11) {
                        throw new Error(e11);
                    }
                } catch (Throwable th2) {
                    this.log.useSource(useSource);
                    throw th2;
                }
            }
        }
        Symbol.ModuleSymbol moduleSymbol10 = this.syms.unnamedModule;
        if (moduleSymbol10.sourceLocation == null) {
            moduleSymbol10.completer = getUnnamedModuleCompleter();
            Symbol.ModuleSymbol moduleSymbol11 = this.syms.unnamedModule;
            moduleSymbol11.sourceLocation = StandardLocation.SOURCE_PATH;
            moduleSymbol11.classLocation = StandardLocation.CLASS_PATH;
        }
        this.defaultModule = this.syms.unnamedModule;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setupAllModules() {
        Stream filter;
        Predicate predicate;
        Assert.checkNonNull(this.rootModules);
        Assert.checkNull(this.allModules);
        final Set<Symbol.ModuleSymbol> set = null;
        if (this.limitModsOpt != null || !this.extraLimitMods.isEmpty()) {
            Set<? extends Symbol.ModuleSymbol> hashSet = new HashSet<>();
            String str = this.limitModsOpt;
            if (str != null) {
                for (String str2 : str.split(DocLint.SEPARATOR)) {
                    if (isValidName(str2)) {
                        hashSet.add(this.syms.enterModule(this.names.fromString(str2)));
                    }
                }
            }
            Iterator<String> it = this.extraLimitMods.iterator();
            while (it.hasNext()) {
                hashSet.add(this.syms.enterModule(this.names.fromString(it.next())));
            }
            set = computeTransitiveClosure(hashSet, this.rootModules, null);
            set.addAll(this.rootModules);
            if (this.lintOptions) {
                for (Symbol.ModuleSymbol moduleSymbol : hashSet) {
                    if (!set.contains(moduleSymbol)) {
                        this.log.warning(Lint.LintCategory.OPTIONS, CompilerProperties.Warnings.ModuleForOptionNotFound(Option.LIMIT_MODULES, moduleSymbol));
                    }
                }
            }
        }
        Predicate predicate2 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$setupAllModules$5;
                lambda$setupAllModules$5 = Modules.this.lambda$setupAllModules$5(set, (Symbol.ModuleSymbol) obj);
                return lambda$setupAllModules$5;
            }
        };
        Predicate predicate3 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$setupAllModules$6;
                lambda$setupAllModules$6 = Modules.lambda$setupAllModules$6((Symbol.ModuleSymbol) obj);
                return lambda$setupAllModules$6;
            }
        };
        Predicate predicate4 = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$setupAllModules$7;
                lambda$setupAllModules$7 = Modules.lambda$setupAllModules$7((Symbol.ModuleSymbol) obj);
                return lambda$setupAllModules$7;
            }
        };
        final Set<? extends Symbol.ModuleSymbol> linkedHashSet = new LinkedHashSet<>();
        if (this.rootModules.contains(this.syms.unnamedModule)) {
            Symbol.ModuleSymbol module = this.syms.getModule(this.java_se);
            if (module == null || !(set == null || set.contains(module))) {
                predicate = new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$setupAllModules$10;
                        lambda$setupAllModules$10 = Modules.lambda$setupAllModules$10((Symbol.ModuleSymbol) obj);
                        return lambda$setupAllModules$10;
                    }
                };
            } else {
                predicate = new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        boolean lambda$setupAllModules$9;
                        lambda$setupAllModules$9 = Modules.this.lambda$setupAllModules$9((Symbol.ModuleSymbol) obj);
                        return lambda$setupAllModules$9;
                    }
                };
                linkedHashSet.add(module);
            }
            Iterator it2 = new HashSet(this.syms.getAllModules()).iterator();
            while (it2.hasNext()) {
                Symbol.ModuleSymbol moduleSymbol2 = (Symbol.ModuleSymbol) it2.next();
                if (predicate3.test(moduleSymbol2) && predicate2.test(moduleSymbol2) && predicate.test(moduleSymbol2) && predicate4.test(moduleSymbol2)) {
                    linkedHashSet.add(moduleSymbol2);
                }
            }
        }
        linkedHashSet.addAll(this.rootModules);
        if (this.addModsOpt != null || !this.extraAddMods.isEmpty()) {
            HashSet<String> hashSet2 = new HashSet();
            hashSet2.addAll(this.extraAddMods);
            String str3 = this.addModsOpt;
            if (str3 != null) {
                hashSet2.addAll(Arrays.asList(str3.split(DocLint.SEPARATOR)));
            }
            for (String str4 : hashSet2) {
                str4.hashCode();
                if (str4.equals(ALL_SYSTEM)) {
                    filter = new HashSet(this.syms.getAllModules()).stream().filter(predicate3.and(predicate2));
                } else if (str4.equals(ALL_MODULE_PATH)) {
                    filter = new HashSet(this.syms.getAllModules()).stream().filter(predicate3.negate().and(predicate2));
                } else if (isValidName(str4)) {
                    filter = Stream.of(this.syms.enterModule(this.names.fromString(str4)));
                }
                filter.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        Modules.lambda$setupAllModules$11(Set.this, set, (Symbol.ModuleSymbol) obj);
                    }
                });
            }
        }
        final Set<Symbol.ModuleSymbol> computeTransitiveClosure = computeTransitiveClosure(linkedHashSet, this.rootModules, set);
        computeTransitiveClosure.add(this.syms.unnamedModule);
        Stream<Symbol.ModuleSymbol> stream = computeTransitiveClosure.stream();
        Predicate<? super Symbol.ModuleSymbol> predicate5 = IS_AUTOMATIC;
        if (stream.anyMatch(predicate5)) {
            this.syms.getAllModules().stream().filter(predicate5).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Set.this.add((Symbol.ModuleSymbol) obj);
                }
            });
        }
        String str5 = (String) computeTransitiveClosure.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$setupAllModules$12;
                lambda$setupAllModules$12 = Modules.lambda$setupAllModules$12((Symbol.ModuleSymbol) obj);
                return lambda$setupAllModules$12;
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String lambda$setupAllModules$13;
                lambda$setupAllModules$13 = Modules.lambda$setupAllModules$13((Symbol.ModuleSymbol) obj);
                return lambda$setupAllModules$13;
            }
        }).collect(Collectors.joining(DocLint.SEPARATOR));
        if (!str5.isEmpty()) {
            this.log.warning(CompilerProperties.Warnings.IncubatingModules(str5));
        }
        this.allModules = computeTransitiveClosure;
        String str6 = this.moduleVersionOpt;
        if (str6 != null) {
            final Name fromString = this.names.fromString(str6);
            this.rootModules.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ((Symbol.ModuleSymbol) obj).version = Name.this;
                }
            });
        }
    }

    public void setupAutomaticModule(Symbol.ModuleSymbol moduleSymbol) throws Symbol.CompletionFailure {
        try {
            ListBuffer listBuffer = new ListBuffer();
            ListBuffer listBuffer2 = new ListBuffer();
            HashSet hashSet = new HashSet();
            Iterator<JavaFileObject> it = this.fileManager.list(moduleSymbol.classLocation, "", EnumSet.of(JavaFileObject.Kind.CLASS), true).iterator();
            while (it.hasNext()) {
                String inferBinaryName = this.fileManager.inferBinaryName(moduleSymbol.classLocation, it.next());
                String substring = inferBinaryName.lastIndexOf(46) != -1 ? inferBinaryName.substring(0, inferBinaryName.lastIndexOf(46)) : "";
                if (hashSet.add(substring)) {
                    Directive.ExportsDirective exportsDirective = new Directive.ExportsDirective(this.syms.enterPackage(moduleSymbol, this.names.fromString(substring)), null);
                    listBuffer.add(exportsDirective);
                    listBuffer2.add(exportsDirective);
                }
            }
            moduleSymbol.exports = listBuffer2.toList();
            moduleSymbol.provides = List.nil();
            moduleSymbol.requires = List.nil();
            moduleSymbol.uses = List.nil();
            moduleSymbol.directives = listBuffer.toList();
            moduleSymbol.flags_field |= TagBits.HasDirectWildcard;
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private String singleModuleOverride(List<JCTree.JCCompilationUnit> list) {
        if (!this.fileManager.hasLocation(StandardLocation.PATCH_MODULE_PATH)) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<JCTree.JCCompilationUnit> it = list.iterator();
        while (it.hasNext()) {
            try {
                JavaFileManager.Location locationForModule = this.fileManager.getLocationForModule(StandardLocation.PATCH_MODULE_PATH, it.next().sourcefile);
                if (locationForModule != null) {
                    linkedHashSet.add(this.fileManager.inferModuleName(locationForModule));
                }
            } catch (IOException e10) {
                throw new Error(e10);
            }
        }
        int size = linkedHashSet.size();
        if (size == 0) {
            return null;
        }
        if (size == 1) {
            return (String) linkedHashSet.iterator().next();
        }
        this.log.error(CompilerProperties.Errors.TooManyPatchedModules(linkedHashSet));
        return null;
    }

    private String toString(Symbol.ModuleSymbol moduleSymbol) {
        return ((Object) moduleSymbol.name) + "[kind:" + ((Object) moduleSymbol.kind) + ";locn:" + toString(moduleSymbol.sourceLocation) + DocLint.SEPARATOR + toString(moduleSymbol.classLocation) + ";info:" + toString(moduleSymbol.module_info.sourcefile) + DocLint.SEPARATOR + toString(moduleSymbol.module_info.classfile) + DocLint.SEPARATOR + ((Object) moduleSymbol.module_info.completer) + "]";
    }

    public void addExtraAddModules(String... strArr) {
        this.extraAddMods.addAll(Arrays.asList(strArr));
    }

    public void addExtraLimitModules(String... strArr) {
        this.extraLimitMods.addAll(Arrays.asList(strArr));
    }

    public Set<Symbol.ModuleSymbol> allModules() {
        Assert.checkNonNull(this.allModules);
        return this.allModules;
    }

    public boolean enter(List<JCTree.JCCompilationUnit> list, Symbol.ClassSymbol classSymbol) {
        Assert.check((this.rootModules == null && !this.inInitModules && this.allowModules) ? false : true);
        return enter(list, new Consumer() {
            @Override
            public final void accept(Object obj) {
                Modules.lambda$enter$1((Set) obj);
            }
        }, classSymbol);
    }

    public Symbol.Completer getCompleter() {
        return this.mainCompleter;
    }

    public Symbol.ModuleSymbol getDefaultModule() {
        return this.defaultModule;
    }

    public Symbol.ModuleSymbol getObservableModule(Name name) {
        Symbol.ModuleSymbol module = this.syms.getModule(name);
        if (allModules().contains(module)) {
            return module;
        }
        return null;
    }

    public Set<Symbol.ModuleSymbol> getRootModules() {
        Assert.checkNonNull(this.rootModules);
        return this.rootModules;
    }

    public Symbol.Completer getUsesProvidesCompleter() {
        return new Symbol.Completer() {
            @Override
            public final void complete(Symbol symbol) {
                Modules.this.lambda$getUsesProvidesCompleter$4(symbol);
            }
        };
    }

    public void initModules(List<JCTree.JCCompilationUnit> list) {
        Assert.check(!this.inInitModules);
        try {
            this.inInitModules = true;
            Assert.checkNull(this.rootModules);
            enter(list, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Modules.this.lambda$initModules$0((Set) obj);
                }
            }, null);
        } finally {
            this.inInitModules = false;
        }
    }

    public boolean isInModuleGraph(Symbol.ModuleSymbol moduleSymbol) {
        Set<Symbol.ModuleSymbol> set = this.allModules;
        return set == null || set.contains(moduleSymbol);
    }

    public boolean isRootModule(Symbol.ModuleSymbol moduleSymbol) {
        Assert.checkNonNull(this.rootModules);
        return this.rootModules.contains(moduleSymbol);
    }

    public boolean modulesInitialized() {
        return this.allModules != null;
    }

    public void newRound() {
        this.allModules = null;
        this.rootModules = null;
        this.warnedMissing.clear();
    }

    private boolean enter(List<JCTree.JCCompilationUnit> list, Consumer<Set<Symbol.ModuleSymbol>> consumer, Symbol.ClassSymbol classSymbol) {
        if (!this.allowModules) {
            Iterator<JCTree.JCCompilationUnit> it = list.iterator();
            while (it.hasNext()) {
                it.next().modle = this.syms.noModule;
            }
            this.defaultModule = this.syms.noModule;
            return true;
        }
        int i10 = this.log.nerrors;
        this.depth++;
        try {
            try {
                Set<Symbol.ModuleSymbol> enterModules = enterModules(list, classSymbol);
                setCompilationUnitModules(list, enterModules, classSymbol);
                consumer.accept(enterModules);
                Iterator<Symbol.ModuleSymbol> it2 = enterModules.iterator();
                while (it2.hasNext()) {
                    it2.next().complete();
                }
            } catch (Symbol.CompletionFailure e10) {
                this.log.error(JCDiagnostic.DiagnosticFlag.NON_DEFERRABLE, -1, "cant.access", e10.sym, e10.getDetailValue());
                if (e10 instanceof ClassFinder.BadClassFile) {
                    throw new Abort();
                }
            }
            return this.log.nerrors == i10;
        } finally {
            this.depth--;
        }
    }

    public String toString(JavaFileManager.Location location) {
        return location == null ? "--" : location.getName();
    }

    public String toString(JavaFileObject javaFileObject) {
        return javaFileObject == null ? "--" : javaFileObject.getName();
    }
}
