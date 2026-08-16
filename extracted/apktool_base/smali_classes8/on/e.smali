.class public Lon/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljn/q;


# direct methods
.method public constructor <init>(II[Ljn/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tileXCount",
            "tileZCount",
            "tiles"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lon/e;->a:I

    iput p2, p0, Lon/e;->b:I

    iput-object p3, p0, Lon/e;->c:[Ljn/q;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    iget-object v0, p0, Lon/e;->c:[Ljn/q;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget-object v4, v4, Ljn/q;->a:Ljn/r;

    iget v4, v4, Ljn/r;->g:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public b(I)Ljn/G;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lon/e;->c:[Ljn/q;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    sub-int v5, p1, v3

    if-ltz v5, :cond_0

    iget-object v6, v4, Ljn/q;->a:Ljn/r;

    iget v6, v6, Ljn/r;->g:I

    if-ge v5, v6, :cond_0

    iget-object p1, v4, Ljn/q;->c:[Ljn/G;

    aget-object p1, p1, v5

    return-object p1

    :cond_0
    iget-object v4, v4, Ljn/q;->a:Ljn/r;

    iget v4, v4, Ljn/r;->g:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Ljn/q;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    iget-object v0, p0, Lon/e;->c:[Ljn/q;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    sub-int v5, p1, v3

    if-ltz v5, :cond_0

    iget-object v6, v4, Ljn/q;->a:Ljn/r;

    iget v6, v6, Ljn/r;->g:I

    if-ge v5, v6, :cond_0

    return-object v4

    :cond_0
    iget-object v4, v4, Ljn/q;->a:Ljn/r;

    iget v4, v4, Ljn/r;->g:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
