.class public LXi/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public final b:Z

.field public final c:LXi/L;

.field public final d:Ljk/i;

.field public final e:LXi/L;

.field public final f:Ljk/i;


# direct methods
.method public constructor <init>(ZLXi/L;LXi/L;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {p3}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/G;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljk/k;

    invoke-direct {v1}, Ljk/k;-><init>()V

    iput-boolean p1, p0, LXi/H0;->b:Z

    iput-object p2, p0, LXi/H0;->c:LXi/L;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object p1

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    iput-object p1, p0, LXi/H0;->d:Ljk/i;

    iput-object p3, p0, LXi/H0;->e:LXi/L;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object p1

    invoke-virtual {p3}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    iput-object p1, p0, LXi/H0;->f:Ljk/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ephemeralPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "staticPrivateKey cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()LXi/L;
    .locals 1

    iget-object v0, p0, LXi/H0;->e:LXi/L;

    return-object v0
.end method

.method public b()Ljk/i;
    .locals 1

    iget-object v0, p0, LXi/H0;->f:Ljk/i;

    return-object v0
.end method

.method public c()LXi/L;
    .locals 1

    iget-object v0, p0, LXi/H0;->c:LXi/L;

    return-object v0
.end method

.method public d()Ljk/i;
    .locals 1

    iget-object v0, p0, LXi/H0;->d:Ljk/i;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, LXi/H0;->b:Z

    return v0
.end method
