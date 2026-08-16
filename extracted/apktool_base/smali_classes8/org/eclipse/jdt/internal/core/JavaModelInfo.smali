.class public Lorg/eclipse/jdt/internal/core/JavaModelInfo;
.super Lorg/eclipse/jdt/internal/core/OpenableElementInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;-><init>()V

    return-void
.end method

.method private computeNonJavaResources()[Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lorg/eclipse/core/resources/ResourcesPlugin;->getWorkspace()Lorg/eclipse/core/resources/IWorkspace;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspace;->getRoot()Lorg/eclipse/core/resources/IWorkspaceRoot;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/core/resources/IWorkspaceRoot;->getProjects()[Lorg/eclipse/core/resources/IProject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v4, v1, :cond_2

    if-nez v5, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaElementInfo;->NO_NON_JAVA_RESOURCES:[Ljava/lang/Object;

    return-object v0

    :cond_0
    if-ge v5, v1, :cond_1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    :cond_1
    return-object v2

    :cond_2
    aget-object v6, v0, v4

    invoke-static {v6}, Lorg/eclipse/jdt/internal/core/JavaProject;->hasJavaNature(Lorg/eclipse/core/resources/IProject;)Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v2, :cond_3

    new-array v2, v1, [Ljava/lang/Object;

    :cond_3
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v2, v5

    move v5, v7

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/JavaModelInfo;->computeNonJavaResources()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
