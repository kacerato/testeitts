.class public Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;
.super Lorg/eclipse/jdt/internal/core/JavaModelOperation;
.source "SourceFile"


# instance fields
.field protected typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IRegion;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IType;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;-><init>(Lorg/eclipse/jdt/core/IRegion;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IType;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Z)V
    .locals 3

    .line 8
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    if-eqz p2, :cond_0

    .line 9
    array-length v0, p2

    .line 10
    new-array v1, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v2, 0x0

    .line 11
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    new-instance p2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-direct {p2, p1, v1, p3, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/IJavaProject;Z)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;-><init>(Lorg/eclipse/jdt/core/IJavaElement;)V

    if-eqz p2, :cond_0

    .line 4
    array-length v0, p2

    .line 5
    new-array v1, v0, [Lorg/eclipse/jdt/core/ICompilationUnit;

    const/4 v2, 0x0

    .line 6
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    new-instance p2, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-direct {p2, p1, v1, p3, p4}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;-><init>(Lorg/eclipse/jdt/core/IType;[Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/IJavaSearchScope;Z)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    return-void
.end method


# virtual methods
.method public executeOperation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->refresh(Lorg/eclipse/core/runtime/IProgressMonitor;)V

    return-void
.end method

.method public getResult()Lorg/eclipse/jdt/core/ITypeHierarchy;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public verify()Lorg/eclipse/jdt/core/IJavaModelStatus;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/JavaModelOperation;->getElementToProcess()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    instance-of v1, v1, Lorg/eclipse/jdt/internal/core/hierarchy/RegionBasedTypeHierarchy;

    if-nez v1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    const/16 v1, 0x3c8

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(I)V

    return-object v0

    :cond_0
    const/16 v1, 0x3c9

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v2, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/CreateTypeHierarchyOperation;->typeHierarchy:Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/hierarchy/TypeHierarchy;->javaProject()Lorg/eclipse/jdt/core/IJavaProject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/eclipse/jdt/internal/core/JavaModelStatus;

    invoke-direct {v2, v1, v0}, Lorg/eclipse/jdt/internal/core/JavaModelStatus;-><init>(ILorg/eclipse/jdt/core/IJavaElement;)V

    return-object v2

    :cond_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    return-object v0
.end method
