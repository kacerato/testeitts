.class final Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;",
        ">;"
    }
.end annotation


# instance fields
.field final buffer:[C

.field final length:I

.field final start:I


# direct methods
.method public constructor <init>([C)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    .line 7
    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    .line 3
    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    .line 4
    iput p2, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->compareTo(Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;)I
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    iget-object v1, p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    .line 3
    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    iget p1, p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    array-length v3, v1

    if-lt p1, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    aget-char v3, v0, v2

    aget-char v4, v1, p1

    if-eq v3, v4, :cond_2

    if-ge v3, v4, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_3
    :goto_2
    array-length p1, v0

    array-length v0, v1

    sub-int/2addr p1, v0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    iget v3, p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    iget v3, p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    if-lt v1, v4, :cond_3

    return v0

    :cond_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    aget-char v4, v4, v1

    iget-object v5, p1, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    aget-char v5, v5, v3

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    const/16 v1, 0x11

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    aget-char v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->buffer:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'@("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->start:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayMap$Key;->length:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
