.class public LZk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljava/security/SecureRandom;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:LZk/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()LBi/c;
    .locals 10

    iget-object v0, p0, LZk/e;->l:LZk/d;

    invoke-virtual {v0}, LZk/d;->c()LZk/g;

    move-result-object v0

    invoke-virtual {v0}, LZk/g;->a()LZk/a;

    move-result-object v1

    iget v0, p0, LZk/e;->k:I

    new-array v7, v0, [B

    new-array v8, v0, [B

    new-array v0, v0, [B

    iget v2, p0, LZk/e;->j:I

    new-array v9, v2, [B

    iget-object v6, p0, LZk/e;->g:Ljava/security/SecureRandom;

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, LZk/a;->n([B[B[B[BLjava/security/SecureRandom;)V

    new-instance v1, LZk/i;

    iget-object v2, p0, LZk/e;->l:LZk/d;

    invoke-virtual {v2}, LZk/d;->c()LZk/g;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LZk/i;-><init>(LZk/g;[B)V

    new-instance v0, LZk/h;

    iget-object v2, p0, LZk/e;->l:LZk/d;

    invoke-virtual {v2}, LZk/d;->c()LZk/g;

    move-result-object v2

    invoke-direct {v0, v2, v7, v8, v9}, LZk/h;-><init>(LZk/g;[B[B[B)V

    new-instance v2, LBi/c;

    invoke-direct {v2, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-direct {p0}, LZk/e;->c()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 1

    move-object v0, p1

    check-cast v0, LZk/d;

    iput-object v0, p0, LZk/e;->l:LZk/d;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LZk/e;->g:Ljava/security/SecureRandom;

    iget-object p1, p0, LZk/e;->l:LZk/d;

    invoke-virtual {p1}, LZk/d;->c()LZk/g;

    move-result-object p1

    invoke-virtual {p1}, LZk/g;->f()I

    move-result p1

    iput p1, p0, LZk/e;->h:I

    iget-object p1, p0, LZk/e;->l:LZk/d;

    invoke-virtual {p1}, LZk/d;->c()LZk/g;

    move-result-object p1

    invoke-virtual {p1}, LZk/g;->b()I

    move-result p1

    iput p1, p0, LZk/e;->i:I

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, LZk/e;->j:I

    iget p1, p0, LZk/e;->h:I

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, LZk/e;->k:I

    return-void
.end method
