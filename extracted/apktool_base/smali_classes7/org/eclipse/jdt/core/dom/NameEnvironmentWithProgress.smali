.class Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;
.super Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/INameEnvironmentWithProgress;


# instance fields
.field monitor:Lorg/eclipse/core/runtime/IProgressMonitor;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;-><init>([Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;[Ljava/lang/String;Z)V

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public static synthetic c([CLorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->lambda$1([CLorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)Z

    move-result p0

    return p0
.end method

.method private checkCanceled()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/core/runtime/IProgressMonitor;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/eclipse/jdt/internal/core/NameLookup;->VERBOSE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " CANCELLING LOOKUP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    new-instance v1, Lorg/eclipse/core/runtime/OperationCanceledException;

    invoke-direct {v1}, Lorg/eclipse/core/runtime/OperationCanceledException;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw v0

    :cond_1
    return-void
.end method

.method public static synthetic d(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->lambda$0(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->getModule()Lorg/eclipse/jdt/internal/compiler/env/IModule;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$1([CLorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;)Z
    .locals 0

    invoke-interface {p1, p0}, Lorg/eclipse/jdt/internal/compiler/env/IModulePathEntry;->servesModule([C)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public findType([C[[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 8

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->checkCanceled()V

    .line 3
    invoke-super {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    .line 4
    new-instance p3, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-static {p2, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/lang/String;-><init>([C)V

    .line 5
    new-instance v2, Ljava/lang/String;

    invoke-static {p2, p1, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[C[CC)[C

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".class"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/batch/FileSystem;->classpaths:[Lorg/eclipse/jdt/internal/compiler/batch/FileSystem$Classpath;

    aget-object v4, v4, v3

    instance-of v5, v4, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    if-nez v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    check-cast v4, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;

    .line 10
    invoke-static {p4}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->get([C)Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;

    move-result-object v5

    .line 11
    new-instance v6, Lorg/eclipse/jdt/core/dom/j;

    invoke-direct {v6}, Lorg/eclipse/jdt/core/dom/j;-><init>()V

    .line 12
    new-instance v7, Lorg/eclipse/jdt/core/dom/k;

    invoke-direct {v7, p4}, Lorg/eclipse/jdt/core/dom/k;-><init>([C)V

    .line 13
    invoke-virtual {v5, v4, v6, v7}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->matchesWithName(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v4, p1, p3, p2}, Lorg/eclipse/jdt/internal/compiler/batch/ClasspathDirectory;->findSecondaryInClass([CLjava/lang/String;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->ignoreIfBetter()Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v0

    .line 17
    :cond_3
    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->isBetter(Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v2, v0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->findType([C[[CZ[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->checkCanceled()V

    .line 19
    invoke-super {p0, p1}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->findType([[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    return-object p1
.end method

.method public isPackage([[C[C)Z
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->checkCanceled()V

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment;->isPackage([[C[C)Z

    move-result p1

    return p1
.end method

.method public setMonitor(Lorg/eclipse/core/runtime/IProgressMonitor;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/NameEnvironmentWithProgress;->monitor:Lorg/eclipse/core/runtime/IProgressMonitor;

    return-void
.end method
