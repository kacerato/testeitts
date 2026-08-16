.class public LXi/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:LXi/L;

.field public c:LXi/L;

.field public d:LXi/M;


# direct methods
.method public constructor <init>(LXi/L;LXi/L;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LXi/q0;-><init>(LXi/L;LXi/L;LXi/M;)V

    return-void
.end method

.method public constructor <init>(LXi/L;LXi/L;LXi/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/G;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_0

    new-instance p3, Ljk/k;

    invoke-direct {p3}, Ljk/k;-><init>()V

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v1

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljk/b;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p3

    new-instance v1, LXi/M;

    invoke-direct {v1, p3, v0}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    move-object p3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/G;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iput-object p1, p0, LXi/q0;->b:LXi/L;

    iput-object p2, p0, LXi/q0;->c:LXi/L;

    iput-object p3, p0, LXi/q0;->d:LXi/M;

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
.method public a()LXi/L;
    .locals 1

    iget-object v0, p0, LXi/q0;->c:LXi/L;

    return-object v0
.end method

.method public b()LXi/M;
    .locals 1

    iget-object v0, p0, LXi/q0;->d:LXi/M;

    return-object v0
.end method

.method public c()LXi/L;
    .locals 1

    iget-object v0, p0, LXi/q0;->b:LXi/L;

    return-object v0
.end method
