.class public abstract Lbm/e;
.super Lbm/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lbm/i;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public a()Lam/e;
    .locals 1

    new-instance v0, Lam/b;

    invoke-direct {v0, p0}, Lam/b;-><init>(Lbm/e;)V

    return-object v0
.end method

.method public o()I
    .locals 2

    invoke-virtual {p0}, Lbm/i;->q()I

    move-result v0

    invoke-virtual {p0}, Lbm/i;->p()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public r()I
    .locals 2

    invoke-virtual {p0}, Lbm/i;->q()I

    move-result v0

    invoke-virtual {p0}, Lbm/i;->p()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public u()I
    .locals 1

    invoke-virtual {p0}, Lbm/i;->n()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x2

    return v0
.end method
