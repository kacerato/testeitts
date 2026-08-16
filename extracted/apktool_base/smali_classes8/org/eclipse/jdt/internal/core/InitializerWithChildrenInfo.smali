.class public Lorg/eclipse/jdt/internal/core/InitializerWithChildrenInfo;
.super Lorg/eclipse/jdt/internal/core/InitializerElementInfo;
.source "SourceFile"


# instance fields
.field protected children:[Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/InitializerWithChildrenInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/InitializerWithChildrenInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getModifiers()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNameSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getNameSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getNameSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/InitializerElementInfo;->getNameSourceStart()I

    move-result v0

    return v0
.end method
