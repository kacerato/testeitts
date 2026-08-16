.class public Lorg/bouncycastle/jce/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Enumeration;
    .locals 1

    invoke-static {}, Lki/e;->g()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lhk/c;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/jce/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Loh/x;

    invoke-direct {v1, p0}, Loh/x;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, LJi/a;->l(Loh/x;)Lki/l;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {p0}, LJi/a;->j(Ljava/lang/String;)Lki/l;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-static {v1}, Lki/e;->d(Loh/x;)Lki/l;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lki/e;->b(Ljava/lang/String;)Lki/l;

    move-result-object v2

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    return-object v0

    :cond_4
    new-instance v0, Lhk/c;

    invoke-virtual {v2}, Lki/l;->v()Ljk/e;

    move-result-object v5

    invoke-virtual {v2}, Lki/l;->z()Ljk/i;

    move-result-object v6

    invoke-virtual {v2}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2}, Lki/l;->D()[B

    move-result-object v9

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lhk/c;-><init>(Ljava/lang/String;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_2

    const/16 v1, 0x32

    if-le p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v2
.end method
