.class public LXi/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:LXi/r;

.field public c:LXi/r;

.field public d:LXi/s;


# direct methods
.method public constructor <init>(LXi/r;LXi/r;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LXi/o;-><init>(LXi/r;LXi/r;LXi/s;)V

    return-void
.end method

.method public constructor <init>(LXi/r;LXi/r;LXi/s;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p1}, LXi/n;->d()LXi/q;

    move-result-object v0

    invoke-virtual {p2}, LXi/n;->d()LXi/q;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    new-instance p3, LXi/s;

    invoke-virtual {v0}, LXi/q;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, LXi/r;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p3, v1, v0}, LXi/s;-><init>(Ljava/math/BigInteger;LXi/q;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, LXi/n;->d()LXi/q;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, LXi/o;->b:LXi/r;

    iput-object p2, p0, LXi/o;->c:LXi/r;

    iput-object p3, p0, LXi/o;->d:LXi/s;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ephemeral public key has different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ephemeralPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "staticPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LXi/r;
    .locals 1

    iget-object v0, p0, LXi/o;->c:LXi/r;

    return-object v0
.end method

.method public b()LXi/s;
    .locals 1

    iget-object v0, p0, LXi/o;->d:LXi/s;

    return-object v0
.end method

.method public c()LXi/r;
    .locals 1

    iget-object v0, p0, LXi/o;->b:LXi/r;

    return-object v0
.end method
