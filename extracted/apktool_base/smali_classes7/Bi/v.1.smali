.class public abstract LBi/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/K;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e([BII[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, LBi/v;->h()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eq v1, p3, :cond_0

    add-int v3, p5, v2

    invoke-interface {p0, p1, p2, p4, v3}, LBi/f;->g([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public h()I
    .locals 1

    invoke-interface {p0}, LBi/f;->c()I

    move-result v0

    return v0
.end method
