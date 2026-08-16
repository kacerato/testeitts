.class public LPl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/h;


# instance fields
.field public final a:LPl/k;

.field public b:LPl/g;


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/util/n;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/util/n;

    invoke-interface {p1}, Lorg/bouncycastle/util/n;->copy()Lorg/bouncycastle/util/n;

    move-result-object p1

    new-instance v0, LPl/k;

    new-instance v1, LPl/l$a;

    invoke-direct {v1, p0, p1}, LPl/l$a;-><init>(LPl/l;Lorg/bouncycastle/util/n;)V

    invoke-direct {v0, v1}, LPl/k;-><init>(LPl/a;)V

    iput-object v0, p0, LPl/l;->a:LPl/k;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "digest must implement Memoable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/x0;

    invoke-virtual {v0}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LPl/g;

    :goto_0
    iput-object v0, p0, LPl/l;->b:LPl/g;

    goto :goto_1

    :cond_0
    move-object v0, p2

    check-cast v0, LPl/g;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, LPl/l;->a:LPl/k;

    invoke-virtual {v0, p1, p2}, LPl/k;->a(ZLBi/k;)V

    return-void
.end method

.method public b([B)[B
    .locals 1

    iget-object v0, p0, LPl/l;->b:LPl/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, LPl/l;->a:LPl/k;

    invoke-virtual {v0, p1}, LPl/k;->b([B)[B

    move-result-object p1

    iget-object v0, p0, LPl/l;->b:LPl/g;

    invoke-virtual {v0}, LPl/g;->q()LPl/g;

    move-result-object v0

    iput-object v0, p0, LPl/l;->b:LPl/g;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "signing key no longer usable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()LXi/c;
    .locals 2

    iget-object v0, p0, LPl/l;->b:LPl/g;

    const/4 v1, 0x0

    iput-object v1, p0, LPl/l;->b:LPl/g;

    return-object v0
.end method

.method public d([B[B)Z
    .locals 1

    iget-object v0, p0, LPl/l;->a:LPl/k;

    invoke-virtual {v0, p1, p2}, LPl/k;->d([B[B)Z

    move-result p1

    return p1
.end method
