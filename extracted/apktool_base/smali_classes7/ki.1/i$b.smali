.class public Lki/i$b;
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

    const-string v0, "010092537397ECA4F6145799D62B0A19CE06FE26AD"

    invoke-static {v0}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    const-wide/32 v0, 0xff6e

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    new-instance v0, Ljk/e$e;

    const-string v1, "E4E6DB2995065C407D9D39B8D0967B96704BA8E9C90B"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string v1, "5DDA470ABE6414DE8EC133AE28E9BBD7FCEC0AE0FFF2"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v2, 0xb0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x2b

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

    const-string v0, "038D16C2866798B600F9F08BB4A8E860F3298CE04A5798"

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
