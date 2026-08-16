.class public Lpl/a$a;
.super Lpl/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public d:LBi/c;

.field public e:LBi/A;


# direct methods
.method public constructor <init>(LYk/e;Lhi/b;[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lpl/a;-><init>(Lhi/b;[B[BLjava/security/SecureRandom;)V

    instance-of p2, p1, Lcl/i;

    if-eqz p2, :cond_0

    new-instance p2, Lcl/g;

    invoke-direct {p2}, Lcl/g;-><init>()V

    new-instance p3, Lcl/f;

    check-cast p1, Lcl/i;

    invoke-direct {p3, p5, p1}, Lcl/f;-><init>(Ljava/security/SecureRandom;Lcl/i;)V

    invoke-virtual {p2, p3}, Lcl/g;->b(LBi/G;)V

    invoke-virtual {p2}, Lcl/g;->a()LBi/c;

    move-result-object p1

    iput-object p1, p0, Lpl/a$a;->d:LBi/c;

    new-instance p2, Lcl/d;

    invoke-virtual {p1}, LBi/c;->a()LXi/c;

    move-result-object p1

    check-cast p1, Lcl/j;

    invoke-direct {p2, p1}, Lcl/d;-><init>(Lcl/j;)V

    :goto_0
    iput-object p2, p0, Lpl/a$a;->e:LBi/A;

    goto :goto_1

    :cond_0
    instance-of p2, p1, Lil/g;

    if-eqz p2, :cond_1

    new-instance p2, Lil/d;

    invoke-direct {p2}, Lil/d;-><init>()V

    new-instance p3, Lil/c;

    check-cast p1, Lil/g;

    invoke-direct {p3, p5, p1}, Lil/c;-><init>(Ljava/security/SecureRandom;Lil/g;)V

    invoke-virtual {p2, p3}, Lil/d;->b(LBi/G;)V

    invoke-virtual {p2}, Lil/d;->a()LBi/c;

    move-result-object p1

    iput-object p1, p0, Lpl/a$a;->d:LBi/c;

    new-instance p2, Lil/a;

    invoke-virtual {p1}, LBi/c;->a()LXi/c;

    move-result-object p1

    check-cast p1, Lil/h;

    invoke-direct {p2, p1}, Lil/a;-><init>(Lil/h;)V

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
.method public e([B)Lorg/bouncycastle/crypto/util/f;
    .locals 2

    iget-object v0, p0, Lpl/a;->a:Lorg/bouncycastle/crypto/util/f$b;

    iget-object v1, p0, Lpl/a$a;->e:LBi/A;

    invoke-interface {v1, p1}, LBi/A;->b([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/f$b;->b([B)Lorg/bouncycastle/crypto/util/f$b;

    iget-object p1, p0, Lpl/a;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/f$b;->a()Lorg/bouncycastle/crypto/util/f;

    move-result-object p1

    return-object p1
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lpl/a$a;->d:LBi/c;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    invoke-static {v0}, Lpl/a;->a(LXi/c;)[B

    move-result-object v0

    return-object v0
.end method

.method public g([B)Lpl/a;
    .locals 1

    iget-object v0, p0, Lpl/a;->a:Lorg/bouncycastle/crypto/util/f$b;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/f$b;->c([B)Lorg/bouncycastle/crypto/util/f$b;

    return-object p0
.end method
