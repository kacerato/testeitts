.class public Lpl/a$b;
.super Lpl/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public d:LBi/B;


# direct methods
.method public constructor <init>(LYk/e;Lhi/b;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lpl/a;-><init>(Lhi/b;[B[BLjava/security/SecureRandom;)V

    instance-of p2, p1, Lcl/i;

    if-eqz p2, :cond_0

    new-instance p1, Lcl/e;

    invoke-direct {p1, p5}, Lcl/e;-><init>(Ljava/security/SecureRandom;)V

    :goto_0
    iput-object p1, p0, Lpl/a$b;->d:LBi/B;

    goto :goto_1

    :cond_0
    instance-of p1, p1, Lil/g;

    if-eqz p1, :cond_1

    new-instance p1, Lil/b;

    invoke-direct {p1, p5}, Lil/b;-><init>(Ljava/security/SecureRandom;)V

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown KEMParameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public e()Lorg/bouncycastle/crypto/util/f;
    .locals 2

    iget-boolean v0, p0, Lpl/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl/a;->c:Z

    iget-object v0, p0, Lpl/a;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/f$b;->a()Lorg/bouncycastle/crypto/util/f;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "builder already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f([B)[B
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpl/a;->c:Z

    :try_start_0
    iget-object v0, p0, Lpl/a$b;->d:LBi/B;

    invoke-static {p1}, Lpl/a;->b([B)LXi/c;

    move-result-object p1

    invoke-interface {v0, p1}, LBi/B;->a(LXi/c;)LBi/P;

    move-result-object p1

    iget-object v0, p0, Lpl/a;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-interface {p1}, LBi/P;->f()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/f$b;->b([B)Lorg/bouncycastle/crypto/util/f$b;

    invoke-interface {p1}, LBi/P;->e()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot decode public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g([B)Lpl/a;
    .locals 1

    iget-object v0, p0, Lpl/a;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/f$b;->c([B)Lorg/bouncycastle/crypto/util/f$b;

    return-object p0
.end method
