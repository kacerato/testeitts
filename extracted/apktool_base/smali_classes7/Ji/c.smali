.class public LJi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJi/b;


# instance fields
.field public a:LXi/L;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/L;

    if-eqz v0, :cond_0

    check-cast p1, LXi/L;

    iput-object p1, p0, LJi/c;->a:LXi/L;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ECPrivateKeyParameters are required for decryption."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LJi/i;)Ljk/i;
    .locals 3

    iget-object v0, p0, LJi/c;->a:LXi/L;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, LJi/i;->b()Ljk/i;

    move-result-object v1

    invoke-static {v0, v1}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object v1

    iget-object v2, p0, LJi/c;->a:LXi/L;

    invoke-virtual {v2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v1

    invoke-virtual {p1}, LJi/i;->c()Ljk/i;

    move-result-object p1

    invoke-static {v0, p1}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljk/i;->J(Ljk/i;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECElGamalDecryptor not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
