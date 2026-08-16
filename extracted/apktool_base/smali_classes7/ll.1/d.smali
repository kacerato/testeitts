.class public Lll/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:[[[S

.field public B:[[[S

.field public C:[[[S

.field public D:[[[S

.field public E:[[[S

.field public F:[[[S

.field public G:[[[S

.field public a:Ljava/security/SecureRandom;

.field public b:Lll/n;

.field public c:Lll/h;

.field public d:Lll/a;

.field public e:I

.field public f:I

.field public g:I

.field public h:[B

.field public i:[B

.field public j:[[S

.field public k:[[S

.field public l:[[S

.field public m:[[S

.field public n:[[S

.field public o:[[[S

.field public p:[[[S

.field public q:[[[S

.field public r:[[[S

.field public s:[[[S

.field public t:[[[S

.field public u:[[[S

.field public v:[[[S

.field public w:[[[S

.field public x:[[[S

.field public y:[[[S

.field public z:[[[S


# direct methods
.method public constructor <init>(Lll/h;Ljava/security/SecureRandom;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lll/a;

    invoke-direct {v0}, Lll/a;-><init>()V

    iput-object v0, p0, Lll/d;->d:Lll/a;

    iput-object p1, p0, Lll/d;->c:Lll/h;

    iput-object p2, p0, Lll/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lll/h;->l()Lll/n;

    move-result-object p1

    iput-object p1, p0, Lll/d;->b:Lll/n;

    iget-object p1, p0, Lll/d;->c:Lll/h;

    invoke-virtual {p1}, Lll/h;->j()I

    move-result p1

    iput p1, p0, Lll/d;->e:I

    iget-object p1, p0, Lll/d;->c:Lll/h;

    invoke-virtual {p1}, Lll/h;->h()I

    move-result p1

    iput p1, p0, Lll/d;->f:I

    iget-object p1, p0, Lll/d;->c:Lll/h;

    invoke-virtual {p1}, Lll/h;->i()I

    move-result p1

    iput p1, p0, Lll/d;->g:I

    return-void
.end method

.method public constructor <init>(Lll/h;[B[B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lll/a;

    invoke-direct {v0}, Lll/a;-><init>()V

    iput-object v0, p0, Lll/d;->d:Lll/a;

    iput-object p1, p0, Lll/d;->c:Lll/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lll/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Lll/h;->l()Lll/n;

    move-result-object p1

    iput-object p1, p0, Lll/d;->b:Lll/n;

    iput-object p2, p0, Lll/d;->i:[B

    iput-object p3, p0, Lll/d;->h:[B

    iget-object p1, p0, Lll/d;->c:Lll/h;

    invoke-virtual {p1}, Lll/h;->j()I

    move-result p1

    iput p1, p0, Lll/d;->e:I

    iget-object p1, p0, Lll/d;->c:Lll/h;

    invoke-virtual {p1}, Lll/h;->h()I

    move-result p1

    iput p1, p0, Lll/d;->f:I

    iget-object p1, p0, Lll/d;->c:Lll/h;

    invoke-virtual {p1}, Lll/h;->i()I

    move-result p1

    iput p1, p0, Lll/d;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lll/d;->v:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->o:[[[S

    iget v0, p0, Lll/d;->f:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lll/d;->p:[[[S

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lll/d;->f:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lll/d;->p:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->v:[[[S

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lll/a;->b([[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lll/d;->p:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v1

    iget-object v5, p0, Lll/d;->k:[[S

    invoke-virtual {v3, v4, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lll/d;->p:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v1

    iget-object v5, p0, Lll/d;->w:[[[S

    aget-object v5, v5, v1

    invoke-virtual {v3, v4, v5}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lll/d;->g:I

    new-array v2, v1, [[[S

    iput-object v2, p0, Lll/d;->r:[[[S

    new-array v2, v1, [[[S

    iput-object v2, p0, Lll/d;->s:[[[S

    new-array v2, v1, [[[S

    iput-object v2, p0, Lll/d;->t:[[[S

    new-array v1, v1, [[[S

    iput-object v1, p0, Lll/d;->u:[[[S

    iget-object v1, p0, Lll/d;->B:[[[S

    invoke-static {v1}, Lll/m;->b([[[S)[[[S

    move-result-object v1

    iput-object v1, p0, Lll/d;->q:[[[S

    :goto_1
    iget v1, p0, Lll/d;->g:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->B:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lll/a;->b([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->r:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->k:[[S

    invoke-virtual {v3, v1, v4}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->r:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    iget-object v5, p0, Lll/d;->C:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->s:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->n:[[S

    invoke-virtual {v3, v1, v4}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->C:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lll/d;->m:[[S

    invoke-virtual {v1, v2, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->s:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lll/d;->s:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    aget-object v3, v1, v0

    iget-object v4, p0, Lll/d;->D:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lll/a;->a([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->B:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lll/d;->k:[[S

    invoke-virtual {v1, v2, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->C:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->k:[[S

    invoke-virtual {v2, v3}, Lll/a;->o([[S)[[S

    move-result-object v2

    iget-object v3, p0, Lll/d;->t:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    invoke-virtual {v4, v2, v1}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v1, p0, Lll/d;->t:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v1, v0

    iget-object v5, p0, Lll/d;->E:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Lll/d;->t:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lll/a;->n([[S)[[S

    move-result-object v3

    aput-object v3, v1, v0

    iget-object v1, p0, Lll/d;->u:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->s:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v2, v4}, Lll/a;->j([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->C:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lll/a;->o([[S)[[S

    move-result-object v2

    iget-object v3, p0, Lll/d;->n:[[S

    invoke-virtual {v1, v2, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->u:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->E:[[[S

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lll/a;->b([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->m:[[S

    invoke-virtual {v2, v1, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->u:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lll/d;->u:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    aget-object v3, v1, v0

    iget-object v4, p0, Lll/d;->F:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lll/a;->a([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->k:[[S

    invoke-virtual {v0, v1}, Lll/a;->o([[S)[[S

    move-result-object v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->l:[[S

    invoke-virtual {v1, v2}, Lll/a;->o([[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->o:[[[S

    invoke-static {v2}, Lll/m;->b([[[S)[[[S

    move-result-object v2

    iput-object v2, p0, Lll/d;->v:[[[S

    iget v2, p0, Lll/d;->f:I

    new-array v2, v2, [[[S

    iput-object v2, p0, Lll/d;->w:[[[S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lll/d;->f:I

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lll/d;->w:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    iget-object v6, p0, Lll/d;->o:[[[S

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lll/a;->b([[S)[[S

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v4, p0, Lll/d;->w:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    aget-object v6, v4, v3

    iget-object v7, p0, Lll/d;->k:[[S

    invoke-virtual {v5, v6, v7}, Lll/a;->j([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v3

    iget-object v4, p0, Lll/d;->w:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    aget-object v6, v4, v3

    iget-object v7, p0, Lll/d;->p:[[[S

    aget-object v7, v7, v3

    invoke-virtual {v5, v6, v7}, Lll/a;->a([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lll/d;->d([[S[[S)V

    iget v3, p0, Lll/d;->g:I

    new-array v4, v3, [[[S

    iput-object v4, p0, Lll/d;->C:[[[S

    new-array v4, v3, [[[S

    iput-object v4, p0, Lll/d;->D:[[[S

    new-array v4, v3, [[[S

    iput-object v4, p0, Lll/d;->E:[[[S

    new-array v3, v3, [[[S

    iput-object v3, p0, Lll/d;->F:[[[S

    iget-object v3, p0, Lll/d;->q:[[[S

    invoke-static {v3}, Lll/m;->b([[[S)[[[S

    move-result-object v3

    iput-object v3, p0, Lll/d;->B:[[[S

    :goto_1
    iget v3, p0, Lll/d;->g:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->q:[[[S

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lll/a;->b([[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->C:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    iget-object v6, p0, Lll/d;->k:[[S

    invoke-virtual {v5, v3, v6}, Lll/a;->j([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Lll/d;->C:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    aget-object v6, v4, v2

    iget-object v7, p0, Lll/d;->r:[[[S

    aget-object v7, v7, v2

    invoke-virtual {v5, v6, v7}, Lll/a;->a([[S[[S)[[S

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v4, p0, Lll/d;->D:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    iget-object v6, p0, Lll/d;->l:[[S

    invoke-virtual {v5, v3, v6}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->r:[[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lll/d;->m:[[S

    invoke-virtual {v3, v4, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->D:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6, v3}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lll/d;->D:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    aget-object v5, v3, v2

    iget-object v6, p0, Lll/d;->s:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lll/a;->a([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->q:[[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lll/d;->k:[[S

    invoke-virtual {v3, v4, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->d:Lll/a;

    iget-object v5, p0, Lll/d;->r:[[[S

    aget-object v5, v5, v2

    invoke-virtual {v4, v3, v5}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->E:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    invoke-virtual {v5, v0, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lll/d;->E:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    aget-object v5, v3, v2

    iget-object v6, p0, Lll/d;->t:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lll/a;->a([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lll/d;->E:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Lll/a;->n([[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lll/d;->F:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    iget-object v5, p0, Lll/d;->D:[[[S

    aget-object v5, v5, v2

    invoke-virtual {v4, v0, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->r:[[[S

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lll/a;->o([[S)[[S

    move-result-object v4

    iget-object v5, p0, Lll/d;->l:[[S

    invoke-virtual {v3, v4, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->F:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6, v3}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->t:[[[S

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lll/a;->b([[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->d:Lll/a;

    iget-object v5, p0, Lll/d;->m:[[S

    invoke-virtual {v4, v3, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->F:[[[S

    iget-object v5, p0, Lll/d;->d:Lll/a;

    aget-object v6, v4, v2

    invoke-virtual {v5, v6, v3}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, p0, Lll/d;->F:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    aget-object v5, v3, v2

    iget-object v6, p0, Lll/d;->u:[[[S

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lll/a;->a([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lll/d;->e([[S)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->k:[[S

    invoke-virtual {v0, v1}, Lll/a;->o([[S)[[S

    move-result-object v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->l:[[S

    invoke-virtual {v1, v2}, Lll/a;->o([[S)[[S

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lll/d;->d([[S[[S)V

    invoke-virtual {p0, v1}, Lll/d;->e([[S)V

    return-void
.end method

.method public final d([[S[[S)V
    .locals 6

    iget v0, p0, Lll/d;->f:I

    new-array v1, v0, [[[S

    iput-object v1, p0, Lll/d;->x:[[[S

    new-array v1, v0, [[[S

    iput-object v1, p0, Lll/d;->y:[[[S

    new-array v1, v0, [[[S

    iput-object v1, p0, Lll/d;->z:[[[S

    new-array v0, v0, [[[S

    iput-object v0, p0, Lll/d;->A:[[[S

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lll/d;->f:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->p:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lll/d;->m:[[S

    invoke-virtual {v1, v2, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->x:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->o:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lll/a;->b([[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->x:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    iget-object v5, p0, Lll/d;->l:[[S

    invoke-virtual {v3, v4, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->x:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->y:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    iget-object v4, p0, Lll/d;->o:[[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lll/d;->k:[[S

    invoke-virtual {v3, v4, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->y:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    iget-object v5, p0, Lll/d;->p:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lll/a;->a([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->y:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, p1, v4}, Lll/a;->j([[S[[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->y:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lll/a;->n([[S)[[S

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->p:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lll/a;->o([[S)[[S

    move-result-object v3

    iget-object v4, p0, Lll/d;->l:[[S

    invoke-virtual {v2, v3, v4}, Lll/a;->j([[S[[S)[[S

    move-result-object v2

    iget-object v3, p0, Lll/d;->z:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    iget-object v5, p0, Lll/d;->x:[[[S

    aget-object v5, v5, v0

    invoke-virtual {v4, p1, v5}, Lll/a;->j([[S[[S)[[S

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lll/d;->z:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5, v2}, Lll/a;->a([[S[[S)[[S

    move-result-object v2

    aput-object v2, v3, v0

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->o:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lll/d;->l:[[S

    invoke-virtual {v2, v3, v4}, Lll/a;->j([[S[[S)[[S

    move-result-object v2

    iget-object v3, p0, Lll/d;->A:[[[S

    iget-object v4, p0, Lll/d;->d:Lll/a;

    invoke-virtual {v4, v2, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v3, v0

    iget-object v1, p0, Lll/d;->A:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    aget-object v3, v1, v0

    invoke-virtual {v2, p2, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lll/d;->A:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lll/a;->n([[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public final e([[S)V
    .locals 5

    iget v0, p0, Lll/d;->g:I

    new-array v0, v0, [[[S

    iput-object v0, p0, Lll/d;->G:[[[S

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lll/d;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lll/d;->G:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->q:[[[S

    aget-object v3, v3, v0

    iget-object v4, p0, Lll/d;->l:[[S

    invoke-virtual {v2, v3, v4}, Lll/a;->j([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->r:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lll/d;->m:[[S

    invoke-virtual {v1, v2, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->G:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lll/d;->G:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    aget-object v3, v1, v0

    iget-object v4, p0, Lll/d;->s:[[[S

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lll/a;->a([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lll/d;->G:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    aget-object v3, v1, v0

    invoke-virtual {v2, p1, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->t:[[[S

    aget-object v2, v2, v0

    iget-object v3, p0, Lll/d;->m:[[S

    invoke-virtual {v1, v2, v3}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->u:[[[S

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->d:Lll/a;

    iget-object v3, p0, Lll/d;->m:[[S

    invoke-virtual {v2, v3}, Lll/a;->o([[S)[[S

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lll/a;->j([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lll/d;->G:[[[S

    iget-object v3, p0, Lll/d;->d:Lll/a;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4, v1}, Lll/a;->a([[S[[S)[[S

    move-result-object v1

    aput-object v1, v2, v0

    iget-object v1, p0, Lll/d;->G:[[[S

    iget-object v2, p0, Lll/d;->d:Lll/a;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lll/a;->n([[S)[[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->k:[[S

    iget-object v2, p0, Lll/d;->m:[[S

    invoke-virtual {v0, v1, v2}, Lll/a;->j([[S[[S)[[S

    move-result-object v0

    iget-object v1, p0, Lll/d;->d:Lll/a;

    iget-object v2, p0, Lll/d;->l:[[S

    invoke-virtual {v1, v0, v2}, Lll/a;->a([[S[[S)[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->n:[[S

    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lll/d;->c:Lll/h;

    invoke-virtual {v0}, Lll/h;->d()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lll/d;->h:[B

    iget-object v1, p0, Lll/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Lll/c;

    iget-object v1, p0, Lll/d;->h:[B

    iget-object v2, p0, Lll/d;->c:Lll/h;

    invoke-virtual {v2}, Lll/h;->a()LBi/y;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lll/c;-><init>([BLBi/y;)V

    invoke-virtual {p0, v0}, Lll/d;->o(Ljava/security/SecureRandom;)V

    iget v1, p0, Lll/d;->f:I

    iget v2, p0, Lll/d;->e:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v2, v3}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lll/d;->o:[[[S

    iget v1, p0, Lll/d;->f:I

    iget v2, p0, Lll/d;->e:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v1, v4}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lll/d;->p:[[[S

    iget v1, p0, Lll/d;->g:I

    iget v2, p0, Lll/d;->e:I

    invoke-static {v0, v1, v2, v2, v3}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lll/d;->q:[[[S

    iget v1, p0, Lll/d;->g:I

    iget v2, p0, Lll/d;->e:I

    iget v5, p0, Lll/d;->f:I

    invoke-static {v0, v1, v2, v5, v4}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lll/d;->r:[[[S

    iget v1, p0, Lll/d;->g:I

    iget v2, p0, Lll/d;->e:I

    invoke-static {v0, v1, v2, v1, v4}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lll/d;->s:[[[S

    iget v1, p0, Lll/d;->g:I

    iget v2, p0, Lll/d;->f:I

    invoke-static {v0, v1, v2, v2, v3}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iput-object v1, p0, Lll/d;->t:[[[S

    iget v1, p0, Lll/d;->g:I

    iget v2, p0, Lll/d;->f:I

    invoke-static {v0, v1, v2, v1, v4}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->u:[[[S

    invoke-virtual {p0}, Lll/d;->b()V

    invoke-virtual {p0}, Lll/d;->f()V

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->B:[[[S

    iget-object v3, p0, Lll/d;->v:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->v:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->C:[[[S

    iget-object v3, p0, Lll/d;->w:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->w:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->D:[[[S

    iget-object v3, p0, Lll/d;->x:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->x:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->E:[[[S

    iget-object v3, p0, Lll/d;->y:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->y:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->F:[[[S

    iget-object v3, p0, Lll/d;->z:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->z:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->G:[[[S

    iget-object v3, p0, Lll/d;->A:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->A:[[[S

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lll/d;->c:Lll/h;

    invoke-virtual {v0}, Lll/h;->d()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lll/d;->h:[B

    iget-object v1, p0, Lll/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lll/d;->c:Lll/h;

    invoke-virtual {v0}, Lll/h;->b()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lll/d;->i:[B

    iget-object v1, p0, Lll/d;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0}, Lll/d;->l()V

    invoke-virtual {p0}, Lll/d;->c()V

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->D:[[[S

    iget-object v3, p0, Lll/d;->x:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->x:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->E:[[[S

    iget-object v3, p0, Lll/d;->y:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->y:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->F:[[[S

    iget-object v3, p0, Lll/d;->z:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->z:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->G:[[[S

    iget-object v3, p0, Lll/d;->A:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->A:[[[S

    return-void
.end method

.method public i()LBi/c;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lll/d;->h()V

    new-instance v9, Lll/j;

    iget-object v2, v0, Lll/d;->c:Lll/h;

    iget-object v3, v0, Lll/d;->i:[B

    iget-object v4, v0, Lll/d;->x:[[[S

    iget-object v5, v0, Lll/d;->y:[[[S

    iget-object v6, v0, Lll/d;->z:[[[S

    iget-object v7, v0, Lll/d;->A:[[[S

    iget-object v8, v0, Lll/d;->G:[[[S

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lll/j;-><init>(Lll/h;[B[[[S[[[S[[[S[[[S[[[S)V

    new-instance v1, Lll/i;

    iget-object v11, v0, Lll/d;->c:Lll/h;

    iget-object v12, v0, Lll/d;->h:[B

    iget-object v13, v0, Lll/d;->j:[[S

    iget-object v14, v0, Lll/d;->k:[[S

    iget-object v15, v0, Lll/d;->m:[[S

    iget-object v2, v0, Lll/d;->n:[[S

    iget-object v3, v0, Lll/d;->o:[[[S

    iget-object v4, v0, Lll/d;->p:[[[S

    iget-object v5, v0, Lll/d;->q:[[[S

    iget-object v6, v0, Lll/d;->r:[[[S

    iget-object v7, v0, Lll/d;->s:[[[S

    iget-object v8, v0, Lll/d;->t:[[[S

    iget-object v10, v0, Lll/d;->u:[[[S

    invoke-virtual {v9}, Lll/j;->getEncoded()[B

    move-result-object v24

    move-object/from16 v23, v10

    move-object v10, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v10 .. v24}, Lll/i;-><init>(Lll/h;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    new-instance v2, LBi/c;

    invoke-direct {v2, v9, v1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public j()LBi/c;
    .locals 31

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lll/d;->g()V

    new-instance v15, Lll/j;

    iget-object v2, v0, Lll/d;->c:Lll/h;

    iget-object v3, v0, Lll/d;->v:[[[S

    iget-object v4, v0, Lll/d;->w:[[[S

    iget-object v5, v0, Lll/d;->x:[[[S

    iget-object v6, v0, Lll/d;->y:[[[S

    iget-object v7, v0, Lll/d;->z:[[[S

    iget-object v8, v0, Lll/d;->A:[[[S

    iget-object v9, v0, Lll/d;->B:[[[S

    iget-object v10, v0, Lll/d;->C:[[[S

    iget-object v11, v0, Lll/d;->D:[[[S

    iget-object v12, v0, Lll/d;->E:[[[S

    iget-object v13, v0, Lll/d;->F:[[[S

    iget-object v14, v0, Lll/d;->G:[[[S

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lll/j;-><init>(Lll/h;[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V

    new-instance v1, Lll/i;

    iget-object v2, v0, Lll/d;->c:Lll/h;

    iget-object v3, v0, Lll/d;->h:[B

    iget-object v4, v0, Lll/d;->j:[[S

    iget-object v5, v0, Lll/d;->k:[[S

    iget-object v6, v0, Lll/d;->m:[[S

    iget-object v7, v0, Lll/d;->n:[[S

    iget-object v8, v0, Lll/d;->o:[[[S

    iget-object v9, v0, Lll/d;->p:[[[S

    iget-object v10, v0, Lll/d;->q:[[[S

    iget-object v11, v0, Lll/d;->r:[[[S

    iget-object v12, v0, Lll/d;->s:[[[S

    iget-object v13, v0, Lll/d;->t:[[[S

    iget-object v14, v0, Lll/d;->u:[[[S

    invoke-virtual {v15}, Lll/j;->getEncoded()[B

    move-result-object v30

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    invoke-direct/range {v16 .. v30}, Lll/i;-><init>(Lll/h;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    new-instance v2, LBi/c;

    invoke-direct {v2, v15, v1}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public k()LBi/c;
    .locals 9

    invoke-virtual {p0}, Lll/d;->h()V

    new-instance v8, Lll/j;

    iget-object v1, p0, Lll/d;->c:Lll/h;

    iget-object v2, p0, Lll/d;->i:[B

    iget-object v3, p0, Lll/d;->x:[[[S

    iget-object v4, p0, Lll/d;->y:[[[S

    iget-object v5, p0, Lll/d;->z:[[[S

    iget-object v6, p0, Lll/d;->A:[[[S

    iget-object v7, p0, Lll/d;->G:[[[S

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lll/j;-><init>(Lll/h;[B[[[S[[[S[[[S[[[S[[[S)V

    new-instance v0, Lll/i;

    iget-object v1, p0, Lll/d;->c:Lll/h;

    iget-object v2, p0, Lll/d;->i:[B

    iget-object v3, p0, Lll/d;->h:[B

    invoke-virtual {v8}, Lll/j;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lll/i;-><init>(Lll/h;[B[B[B)V

    new-instance v1, LBi/c;

    invoke-direct {v1, v8, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v1
.end method

.method public final l()V
    .locals 4

    new-instance v0, Lll/c;

    iget-object v1, p0, Lll/d;->h:[B

    iget-object v2, p0, Lll/d;->c:Lll/h;

    invoke-virtual {v2}, Lll/h;->a()LBi/y;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lll/c;-><init>([BLBi/y;)V

    new-instance v1, Lll/c;

    iget-object v2, p0, Lll/d;->i:[B

    iget-object v3, p0, Lll/d;->c:Lll/h;

    invoke-virtual {v3}, Lll/h;->a()LBi/y;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lll/c;-><init>([BLBi/y;)V

    invoke-virtual {p0, v0}, Lll/d;->o(Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Lll/d;->f()V

    invoke-virtual {p0, v1}, Lll/d;->n(Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->B:[[[S

    iget-object v3, p0, Lll/d;->v:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->v:[[[S

    iget-object v0, p0, Lll/d;->d:Lll/a;

    iget-object v1, p0, Lll/d;->j:[[S

    iget-object v2, p0, Lll/d;->C:[[[S

    iget-object v3, p0, Lll/d;->w:[[[S

    invoke-virtual {v0, v1, v2, v3}, Lll/a;->l([[S[[[S[[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->w:[[[S

    invoke-virtual {p0}, Lll/d;->a()V

    return-void
.end method

.method public m()Lll/i;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lll/d;->h:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, v0, Lll/d;->h:[B

    iget-object v1, v0, Lll/d;->i:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v1

    iput-object v1, v0, Lll/d;->i:[B

    invoke-virtual/range {p0 .. p0}, Lll/d;->l()V

    new-instance v1, Lll/i;

    iget-object v3, v0, Lll/d;->c:Lll/h;

    iget-object v4, v0, Lll/d;->h:[B

    iget-object v5, v0, Lll/d;->j:[[S

    iget-object v6, v0, Lll/d;->k:[[S

    iget-object v7, v0, Lll/d;->m:[[S

    iget-object v8, v0, Lll/d;->n:[[S

    iget-object v9, v0, Lll/d;->o:[[[S

    iget-object v10, v0, Lll/d;->p:[[[S

    iget-object v11, v0, Lll/d;->q:[[[S

    iget-object v12, v0, Lll/d;->r:[[[S

    iget-object v13, v0, Lll/d;->s:[[[S

    iget-object v14, v0, Lll/d;->t:[[[S

    iget-object v15, v0, Lll/d;->u:[[[S

    const/16 v16, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lll/i;-><init>(Lll/h;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V

    return-object v1
.end method

.method public final n(Ljava/security/SecureRandom;)V
    .locals 5

    iget v0, p0, Lll/d;->f:I

    iget v1, p0, Lll/d;->e:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v1, v2}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->v:[[[S

    iget v0, p0, Lll/d;->f:I

    iget v1, p0, Lll/d;->e:I

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v0, v3}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->w:[[[S

    iget v0, p0, Lll/d;->g:I

    iget v1, p0, Lll/d;->e:I

    invoke-static {p1, v0, v1, v1, v2}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->B:[[[S

    iget v0, p0, Lll/d;->g:I

    iget v1, p0, Lll/d;->e:I

    iget v4, p0, Lll/d;->f:I

    invoke-static {p1, v0, v1, v4, v3}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->C:[[[S

    iget v0, p0, Lll/d;->g:I

    iget v1, p0, Lll/d;->e:I

    invoke-static {p1, v0, v1, v0, v3}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->D:[[[S

    iget v0, p0, Lll/d;->g:I

    iget v1, p0, Lll/d;->f:I

    invoke-static {p1, v0, v1, v1, v2}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->E:[[[S

    iget v0, p0, Lll/d;->g:I

    iget v1, p0, Lll/d;->f:I

    invoke-static {p1, v0, v1, v0, v3}, Lll/m;->h(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/d;->F:[[[S

    return-void
.end method

.method public final o(Ljava/security/SecureRandom;)V
    .locals 2

    iget v0, p0, Lll/d;->f:I

    iget v1, p0, Lll/d;->g:I

    invoke-static {p1, v0, v1}, Lll/m;->i(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->j:[[S

    iget v0, p0, Lll/d;->e:I

    iget v1, p0, Lll/d;->f:I

    invoke-static {p1, v0, v1}, Lll/m;->i(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->k:[[S

    iget v0, p0, Lll/d;->e:I

    iget v1, p0, Lll/d;->g:I

    invoke-static {p1, v0, v1}, Lll/m;->i(Ljava/security/SecureRandom;II)[[S

    move-result-object v0

    iput-object v0, p0, Lll/d;->l:[[S

    iget v0, p0, Lll/d;->f:I

    iget v1, p0, Lll/d;->g:I

    invoke-static {p1, v0, v1}, Lll/m;->i(Ljava/security/SecureRandom;II)[[S

    move-result-object p1

    iput-object p1, p0, Lll/d;->m:[[S

    return-void
.end method
