.class public Loh/j0;
.super Loh/G;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/G;-><init>()V

    return-void
.end method

.method public constructor <init>(Loh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/G;-><init>(Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Loh/G;-><init>(Loh/h;Z)V

    return-void
.end method

.method public constructor <init>(Z[Loh/g;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Loh/G;-><init>(Z[Loh/g;)V

    return-void
.end method

.method public constructor <init>([Loh/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Loh/G;-><init>([Loh/g;Z)V

    return-void
.end method


# virtual methods
.method public v(Loh/A;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x31

    iget-object v1, p0, Loh/G;->b:[Loh/g;

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
    iget-object v0, p0, Loh/G;->b:[Loh/g;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Loh/G;->b:[Loh/g;

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
