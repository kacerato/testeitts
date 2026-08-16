.class public LRl/h;
.super LRl/d;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:LWl/e;


# direct methods
.method public constructor <init>(IILWl/e;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p4}, LRl/d;-><init>(ZLjava/lang/String;)V

    iput p1, p0, LRl/h;->d:I

    iput p2, p0, LRl/h;->e:I

    new-instance p1, LWl/e;

    invoke-direct {p1, p3}, LWl/e;-><init>(LWl/e;)V

    iput-object p1, p0, LRl/h;->f:LWl/e;

    return-void
.end method


# virtual methods
.method public e()LWl/e;
    .locals 1

    iget-object v0, p0, LRl/h;->f:LWl/e;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LRl/h;->f:LWl/e;

    invoke-virtual {v0}, LWl/w;->d()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LRl/h;->d:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LRl/h;->e:I

    return v0
.end method
