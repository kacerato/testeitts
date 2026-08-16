.class public Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IGenericType;


# instance fields
.field public anonymous:Z

.field public modifiers:I

.field public name:[C

.field public superInterfaceNames:[[C

.field public superclassName:[C

.field public typeHandle:Lorg/eclipse/jdt/core/IType;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IType;[CI[C[[CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->typeHandle:Lorg/eclipse/jdt/core/IType;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->name:[C

    iput p3, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->modifiers:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->superclassName:[C

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->superInterfaceNames:[[C

    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->anonymous:Z

    return-void
.end method


# virtual methods
.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->typeHandle:Lorg/eclipse/jdt/core/IType;

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IMember;->getCompilationUnit()Lorg/eclipse/jdt/core/ICompilationUnit;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->modifiers:I

    return v0
.end method

.method public isAnonymous()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/hierarchy/HierarchyType;->anonymous:Z

    return v0
.end method

.method public isBinaryType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
