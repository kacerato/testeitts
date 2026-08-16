.class public Lorg/openjdk/tools/javac/code/ClassFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/ClassFinder$BadEnclosingMethodAttr;,
        Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;
    }
.end annotation


# static fields
.field protected static final classFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/code/ClassFinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowSigFiles:Z

.field private final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field private cacheCompletionFailure:Z

.field private final cachedCompletionFailure:Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

.field final completionFailureName:Lorg/openjdk/tools/javac/util/Name;

.field protected currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

.field protected currentLoc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

.field protected currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

.field private final dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

.field diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private final jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field private preferCurrent:Z

.field protected preferSource:Z

.field private final profile:Lorg/openjdk/tools/javac/jvm/Profile;

.field reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

.field public sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field private supplementaryFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final thisCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field protected userPathsFirst:Z

.field verbose:Z

.field private verbosePath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/ClassFinder;->classFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    new-instance v1, Lorg/openjdk/tools/javac/code/b;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/code/b;-><init>(Lorg/openjdk/tools/javac/code/ClassFinder;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->thisCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    invoke-direct {v1, v0, v0}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->cachedCompletionFailure:Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->verbosePath:Z

    sget-object v3, Lorg/openjdk/tools/javac/code/ClassFinder;->classFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v3, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/ClassReader;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v4

    iput-object v4, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    const-class v4, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v5, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Dependencies;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Dependencies;

    move-result-object v6

    iput-object v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    if-eqz v5, :cond_5

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v5

    iput-object v5, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v5

    iput-object v5, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v5

    iput-object v5, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v5

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->VERBOSE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->verbose:Z

    const-string v6, "dev"

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->cacheCompletionFailure:Z

    const-string v6, "-Xprefer"

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "source"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferSource:Z

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->XXUSERPATHSFIRST:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v6

    iput-boolean v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->userPathsFirst:Z

    const-class v6, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iput-boolean v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->allowSigFiles:Z

    const-string v6, "failcomplete"

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    iput-object v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->completionFailureName:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v4, v3, Lorg/openjdk/tools/javac/file/JavacFileManager;

    if-eqz v4, :cond_2

    check-cast v3, Lorg/openjdk/tools/javac/file/JavacFileManager;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/file/BaseFileManager;->isDefaultBootClassPath()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/file/JavacFileManager;->isSymbolFileEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.openjdk.tools.sjavac.comp.SmartFileManager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "ignore.symbol.file"

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    invoke-static {}, Lorg/openjdk/tools/javac/file/JRTIndex;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/openjdk/tools/javac/file/JRTIndex;->getSharedInstance()Lorg/openjdk/tools/javac/file/JRTIndex;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Profile;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "FileManager initialization error"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/ClassFinder;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/ClassFinder;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/ClassFinder;->lambda$list$1(Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->lambda$loadClass$0(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private classFileNotFound(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "class.file.not.found"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->newCompletionFailure(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    move-result-object p1

    return-object p1
.end method

.method private complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_0

    :try_start_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    sget-object v1, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->CLASS_READER:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/util/Dependencies;->push(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->blockAnnotations()V

    new-instance v0, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/code/Scope$ErrorScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->completeOwners(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->completeEnclosing(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotationsNoFlush()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Dependencies;->pop()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotationsNoFlush()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->dependencies:Lorg/openjdk/tools/javac/util/Dependencies;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Dependencies;->pop()V

    throw p1

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    :try_start_1
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->initCause(Ljava/lang/Throwable;)Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-boolean p1, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->filling:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    :cond_2
    return-void
.end method

.method private completeEnclosing(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Convert;->enclosingCandidates(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v2, v0}, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;->formFlatName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/openjdk/tools/javac/code/Symtab;->getClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private completeOwners(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->completeOwners(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    return-void
.end method

.method private fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-nez v0, :cond_0

    .line 23
    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    .line 24
    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    .line 25
    new-instance v1, Lorg/openjdk/tools/javac/code/d;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/javac/code/d;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    .line 27
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->noModule:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 28
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    .line 29
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->userPathsFirst:Z

    if-eqz v0, :cond_1

    .line 30
    invoke-direct {p0, p1, v3}, Lorg/openjdk/tools/javac/code/ClassFinder;->scanUserPaths(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V

    .line 31
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    .line 32
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->scanPlatformPath(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->scanPlatformPath(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    .line 34
    invoke-direct {p0, p1, v3}, Lorg/openjdk/tools/javac/code/ClassFinder;->scanUserPaths(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V

    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne v1, v4, :cond_4

    .line 36
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne v0, v1, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, p1, v2}, Lorg/openjdk/tools/javac/code/ClassFinder;->scanUserPaths(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V

    goto :goto_0

    .line 37
    :cond_4
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->scanModulePaths(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    :goto_0
    return-void
.end method

.method private fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentLoc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    .line 39
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    .line 40
    sget-object v1, Lorg/openjdk/tools/javac/code/ClassFinder$2;->$SwitchMap$javax$tools$JavaFileObject$Kind:[I

    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 41
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->extraFileActions(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, p2, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->isSigFile(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->extraFileActions(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentLoc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v1, v3, v0}, Lorg/openjdk/javax/tools/JavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1}, Lorg/openjdk/javax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "package-info"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    :cond_3
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->includeClassFile(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ClassFinder;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/ClassFinder;->classFinderKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/ClassFinder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/ClassFinder;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$list$1(Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/code/ClassFinder$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/ClassFinder$1;-><init>(Lorg/openjdk/tools/javac/code/ClassFinder;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)V

    return-object v0
.end method

.method private static synthetic lambda$loadClass$0(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msym="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; flatName="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private newCompletionFailure(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->cacheCompletionFailure:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->cachedCompletionFailure:Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p2, v0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method private scanModulePaths(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/ClassFinder;->getPackageFileKinds()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->classLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object v6, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->sourceLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object v7, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->patchOutputLocation:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    iget-boolean v8, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    const/4 v9, 0x0

    :try_start_0
    iput-boolean v9, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p1, v4, v1}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-direct {p0, p1, p2, v9}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    if-eqz v7, :cond_2

    const-class p2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v7, p1, v4, p2}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-direct {p0, p1, v7, p2}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    if-nez v2, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5, p1, v4, v1}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-direct {p0, p1, v5, p2}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    :cond_3
    if-nez v3, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {p0, v6, p1, v4, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object p2

    invoke-direct {p0, p1, v6, p2}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iput-boolean v8, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    return-void

    :goto_1
    iput-boolean v8, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    throw p1
.end method

.method private scanPlatformPath(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->allowSigFiles:Z

    if-eqz v2, :cond_0

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->OTHER:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    return-void
.end method

.method private scanUserPaths(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/ClassFinder;->getPackageFileKinds()Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v3

    sget-object v4, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v6, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {p2, v6}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v5

    :goto_0
    iget-boolean v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->verbose:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->verbosePath:Z

    if-eqz v6, :cond_7

    iput-boolean v5, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->verbosePath:Z

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v6, v5, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    if-eqz v6, :cond_7

    check-cast v5, Lorg/openjdk/javax/tools/StandardJavaFileManager;

    const-string v6, "sourcepath"

    if-eqz p2, :cond_2

    if-nez v4, :cond_2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    sget-object v8, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v5, v8}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/file/Path;

    invoke-virtual {v7, v9}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    if-nez v4, :cond_4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    sget-object v8, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v5, v8}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/file/Path;

    invoke-virtual {v7, v9}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_3
    if-nez v2, :cond_7

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v5, v7}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/file/Path;

    invoke-virtual {v6, v8}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    goto :goto_4

    :cond_5
    sget-object v7, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v5, v7}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    goto :goto_5

    :cond_6
    iget-object v5, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "classpath"

    invoke-virtual {v5, v7, v6}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_8

    if-nez p2, :cond_8

    sget-object p2, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p0, p2, p1, v5, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    goto :goto_6

    :cond_8
    if-nez v2, :cond_9

    sget-object p2, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p0, p2, p1, v5, v1}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    :cond_9
    if-nez v4, :cond_a

    sget-object p2, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-virtual {p0, p2, p1, v5, v3}, Lorg/openjdk/tools/javac/code/ClassFinder;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->fillIn(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V

    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public extraFileActions(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 0

    return-void
.end method

.method public fillIn(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->completionFailureName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_6

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentOwner:Lorg/openjdk/tools/javac/code/Symbol;

    .line 3
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v0, :cond_5

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iget-boolean v2, v2, Lorg/openjdk/tools/javac/jvm/ClassReader;->filling:Z

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " during "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 7
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 8
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->verbose:Z

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v3, "loading"

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_1
    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-eq v2, v3, :cond_4

    .line 11
    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->OTHER:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->isTerminal()Z

    move-result v2

    if-nez v2, :cond_3

    .line 13
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->complete(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_2

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source completer required to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->readClassFile(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 17
    iget-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->getSupplementaryFlags(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)J

    move-result-wide v4

    or-long/2addr v2, v4

    iput-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_2
    iput-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :goto_3
    iput-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentClassFile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 19
    throw p1

    .line 20
    :cond_5
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->classFileNotFound(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    move-result-object p1

    throw p1

    .line 21
    :cond_6
    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    const-string v1, "user-selected completion failure by class name"

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V

    throw v0
.end method

.method public getCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->thisCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-object v0
.end method

.method public getPackageFileKinds()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public getSupplementaryFlags(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)J
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/file/JRTIndex;->isInJRT(Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->module_info:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->supplementaryFlags:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->supplementaryFlags:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->supplementaryFlags:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->jrtIndex:Lorg/openjdk/tools/javac/file/JRTIndex;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/file/JRTIndex;->getCtSym(Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    move-result-object v0

    sget-object v3, Lorg/openjdk/tools/javac/jvm/Profile;->DEFAULT:Lorg/openjdk/tools/javac/jvm/Profile;

    iget-boolean v4, v0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->proprietary:Z

    if-eqz v4, :cond_2

    const-wide v1, 0x4000000000L

    :cond_2
    iget-object v0, v0, Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;->minProfile:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Profile;->lookup(Ljava/lang/String;)Lorg/openjdk/tools/javac/jvm/Profile;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->profile:Lorg/openjdk/tools/javac/jvm/Profile;

    if-eq v4, v3, :cond_4

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Profile;->value:I

    iget v3, v4, Lorg/openjdk/tools/javac/jvm/Profile;->value:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, v3, :cond_4

    const-wide v3, 0x200000000000L

    or-long/2addr v1, v3

    :catch_0
    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->supplementaryFlags:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_1
    return-wide v1
.end method

.method public includeClassFile(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/javax/tools/JavaFileObject;)V
    .locals 10

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x800000

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v6, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v6, :cond_0

    iget-wide v6, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    or-long/2addr v6, v2

    iput-wide v6, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-eq v0, v1, :cond_2

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->OTHER:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x4000000

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v0, 0x2000000

    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->currentLoc:Lorg/openjdk/javax/tools/JavaFileManager$Location;

    invoke-interface {v1, v2, p2}, Lorg/openjdk/javax/tools/JavaFileManager;->inferBinaryName(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    const/4 v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->package_info:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_4

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_4

    :cond_4
    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Scope;->findFirst(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    :goto_4
    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v2, v3, v1, p1}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v1, :cond_5

    iput-object p2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_5
    if-eqz v6, :cond_6

    iput-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    goto :goto_5

    :cond_6
    iget-object p2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne p2, p1, :cond_8

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_5

    :cond_7
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferCurrent:Z

    if-nez p1, :cond_8

    iget-object p1, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz p1, :cond_8

    iget-wide v6, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    int-to-long v8, v0

    and-long/2addr v8, v6

    cmp-long v1, v8, v4

    if-nez v1, :cond_8

    const-wide/32 v8, 0x6000000

    and-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-eqz v1, :cond_8

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    iput-object p1, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_8
    :goto_5
    iget-wide p1, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    int-to-long v0, v0

    or-long/2addr p1, v0

    iput-wide p1, v2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void
.end method

.method public isSigFile(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/javax/tools/JavaFileObject;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->allowSigFiles:Z

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".sig"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/String;Ljava/util/Set;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileManager$Location;",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject$Kind;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    const-class v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p3, v1, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->list(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p3, Lorg/openjdk/tools/javac/code/c;

    invoke-direct {p3, p0, p1, p2, p4}, Lorg/openjdk/tools/javac/code/c;-><init>(Lorg/openjdk/tools/javac/code/ClassFinder;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Set;)V

    return-object p3
.end method

.method public loadClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Convert;->packagePart(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/code/Symtab;->lookupPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    new-instance v2, Lorg/openjdk/tools/javac/code/a;

    invoke-direct {v2, p1, p2}, Lorg/openjdk/tools/javac/code/a;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)V

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p1, v1, p2}, Lorg/openjdk/tools/javac/code/Symtab;->getClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, v2, p2}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/code/Symtab;->removeClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)V

    :cond_1
    throw v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public preferredFileObject(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/ClassFinder;->preferSource:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/openjdk/javax/tools/FileObject;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    return-object p1
.end method
