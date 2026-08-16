.class public final LTg/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:I = 0x2000

.field public static final i:I = 0x400


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:LTg/u;

.field public g:LTg/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, LTg/u;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LTg/u;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LTg/u;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LTg/u;->a:[B

    .line 7
    iput p2, p0, LTg/u;->b:I

    .line 8
    iput p3, p0, LTg/u;->c:I

    .line 9
    iput-boolean p4, p0, LTg/u;->d:Z

    .line 10
    iput-boolean p5, p0, LTg/u;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LTg/u;->g:LTg/u;

    if-eq v0, p0, :cond_3

    iget-boolean v1, v0, LTg/u;->e:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, LTg/u;->c:I

    iget v2, p0, LTg/u;->b:I

    sub-int/2addr v1, v2

    iget v2, v0, LTg/u;->c:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, LTg/u;->d:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget v3, v0, LTg/u;->b:I

    :goto_0
    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, v1}, LTg/u;->g(LTg/u;I)V

    invoke-virtual {p0}, LTg/u;->b()LTg/u;

    invoke-static {p0}, LTg/v;->a(LTg/u;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final b()LTg/u;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LTg/u;->f:LTg/u;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, LTg/u;->g:LTg/u;

    iput-object v0, v3, LTg/u;->f:LTg/u;

    iget-object v0, p0, LTg/u;->f:LTg/u;

    iput-object v3, v0, LTg/u;->g:LTg/u;

    iput-object v1, p0, LTg/u;->f:LTg/u;

    iput-object v1, p0, LTg/u;->g:LTg/u;

    return-object v2
.end method

.method public final c(LTg/u;)LTg/u;
    .locals 1

    iput-object p0, p1, LTg/u;->g:LTg/u;

    iget-object v0, p0, LTg/u;->f:LTg/u;

    iput-object v0, p1, LTg/u;->f:LTg/u;

    iget-object v0, p0, LTg/u;->f:LTg/u;

    iput-object p1, v0, LTg/u;->g:LTg/u;

    iput-object p1, p0, LTg/u;->f:LTg/u;

    return-object p1
.end method

.method public final d()LTg/u;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, LTg/u;->d:Z

    new-instance v0, LTg/u;

    iget-object v2, p0, LTg/u;->a:[B

    iget v3, p0, LTg/u;->b:I

    iget v4, p0, LTg/u;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LTg/u;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final e(I)LTg/u;
    .locals 5

    if-lez p1, :cond_1

    iget v0, p0, LTg/u;->c:I

    iget v1, p0, LTg/u;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LTg/u;->d()LTg/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, LTg/v;->b()LTg/u;

    move-result-object v0

    iget-object v1, p0, LTg/u;->a:[B

    iget v2, p0, LTg/u;->b:I

    iget-object v3, v0, LTg/u;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, v0, LTg/u;->b:I

    add-int/2addr v1, p1

    iput v1, v0, LTg/u;->c:I

    iget v1, p0, LTg/u;->b:I

    add-int/2addr v1, p1

    iput v1, p0, LTg/u;->b:I

    iget-object p1, p0, LTg/u;->g:LTg/u;

    invoke-virtual {p1, v0}, LTg/u;->c(LTg/u;)LTg/u;

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final f()LTg/u;
    .locals 7

    new-instance v6, LTg/u;

    iget-object v0, p0, LTg/u;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, LTg/u;->b:I

    iget v3, p0, LTg/u;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LTg/u;-><init>([BIIZZ)V

    return-object v6
.end method

.method public final g(LTg/u;I)V
    .locals 4

    iget-boolean v0, p1, LTg/u;->e:Z

    if-eqz v0, :cond_3

    iget v0, p1, LTg/u;->c:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    iget-boolean v1, p1, LTg/u;->d:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    iget v3, p1, LTg/u;->b:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p1, LTg/u;->a:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LTg/u;->c:I

    iget v1, p1, LTg/u;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, LTg/u;->c:I

    iput v2, p1, LTg/u;->b:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, LTg/u;->a:[B

    iget v1, p0, LTg/u;->b:I

    iget-object v2, p1, LTg/u;->a:[B

    iget v3, p1, LTg/u;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, LTg/u;->c:I

    add-int/2addr v0, p2

    iput v0, p1, LTg/u;->c:I

    iget p1, p0, LTg/u;->b:I

    add-int/2addr p1, p2

    iput p1, p0, LTg/u;->b:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
