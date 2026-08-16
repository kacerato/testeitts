.class public Lfl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Ljava/security/SecureRandom;

.field public h:Lfl/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 13

    iget-object v0, p0, Lfl/d;->h:Lfl/f;

    invoke-virtual {v0}, Lfl/f;->b()Lfl/a;

    move-result-object v0

    iget v1, v0, Lfl/a;->w:I

    invoke-virtual {p0, v1}, Lfl/d;->c(I)[B

    move-result-object v1

    iget v2, v0, Lfl/a;->h:I

    add-int/lit8 v2, v2, 0x2

    iget v3, v0, Lfl/a;->g:I

    add-int/lit8 v4, v3, 0x1

    mul-int/2addr v4, v3

    const/4 v5, 0x1

    ushr-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v0, Lfl/a;->q:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    iget v4, v0, Lfl/a;->c:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, v0, Lfl/a;->o:I

    mul-int/2addr v2, v3

    iget v3, v0, Lfl/a;->u:I

    shl-int/2addr v3, v5

    add-int/2addr v3, v2

    iget v4, v0, Lfl/a;->v:I

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x3

    new-instance v4, Lfl/l;

    ushr-int/lit8 v6, v3, 0x3

    invoke-direct {v4, v6}, Lfl/l;-><init>(I)V

    new-array v6, v3, [B

    new-instance v7, LIi/Q;

    iget v8, v0, Lfl/a;->h0:I

    invoke-direct {v7, v8}, LIi/Q;-><init>(I)V

    iget v8, v0, Lfl/a;->w:I

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v8}, LIi/v;->update([BII)V

    invoke-virtual {v7, v6, v9, v3}, LIi/Q;->e([BII)I

    iget v7, v0, Lfl/a;->w:I

    new-array v8, v7, [B

    iget v10, v0, Lfl/a;->r:I

    iget v11, v0, Lfl/a;->j:I

    mul-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x7

    shr-int/lit8 v10, v10, 0x3

    new-array v10, v10, [B

    invoke-static {v1, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4, v9, v6, v9, v3}, Lfl/l;->f(I[BII)V

    invoke-virtual {v0, v4}, Lfl/a;->n(Lfl/l;)V

    new-instance v1, Lfl/l;

    iget v3, v0, Lfl/a;->r:I

    iget v6, v0, Lfl/a;->o:I

    mul-int/2addr v3, v6

    invoke-direct {v1, v3}, Lfl/l;-><init>(I)V

    iget v3, v0, Lfl/a;->f:I

    const/16 v6, 0x22

    if-le v3, v6, :cond_0

    invoke-virtual {v0, v1, v4}, Lfl/a;->a0(Lfl/l;Lfl/l;)V

    :cond_0
    new-instance v3, Lfl/l;

    iget v7, v0, Lfl/a;->B:I

    invoke-direct {v3, v7}, Lfl/l;-><init>(I)V

    new-instance v7, Lfl/l;

    invoke-direct {v7, v3}, Lfl/l;-><init>(Lfl/l;)V

    new-instance v11, Lfl/l;

    invoke-direct {v11, v4, v2}, Lfl/l;-><init>(Lfl/l;I)V

    new-instance v2, Lfl/l;

    iget v12, v0, Lfl/a;->u:I

    invoke-direct {v2, v11, v12}, Lfl/l;-><init>(Lfl/l;I)V

    sget-object v12, Lfl/a$b;->NV:Lfl/a$b;

    invoke-virtual {v0, v11, v12}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    invoke-virtual {v0, v2, v12}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    invoke-virtual {v0, v3, v11, v2, v12}, Lfl/a;->e0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget v12, v0, Lfl/a;->f:I

    if-gt v12, v6, :cond_2

    invoke-virtual {v0, v1, v4, v3}, Lfl/a;->d0(Lfl/l;Lfl/l;Lfl/l;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v1, v3}, Lfl/a;->j(Lfl/l;Lfl/l;)V

    :goto_0
    iget v3, v0, Lfl/a;->u:I

    shl-int/2addr v3, v5

    invoke-virtual {v11, v3}, Lfl/l;->r(I)V

    invoke-virtual {v11}, Lfl/l;->m()I

    move-result v3

    iget v4, v0, Lfl/a;->v:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lfl/l;->a(I)V

    sget-object v3, Lfl/a$b;->N:Lfl/a$b;

    invoke-virtual {v0, v11, v3}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    invoke-virtual {v0, v2, v3}, Lfl/a;->m(Lfl/l;Lfl/a$b;)V

    invoke-virtual {v0, v7, v11, v2, v3}, Lfl/a;->e0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget v2, v0, Lfl/a;->J:I

    if-eqz v2, :cond_7

    iget v2, v0, Lfl/a;->r:I

    iget v3, v0, Lfl/a;->K:I

    mul-int/2addr v2, v3

    and-int/lit8 v3, v3, 0x7

    rsub-int/lit8 v3, v3, 0x8

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    new-instance v3, Lfl/m;

    invoke-direct {v3, v2}, Lfl/m;-><init>(I)V

    iget v2, v0, Lfl/a;->K:I

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v9

    :goto_1
    iget v4, v0, Lfl/a;->r:I

    if-ge v2, v4, :cond_4

    sget-object v4, Lfl/a$b;->M:Lfl/a$b;

    invoke-virtual {v0, v3, v1, v7, v4}, Lfl/a;->F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v1, v4}, Lfl/l;->r(I)V

    iget v4, v0, Lfl/a;->K:I

    invoke-virtual {v3, v4}, Lfl/m;->f0(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v2, v0, Lfl/a;->K:I

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_5

    new-instance v2, Lfl/l;

    iget v4, v0, Lfl/a;->E:I

    invoke-direct {v2, v4}, Lfl/l;-><init>(I)V

    sget-object v4, Lfl/a$b;->M:Lfl/a$b;

    invoke-virtual {v0, v2, v1, v7, v4}, Lfl/a;->F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    :goto_2
    iget v1, v0, Lfl/a;->E:I

    if-ge v9, v1, :cond_5

    invoke-virtual {v2, v9}, Lfl/l;->i(I)J

    move-result-wide v6

    invoke-virtual {v3, v9, v6, v7}, Lfl/m;->u(IJ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Lfl/m;->o()V

    iget v1, v0, Lfl/a;->J:I

    iget v2, v0, Lfl/a;->M:I

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v3}, Lfl/a;->r([BLfl/m;)V

    invoke-virtual {v3}, Lfl/m;->o()V

    iget v2, v0, Lfl/a;->N:I

    if-eqz v2, :cond_6

    iget v2, v0, Lfl/a;->J:I

    if-le v2, v5, :cond_6

    invoke-virtual {v0, v10, v3, v1}, Lfl/a;->q([BLfl/m;[B)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0, v10, v3, v1}, Lfl/a;->p([BLfl/m;[B)V

    goto :goto_4

    :cond_7
    new-instance v2, Lfl/m;

    iget v3, v0, Lfl/a;->E:I

    shl-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Lfl/m;-><init>(I)V

    move v3, v9

    :goto_3
    iget v4, v0, Lfl/a;->r:I

    if-ge v9, v4, :cond_8

    sget-object v4, Lfl/a$b;->M:Lfl/a$b;

    invoke-virtual {v0, v2, v1, v7, v4}, Lfl/a;->F0(Lfl/l;Lfl/l;Lfl/l;Lfl/a$b;)V

    iget v4, v0, Lfl/a;->K:I

    invoke-virtual {v2, v10, v3, v4}, Lfl/m;->l0([BII)I

    move-result v3

    invoke-virtual {v2}, Lfl/m;->o()V

    iget v4, v0, Lfl/a;->o:I

    invoke-virtual {v1, v4}, Lfl/l;->r(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    new-instance v0, LBi/c;

    new-instance v1, Lfl/h;

    iget-object v2, p0, Lfl/d;->h:Lfl/f;

    invoke-direct {v1, v2, v10}, Lfl/h;-><init>(Lfl/f;[B)V

    new-instance v2, Lfl/g;

    iget-object v3, p0, Lfl/d;->h:Lfl/f;

    invoke-direct {v2, v3, v8}, Lfl/g;-><init>(Lfl/f;[B)V

    invoke-direct {v0, v1, v2}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 1

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lfl/d;->g:Ljava/security/SecureRandom;

    check-cast p1, Lfl/c;

    invoke-virtual {p1}, Lfl/c;->c()Lfl/f;

    move-result-object p1

    iput-object p1, p0, Lfl/d;->h:Lfl/f;

    return-void
.end method

.method public final c(I)[B
    .locals 1

    new-array p1, p1, [B

    iget-object v0, p0, Lfl/d;->g:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method
