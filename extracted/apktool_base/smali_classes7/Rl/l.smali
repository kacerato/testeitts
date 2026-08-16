.class public LRl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# static fields
.field public static final n:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field public g:LRl/k;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/security/SecureRandom;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LRl/l;->m:Z

    return-void
.end method

.method private c()LBi/c;
    .locals 11

    iget-boolean v0, p0, LRl/l;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, LRl/l;->e()V

    :cond_0
    new-instance v4, LWl/h;

    iget v0, p0, LRl/l;->h:I

    iget v1, p0, LRl/l;->k:I

    invoke-direct {v4, v0, v1}, LWl/h;-><init>(II)V

    new-instance v5, LWl/y;

    iget v0, p0, LRl/l;->j:I

    const/16 v1, 0x49

    iget-object v2, p0, LRl/l;->l:Ljava/security/SecureRandom;

    invoke-direct {v5, v4, v0, v1, v2}, LWl/y;-><init>(LWl/h;ICLjava/security/SecureRandom;)V

    new-instance v0, LWl/A;

    invoke-direct {v0, v4, v5}, LWl/A;-><init>(LWl/h;LWl/y;)V

    invoke-virtual {v0}, LWl/A;->c()[LWl/y;

    invoke-static {v4, v5}, LWl/s;->b(LWl/h;LWl/y;)LWl/e;

    move-result-object v0

    iget-object v1, p0, LRl/l;->l:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, LWl/s;->a(LWl/e;Ljava/security/SecureRandom;)LWl/s$a;

    move-result-object v0

    invoke-virtual {v0}, LWl/s$a;->c()LWl/e;

    move-result-object v1

    invoke-virtual {v0}, LWl/s$a;->b()LWl/x;

    move-result-object v6

    invoke-virtual {v1}, LWl/e;->p()LWl/w;

    move-result-object v0

    check-cast v0, LWl/e;

    invoke-virtual {v0}, LWl/e;->r()LWl/e;

    move-result-object v1

    invoke-virtual {v0}, LWl/w;->d()I

    move-result v3

    iget-object v0, p0, LRl/l;->l:Ljava/security/SecureRandom;

    invoke-static {v3, v0}, LWl/e;->q(ILjava/security/SecureRandom;)[LWl/e;

    move-result-object v0

    new-instance v7, LWl/x;

    iget v2, p0, LRl/l;->i:I

    iget-object v8, p0, LRl/l;->l:Ljava/security/SecureRandom;

    invoke-direct {v7, v2, v8}, LWl/x;-><init>(ILjava/security/SecureRandom;)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, v1}, LWl/e;->g(LWl/w;)LWl/w;

    move-result-object v1

    check-cast v1, LWl/e;

    invoke-virtual {v1, v7}, LWl/e;->h(LWl/x;)LWl/w;

    move-result-object v1

    check-cast v1, LWl/e;

    new-instance v9, LRl/r;

    iget v2, p0, LRl/l;->i:I

    iget v8, p0, LRl/l;->j:I

    invoke-direct {v9, v2, v8, v1}, LRl/r;-><init>(IILWl/e;)V

    new-instance v10, LRl/q;

    iget v2, p0, LRl/l;->i:I

    const/4 v1, 0x1

    aget-object v8, v0, v1

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, LRl/q;-><init>(IILWl/h;LWl/y;LWl/x;LWl/x;LWl/e;)V

    new-instance v0, LBi/c;

    invoke-direct {v0, v9, v10}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method private d(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, LRl/k;

    iput-object v0, p0, LRl/l;->g:LRl/k;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LRl/l;->l:Ljava/security/SecureRandom;

    iget-object p1, p0, LRl/l;->g:LRl/k;

    invoke-virtual {p1}, LRl/k;->c()LRl/o;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->b()I

    move-result p1

    iput p1, p0, LRl/l;->h:I

    iget-object p1, p0, LRl/l;->g:LRl/k;

    invoke-virtual {p1}, LRl/k;->c()LRl/o;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->c()I

    move-result p1

    iput p1, p0, LRl/l;->i:I

    iget-object p1, p0, LRl/l;->g:LRl/k;

    invoke-virtual {p1}, LRl/k;->c()LRl/o;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->d()I

    move-result p1

    iput p1, p0, LRl/l;->j:I

    iget-object p1, p0, LRl/l;->g:LRl/k;

    invoke-virtual {p1}, LRl/k;->c()LRl/o;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->a()I

    move-result p1

    iput p1, p0, LRl/l;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LRl/l;->m:Z

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, LRl/k;

    new-instance v1, LRl/o;

    invoke-direct {v1}, LRl/o;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, LRl/k;-><init>(Ljava/security/SecureRandom;LRl/o;)V

    invoke-direct {p0, v0}, LRl/l;->d(LBi/G;)V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, LRl/l;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-direct {p0, p1}, LRl/l;->d(LBi/G;)V

    return-void
.end method
