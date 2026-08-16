.class Lcom/threed/jpct/GenericContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/threed/jpct/GenericContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private content:[I

.field private hash:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    .line 3
    iput v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    .line 8
    iput v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    .line 9
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/threed/jpct/GenericContainer;->add(I)V

    return-void
.end method

.method public add(I)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iget-object v1, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 3
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    if-lt v1, v2, :cond_0

    .line 5
    iput-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v2, v2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    iget v1, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    aput p1, v0, v1

    const/4 v0, 0x1

    add-int/2addr v1, v0

    .line 8
    iput v1, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_2

    .line 9
    iget v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    goto :goto_2

    .line 10
    :cond_2
    iget v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    :goto_2
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iput v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    return-void
.end method

.method public compareTo(Lcom/threed/jpct/GenericContainer;)I
    .locals 4

    .line 2
    iget v0, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iget v1, p1, Lcom/threed/jpct/GenericContainer;->pos:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    if-lt v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v2, v2, v1

    iget-object v3, p1, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v3, v3, v1

    sub-int/2addr v2, v3

    if-eqz v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/threed/jpct/GenericContainer;

    invoke-virtual {p0, p1}, Lcom/threed/jpct/GenericContainer;->compareTo(Lcom/threed/jpct/GenericContainer;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/threed/jpct/GenericContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/threed/jpct/GenericContainer;

    iget v0, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    iget v2, p1, Lcom/threed/jpct/GenericContainer;->pos:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    iget v2, p1, Lcom/threed/jpct/GenericContainer;->hash:I

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/threed/jpct/GenericContainer;->pos:I

    if-lt v0, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v2, p0, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v2, v2, v0

    iget-object v3, p1, Lcom/threed/jpct/GenericContainer;->content:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GenericContainer;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/threed/jpct/GenericContainer;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
