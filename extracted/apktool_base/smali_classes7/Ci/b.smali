.class public LCi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/e;


# static fields
.field public static final c:Ljava/math/BigInteger;


# instance fields
.field public a:LXi/r;

.field public b:LXi/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LCi/b;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p1, LXi/x0;

    invoke-virtual {p1}, LXi/x0;->a()LBi/k;

    move-result-object p1

    :cond_0
    check-cast p1, LXi/c;

    instance-of v0, p1, LXi/r;

    if-eqz v0, :cond_1

    check-cast p1, LXi/r;

    iput-object p1, p0, LCi/b;->a:LXi/r;

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object p1

    iput-object p1, p0, LCi/b;->b:LXi/q;

    const-string p1, "DHB"

    iget-object v0, p0, LCi/b;->a:LXi/r;

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

.method public b(LBi/k;)Ljava/math/BigInteger;
    .locals 3

    check-cast p1, LXi/s;

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object v0

    iget-object v1, p0, LCi/b;->b:LXi/q;

    invoke-virtual {v0, v1}, LXi/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LCi/b;->b:LXi/q;

    invoke-virtual {v0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, LXi/s;->e()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, LCi/b;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, LCi/b;->a:LXi/r;

    invoke-virtual {v2}, LXi/r;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Shared key can\'t be 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Diffie-Hellman public key is weak"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LCi/b;->a:LXi/r;

    invoke-virtual {v0}, LXi/n;->d()LXi/q;

    move-result-object v0

    invoke-virtual {v0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
