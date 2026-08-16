.class public Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;
.super Lorg/eclipse/jdt/core/search/TypeNameMatch;
.source "SourceFile"


# instance fields
.field private accessibility:I

.field private modifiers:I

.field private type:Lorg/eclipse/jdt/core/IType;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IType;I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/TypeNameMatch;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->accessibility:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->type:Lorg/eclipse/jdt/core/IType;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->modifiers:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/core/search/TypeNameMatch;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lorg/eclipse/jdt/core/search/TypeNameMatch;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->type:Lorg/eclipse/jdt/core/IType;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getModifiers()I

    move-result p1

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->modifiers:I

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getType()Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/TypeNameMatch;->getModifiers()I

    move-result p1

    iget v1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->modifiers:I

    if-ne p1, v1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getAccessibility()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->accessibility:I

    return v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->modifiers:I

    return v0
.end method

.method public getType()Lorg/eclipse/jdt/core/IType;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->type:Lorg/eclipse/jdt/core/IType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->type:Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->modifiers:I

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAccessibility(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->accessibility:I

    return-void
.end method

.method public setModifiers(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->modifiers:I

    return-void
.end method

.method public setType(Lorg/eclipse/jdt/core/IType;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->type:Lorg/eclipse/jdt/core/IType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchTypeNameMatch;->type:Lorg/eclipse/jdt/core/IType;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
