.class public Lorg/openjdk/tools/javac/comp/Modules;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Modules$PackageNameFinder;,
        Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;,
        Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;
    }
.end annotation


# static fields
.field private static final ALL_MODULE_PATH:Ljava/lang/String; = "ALL-MODULE-PATH"

.field private static final ALL_SYSTEM:Ljava/lang/String; = "ALL-SYSTEM"

.field private static final IS_AUTOMATIC:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private static final XMODULES_PREFIX:Ljava/lang/String; = "-Xmodule:"


# instance fields
.field private addExports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;",
            ">;>;"
        }
    .end annotation
.end field

.field private final addExportsOpt:Ljava/lang/String;

.field private final addModsOpt:Ljava/lang/String;

.field private addReads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;",
            ">;>;"
        }
    .end annotation
.end field

.field private final addReadsOpt:Ljava/lang/String;

.field private allModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private final allowAccessIntoSystem:Z

.field private final allowModules:Z

.field private final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field private final deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

.field depth:I

.field private final extraAddMods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extraLimitMods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field public findPackageInFile:Lorg/openjdk/tools/javac/comp/Modules$PackageNameFinder;

.field inInitModules:Z

.field private final java_:Lorg/openjdk/tools/javac/util/Name;

.field private final java_se:Lorg/openjdk/tools/javac/util/Name;

.field private final limitModsOpt:Ljava/lang/String;

.field private final lintOptions:Z

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private final mainCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field private final moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

.field private final moduleVersionOpt:Ljava/lang/String;

.field public final multiModuleMode:Z

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final requiresTransitiveCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field private rootModules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lorg/openjdk/tools/javac/code/Source;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

.field private final types:Lorg/openjdk/tools/javac/code/Types;

.field private final warnedMissing:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/T0;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/T0;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Modules;->IS_AUTOMATIC:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 6

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraAddMods:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraLimitMods:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->warnedMissing:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    new-instance v0, Lorg/openjdk/tools/javac/comp/Modules$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Modules$1;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->mainCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->requiresTransitiveCache:Ljava/util/Map;

    const-class v0, Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ModuleFinder;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->types:Lorg/openjdk/tools/javac/code/Types;

    const-class v1, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->allowModules:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->RELEASE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->allowAccessIntoSystem:Z

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->XLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->lintOptions:Z

    sget-object v3, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v1, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->multiModuleMode:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/ClassWriter;

    move-result-object v3

    iput-boolean v1, v3, Lorg/openjdk/tools/javac/jvm/ClassWriter;->multiModuleMode:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/JNIWriter;

    move-result-object p1

    iput-boolean v1, p1, Lorg/openjdk/tools/javac/jvm/JNIWriter;->multiModuleMode:Z

    const-string p1, "java.se"

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->java_se:Lorg/openjdk/tools/javac/util/Name;

    const-string p1, "java."

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->java_:Lorg/openjdk/tools/javac/util/Name;

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->addExportsOpt:Ljava/lang/String;

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->ADD_READS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReadsOpt:Ljava/lang/String;

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->ADD_MODULES:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->addModsOpt:Ljava/lang/String;

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->LIMIT_MODULES:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->limitModsOpt:Ljava/lang/String;

    sget-object p1, Lorg/openjdk/tools/javac/main/Option;->MODULE_VERSION:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleVersionOpt:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$initAddReads$21(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/ModuleFinder;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->setupAutomaticModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/comp/Modules;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReads:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Modules;->initVisiblePackages(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->completeModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->checkCyclicDependencies(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V

    return-void
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/Modules;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->warnedMissing:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Attr;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Check;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Modules;->chk:Lorg/openjdk/tools/javac/comp/Check;

    return-object p0
.end method

.method private addVisiblePackages(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eqz v2, :cond_6

    if-eq v2, p3, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->isUnnamed()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v1, v2, p3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->PackageClashFromRequiresInUnnamed(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1, v1, v2, p3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->PackageClashFromRequires(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    goto :goto_0

    :goto_3
    if-eqz v0, :cond_5

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_5
    throw p1

    :cond_6
    invoke-interface {p2, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$initAddExports$20(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/Set;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$11(Ljava/util/Set;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method private checkCyclicDependencies(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 9

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REQUIRES:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    const-wide/32 v5, 0x40000000

    if-eqz v4, :cond_6

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    new-instance v6, Lorg/openjdk/tools/javac/comp/b1;

    invoke-direct {v6, v4}, Lorg/openjdk/tools/javac/comp/b1;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-static {v5, v6}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object v7, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->EXTRA:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->CyclicRequires(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_7
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v2, v5

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private checkNoAllModulePath()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->addModsOpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ALL-MODULE-PATH"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->AddmodsAllModulePathInvalid:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    return-void
.end method

.method private checkSourceLocation(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 3

    :try_start_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v1, v2, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v1, p2, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {p2, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {p2, v1, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {p2, v1, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->contains(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p2

    :try_start_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v1, "file.sb.on.source.or.patch.path.for.module"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1

    :goto_0
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private completeAutomaticModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v3, v4, :cond_0

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v6, 0x10000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    sget-object v4, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->TRANSITIVE:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-class v4, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    :goto_1
    new-instance v5, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-direct {v5, v3, v4}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private completeModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 9

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Z0;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/Z0;-><init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-void

    :cond_0
    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->completeAutomaticModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->initAddReads()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReads:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v1, p1, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v1

    iget-object v6, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v6

    :try_start_0
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v8, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v8}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v6

    and-long/2addr v6, v2

    cmp-long v1, v6, v4

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :goto_2
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-static {v1, v6}, Lorg/openjdk/tools/javac/util/List;->filter(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    :cond_4
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0, v6}, Lorg/openjdk/tools/javac/comp/Modules;->retrieveRequiresTransitive(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;

    move-result-object v6

    new-instance v7, Lorg/openjdk/tools/javac/comp/a1;

    invoke-direct {v7, v3}, Lorg/openjdk/tools/javac/comp/a1;-><init>(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)V

    invoke-static {v6, v7}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v7, v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object v8, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->TRANSITIVE:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->requiresTransitiveCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Modules;->initVisiblePackages(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eqz v1, :cond_8

    iput-object p1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_4

    :cond_9
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allowAccessIntoSystem:Z

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->PatchModuleWithRelease(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_a
    return-void
.end method

.method private computeTransitiveClosure(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    return-object v2

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    const/4 v4, 0x0

    :goto_3
    if-eqz p3, :cond_6

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v3, v5, :cond_2

    iget-wide v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v7, 0x10000000000000L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v5, v6, :cond_9

    if-nez v4, :cond_8

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->warnedMissing:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_9
    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v7, v6, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v7, v8, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->isTransitive()Z

    move-result v7

    if-eqz v7, :cond_b

    if-nez v4, :cond_c

    :cond_b
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v6}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_4

    :cond_d
    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, v6}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_4
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$null$8(Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)Z

    move-result p0

    return p0
.end method

.method private dprintln(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$6(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method private enter(Lorg/openjdk/tools/javac/util/List;Ljava/util/function/Consumer;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;>;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")Z"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allowModules:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 5
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v0, v0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    .line 8
    iget v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    .line 9
    :try_start_0
    invoke-direct {p0, p1, p3}, Lorg/openjdk/tools/javac/comp/Modules;->enterModules(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;

    move-result-object v2

    .line 10
    invoke-direct {p0, p1, v2, p3}, Lorg/openjdk/tools/javac/comp/Modules;->setCompilationUnitModules(Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 11
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    .line 13
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_3

    .line 14
    :cond_2
    :goto_2
    iget p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    goto :goto_4

    .line 15
    :goto_3
    :try_start_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object p3, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->NON_DEFERRABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    const-string v2, "cant.access"

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p2, p3, v4, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    instance-of p1, p1, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    goto :goto_2

    .line 17
    :goto_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget p1, p1, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-ne p1, v0, :cond_3

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 18
    :cond_4
    :try_start_2
    new-instance p1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :goto_6
    iget p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    sub-int/2addr p2, v1

    iput p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->depth:I

    .line 20
    throw p1
.end method

.method private enterModule(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    const-string v1, "module-info"

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v0, v1, v2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleDeclSbInModuleInfoJava:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    iget-object v0, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-eq v3, v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0, v4}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNameMismatch(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p3

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->DuplicateModule(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->getSourceCompleter(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v0

    iput-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object p2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->multiModuleMode:Z

    if-nez v0, :cond_4

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->TooManyModules:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {p3, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance p3, Lorg/openjdk/tools/javac/comp/Env;

    const/4 v0, 0x0

    invoke-direct {p3, v1, v0}, Lorg/openjdk/tools/javac/comp/Env;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    iput-object p1, p3, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->put(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_7

    iget-boolean p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->multiModuleMode:Z

    if-eqz p2, :cond_7

    iget-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    :goto_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    sget-object p3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ExpectedModule:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private enterModules(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v1, p2, v0}, Lorg/openjdk/tools/javac/comp/Modules;->enterModule(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1

    :cond_0
    return-object v0
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$14(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method public static synthetic g(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$completeModule$16(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private getModuleLocation(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/javax/tools/JavaFileManager$Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->MODULE_SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, v1, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getSourceCompleter(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/code/Symbol$Completer;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Modules$2;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/Modules$2;-><init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    return-object v0
.end method

.method private getUnnamedModuleCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findAllModules()Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Modules$3;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Modules$3;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    return-object v0
.end method

.method public static synthetic h(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$static$15(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setCompilationUnitModules$3(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private initAddExports()V
    .locals 15

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->addExports:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->addExports:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->addExportsOpt:Ljava/lang/String;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "([^/]+)/([^=]+)=(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->addExportsOpt:Ljava/lang/String;

    const-string v3, "\u0000+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_c

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7}, Lorg/openjdk/tools/javac/comp/Modules;->isValidName(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v10, v7}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v7

    invoke-virtual {v9, v7}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lorg/openjdk/tools/javac/comp/Modules;->isKnownModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-direct {p0, v8}, Lorg/openjdk/tools/javac/comp/Modules;->isValidName(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-boolean v9, p0, Lorg/openjdk/tools/javac/comp/Modules;->allowAccessIntoSystem:Z

    if-nez v9, :cond_7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v9

    const-wide/high16 v11, 0x20000000000000L

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v7}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->AddExportsWithRelease(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_4

    :cond_7
    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v10, v8}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v8

    iput-object v7, v8, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    const-string v10, "[ ,]+"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_b

    aget-object v12, v6, v11

    const-string v13, "ALL-UNNAMED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    iget-object v12, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v12, v12, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_2

    :cond_8
    invoke-direct {p0, v12}, Lorg/openjdk/tools/javac/comp/Modules;->isValidName(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_3

    :cond_9
    iget-object v13, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v14, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v14, v12}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v12

    invoke-virtual {v13, v12}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v12

    invoke-direct {p0, v12, v0}, Lorg/openjdk/tools/javac/comp/Modules;->isKnownModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual {v9, v12}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_b
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->addExports:Ljava/util/Map;

    new-instance v10, Lorg/openjdk/tools/javac/comp/d1;

    invoke-direct {v10}, Lorg/openjdk/tools/javac/comp/d1;-><init>()V

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    new-instance v7, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-direct {v7, v8, v9}, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private initAddReads()V
    .locals 13

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReads:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReads:Ljava/util/Map;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReadsOpt:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "([^=]+)=(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReadsOpt:Ljava/lang/String;

    const-string v2, "\u0000+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_c

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v6}, Lorg/openjdk/tools/javac/comp/Modules;->isValidName(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->lintOptions:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v7, Lorg/openjdk/tools/javac/main/Option;->ADD_READS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v7, v6}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ModuleForOptionNotFound(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    goto/16 :goto_4

    :cond_5
    iget-boolean v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->allowAccessIntoSystem:Z

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v7

    const-wide/high16 v9, 0x20000000000000L

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v6}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->AddReadsWithRelease(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_4

    :cond_6
    const-string v7, "[ ,]+"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_b

    aget-object v9, v5, v8

    const-string v10, "ALL-UNNAMED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_2

    :cond_7
    invoke-direct {p0, v9}, Lorg/openjdk/tools/javac/comp/Modules;->isValidName(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_3

    :cond_8
    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v11, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v11, v9}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v9

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-boolean v10, p0, Lorg/openjdk/tools/javac/comp/Modules;->lintOptions:Z

    if-eqz v10, :cond_a

    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v11, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    sget-object v12, Lorg/openjdk/tools/javac/main/Option;->ADD_READS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v12, v9}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ModuleForOptionNotFound(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v10, p0, Lorg/openjdk/tools/javac/comp/Modules;->addReads:Ljava/util/Map;

    new-instance v11, Lorg/openjdk/tools/javac/comp/X0;

    invoke-direct {v11}, Lorg/openjdk/tools/javac/comp/X0;-><init>()V

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    new-instance v11, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    sget-object v12, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->EXTRA:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v12

    invoke-direct {v11, v9, v12}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private initVisiblePackages(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->initAddExports()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->readModules:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Modules;->addVisiblePackages(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->addExports:Ljava/util/Map;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Y0;

    invoke-direct {v1, p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Y0;-><init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Modules;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Modules;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Modules;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isKnownModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->lintOptions:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->ADD_EXPORTS:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v2, p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ModuleForOptionNotFound(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isValidName(Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Source;->toSourceVersion(Lorg/openjdk/tools/javac/code/Source;)Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/javax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;Lorg/openjdk/javax/lang/model/SourceVersion;)Z

    move-result p1

    return p1
.end method

.method public static synthetic j(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$getUsesProvidesCompleter$4(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static synthetic k(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setCompilationUnitModules$2(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static synthetic l(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$12(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$completeModule$16(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->completeModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method private static synthetic lambda$completeModule$17(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no entry in cache for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$enter$1(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$getUsesProvidesCompleter$4(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;

    invoke-direct {v1, p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;-><init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->deferredLintHandler:Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    throw v0
.end method

.method private static synthetic lambda$initAddExports$20(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method private static synthetic lambda$initAddReads$21(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method private synthetic lambda$initModules$0(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->setupAllModules()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    return-void
.end method

.method private synthetic lambda$initVisiblePackages$19(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Modules;->addVisiblePackages(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Collection;)V

    return-void
.end method

.method private static synthetic lambda$null$8(Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)Z
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$retrieveRequiresTransitive$18(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".requires == null; "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setCompilationUnitModules$2(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->completeModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method private synthetic lambda$setCompilationUnitModules$3(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->completeModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    return-void
.end method

.method private static synthetic lambda$setupAllModules$10(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$setupAllModules$11(Ljava/util/Set;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setupAllModules$12(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 1

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->resolutionFlags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->WARN_INCUBATING:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setupAllModules$13(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setupAllModules$14(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 0

    iput-object p0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->version:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method

.method private synthetic lambda$setupAllModules$5(Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private static synthetic lambda$setupAllModules$6(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/high16 v2, 0x20000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setupAllModules$7(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->resolutionFlags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->DO_NOT_RESOLVE_BY_DEFAULT:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$setupAllModules$9(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->java_:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Name;->startsWith(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/comp/c1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/c1;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static synthetic lambda$static$15(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 4

    iget-wide v0, p0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/high16 v2, 0x10000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic m(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$9(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$completeModule$17(Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/openjdk/tools/javac/comp/Modules;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$5(Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$13(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/util/Set;)V
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$enter$1(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic r(Lorg/openjdk/tools/javac/comp/Modules;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$initModules$0(Ljava/util/Set;)V

    return-void
.end method

.method private retrieveRequiresTransitive(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ")",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->requiresTransitiveCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v3, v4, :cond_3

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    new-instance v5, Lorg/openjdk/tools/javac/comp/N0;

    invoke-direct {v5, v3, p1}, Lorg/openjdk/tools/javac/comp/N0;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-static {v4, v5}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->isTransitive()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public static synthetic s(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$10(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method private setCompilationUnitModules(Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->multiModuleMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->checkNoAllModulePath()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Modules;->getModuleLocation(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v5, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v4, v5}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v6, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v4, v5, v6}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v6, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v5

    iput-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_e

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v6, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    if-eq v4, v3, :cond_e

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    invoke-static {v4, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->FilePatchedAndMsp(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto/16 :goto_5

    :cond_2
    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    const-string v6, "module-info"

    sget-object v7, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v4, v3, v6, v7}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForInput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v7, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v6, v4, v7}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    sget-object v7, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNotFoundOnModuleSourcePath:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v4, v6, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_4
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v6, v3}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v8, v7, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-eq v8, v4, :cond_7

    iget-object v9, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->qualId:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v8, v4}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNameMismatch(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v4

    invoke-virtual {v9, v6, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    sget-object v8, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->UnnamedPkgNotAllowedNamedModules:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v6, v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_6
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v7

    :cond_7
    :goto_2
    iget-object v4, v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v4, :cond_a

    iput-object v3, v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v3, v5}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v4, v7, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v3

    iput-object v3, v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :cond_8
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v3, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v5, v7, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v3

    iget-object v4, v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez v4, :cond_9

    iput-object v3, v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    goto :goto_3

    :cond_9
    iput-object v3, v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :cond_a
    :goto_3
    iput-object v7, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v3, v4, :cond_c

    iput-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNotFoundOnModuleSourcePath:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_4

    :cond_d
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->NotInModuleOnModuleSourcePath:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :goto_4
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->errModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    :goto_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    goto/16 :goto_0

    :goto_6
    :try_start_1
    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1

    :cond_f
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez p2, :cond_10

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->getUnnamedModuleCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    sget-object p2, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object p2, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :cond_10
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto/16 :goto_e

    :cond_11
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    const/4 v0, 0x1

    if-nez p3, :cond_18

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->singleModuleOverride(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_15

    if-eq v2, v0, :cond_12

    const-string p2, "too many modules"

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_12
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->checkNoAllModulePath()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    sget-object p3, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object p3, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {p2, p3}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p2

    if-eqz p2, :cond_13

    :try_start_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v2, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object p3

    iput-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/Error;

    invoke-direct {p2, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_13
    :goto_8
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    if-nez p3, :cond_14

    sget-object p3, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    goto/16 :goto_c

    :cond_14
    sget-object p3, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    goto/16 :goto_c

    :cond_15
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findSingleModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne v0, v2, :cond_17

    if-eqz p3, :cond_16

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->checkNoAllModulePath()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v2, p3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p3

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    goto :goto_9

    :cond_16
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->getUnnamedModuleCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object p3

    iput-object p3, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    goto :goto_9

    :cond_17
    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->checkNoAllModulePath()V

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    new-instance v0, Lorg/openjdk/tools/javac/comp/U0;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/U0;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    iput-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object v0, p3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :goto_9
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p3

    if-ne p3, v0, :cond_19

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    new-instance p2, Lorg/openjdk/tools/javac/comp/V0;

    invoke-direct {p2, p0}, Lorg/openjdk/tools/javac/comp/V0;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    iput-object p2, v1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    goto :goto_c

    :cond_19
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->singleModuleOverride(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1a

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v1, p3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p3

    :goto_a
    move-object v1, p3

    goto :goto_b

    :cond_1a
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_a

    :goto_b
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_c
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p2, p3, :cond_1b

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules;->getUnnamedModuleCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object p2

    iput-object p2, p3, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    sget-object p3, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iput-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    :cond_1b
    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    :cond_1c
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p3, v0, :cond_1d

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne p3, v0, :cond_1d

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {p3, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-direct {p0, p2, v1}, Lorg/openjdk/tools/javac/comp/Modules;->checkSourceLocation(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    :cond_1d
    iput-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    goto :goto_d

    :cond_1e
    :goto_e
    return-void
.end method

.method private setupAllModules()V
    .locals 10

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->limitModsOpt:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ","

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraLimitMods:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->limitModsOpt:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-direct {p0, v6}, Lorg/openjdk/tools/javac/comp/Modules;->isValidName(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraLimitMods:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-direct {p0, v0, v3, v1}, Lorg/openjdk/tools/javac/comp/Modules;->computeTransitiveClosure(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->lintOptions:Z

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v5, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->LIMIT_MODULES:Lorg/openjdk/tools/javac/main/Option;

    invoke-static {v6, v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ModuleForOptionNotFound(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    goto :goto_3

    :cond_5
    :goto_4
    new-instance v0, Lorg/openjdk/tools/javac/comp/g1;

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/comp/g1;-><init>(Lorg/openjdk/tools/javac/comp/Modules;Ljava/util/Set;)V

    new-instance v3, Lorg/openjdk/tools/javac/comp/h1;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/comp/h1;-><init>()V

    new-instance v4, Lorg/openjdk/tools/javac/comp/i1;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/comp/i1;-><init>()V

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->java_se:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Symtab;->getModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v6

    if-eqz v6, :cond_7

    if-eqz v1, :cond_6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    new-instance v7, Lorg/openjdk/tools/javac/comp/j1;

    invoke-direct {v7, p0}, Lorg/openjdk/tools/javac/comp/j1;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    new-instance v7, Lorg/openjdk/tools/javac/comp/k1;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/comp/k1;-><init>()V

    :goto_5
    new-instance v6, Ljava/util/HashSet;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symtab;->getAllModules()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v3, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v0, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->addModsOpt:Ljava/lang/String;

    if-nez v4, :cond_a

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraAddMods:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    :cond_a
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraAddMods:Ljava/util/Set;

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->addModsOpt:Ljava/lang/String;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "ALL-SYSTEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "ALL-MODULE-PATH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-direct {p0, v6}, Lorg/openjdk/tools/javac/comp/Modules;->isValidName(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v6

    invoke-static {v6}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    goto :goto_8

    :cond_d
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symtab;->getAllModules()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    goto :goto_8

    :cond_e
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Symtab;->getAllModules()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    :goto_8
    new-instance v7, Lorg/openjdk/tools/javac/comp/O0;

    invoke-direct {v7, v5, v1}, Lorg/openjdk/tools/javac/comp/O0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-direct {p0, v5, v0, v1}, Lorg/openjdk/tools/javac/comp/Modules;->computeTransitiveClosure(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->unnamedModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/comp/Modules;->IS_AUTOMATIC:Ljava/util/function/Predicate;

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symtab;->getAllModules()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/javac/comp/P0;

    invoke-direct {v3, v0}, Lorg/openjdk/tools/javac/comp/P0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_10
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/javac/comp/Q0;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/comp/Q0;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/javac/comp/R0;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/comp/R0;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->IncubatingModules(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    :cond_11
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->moduleVersionOpt:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    new-instance v2, Lorg/openjdk/tools/javac/comp/S0;

    invoke-direct {v2, v0}, Lorg/openjdk/tools/javac/comp/S0;-><init>(Lorg/openjdk/tools/javac/util/Name;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_12
    return-void
.end method

.method private setupAutomaticModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v6, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v4, v5, v0, v6, v7}, Lorg/openjdk/javax/tools/JavaFileManager;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v7, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v6, v7, v5}, Lorg/openjdk/javax/tools/JavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object v5, v0

    :goto_1
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Modules;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v8, v5}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    invoke-virtual {v7, p1, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v1, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private singleModuleOverride(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    :try_start_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->PATCH_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v3, v4, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->getLocationForModule(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileManager$Location;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v3, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->inferModuleName(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->TooManyPatchedModules(Ljava/util/Set;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-object v1

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    return-object v1
.end method

.method public static synthetic t(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$setupAllModules$7(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method private toString(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[kind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";locn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    .line 2
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Modules;->toString(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Modules;->toString(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";info:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 3
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Modules;->toString(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 4
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Modules;->toString(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic u(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$initVisiblePackages$19(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Map;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic v(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->lambda$retrieveRequiresTransitive$18(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs addExtraAddModules([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraAddMods:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs addExtraLimitModules([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->extraLimitMods:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public allModules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    return-object v0
.end method

.method public enter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allowModules:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/comp/e1;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/comp/e1;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Modules;->enter(Lorg/openjdk/tools/javac/util/List;Ljava/util/function/Consumer;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result p1

    return p1
.end method

.method public getCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->mainCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-object v0
.end method

.method public getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->defaultModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object v0
.end method

.method public getObservableModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symtab;->getModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRootModules()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    return-object v0
.end method

.method public getUsesProvidesCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/f1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/f1;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    return-object v0
.end method

.method public initModules(Lorg/openjdk/tools/javac/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    new-instance v1, Lorg/openjdk/tools/javac/comp/W0;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/W0;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Modules;->enter(Lorg/openjdk/tools/javac/util/List;Ljava/util/function/Consumer;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->inInitModules:Z

    throw p1
.end method

.method public isInModuleGraph(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isRootModule(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public modulesInitialized()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newRound()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->allModules:Ljava/util/Set;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->rootModules:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules;->warnedMissing:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public toString(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 5
    const-string p1, "--"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileManager$Location;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 6
    const-string p1, "--"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
