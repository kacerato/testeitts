.class public Lhl/f$b;
.super Lhl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lhi/b;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lhl/f;-><init>(Lhi/b;[B[BLjava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public e()Lorg/bouncycastle/crypto/util/f;
    .locals 2

    iget-boolean v0, p0, Lhl/f;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhl/f;->c:Z

    iget-object v0, p0, Lhl/f;->a:Lorg/bouncycastle/crypto/util/f$b;

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

    new-instance v0, Lhl/d;

    iget-object v1, p0, Lhl/f;->b:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lhl/d;-><init>(Ljava/security/SecureRandom;)V

    invoke-static {p1}, Lhl/f;->b([B)Lhl/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhl/d;->a(LXi/c;)LYk/c;

    move-result-object p1

    iget-object v0, p0, Lhl/f;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {p1}, LYk/c;->b()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/f$b;->b([B)Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {p1}, LYk/c;->a()LXi/c;

    move-result-object p1

    check-cast p1, Lhl/h;

    invoke-static {p1}, Lhl/f;->a(Lhl/h;)[B

    move-result-object p1

    return-object p1
.end method

.method public g([B)Lhl/f;
    .locals 1

    iget-object v0, p0, Lhl/f;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/f$b;->c([B)Lorg/bouncycastle/crypto/util/f$b;

    return-object p0
.end method
