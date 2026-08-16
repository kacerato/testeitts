.class public Lorg/bouncycastle/jce/a;
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

    invoke-static {}, Lyh/b;->m()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lhk/c;
    .locals 9

    invoke-static {p0}, Lyh/b;->i(Ljava/lang/String;)Lki/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Loh/x;

    invoke-direct {v0, p0}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyh/b;->k(Loh/x;)Lki/l;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lhk/c;

    invoke-virtual {v0}, Lki/l;->v()Ljk/e;

    move-result-object v4

    invoke-virtual {v0}, Lki/l;->z()Ljk/i;

    move-result-object v5

    invoke-virtual {v0}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lki/l;->D()[B

    move-result-object v8

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lhk/c;-><init>(Ljava/lang/String;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
