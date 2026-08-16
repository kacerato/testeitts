.class public Lorg/eclipse/jdt/internal/core/DynamicProjectReferences;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/core/resources/IDynamicReferenceProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/core/DynamicProjectReferences;->lambda$0(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/core/resources/IWorkspaceRoot;Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;
    .locals 0

    invoke-interface {p0, p1}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProject(Ljava/lang/String;)Lorg/eclipse/core/resources/IProject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDependentProjects(Lorg/eclipse/core/resources/IBuildConfiguration;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/core/resources/IBuildConfiguration;",
            ")",
            "Ljava/util/List<",
            "Lorg/eclipse/core/resources/IProject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/eclipse/core/resources/IBuildConfiguration;->getProject()Lorg/eclipse/core/resources/IProject;

    move-result-object p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/JavaCore;->create(Lorg/eclipse/core/resources/IProject;)Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    instance-of v1, v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->getResolvedClasspath()[Lorg/eclipse/jdt/core/IClasspathEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaProject;->projectPrerequisites([Lorg/eclipse/jdt/core/IClasspathEntry;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/core/resources/IProject;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/e;

    invoke-direct {v1, p1}, Lorg/eclipse/jdt/internal/core/e;-><init>(Lorg/eclipse/core/resources/IWorkspaceRoot;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
