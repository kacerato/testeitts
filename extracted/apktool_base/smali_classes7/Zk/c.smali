.class public LZk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/B;


# instance fields
.field public final a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZk/c;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 9

    check-cast p1, LZk/i;

    invoke-virtual {p1}, LZk/f;->d()LZk/g;

    move-result-object v0

    invoke-virtual {v0}, LZk/g;->a()LZk/a;

    move-result-object v1

    invoke-virtual {p1}, LZk/f;->d()LZk/g;

    move-result-object v0

    invoke-virtual {v0}, LZk/g;->c()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, LZk/f;->d()LZk/g;

    move-result-object v2

    invoke-virtual {v2}, LZk/g;->g()I

    move-result v2

    new-array v7, v2, [B

    invoke-virtual {p1}, LZk/f;->d()LZk/g;

    move-result-object v2

    invoke-virtual {v2}, LZk/g;->c()I

    move-result v2

    new-array v8, v2, [B

    iget-object v5, p1, LZk/i;->d:[B

    iget-object v6, p0, LZk/c;->a:Ljava/security/SecureRandom;

    move-object v2, v7

    move-object v3, v8

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, LZk/a;->j([B[B[B[BLjava/security/SecureRandom;)V

    invoke-static {v7, v8}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v1

    new-instance v2, Lpl/e;

    invoke-virtual {p1}, LZk/f;->d()LZk/g;

    move-result-object p1

    invoke-virtual {p1}, LZk/g;->h()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lpl/e;-><init>([B[B)V

    return-object v2
.end method
