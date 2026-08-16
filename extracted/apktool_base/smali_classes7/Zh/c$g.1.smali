.class public LZh/c$g;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZh/c;
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
    .locals 8

    const-string v0, "003088250CA6E7C7FE649CE85820F7"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "00E8BEE4D3E2260744188BE0E9C723"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v0, "0100000000000000D9CCEC8A39E56F"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    new-instance v0, Ljk/e$e;

    const/16 v2, 0x71

    const/16 v3, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljk/e$e;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, LZh/c;->b(Ljk/e;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    const-string v0, "10E723AB14D696E6768756151756FEBF8FCB49A9"

    invoke-static {v0}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v2

    const-string v0, "04009D73616F35F4AB1407D73562C10F00A52830277958EE84D1315ED31886"

    invoke-static {v2, v0}, LZh/c;->c(Ljk/e;Ljava/lang/String;)Lki/n;

    move-result-object v3

    new-instance v0, Lki/l;

    invoke-virtual {v2}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
