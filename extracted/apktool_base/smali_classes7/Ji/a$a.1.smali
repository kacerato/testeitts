.class public LJi/a$a;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lki/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljk/e;
    .locals 11

    new-instance v0, Lnk/h;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lnk/i;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "3086d221a7d46bcde86c90e49284eb15"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "-e4437ed6010e88286f547fa90abfe4c3"

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v5, v7}, [Ljava/math/BigInteger;

    move-result-object v7

    new-instance v5, Ljava/math/BigInteger;

    const-string v8, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    invoke-direct {v5, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v5, v8}, [Ljava/math/BigInteger;

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    const-string v5, "3086d221a7d46bcde86c90e49284eb153dab"

    invoke-direct {v9, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v5, "e4437ed6010e88286f547fa90abfe4c42212"

    invoke-direct {v10, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x110

    move-object v5, v4

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v3

    invoke-direct/range {v5 .. v10}, Lnk/i;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2, v4}, Lnk/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lnk/i;)V

    new-instance v1, Lmk/E;

    invoke-direct {v1}, Lmk/E;-><init>()V

    invoke-static {v1, v0}, LJi/a;->c(Ljk/e;Lnk/h;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v1

    const-string v0, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    invoke-static {v1, v0}, LJi/a;->b(Ljk/e;Ljava/lang/String;)Lki/n;

    move-result-object v2

    new-instance v6, Lki/l;

    invoke-virtual {v1}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
