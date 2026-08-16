.class Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;
.super Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/util/ModuleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleAccumulatorEnvironment"
.end annotation


# instance fields
.field modules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IJavaProject;)V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/core/CompilationGroup;->MAIN:Lorg/eclipse/jdt/internal/core/CompilationGroup;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;-><init>(Lorg/eclipse/jdt/core/IJavaProject;Lorg/eclipse/jdt/internal/core/CompilationGroup;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->modules:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->modules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->findType([C[[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->modules:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/builder/NameEnvironment;->findType([[C[C)Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->modules:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/NameEnvironmentAnswer;->moduleName()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public getModules()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->modules:Ljava/util/Set;

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->JAVA_BASE:[C

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->modules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ModuleUtil$ModuleAccumulatorEnvironment;->modules:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isOnModulePath(Lorg/eclipse/jdt/internal/core/ClasspathEntry;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
