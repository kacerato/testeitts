.class public LRl/r;
.super LRl/m;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:LWl/e;


# direct methods
.method public constructor <init>(IILWl/e;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LRl/m;-><init>(ZLRl/o;)V

    iput p1, p0, LRl/r;->d:I

    iput p2, p0, LRl/r;->e:I

    new-instance p1, LWl/e;

    invoke-direct {p1, p3}, LWl/e;-><init>(LWl/e;)V

    iput-object p1, p0, LRl/r;->f:LWl/e;

    return-void
.end method


# virtual methods
.method public e()LWl/e;
    .locals 1

    iget-object v0, p0, LRl/r;->f:LWl/e;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LRl/r;->f:LWl/e;

    invoke-virtual {v0}, LWl/w;->d()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LRl/r;->d:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LRl/r;->e:I

    return v0
.end method
