.class public LRi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/A;


# instance fields
.field public final a:LXi/L;

.field public b:I

.field public c:LBi/w;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(LXi/L;ILBi/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRi/a;->a:LXi/L;

    iput p2, p0, LRi/a;->b:I

    iput-object p3, p0, LRi/a;->c:LBi/w;

    const/4 p1, 0x0

    iput-boolean p1, p0, LRi/a;->d:Z

    iput-boolean p1, p0, LRi/a;->e:Z

    iput-boolean p1, p0, LRi/a;->f:Z

    return-void
.end method

.method public constructor <init>(LXi/L;ILBi/w;ZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRi/a;->a:LXi/L;

    iput p2, p0, LRi/a;->b:I

    iput-object p3, p0, LRi/a;->c:LBi/w;

    iput-boolean p4, p0, LRi/a;->d:Z

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, LRi/a;->e:Z

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, LRi/a;->e:Z

    :goto_0
    iput-boolean p6, p0, LRi/a;->f:Z

    new-instance p2, LHi/c;

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object p3

    invoke-virtual {p3}, LXi/G;->a()Ljk/e;

    move-result-object p3

    invoke-static {p3}, LHi/b;->b(Ljk/e;)I

    move-result p3

    sget-object p4, LBi/o;->DECRYPTION:LBi/o;

    const-string p5, "ECIESKem"

    invoke-direct {p2, p5, p3, p1, p4}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {p2}, LBi/r;->a(LBi/n;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LRi/a;->a:LXi/L;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->w()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public b([B)[B
    .locals 6

    iget-object v0, p0, LRi/a;->a:LXi/L;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v1}, LXi/G;->a()Ljk/e;

    move-result-object v2

    invoke-virtual {v1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, p1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v2

    iget-boolean v5, p0, LRi/a;->d:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, LRi/a;->e:Z

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v2, v4}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v2

    :cond_1
    invoke-virtual {v0}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v0

    iget-boolean v4, p0, LRi/a;->d:Z

    if-eqz v4, :cond_2

    invoke-virtual {v1}, LXi/G;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->B()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->e()[B

    move-result-object v0

    iget-boolean v1, p0, LRi/a;->f:Z

    iget-object v2, p0, LRi/a;->c:LBi/w;

    iget v3, p0, LRi/a;->b:I

    invoke-static {v1, v2, v3, p1, v0}, LRi/b;->c(ZLBi/w;I[B[B)[B

    move-result-object p1

    return-object p1
.end method
