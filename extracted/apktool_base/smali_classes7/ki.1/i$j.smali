.class public Lki/i$j;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/i;
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
    .locals 10

    const-string v0, "0100FAF51354E0E39E4892DF6E319C72C8161603FA45AA7B998A167B8F1E629521"

    invoke-static {v0}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/32 v0, 0xff06

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Ljk/e$e;

    const-string v1, "91A091F03B5FBA4AB2CCF49C4EDD220FB028712D42BE752B2C40094DBACDB586FB20"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string v1, "7167EFC92BB2E3CE7C8AAAFF34E12A9C557003D7C73A6FAF003F99F6CC8482E540F7"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v2, 0x110

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/16 v5, 0x38

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Ljk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0}, Lki/i;->b(Ljk/e;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v1

    const-string v0, "026108BABB2CEEBCF787058A056CBE0CFE622D7723A289E08A07AE13EF0D10D171DD8D"

    invoke-static {v1, v0}, Lki/i;->c(Ljk/e;Ljava/lang/String;)Lki/n;

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
