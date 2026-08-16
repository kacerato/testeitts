.class public LRl/q;
.super LRl/m;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:LWl/h;

.field public h:LWl/y;

.field public i:LWl/e;

.field public j:LWl/x;

.field public k:LWl/x;

.field public l:LWl/e;

.field public m:[LWl/y;


# direct methods
.method public constructor <init>(IILWl/h;LWl/y;LWl/x;LWl/x;LWl/e;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, LRl/m;-><init>(ZLRl/o;)V

    iput p2, p0, LRl/q;->f:I

    iput p1, p0, LRl/q;->e:I

    iput-object p3, p0, LRl/q;->g:LWl/h;

    iput-object p4, p0, LRl/q;->h:LWl/y;

    iput-object p7, p0, LRl/q;->i:LWl/e;

    iput-object p5, p0, LRl/q;->j:LWl/x;

    iput-object p6, p0, LRl/q;->k:LWl/x;

    invoke-static {p3, p4}, LWl/s;->b(LWl/h;LWl/y;)LWl/e;

    move-result-object p1

    iput-object p1, p0, LRl/q;->l:LWl/e;

    new-instance p1, LWl/A;

    invoke-direct {p1, p3, p4}, LWl/A;-><init>(LWl/h;LWl/y;)V

    invoke-virtual {p1}, LWl/A;->c()[LWl/y;

    move-result-object p1

    iput-object p1, p0, LRl/q;->m:[LWl/y;

    return-void
.end method

.method public constructor <init>(II[B[B[B[B[B[B[[B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, LRl/m;-><init>(ZLRl/o;)V

    iput p1, p0, LRl/q;->e:I

    iput p2, p0, LRl/q;->f:I

    new-instance p1, LWl/h;

    invoke-direct {p1, p3}, LWl/h;-><init>([B)V

    iput-object p1, p0, LRl/q;->g:LWl/h;

    new-instance p2, LWl/y;

    invoke-direct {p2, p1, p4}, LWl/y;-><init>(LWl/h;[B)V

    iput-object p2, p0, LRl/q;->h:LWl/y;

    new-instance p1, LWl/e;

    invoke-direct {p1, p5}, LWl/e;-><init>([B)V

    iput-object p1, p0, LRl/q;->i:LWl/e;

    new-instance p1, LWl/x;

    invoke-direct {p1, p6}, LWl/x;-><init>([B)V

    iput-object p1, p0, LRl/q;->j:LWl/x;

    new-instance p1, LWl/x;

    invoke-direct {p1, p7}, LWl/x;-><init>([B)V

    iput-object p1, p0, LRl/q;->k:LWl/x;

    new-instance p1, LWl/e;

    invoke-direct {p1, p8}, LWl/e;-><init>([B)V

    iput-object p1, p0, LRl/q;->l:LWl/e;

    array-length p1, p9

    new-array p1, p1, [LWl/y;

    iput-object p1, p0, LRl/q;->m:[LWl/y;

    const/4 p1, 0x0

    :goto_0
    array-length p2, p9

    if-ge p1, p2, :cond_0

    iget-object p2, p0, LRl/q;->m:[LWl/y;

    new-instance p3, LWl/y;

    iget-object p4, p0, LRl/q;->g:LWl/h;

    aget-object p5, p9, p1

    invoke-direct {p3, p4, p5}, LWl/y;-><init>(LWl/h;[B)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public e()LWl/h;
    .locals 1

    iget-object v0, p0, LRl/q;->g:LWl/h;

    return-object v0
.end method

.method public f()LWl/y;
    .locals 1

    iget-object v0, p0, LRl/q;->h:LWl/y;

    return-object v0
.end method

.method public g()LWl/e;
    .locals 1

    iget-object v0, p0, LRl/q;->l:LWl/e;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LRl/q;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LRl/q;->e:I

    return v0
.end method

.method public j()LWl/x;
    .locals 1

    iget-object v0, p0, LRl/q;->j:LWl/x;

    return-object v0
.end method

.method public k()LWl/x;
    .locals 1

    iget-object v0, p0, LRl/q;->k:LWl/x;

    return-object v0
.end method

.method public l()[LWl/y;
    .locals 1

    iget-object v0, p0, LRl/q;->m:[LWl/y;

    return-object v0
.end method

.method public m()LWl/e;
    .locals 1

    iget-object v0, p0, LRl/q;->i:LWl/e;

    return-object v0
.end method
