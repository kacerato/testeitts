.class public abstract Lbm/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lbm/i;->a:I

    iput p2, p0, Lbm/i;->b:I

    iput p3, p0, Lbm/i;->c:I

    iput p4, p0, Lbm/i;->d:I

    iput p5, p0, Lbm/i;->e:I

    return-void
.end method


# virtual methods
.method public abstract a()Lam/e;
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbm/i;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lbm/i;->a:I

    return v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lbm/i;->g()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lbm/i;->i()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    invoke-virtual {p0}, Lbm/i;->j()I

    move-result v0

    iget v1, p0, Lbm/i;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 2

    iget v0, p0, Lbm/i;->b:I

    invoke-virtual {p0}, Lbm/i;->k()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lbm/i;->l()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lbm/i;->b:I

    invoke-virtual {p0}, Lbm/i;->k()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public j()I
    .locals 2

    invoke-virtual {p0}, Lbm/i;->l()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lbm/i;->i()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lbm/i;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public l()I
    .locals 1

    invoke-virtual {p0}, Lbm/i;->k()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lbm/i;->d:I

    return v0
.end method

.method public n()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lbm/i;->b:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public abstract o()I
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lbm/i;->a:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lbm/i;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public abstract r()I
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lbm/i;->c:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lbm/i;->e:I

    return v0
.end method
