.class public Lorg/bouncycastle/pqc/crypto/lms/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Lorg/bouncycastle/pqc/crypto/lms/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->g:Lorg/bouncycastle/pqc/crypto/lms/r;

    invoke-virtual {v0}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->g:Lorg/bouncycastle/pqc/crypto/lms/r;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/r;->c()Lorg/bouncycastle/pqc/crypto/lms/u;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/u;->b()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/A;->d()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->g:Lorg/bouncycastle/pqc/crypto/lms/r;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/r;->c()Lorg/bouncycastle/pqc/crypto/lms/u;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/u;->a()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v2, v0, v4, v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/n;->a(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/v;

    move-result-object v0

    new-instance v1, LBi/c;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/v;->p()Lorg/bouncycastle/pqc/crypto/lms/w;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method public b(LBi/G;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/r;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/s;->g:Lorg/bouncycastle/pqc/crypto/lms/r;

    return-void
.end method
