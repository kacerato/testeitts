.class public LCi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public a:LXi/r;

.field public b:LXi/q;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LCi/a;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXi/s;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object v0

    iget-object v1, p0, LCi/a;->b:LXi/q;

    invoke-virtual {v0, v1}, LXi/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LCi/a;->b:LXi/q;

    invoke-virtual {v0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, LXi/s;->e()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, LCi/a;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, LCi/a;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LCi/a;->a:LXi/r;

    invoke-virtual {v1}, LXi/r;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shared key can\'t be 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Diffie-Hellman public key is weak"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/math/BigInteger;
    .locals 4

    new-instance v0, LOi/j;

    invoke-direct {v0}, LOi/j;-><init>()V

    new-instance v1, LXi/m;

    iget-object v2, p0, LCi/a;->d:Ljava/security/SecureRandom;

    iget-object v3, p0, LCi/a;->b:LXi/q;

    invoke-direct {v1, v2, v3}, LXi/m;-><init>(Ljava/security/SecureRandom;LXi/q;)V

    invoke-virtual {v0, v1}, LOi/j;->b(LBi/G;)V

    invoke-virtual {v0}, LOi/j;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v1

    check-cast v1, LXi/r;

    invoke-virtual {v1}, LXi/r;->e()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, LCi/a;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    check-cast v0, LXi/s;

    invoke-virtual {v0}, LXi/s;->e()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public c(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p1, LXi/x0;

    invoke-virtual {p1}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LCi/a;->d:Ljava/security/SecureRandom;

    invoke-virtual {p1}, LXi/x0;->a()LBi/k;

    move-result-object p1

    :goto_0
    check-cast p1, LXi/c;

    goto :goto_1

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LCi/a;->d:Ljava/security/SecureRandom;

    goto :goto_0

    :goto_1
    instance-of v0, p1, LXi/r;

    if-eqz v0, :cond_1

    check-cast p1, LXi/r;

    iput-object p1, p0, LCi/a;->a:LXi/r;

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object p1

    iput-object p1, p0, LCi/a;->b:LXi/q;

    const-string p1, "DH"

    iget-object v0, p0, LCi/a;->a:LXi/r;

    invoke-static {p1, v0}, LCi/m;->a(Ljava/lang/String;LXi/n;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
