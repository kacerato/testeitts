.class public abstract Lbm/h;
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
    .locals 2

    invoke-virtual {p0}, Lbm/i;->c()I

    move-result v0

    const/16 v1, 0x55d

    if-ne v0, v1, :cond_0

    new-instance v0, Lam/c;

    invoke-direct {v0, p0}, Lam/c;-><init>(Lbm/h;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lam/d;

    invoke-direct {v0, p0}, Lam/d;-><init>(Lbm/h;)V

    :goto_0
    return-object v0
.end method

.method public o()I
    .locals 1

    invoke-virtual {p0}, Lbm/i;->q()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public r()I
    .locals 1

    invoke-virtual {p0}, Lbm/i;->q()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
