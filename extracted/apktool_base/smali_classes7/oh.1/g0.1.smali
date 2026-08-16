.class public Loh/g0;
.super Loh/E;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/E;-><init>()V

    return-void
.end method

.method public constructor <init>(Loh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/E;-><init>(Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/h;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Loh/E;-><init>(Loh/h;)V

    return-void
.end method

.method public constructor <init>([Loh/g;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Loh/E;-><init>([Loh/g;)V

    return-void
.end method


# virtual methods
.method public M()Loh/c;
    .locals 2

    new-instance v0, Loh/Y;

    invoke-virtual {p0}, Loh/E;->E()[Loh/c;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/Y;-><init>([Loh/c;)V

    return-object v0
.end method

.method public N()Loh/k;
    .locals 1

    invoke-virtual {p0}, Loh/E;->D()Loh/B;

    move-result-object v0

    check-cast v0, Loh/E;

    invoke-virtual {v0}, Loh/E;->N()Loh/k;

    move-result-object v0

    return-object v0
.end method

.method public O()Loh/y;
    .locals 2

    new-instance v0, Loh/c0;

    invoke-virtual {p0}, Loh/E;->F()[Loh/y;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/c0;-><init>([Loh/y;)V

    return-object v0
.end method

.method public P()Loh/G;
    .locals 3

    new-instance v0, Loh/j0;

    const/4 v1, 0x0

    invoke-virtual {p0}, Loh/E;->R()[Loh/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Loh/j0;-><init>(Z[Loh/g;)V

    return-object v0
.end method

.method public v(Loh/A;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    iget-object v1, p0, Loh/E;->b:[Loh/g;

    invoke-virtual {p1, p2, v0, v1}, Loh/A;->u(ZI[Loh/g;)V

    return-void
.end method

.method public y(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iget-object v0, p0, Loh/E;->b:[Loh/g;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Loh/E;->b:[Loh/g;

    aget-object v2, v2, v1

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Loh/B;->y(Z)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return p1
.end method
