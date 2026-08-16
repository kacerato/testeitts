.class public Lyh/b$d;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyh/b;
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

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    invoke-static {v0}, Lyh/b;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "400000000000000000000000000000000FD8CDDFC87B6635C115AF556C360C67"

    invoke-static {v0}, Lyh/b;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v0, Ljk/e$f;

    const-string v1, "C2173F1513981673AF4892C23035A27CE25E2013BF95AA33B22C656F277E7335"

    invoke-static {v1}, Lyh/b;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v1, "295F9BAE7428ED9CCC20E7C359A9D41A22FCCD9108E17BF7BA9337A6F8AE9513"

    invoke-static {v1}, Lyh/b;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v6, Ljk/d;->e:Ljava/math/BigInteger;

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v0}, Lyh/b;->b(Ljk/e;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v1

    const-string v0, "91E38443A5E82C0D880923425712B2BB658B9196932E02C78B2582FE742DAA28"

    invoke-static {v0}, Lyh/b;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v2, "32879423AB1A0375895786C4BB46E9565FDE0B5344766740AF268ADB32322E5C"

    invoke-static {v2}, Lyh/b;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lyh/b;->c(Ljk/e;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lki/n;

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
