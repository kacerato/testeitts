.class public Ldl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ldl/i;

.field public h:Ljava/security/SecureRandom;

.field public i:Ldl/l;

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 10

    iget v0, p0, Ldl/j;->l:I

    new-array v0, v0, [B

    iget v1, p0, Ldl/j;->m:I

    new-array v1, v1, [B

    iget-object v2, p0, Ldl/j;->i:Ldl/l;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Ldl/l;->b([BI[BI)[[B

    move-result-object v0

    iget-object v1, p0, Ldl/j;->g:Ldl/i;

    invoke-virtual {v1}, Ldl/i;->c()Ldl/m;

    move-result-object v1

    new-instance v2, Ldl/n;

    const/4 v4, 0x1

    aget-object v6, v0, v4

    const/4 v4, 0x2

    aget-object v7, v0, v4

    const/4 v4, 0x3

    aget-object v8, v0, v4

    aget-object v9, v0, v3

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Ldl/n;-><init>(Ldl/m;[B[B[B[B)V

    new-instance v4, Ldl/o;

    aget-object v0, v0, v3

    invoke-direct {v4, v1, v0}, Ldl/o;-><init>(Ldl/m;[B)V

    new-instance v0, LBi/c;

    invoke-direct {v0, v4, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Ldl/i;

    iput-object v0, p0, Ldl/j;->g:Ldl/i;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Ldl/j;->h:Ljava/security/SecureRandom;

    check-cast p1, Ldl/i;

    invoke-virtual {p1}, Ldl/i;->c()Ldl/m;

    move-result-object v0

    invoke-virtual {v0}, Ldl/m;->a()I

    move-result v0

    iput v0, p0, Ldl/j;->j:I

    invoke-virtual {p1}, Ldl/i;->c()Ldl/m;

    move-result-object p1

    invoke-virtual {p1}, Ldl/m;->c()I

    move-result p1

    iput p1, p0, Ldl/j;->k:I

    new-instance v0, Ldl/l;

    iget v1, p0, Ldl/j;->j:I

    iget-object v2, p0, Ldl/j;->h:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p1, v2}, Ldl/l;-><init>(IILjava/security/SecureRandom;)V

    iput-object v0, p0, Ldl/j;->i:Ldl/l;

    iget p1, p0, Ldl/j;->j:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    const/16 v1, 0x400

    const/16 v2, 0x8

    if-ne p1, v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :cond_0
    const/16 v1, 0x100

    if-eq p1, v1, :cond_4

    const/16 v1, 0x200

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v1, 0x7

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x6

    :goto_2
    mul-int/lit8 v3, p1, 0xe

    div-int/2addr v3, v2

    add-int/2addr v3, v0

    iput v3, p0, Ldl/j;->l:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, p1

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Ldl/j;->m:I

    return-void
.end method
