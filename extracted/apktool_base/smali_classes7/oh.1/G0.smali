.class public Loh/G0;
.super Loh/E;
.source "SourceFile"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/E;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Loh/G0;->d:I

    return-void
.end method

.method public constructor <init>(Loh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/E;-><init>(Loh/g;)V

    const/4 p1, -0x1

    iput p1, p0, Loh/G0;->d:I

    return-void
.end method

.method public constructor <init>(Loh/h;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Loh/E;-><init>(Loh/h;)V

    const/4 p1, -0x1

    iput p1, p0, Loh/G0;->d:I

    return-void
.end method

.method public constructor <init>([Loh/g;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Loh/E;-><init>([Loh/g;)V

    const/4 p1, -0x1

    iput p1, p0, Loh/G0;->d:I

    return-void
.end method

.method public constructor <init>([Loh/g;Z)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Loh/E;-><init>([Loh/g;Z)V

    const/4 p1, -0x1

    iput p1, p0, Loh/G0;->d:I

    return-void
.end method

.method public static S(Loh/E;)Loh/G0;
    .locals 0

    invoke-virtual {p0}, Loh/E;->C()Loh/B;

    move-result-object p0

    check-cast p0, Loh/G0;

    return-object p0
.end method


# virtual methods
.method public C()Loh/B;
    .locals 0

    return-object p0
.end method

.method public D()Loh/B;
    .locals 0

    return-object p0
.end method

.method public M()Loh/c;
    .locals 3

    new-instance v0, Loh/r0;

    invoke-virtual {p0}, Loh/E;->E()[Loh/c;

    move-result-object v1

    invoke-static {v1}, Loh/Y;->N([Loh/c;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loh/r0;-><init>([BZ)V

    return-object v0
.end method

.method public N()Loh/k;
    .locals 1

    new-instance v0, Loh/s0;

    invoke-direct {v0, p0}, Loh/s0;-><init>(Loh/G0;)V

    return-object v0
.end method

.method public O()Loh/y;
    .locals 2

    new-instance v0, Loh/C0;

    invoke-virtual {p0}, Loh/E;->F()[Loh/y;

    move-result-object v1

    invoke-static {v1}, Loh/c0;->K([Loh/y;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public P()Loh/G;
    .locals 3

    new-instance v0, Loh/X0;

    const/4 v1, 0x0

    invoke-virtual {p0}, Loh/E;->R()[Loh/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Loh/X0;-><init>(Z[Loh/g;)V

    return-object v0
.end method

.method public final T()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Loh/G0;->d:I

    if-gez v0, :cond_1

    iget-object v0, p0, Loh/E;->b:[Loh/g;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Loh/E;->b:[Loh/g;

    aget-object v3, v3, v1

    invoke-interface {v3}, Loh/g;->r()Loh/B;

    move-result-object v3

    invoke-virtual {v3}, Loh/B;->C()Loh/B;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Loh/B;->y(Z)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Loh/G0;->d:I

    :cond_1
    iget v0, p0, Loh/G0;->d:I

    return v0
.end method

.method public v(Loh/A;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    invoke-virtual {p1, p2, v0}, Loh/A;->v(ZI)V

    invoke-virtual {p1}, Loh/A;->f()Loh/E0;

    move-result-object p2

    iget-object v0, p0, Loh/E;->b:[Loh/g;

    array-length v0, v0

    iget v1, p0, Loh/G0;->d:I

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

    iget-object v6, p0, Loh/E;->b:[Loh/g;

    aget-object v6, v6, v4

    invoke-interface {v6}, Loh/g;->r()Loh/B;

    move-result-object v6

    invoke-virtual {v6}, Loh/B;->C()Loh/B;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v6, v3}, Loh/B;->y(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v5, p0, Loh/G0;->d:I

    invoke-virtual {p1, v5}, Loh/A;->m(I)V

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object p1, v1, v2

    invoke-virtual {p1, p2, v3}, Loh/B;->v(Loh/A;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Loh/G0;->T()I

    move-result v1

    invoke-virtual {p1, v1}, Loh/A;->m(I)V

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object p1, p0, Loh/E;->b:[Loh/g;

    aget-object p1, p1, v2

    invoke-interface {p1}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-virtual {p1}, Loh/B;->C()Loh/B;

    move-result-object p1

    invoke-virtual {p1, p2, v3}, Loh/B;->v(Loh/A;Z)V

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

    invoke-virtual {p0}, Loh/G0;->T()I

    move-result v0

    invoke-static {p1, v0}, Loh/A;->i(ZI)I

    move-result p1

    return p1
.end method
