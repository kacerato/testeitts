.class public Loh/X0;
.super Loh/G;
.source "SourceFile"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/G;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Loh/X0;->e:I

    return-void
.end method

.method public constructor <init>(Loh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/G;-><init>(Loh/g;)V

    const/4 p1, -0x1

    iput p1, p0, Loh/X0;->e:I

    return-void
.end method

.method public constructor <init>(Loh/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Loh/G;-><init>(Loh/h;Z)V

    const/4 p1, -0x1

    iput p1, p0, Loh/X0;->e:I

    return-void
.end method

.method public constructor <init>(Z[Loh/g;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Loh/G;-><init>(Z[Loh/g;)V

    const/4 p1, -0x1

    iput p1, p0, Loh/X0;->e:I

    return-void
.end method

.method public constructor <init>([Loh/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Loh/G;-><init>([Loh/g;Z)V

    const/4 p1, -0x1

    iput p1, p0, Loh/X0;->e:I

    return-void
.end method

.method public constructor <init>([Loh/g;[Loh/g;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Loh/G;-><init>([Loh/g;[Loh/g;)V

    const/4 p1, -0x1

    iput p1, p0, Loh/X0;->e:I

    return-void
.end method

.method private O()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Loh/X0;->e:I

    if-gez v0, :cond_1

    iget-object v0, p0, Loh/G;->b:[Loh/g;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Loh/G;->b:[Loh/g;

    aget-object v3, v3, v1

    invoke-interface {v3}, Loh/g;->r()Loh/B;

    move-result-object v3

    invoke-virtual {v3}, Loh/B;->D()Loh/B;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Loh/B;->y(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Loh/X0;->e:I

    :cond_1
    iget v0, p0, Loh/X0;->e:I

    return v0
.end method


# virtual methods
.method public D()Loh/B;
    .locals 0

    return-object p0
.end method

.method public v(Loh/A;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x31

    invoke-virtual {p1, p2, v0}, Loh/A;->v(ZI)V

    invoke-virtual {p1}, Loh/A;->g()Loh/U0;

    move-result-object p2

    iget-object v0, p0, Loh/G;->b:[Loh/g;

    array-length v0, v0

    iget v1, p0, Loh/X0;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_2

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    goto :goto_2

    :cond_0
    new-array v1, v0, [Loh/B;

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v6, p0, Loh/G;->b:[Loh/g;

    aget-object v6, v6, v4

    invoke-interface {v6}, Loh/g;->r()Loh/B;

    move-result-object v6

    invoke-virtual {v6}, Loh/B;->D()Loh/B;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6, v3}, Loh/B;->y(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Loh/X0;->e:I

    invoke-virtual {p1, v5}, Loh/A;->m(I)V

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object p1, v1, v2

    invoke-virtual {p2, p1, v3}, Loh/A;->z(Loh/B;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0}, Loh/X0;->O()I

    move-result v1

    invoke-virtual {p1, v1}, Loh/A;->m(I)V

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object p1, p0, Loh/G;->b:[Loh/g;

    aget-object p1, p1, v2

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Loh/A;->z(Loh/B;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public y(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Loh/X0;->O()I

    move-result v0

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1
.end method
