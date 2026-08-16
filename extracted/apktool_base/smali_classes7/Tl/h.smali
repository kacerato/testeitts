.class public LTl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/g;


# instance fields
.field public a:LTl/f;

.field public b:LTl/e;

.field public c:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LTl/h;->c:Ljava/security/SecureRandom;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, LTl/e;

    iput-object p1, p0, LTl/h;->b:LTl/e;

    goto :goto_0

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LTl/h;->c:Ljava/security/SecureRandom;

    check-cast p2, LTl/e;

    iput-object p2, p0, LTl/h;->b:LTl/e;

    :goto_0
    iput-object v0, p0, LTl/h;->a:LTl/f;

    iget-object p1, p0, LTl/h;->b:LTl/e;

    invoke-virtual {p1}, LTl/e;->e()I

    move-result p1

    :goto_1
    invoke-static {p1}, LTl/g;->e(I)V

    goto :goto_2

    :cond_1
    iput-object v0, p0, LTl/h;->b:LTl/e;

    check-cast p2, LTl/f;

    iput-object p2, p0, LTl/h;->a:LTl/f;

    invoke-virtual {p2}, LTl/f;->e()I

    move-result p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public b([B)[B
    .locals 7

    iget-object v0, p0, LTl/h;->b:LTl/e;

    invoke-virtual {v0}, LTl/e;->e()I

    move-result v0

    invoke-static {v0}, LTl/g;->d(I)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LTl/h;->b:LTl/e;

    invoke-virtual {v1}, LTl/e;->e()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    array-length v4, p1

    iget-object v1, p0, LTl/h;->b:LTl/e;

    invoke-virtual {v1}, LTl/e;->d()[B

    move-result-object v5

    iget-object v6, p0, LTl/h;->c:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, LTl/j;->n([B[BII[BLjava/security/SecureRandom;)I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown security category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LTl/h;->b:LTl/e;

    invoke-virtual {v1}, LTl/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    array-length v4, p1

    iget-object v1, p0, LTl/h;->b:LTl/e;

    invoke-virtual {v1}, LTl/e;->d()[B

    move-result-object v5

    iget-object v6, p0, LTl/h;->c:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, LTl/i;->m([B[BII[BLjava/security/SecureRandom;)I

    :goto_0
    return-object v0
.end method

.method public d([B[B)Z
    .locals 3

    iget-object v0, p0, LTl/h;->a:LTl/f;

    invoke-virtual {v0}, LTl/f;->e()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    array-length v0, p2

    iget-object v1, p0, LTl/h;->a:LTl/f;

    invoke-virtual {v1}, LTl/f;->d()[B

    move-result-object v1

    invoke-static {p1, p2, v2, v0, v1}, LTl/j;->v([B[BII[B)I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown security category: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, LTl/h;->a:LTl/f;

    invoke-virtual {v0}, LTl/f;->e()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    array-length v0, p2

    iget-object v1, p0, LTl/h;->a:LTl/f;

    invoke-virtual {v1}, LTl/f;->d()[B

    move-result-object v1

    invoke-static {p1, p2, v2, v0, v1}, LTl/i;->u([B[BII[B)I

    move-result p1

    :goto_0
    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
