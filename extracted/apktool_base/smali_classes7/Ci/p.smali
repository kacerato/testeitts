.class public LCi/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/e;


# instance fields
.field public a:LXi/c;

.field public b:LBi/N;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LCi/p;->c:I

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/N0;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    iput v0, p0, LCi/p;->c:I

    new-instance v0, LCi/n;

    invoke-direct {v0}, LCi/n;-><init>()V

    :goto_0
    iput-object v0, p0, LCi/p;->b:LBi/N;

    goto :goto_1

    :cond_0
    instance-of v0, p1, LXi/Q0;

    if-eqz v0, :cond_1

    const/16 v0, 0x38

    iput v0, p0, LCi/p;->c:I

    new-instance v0, LCi/o;

    invoke-direct {v0}, LCi/o;-><init>()V

    goto :goto_0

    :goto_1
    move-object v0, p1

    check-cast v0, LXi/c;

    iput-object v0, p0, LCi/p;->a:LXi/c;

    iget-object v0, p0, LCi/p;->b:LBi/N;

    invoke-interface {v0, p1}, LBi/N;->a(LBi/k;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key is neither X25519 nor X448"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(LBi/k;)Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, LCi/p;->c:I

    new-array v0, v0, [B

    iget-object v1, p0, LCi/p;->b:LBi/N;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, LBi/N;->b(LBi/k;[BI)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, LCi/p;->c:I

    return v0
.end method
