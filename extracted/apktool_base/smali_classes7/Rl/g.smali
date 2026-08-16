.class public LRl/g;
.super LRl/d;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:I

.field public f:LWl/h;

.field public g:LWl/y;

.field public h:LWl/x;

.field public i:LWl/e;

.field public j:[LWl/y;


# direct methods
.method public constructor <init>(IILWl/h;LWl/y;LWl/e;LWl/x;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p7}, LRl/d;-><init>(ZLjava/lang/String;)V

    iput p1, p0, LRl/g;->d:I

    iput p2, p0, LRl/g;->e:I

    iput-object p3, p0, LRl/g;->f:LWl/h;

    iput-object p4, p0, LRl/g;->g:LWl/y;

    iput-object p5, p0, LRl/g;->i:LWl/e;

    iput-object p6, p0, LRl/g;->h:LWl/x;

    new-instance p1, LWl/A;

    invoke-direct {p1, p3, p4}, LWl/A;-><init>(LWl/h;LWl/y;)V

    invoke-virtual {p1}, LWl/A;->c()[LWl/y;

    move-result-object p1

    iput-object p1, p0, LRl/g;->j:[LWl/y;

    return-void
.end method

.method public constructor <init>(IILWl/h;LWl/y;LWl/x;Ljava/lang/String;)V
    .locals 8

    .line 2
    invoke-static {p3, p4}, LWl/s;->b(LWl/h;LWl/y;)LWl/e;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, LRl/g;-><init>(IILWl/h;LWl/y;LWl/e;LWl/x;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e()LWl/h;
    .locals 1

    iget-object v0, p0, LRl/g;->f:LWl/h;

    return-object v0
.end method

.method public f()LWl/y;
    .locals 1

    iget-object v0, p0, LRl/g;->g:LWl/y;

    return-object v0
.end method

.method public g()LWl/e;
    .locals 1

    iget-object v0, p0, LRl/g;->i:LWl/e;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LRl/g;->e:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LRl/g;->d:I

    return v0
.end method

.method public j()LWl/x;
    .locals 1

    iget-object v0, p0, LRl/g;->h:LWl/x;

    return-object v0
.end method

.method public k()[LWl/y;
    .locals 1

    iget-object v0, p0, LRl/g;->j:[LWl/y;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, LRl/g;->g:LWl/y;

    invoke-virtual {v0}, LWl/y;->n()I

    move-result v0

    return v0
.end method
