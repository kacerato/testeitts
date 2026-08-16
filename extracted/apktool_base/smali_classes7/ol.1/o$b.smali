.class public Lol/o$b;
.super Lol/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final n:LSi/k;

.field public final o:LOi/D;

.field public final p:[B

.field public final q:LBi/y;

.field public final r:[B

.field public final s:I

.field public final t:LBi/y;

.field public final u:[B

.field public v:Lorg/bouncycastle/util/n;

.field public w:Lorg/bouncycastle/util/n;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lol/o;-><init>(ZIIIIII)V

    new-instance p1, LIi/L;

    invoke-direct {p1}, LIi/L;-><init>()V

    iput-object p1, p0, Lol/o$b;->t:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lol/o$b;->u:[B

    const/16 p1, 0x10

    if-ne p2, p1, :cond_0

    new-instance p1, LIi/L;

    invoke-direct {p1}, LIi/L;-><init>()V

    iput-object p1, p0, Lol/o$b;->q:LBi/y;

    new-instance p1, LSi/k;

    new-instance p2, LIi/L;

    invoke-direct {p2}, LIi/L;-><init>()V

    invoke-direct {p1, p2}, LSi/k;-><init>(LBi/y;)V

    iput-object p1, p0, Lol/o$b;->n:LSi/k;

    new-instance p1, LOi/D;

    new-instance p2, LIi/L;

    invoke-direct {p2}, LIi/L;-><init>()V

    invoke-direct {p1, p2}, LOi/D;-><init>(LBi/y;)V

    iput-object p1, p0, Lol/o$b;->o:LOi/D;

    const/16 p1, 0x40

    :goto_0
    iput p1, p0, Lol/o$b;->s:I

    goto :goto_1

    :cond_0
    new-instance p1, LIi/O;

    invoke-direct {p1}, LIi/O;-><init>()V

    iput-object p1, p0, Lol/o$b;->q:LBi/y;

    new-instance p1, LSi/k;

    new-instance p2, LIi/O;

    invoke-direct {p2}, LIi/O;-><init>()V

    invoke-direct {p1, p2}, LSi/k;-><init>(LBi/y;)V

    iput-object p1, p0, Lol/o$b;->n:LSi/k;

    new-instance p1, LOi/D;

    new-instance p2, LIi/O;

    invoke-direct {p2}, LIi/O;-><init>()V

    invoke-direct {p1, p2}, LOi/D;-><init>(LBi/y;)V

    iput-object p1, p0, Lol/o$b;->o:LOi/D;

    const/16 p1, 0x80

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lol/o$b;->n:LSi/k;

    invoke-virtual {p1}, LSi/k;->d()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lol/o$b;->p:[B

    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lol/o$b;->r:[B

    return-void
.end method


# virtual methods
.method public a([BLol/a;[B)[B
    .locals 2

    invoke-virtual {p0, p2}, Lol/o$b;->k(Lol/a;)[B

    move-result-object p2

    iget-boolean v0, p0, Lol/o;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lol/o$b;->j([B[B)[B

    move-result-object p3

    :cond_0
    iget-object p1, p0, Lol/o$b;->t:LBi/y;

    check-cast p1, Lorg/bouncycastle/util/n;

    iget-object v0, p0, Lol/o$b;->w:Lorg/bouncycastle/util/n;

    invoke-interface {p1, v0}, Lorg/bouncycastle/util/n;->j(Lorg/bouncycastle/util/n;)V

    iget-object p1, p0, Lol/o$b;->t:LBi/y;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$b;->t:LBi/y;

    array-length p2, p3

    invoke-interface {p1, p3, v1, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$b;->t:LBi/y;

    iget-object p2, p0, Lol/o$b;->u:[B

    invoke-interface {p1, p2, v1}, LBi/y;->c([BI)I

    iget-object p1, p0, Lol/o$b;->u:[B

    iget p2, p0, Lol/o;->b:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public b([BLol/a;[B[B)[B
    .locals 3

    invoke-virtual {p0, p2}, Lol/o$b;->k(Lol/a;)[B

    move-result-object p2

    iget-object v0, p0, Lol/o$b;->q:LBi/y;

    check-cast v0, Lorg/bouncycastle/util/n;

    iget-object v1, p0, Lol/o$b;->v:Lorg/bouncycastle/util/n;

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/n;->j(Lorg/bouncycastle/util/n;)V

    iget-object v0, p0, Lol/o$b;->q:LBi/y;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, LBi/y;->update([BII)V

    iget-boolean v0, p0, Lol/o;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lol/o$b;->i([B[B[B)[B

    move-result-object p1

    iget-object p2, p0, Lol/o$b;->q:LBi/y;

    array-length p3, p1

    invoke-interface {p2, p1, v2, p3}, LBi/y;->update([BII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    array-length p2, p4

    invoke-interface {p1, p4, v2, p2}, LBi/y;->update([BII)V

    :goto_0
    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    iget-object p2, p0, Lol/o$b;->r:[B

    invoke-interface {p1, p2, v2}, LBi/y;->c([BI)I

    iget-object p1, p0, Lol/o$b;->r:[B

    iget p2, p0, Lol/o;->b:I

    invoke-static {p1, v2, p2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public c([B[B[B[B)Lol/h;
    .locals 11

    iget v0, p0, Lol/o;->i:I

    iget v1, p0, Lol/o;->j:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    div-int/2addr v0, v1

    iget v2, p0, Lol/o;->k:I

    iget v3, p0, Lol/o;->h:I

    div-int v3, v2, v3

    sub-int/2addr v2, v3

    add-int/lit8 v4, v3, 0x7

    div-int/2addr v4, v1

    add-int/lit8 v5, v2, 0x7

    div-int/2addr v5, v1

    add-int v6, v0, v4

    add-int/2addr v6, v5

    new-array v6, v6, [B

    iget-object v7, p0, Lol/o$b;->q:LBi/y;

    invoke-interface {v7}, LBi/y;->f()I

    move-result v7

    new-array v7, v7, [B

    iget-object v8, p0, Lol/o$b;->q:LBi/y;

    array-length v9, p1

    const/4 v10, 0x0

    invoke-interface {v8, p1, v10, v9}, LBi/y;->update([BII)V

    iget-object v8, p0, Lol/o$b;->q:LBi/y;

    array-length v9, p2

    invoke-interface {v8, p2, v10, v9}, LBi/y;->update([BII)V

    iget-object v8, p0, Lol/o$b;->q:LBi/y;

    array-length v9, p3

    invoke-interface {v8, p3, v10, v9}, LBi/y;->update([BII)V

    iget-object p3, p0, Lol/o$b;->q:LBi/y;

    array-length v8, p4

    invoke-interface {p3, p4, v10, v8}, LBi/y;->update([BII)V

    iget-object p3, p0, Lol/o$b;->q:LBi/y;

    invoke-interface {p3, v7, v10}, LBi/y;->c([BI)I

    invoke-static {p1, p2, v7}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lol/o$b;->h([B[B)[B

    move-result-object p1

    new-array p2, v1, [B

    rsub-int/lit8 p3, v5, 0x8

    invoke-static {p1, v0, p2, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v10}, Lorg/bouncycastle/util/p;->d([BI)J

    move-result-wide p2

    rsub-int/lit8 p4, v2, 0x40

    const-wide/16 v1, -0x1

    ushr-long/2addr v1, p4

    and-long/2addr p2, v1

    const/4 p4, 0x4

    new-array p4, p4, [B

    add-int/2addr v5, v0

    rsub-int/lit8 v1, v4, 0x4

    invoke-static {p1, v5, p4, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, v10}, Lorg/bouncycastle/util/p;->a([BI)I

    move-result p4

    rsub-int/lit8 v1, v3, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr p4, v1

    new-instance v1, Lol/h;

    invoke-static {p1, v10, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    invoke-direct {v1, p2, p3, p4, p1}, Lol/h;-><init>(JI[B)V

    return-object v1
.end method

.method public d([B[BLol/a;)[B
    .locals 3

    array-length p1, p2

    iget-object v0, p0, Lol/o$b;->t:LBi/y;

    check-cast v0, Lorg/bouncycastle/util/n;

    iget-object v1, p0, Lol/o$b;->w:Lorg/bouncycastle/util/n;

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/n;->j(Lorg/bouncycastle/util/n;)V

    invoke-virtual {p0, p3}, Lol/o$b;->k(Lol/a;)[B

    move-result-object p3

    iget-object v0, p0, Lol/o$b;->t:LBi/y;

    array-length v1, p3

    const/4 v2, 0x0

    invoke-interface {v0, p3, v2, v1}, LBi/y;->update([BII)V

    iget-object p3, p0, Lol/o$b;->t:LBi/y;

    array-length v0, p2

    invoke-interface {p3, p2, v2, v0}, LBi/y;->update([BII)V

    iget-object p2, p0, Lol/o$b;->t:LBi/y;

    iget-object p3, p0, Lol/o$b;->u:[B

    invoke-interface {p2, p3, v2}, LBi/y;->c([BI)I

    iget-object p2, p0, Lol/o$b;->u:[B

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public e([B[B[B)[B
    .locals 2

    iget-object v0, p0, Lol/o$b;->n:LSi/k;

    new-instance v1, LXi/o0;

    invoke-direct {v1, p1}, LXi/o0;-><init>([B)V

    invoke-virtual {v0, v1}, LSi/k;->a(LBi/k;)V

    iget-object p1, p0, Lol/o$b;->n:LSi/k;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, LSi/k;->update([BII)V

    iget-object p1, p0, Lol/o$b;->n:LSi/k;

    array-length p2, p3

    invoke-virtual {p1, p3, v1, p2}, LSi/k;->update([BII)V

    iget-object p1, p0, Lol/o$b;->n:LSi/k;

    iget-object p2, p0, Lol/o$b;->p:[B

    invoke-virtual {p1, p2, v1}, LSi/k;->c([BI)I

    iget-object p1, p0, Lol/o$b;->p:[B

    iget p2, p0, Lol/o;->b:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public f([BLol/a;[B)[B
    .locals 2

    invoke-virtual {p0, p2}, Lol/o$b;->k(Lol/a;)[B

    move-result-object p2

    iget-boolean v0, p0, Lol/o;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lol/o$b;->h([B[B)[B

    move-result-object p3

    :cond_0
    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    check-cast p1, Lorg/bouncycastle/util/n;

    iget-object v0, p0, Lol/o$b;->v:Lorg/bouncycastle/util/n;

    invoke-interface {p1, v0}, Lorg/bouncycastle/util/n;->j(Lorg/bouncycastle/util/n;)V

    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    array-length p2, p3

    invoke-interface {p1, p3, v1, p2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$b;->q:LBi/y;

    iget-object p2, p0, Lol/o$b;->r:[B

    invoke-interface {p1, p2, v1}, LBi/y;->c([BI)I

    iget-object p1, p0, Lol/o$b;->r:[B

    iget p2, p0, Lol/o;->b:I

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public g([B)V
    .locals 5

    iget v0, p0, Lol/o$b;->s:I

    new-array v0, v0, [B

    iget-object v1, p0, Lol/o$b;->q:LBi/y;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, LBi/y;->update([BII)V

    iget-object v1, p0, Lol/o$b;->q:LBi/y;

    iget v2, p0, Lol/o$b;->s:I

    iget v4, p0, Lol/o;->b:I

    sub-int/2addr v2, v4

    invoke-interface {v1, v0, v3, v2}, LBi/y;->update([BII)V

    iget-object v1, p0, Lol/o$b;->q:LBi/y;

    check-cast v1, Lorg/bouncycastle/util/n;

    invoke-interface {v1}, Lorg/bouncycastle/util/n;->copy()Lorg/bouncycastle/util/n;

    move-result-object v1

    iput-object v1, p0, Lol/o$b;->v:Lorg/bouncycastle/util/n;

    iget-object v1, p0, Lol/o$b;->q:LBi/y;

    invoke-interface {v1}, LBi/y;->reset()V

    iget-object v1, p0, Lol/o$b;->t:LBi/y;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, LBi/y;->update([BII)V

    iget-object v1, p0, Lol/o$b;->t:LBi/y;

    array-length p1, p1

    rsub-int/lit8 p1, p1, 0x40

    invoke-interface {v1, v0, v3, p1}, LBi/y;->update([BII)V

    iget-object p1, p0, Lol/o$b;->t:LBi/y;

    check-cast p1, Lorg/bouncycastle/util/n;

    invoke-interface {p1}, Lorg/bouncycastle/util/n;->copy()Lorg/bouncycastle/util/n;

    move-result-object p1

    iput-object p1, p0, Lol/o$b;->w:Lorg/bouncycastle/util/n;

    iget-object p1, p0, Lol/o$b;->t:LBi/y;

    invoke-interface {p1}, LBi/y;->reset()V

    return-void
.end method

.method public h([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$b;->o:LOi/D;

    new-instance v3, LXi/p0;

    invoke-direct {v3, p1}, LXi/p0;-><init>([B)V

    invoke-virtual {v2, v3}, LOi/D;->c(LBi/x;)V

    iget-object p1, p0, Lol/o$b;->o:LOi/D;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, LOi/D;->a([BII)I

    array-length p1, p2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    return-object v1
.end method

.method public i([B[B[B)[B
    .locals 4

    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v2, p0, Lol/o$b;->o:LOi/D;

    new-instance v3, LXi/p0;

    invoke-direct {v3, p1}, LXi/p0;-><init>([B)V

    invoke-virtual {v2, v3}, LOi/D;->c(LBi/x;)V

    iget-object p1, p0, Lol/o$b;->o:LOi/D;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, LOi/D;->a([BII)I

    array-length p1, p2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    array-length p1, p3

    array-length p2, p2

    invoke-static {p1, p3, v2, v1, p2}, Lorg/bouncycastle/util/c;->c(I[BI[BI)V

    return-object v1
.end method

.method public j([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v1, v0, [B

    new-instance v2, LOi/D;

    new-instance v3, LIi/L;

    invoke-direct {v3}, LIi/L;-><init>()V

    invoke-direct {v2, v3}, LOi/D;-><init>(LBi/y;)V

    new-instance v3, LXi/p0;

    invoke-direct {v3, p1}, LXi/p0;-><init>([B)V

    invoke-virtual {v2, v3}, LOi/D;->c(LBi/x;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v1, p1, v0}, LOi/D;->a([BII)I

    array-length p1, p2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    return-object v1
.end method

.method public final k(Lol/a;)[B
    .locals 5

    const/16 v0, 0x16

    new-array v0, v0, [B

    iget-object v1, p1, Lol/a;->a:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lol/a;->a:[B

    const/16 v2, 0x8

    invoke-static {v1, v2, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lol/a;->a:[B

    const/16 v2, 0x13

    const/16 v3, 0x9

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lol/a;->a:[B

    const/16 v1, 0xa

    const/16 v2, 0xc

    const/16 v3, 0x14

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
