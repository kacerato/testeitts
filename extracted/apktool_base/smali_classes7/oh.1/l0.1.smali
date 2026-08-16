.class public Loh/l0;
.super Loh/M;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Loh/M;-><init>(IIILoh/g;)V

    return-void
.end method

.method public constructor <init>(IILoh/g;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Loh/M;-><init>(ZIILoh/g;)V

    return-void
.end method

.method public constructor <init>(ILoh/g;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1, p2}, Loh/M;-><init>(ZILoh/g;)V

    return-void
.end method

.method public constructor <init>(ZIILoh/g;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Loh/M;-><init>(ZIILoh/g;)V

    return-void
.end method

.method public constructor <init>(ZILoh/g;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Loh/M;-><init>(ZILoh/g;)V

    return-void
.end method


# virtual methods
.method public Z(Loh/B;)Loh/E;
    .locals 1

    new-instance v0, Loh/g0;

    invoke-direct {v0, p1}, Loh/g0;-><init>(Loh/g;)V

    return-object v0
.end method

.method public a0(II)Loh/M;
    .locals 3

    new-instance v0, Loh/l0;

    iget v1, p0, Loh/M;->b:I

    iget-object v2, p0, Loh/M;->e:Loh/g;

    invoke-direct {v0, v1, p1, p2, v2}, Loh/l0;-><init>(IIILoh/g;)V

    return-object v0
.end method

.method public v(Loh/A;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/M;->e:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    iget p2, p0, Loh/M;->c:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Loh/B;->x()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    or-int/lit8 p2, p2, 0x20

    :cond_1
    iget v3, p0, Loh/M;->d:I

    invoke-virtual {p1, v2, p2, v3}, Loh/A;->w(ZII)V

    :cond_2
    const/4 p2, 0x0

    if-eqz v1, :cond_3

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Loh/A;->k(I)V

    invoke-virtual {v0, p1, v2}, Loh/B;->v(Loh/A;Z)V

    invoke-virtual {p1, p2}, Loh/A;->k(I)V

    invoke-virtual {p1, p2}, Loh/A;->k(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p2}, Loh/B;->v(Loh/A;Z)V

    :goto_0
    return-void
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Loh/M;->e:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0}, Loh/B;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public y(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Loh/M;->e:Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-virtual {p0}, Loh/M;->X()Z

    move-result v1

    invoke-virtual {v0, v1}, Loh/B;->y(Z)I

    move-result v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x3

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Loh/M;->d:I

    invoke-static {p1}, Loh/A;->j(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    return v0
.end method
