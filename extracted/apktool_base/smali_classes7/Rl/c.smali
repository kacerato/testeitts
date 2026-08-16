.class public LRl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# static fields
.field public static final n:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2"


# instance fields
.field public g:LRl/b;

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

    iput-boolean v0, p0, LRl/c;->m:Z

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, LRl/b;

    new-instance v1, LRl/e;

    invoke-direct {v1}, LRl/e;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, LRl/b;-><init>(Ljava/security/SecureRandom;LRl/e;)V

    invoke-virtual {p0, v0}, LRl/c;->b(LBi/G;)V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 9

    iget-boolean v0, p0, LRl/c;->m:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, LRl/c;->c()V

    :cond_0
    new-instance v4, LWl/h;

    iget v0, p0, LRl/c;->h:I

    iget v1, p0, LRl/c;->k:I

    invoke-direct {v4, v0, v1}, LWl/h;-><init>(II)V

    new-instance v5, LWl/y;

    iget v0, p0, LRl/c;->j:I

    const/16 v1, 0x49

    iget-object v2, p0, LRl/c;->l:Ljava/security/SecureRandom;

    invoke-direct {v5, v4, v0, v1, v2}, LWl/y;-><init>(LWl/h;ICLjava/security/SecureRandom;)V

    invoke-static {v4, v5}, LWl/s;->b(LWl/h;LWl/y;)LWl/e;

    move-result-object v0

    iget-object v1, p0, LRl/c;->l:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, LWl/s;->a(LWl/e;Ljava/security/SecureRandom;)LWl/s$a;

    move-result-object v0

    invoke-virtual {v0}, LWl/s$a;->c()LWl/e;

    move-result-object v1

    invoke-virtual {v0}, LWl/s$a;->b()LWl/x;

    move-result-object v6

    invoke-virtual {v1}, LWl/e;->p()LWl/w;

    move-result-object v0

    check-cast v0, LWl/e;

    invoke-virtual {v0}, LWl/w;->d()I

    move-result v3

    new-instance v8, LRl/h;

    iget v1, p0, LRl/c;->i:I

    iget v2, p0, LRl/c;->j:I

    iget-object v7, p0, LRl/c;->g:LRl/b;

    invoke-virtual {v7}, LRl/b;->c()LRl/e;

    move-result-object v7

    invoke-virtual {v7}, LRl/e;->e()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v1, v2, v0, v7}, LRl/h;-><init>(IILWl/e;Ljava/lang/String;)V

    new-instance v0, LRl/g;

    iget v2, p0, LRl/c;->i:I

    iget-object v1, p0, LRl/c;->g:LRl/b;

    invoke-virtual {v1}, LRl/b;->c()LRl/e;

    move-result-object v1

    invoke-virtual {v1}, LRl/e;->e()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, LRl/g;-><init>(IILWl/h;LWl/y;LWl/x;Ljava/lang/String;)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v8, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method public b(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, LRl/b;

    iput-object v0, p0, LRl/c;->g:LRl/b;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LRl/c;->l:Ljava/security/SecureRandom;

    iget-object p1, p0, LRl/c;->g:LRl/b;

    invoke-virtual {p1}, LRl/b;->c()LRl/e;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->b()I

    move-result p1

    iput p1, p0, LRl/c;->h:I

    iget-object p1, p0, LRl/c;->g:LRl/b;

    invoke-virtual {p1}, LRl/b;->c()LRl/e;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->c()I

    move-result p1

    iput p1, p0, LRl/c;->i:I

    iget-object p1, p0, LRl/c;->g:LRl/b;

    invoke-virtual {p1}, LRl/b;->c()LRl/e;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->d()I

    move-result p1

    iput p1, p0, LRl/c;->j:I

    iget-object p1, p0, LRl/c;->g:LRl/b;

    invoke-virtual {p1}, LRl/b;->c()LRl/e;

    move-result-object p1

    invoke-virtual {p1}, LRl/o;->a()I

    move-result p1

    iput p1, p0, LRl/c;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LRl/c;->m:Z

    return-void
.end method
