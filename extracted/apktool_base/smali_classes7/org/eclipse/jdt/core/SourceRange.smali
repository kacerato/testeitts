.class public final Lorg/eclipse/jdt/core/SourceRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/ISourceRange;


# instance fields
.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/core/SourceRange;->offset:I

    iput p2, p0, Lorg/eclipse/jdt/core/SourceRange;->length:I

    return-void
.end method

.method public static isAvailable(Lorg/eclipse/jdt/core/ISourceRange;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/eclipse/jdt/core/ISourceRange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/eclipse/jdt/core/ISourceRange;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ISourceRange;->getOffset()I

    move-result v0

    iget v2, p0, Lorg/eclipse/jdt/core/SourceRange;->offset:I

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/ISourceRange;->getLength()I

    move-result p1

    iget v0, p0, Lorg/eclipse/jdt/core/SourceRange;->length:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/SourceRange;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/SourceRange;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/SourceRange;->length:I

    iget v1, p0, Lorg/eclipse/jdt/core/SourceRange;->offset:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/core/SourceRange;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/eclipse/jdt/core/SourceRange;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
