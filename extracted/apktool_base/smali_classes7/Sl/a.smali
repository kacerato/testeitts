.class public LSl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSl/a$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:LSl/a$a;

.field public h:I

.field public i:Z

.field public j:LBi/y;

.field public k:I


# direct methods
.method public constructor <init>([BLSl/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSl/a;->a:[B

    iget p1, p2, LSl/e;->b:I

    iput p1, p0, LSl/a;->b:I

    iget p1, p2, LSl/e;->t:I

    iput p1, p0, LSl/a;->c:I

    iget p1, p2, LSl/e;->u:I

    iput p1, p0, LSl/a;->d:I

    const/4 p1, 0x0

    iput p1, p0, LSl/a;->e:I

    iput p1, p0, LSl/a;->f:I

    iput p1, p0, LSl/a;->h:I

    iget-object p2, p2, LSl/e;->B:LBi/y;

    iput-object p2, p0, LSl/a;->j:LBi/y;

    invoke-interface {p2}, LBi/y;->f()I

    move-result p2

    iput p2, p0, LSl/a;->k:I

    iput-boolean p1, p0, LSl/a;->i:Z

    return-void
.end method

.method public static synthetic a([BI)[B
    .locals 0

    invoke-static {p0, p1}, LSl/a;->c([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([BI)[B
    .locals 2

    new-array v0, p1, [B

    array-length v1, p0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p1, p0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final b(LSl/a$a;[B)V
    .locals 4

    iget-object v0, p0, LSl/a;->j:LBi/y;

    iget-object v1, p0, LSl/a;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, LBi/y;->update([BII)V

    iget-object v0, p0, LSl/a;->j:LBi/y;

    iget v1, p0, LSl/a;->h:I

    invoke-virtual {p0, v0, v1}, LSl/a;->e(LBi/y;I)V

    iget-object v0, p0, LSl/a;->j:LBi/y;

    invoke-interface {v0, p2, v3}, LBi/y;->c([BI)I

    invoke-virtual {p1, p2}, LSl/a$a;->b([B)V

    return-void
.end method

.method public d()I
    .locals 7

    iget-boolean v0, p0, LSl/a;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, LSl/a$a;

    invoke-direct {v0}, LSl/a$a;-><init>()V

    iput-object v0, p0, LSl/a;->g:LSl/a$a;

    iget-object v0, p0, LSl/a;->j:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iget v2, p0, LSl/a;->h:I

    iget v3, p0, LSl/a;->d:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, LSl/a;->g:LSl/a$a;

    invoke-virtual {p0, v2, v0}, LSl/a;->b(LSl/a$a;[B)V

    iget v2, p0, LSl/a;->h:I

    add-int/2addr v2, v1

    iput v2, p0, LSl/a;->h:I

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x8

    iget v0, p0, LSl/a;->k:I

    mul-int/2addr v3, v0

    iput v3, p0, LSl/a;->e:I

    iput v3, p0, LSl/a;->f:I

    iput-boolean v1, p0, LSl/a;->i:Z

    :cond_1
    iget v0, p0, LSl/a;->e:I

    iget v2, p0, LSl/a;->c:I

    add-int/2addr v0, v2

    iput v0, p0, LSl/a;->e:I

    iget-object v0, p0, LSl/a;->g:LSl/a$a;

    iget v2, p0, LSl/a;->f:I

    invoke-virtual {v0, v2}, LSl/a$a;->e(I)LSl/a$a;

    move-result-object v0

    iget v2, p0, LSl/a;->f:I

    iget v3, p0, LSl/a;->c:I

    if-ge v2, v3, :cond_4

    sub-int/2addr v3, v2

    iget v2, p0, LSl/a;->h:I

    iget v4, p0, LSl/a;->k:I

    add-int v5, v3, v4

    sub-int/2addr v5, v1

    div-int/2addr v5, v4

    add-int/2addr v2, v5

    iget-object v4, p0, LSl/a;->j:LBi/y;

    invoke-interface {v4}, LBi/y;->f()I

    move-result v4

    new-array v4, v4, [B

    :cond_2
    :goto_1
    iget v5, p0, LSl/a;->h:I

    if-ge v5, v2, :cond_3

    invoke-virtual {p0, v0, v4}, LSl/a;->b(LSl/a$a;[B)V

    iget v5, p0, LSl/a;->h:I

    add-int/2addr v5, v1

    iput v5, p0, LSl/a;->h:I

    iget v5, p0, LSl/a;->k:I

    mul-int/lit8 v6, v5, 0x8

    if-le v3, v6, :cond_2

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v3, v5

    goto :goto_1

    :cond_3
    iget v2, p0, LSl/a;->k:I

    mul-int/lit8 v2, v2, 0x8

    sub-int/2addr v2, v3

    iput v2, p0, LSl/a;->f:I

    new-instance v2, LSl/a$a;

    invoke-direct {v2}, LSl/a$a;-><init>()V

    iput-object v2, p0, LSl/a;->g:LSl/a$a;

    invoke-virtual {v2, v4}, LSl/a$a;->b([B)V

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v3

    iput v2, p0, LSl/a;->f:I

    :goto_2
    iget v2, p0, LSl/a;->c:I

    invoke-virtual {v0, v2}, LSl/a$a;->d(I)I

    move-result v0

    iget v2, p0, LSl/a;->c:I

    shl-int v3, v1, v2

    shl-int v2, v1, v2

    iget v4, p0, LSl/a;->b:I

    rem-int/2addr v2, v4

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    rem-int/2addr v0, v4

    return v0
.end method

.method public final e(LBi/y;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    int-to-byte p2, p2

    invoke-interface {p1, p2}, LBi/y;->update(B)V

    return-void
.end method
