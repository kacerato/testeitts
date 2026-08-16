.class public Lorg/eclipse/jdt/internal/core/SourceConstructorWithChildrenInfo;
.super Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;
.source "SourceFile"


# instance fields
.field protected children:[Lorg/eclipse/jdt/core/IJavaElement;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IJavaElement;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceConstructorWithChildrenInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-void
.end method


# virtual methods
.method public getChildren()[Lorg/eclipse/jdt/core/IJavaElement;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/SourceConstructorWithChildrenInfo;->children:[Lorg/eclipse/jdt/core/IJavaElement;

    return-object v0
.end method

.method public bridge synthetic getDeclarationSourceEnd()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;->getDeclarationSourceEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDeclarationSourceStart()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;->getDeclarationSourceStart()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getModifiers()I
    .locals 1

    invoke-super {p0}, Lorg/eclipse/jdt/internal/core/SourceConstructorInfo;->getModifiers()I

    move-result v0

    return v0
.end method
