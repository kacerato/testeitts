.class public Lon/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILon/e;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nodeOffset",
            "graphData",
            "connections"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lon/e;",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-virtual {p2, v1}, Lon/e;->c(I)Ljn/q;

    move-result-object v3

    invoke-virtual {p2, v1}, Lon/e;->b(I)Ljn/G;

    move-result-object v4

    array-length v5, v2

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, v2, v6

    sub-int/2addr v7, p1

    invoke-virtual {p2, v7}, Lon/e;->c(I)Ljn/q;

    move-result-object v8

    if-eq v8, v3, :cond_0

    invoke-virtual {p0, v3, v4, v8}, Lon/i;->b(Ljn/q;Ljn/G;Ljn/q;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p2, v7}, Lon/e;->b(I)Ljn/G;

    move-result-object v7

    invoke-virtual {p0, v3, v4, v8, v7}, Lon/i;->c(Ljn/q;Ljn/G;Ljn/q;Ljn/G;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Ljn/q;Ljn/G;Ljn/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "node",
            "neighbourTile"
        }
    .end annotation

    iget-object p3, p3, Ljn/q;->a:Ljn/r;

    iget-object p3, p3, Ljn/r;->s:[F

    const/4 v0, 0x0

    aget v1, p3, v0

    iget-object v2, p1, Ljn/q;->a:Ljn/r;

    iget-object v2, v2, Ljn/r;->s:[F

    aget v3, v2, v0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    iget-object p3, p2, Ljn/G;->c:[I

    invoke-static {p2, p1, v1, v0}, Lmn/c;->a(Ljn/G;Ljn/q;FI)I

    move-result p1

    const p2, 0x8000

    aput p2, p3, p1

    goto :goto_0

    :cond_0
    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    iget-object p3, p2, Ljn/G;->c:[I

    invoke-static {p2, p1, v3, v0}, Lmn/c;->a(Ljn/G;Ljn/q;FI)I

    move-result p1

    const p2, 0x8004

    aput p2, p3, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    aget p3, p3, v0

    aget v1, v2, v0

    cmpl-float v2, p3, v1

    if-lez v2, :cond_2

    iget-object v1, p2, Ljn/G;->c:[I

    invoke-static {p2, p1, p3, v0}, Lmn/c;->a(Ljn/G;Ljn/q;FI)I

    move-result p1

    const p2, 0x8002

    aput p2, v1, p1

    goto :goto_0

    :cond_2
    iget-object p3, p2, Ljn/G;->c:[I

    invoke-static {p2, p1, v1, v0}, Lmn/c;->a(Ljn/G;Ljn/q;FI)I

    move-result p1

    const p2, 0x8006

    aput p2, p3, p1

    :goto_0
    return-void
.end method

.method public final c(Ljn/q;Ljn/G;Ljn/q;Ljn/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tile",
            "node",
            "neighbourTile",
            "neighbour"
        }
    .end annotation

    invoke-static {p2, p4, p1, p3}, Lmn/c;->b(Ljn/G;Ljn/G;Ljn/q;Ljn/q;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p2, Ljn/G;->c:[I

    iget p3, p4, Ljn/G;->a:I

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
