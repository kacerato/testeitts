.class public Lhl/f$a;
.super Lhl/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:LBi/c;

.field public e:Lhl/c;


# direct methods
.method public constructor <init>(Lhi/b;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lhl/f;-><init>(Lhi/b;[B[BLjava/security/SecureRandom;)V

    new-instance p1, Lhl/c;

    invoke-direct {p1}, Lhl/c;-><init>()V

    iput-object p1, p0, Lhl/f$a;->e:Lhl/c;

    new-instance p1, Lhl/e;

    invoke-direct {p1}, Lhl/e;-><init>()V

    new-instance p2, LBi/G;

    const/16 p3, 0x800

    invoke-direct {p2, p4, p3}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {p1, p2}, Lhl/e;->b(LBi/G;)V

    invoke-virtual {p1}, Lhl/e;->a()LBi/c;

    move-result-object p1

    iput-object p1, p0, Lhl/f$a;->d:LBi/c;

    iget-object p2, p0, Lhl/f$a;->e:Lhl/c;

    invoke-virtual {p1}, LBi/c;->a()LXi/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lhl/c;->b(LBi/k;)V

    return-void
.end method


# virtual methods
.method public e([B)Lorg/bouncycastle/crypto/util/f;
    .locals 2

    iget-boolean v0, p0, Lhl/f;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhl/f;->c:Z

    iget-object v0, p0, Lhl/f;->a:Lorg/bouncycastle/crypto/util/f$b;

    iget-object v1, p0, Lhl/f$a;->e:Lhl/c;

    invoke-static {p1}, Lhl/f;->b([B)Lhl/h;

    move-result-object p1

    invoke-virtual {v1, p1}, Lhl/c;->a(LBi/k;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/f$b;->b([B)Lorg/bouncycastle/crypto/util/f$b;

    iget-object p1, p0, Lhl/f;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/f$b;->a()Lorg/bouncycastle/crypto/util/f;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "builder already used"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lhl/f$a;->d:LBi/c;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    check-cast v0, Lhl/h;

    invoke-static {v0}, Lhl/f;->a(Lhl/h;)[B

    move-result-object v0

    return-object v0
.end method

.method public g([B)Lhl/f;
    .locals 1

    iget-object v0, p0, Lhl/f;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/f$b;->c([B)Lorg/bouncycastle/crypto/util/f$b;

    return-object p0
.end method
