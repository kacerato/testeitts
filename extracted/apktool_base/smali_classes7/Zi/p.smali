.class public LZi/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:LZi/e;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LZi/p;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(LZi/e;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LZi/p;->a:Ljava/security/SecureRandom;

    iput-object p1, p0, LZi/p;->b:LZi/e;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZi/p;->a:Ljava/security/SecureRandom;

    new-instance v0, LZi/a;

    invoke-direct {v0, p1, p2}, LZi/a;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, LZi/p;->b:LZi/e;

    return-void
.end method


# virtual methods
.method public a(LBi/f;LXi/o0;Z)LZi/o;
    .locals 5

    iget-object v0, p0, LZi/p;->c:[B

    if-nez v0, :cond_0

    invoke-interface {p1}, LBi/f;->c()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, LZi/p;->c:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, LZi/p;->c:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/p;->D(J[BI)V

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, LBi/f;->a(ZLBi/k;)V

    new-instance p2, LZi/o;

    iget-object v0, p0, LZi/p;->a:Ljava/security/SecureRandom;

    new-instance v1, LZi/n;

    iget-object v2, p0, LZi/p;->c:[B

    iget-object v3, p0, LZi/p;->b:LZi/e;

    invoke-interface {p1}, LBi/f;->c()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-interface {v3, v4}, LZi/e;->get(I)LZi/d;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, LZi/n;-><init>(LBi/f;[BLZi/d;)V

    invoke-direct {p2, v0, v1, p3}, LZi/o;-><init>(Ljava/security/SecureRandom;LZi/n;Z)V

    return-object p2
.end method

.method public b([B)LZi/p;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LZi/p;->c:[B

    return-object p0
.end method
