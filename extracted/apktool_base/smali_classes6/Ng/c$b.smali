.class public final LNg/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LNg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final k:I = 0x1000

.field public static final l:I = 0x4000


# instance fields
.field public final a:LTg/c;

.field public final b:Z

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:[LNg/b;

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(IZLTg/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, LNg/c$b;->c:I

    const/16 v0, 0x8

    .line 4
    new-array v0, v0, [LNg/b;

    iput-object v0, p0, LNg/c$b;->g:[LNg/b;

    .line 5
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LNg/c$b;->h:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, LNg/c$b;->i:I

    .line 7
    iput v0, p0, LNg/c$b;->j:I

    .line 8
    iput p1, p0, LNg/c$b;->e:I

    .line 9
    iput p1, p0, LNg/c$b;->f:I

    .line 10
    iput-boolean p2, p0, LNg/c$b;->b:Z

    .line 11
    iput-object p3, p0, LNg/c$b;->a:LTg/c;

    return-void
.end method

.method public constructor <init>(LTg/c;)V
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p1}, LNg/c$b;-><init>(IZLTg/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, LNg/c$b;->f:I

    iget v1, p0, LNg/c$b;->j:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, LNg/c$b;->b()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, LNg/c$b;->c(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LNg/c$b;->g:[LNg/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LNg/c$b;->g:[LNg/b;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LNg/c$b;->h:I

    const/4 v0, 0x0

    iput v0, p0, LNg/c$b;->i:I

    iput v0, p0, LNg/c$b;->j:I

    return-void
.end method

.method public final c(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, LNg/c$b;->g:[LNg/b;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, LNg/c$b;->h:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, LNg/c$b;->g:[LNg/b;

    aget-object v2, v2, v1

    iget v2, v2, LNg/b;->c:I

    sub-int/2addr p1, v2

    iget v3, p0, LNg/c$b;->j:I

    sub-int/2addr v3, v2

    iput v3, p0, LNg/c$b;->j:I

    iget v2, p0, LNg/c$b;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LNg/c$b;->i:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, LNg/c$b;->g:[LNg/b;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, LNg/c$b;->i:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LNg/c$b;->g:[LNg/b;

    iget v1, p0, LNg/c$b;->h:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, LNg/c$b;->h:I

    add-int/2addr p1, v0

    iput p1, p0, LNg/c$b;->h:I

    :cond_1
    return v0
.end method

.method public final d(LNg/b;)V
    .locals 6

    iget v0, p1, LNg/b;->c:I

    iget v1, p0, LNg/c$b;->f:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, LNg/c$b;->b()V

    return-void

    :cond_0
    iget v2, p0, LNg/c$b;->j:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, LNg/c$b;->c(I)I

    iget v1, p0, LNg/c$b;->i:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, LNg/c$b;->g:[LNg/b;

    array-length v3, v2

    if-le v1, v3, :cond_1

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [LNg/b;

    array-length v3, v2

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LNg/c$b;->g:[LNg/b;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, LNg/c$b;->h:I

    iput-object v1, p0, LNg/c$b;->g:[LNg/b;

    :cond_1
    iget v1, p0, LNg/c$b;->h:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, LNg/c$b;->h:I

    iget-object v2, p0, LNg/c$b;->g:[LNg/b;

    aput-object p1, v2, v1

    iget p1, p0, LNg/c$b;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LNg/c$b;->i:I

    iget p1, p0, LNg/c$b;->j:I

    add-int/2addr p1, v0

    iput p1, p0, LNg/c$b;->j:I

    return-void
.end method

.method public e(I)V
    .locals 1

    iput p1, p0, LNg/c$b;->e:I

    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, LNg/c$b;->f:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, v0, :cond_1

    iget v0, p0, LNg/c$b;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LNg/c$b;->c:I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, LNg/c$b;->d:Z

    iput p1, p0, LNg/c$b;->f:I

    invoke-virtual {p0}, LNg/c$b;->a()V

    return-void
.end method

.method public f(LTg/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LNg/c$b;->b:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_0

    invoke-static {}, LNg/j;->f()LNg/j;

    move-result-object v0

    invoke-virtual {v0, p1}, LNg/j;->e(LTg/f;)I

    move-result v0

    invoke-virtual {p1}, LTg/f;->S()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    invoke-static {}, LNg/j;->f()LNg/j;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, LNg/j;->d(LTg/f;LTg/d;)V

    invoke-virtual {v0}, LTg/c;->C1()LTg/f;

    move-result-object p1

    invoke-virtual {p1}, LTg/f;->S()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, LNg/c$b;->h(III)V

    iget-object v0, p0, LNg/c$b;->a:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->Y(LTg/f;)LTg/c;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LTg/f;->S()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LNg/c$b;->h(III)V

    iget-object v0, p0, LNg/c$b;->a:LTg/c;

    invoke-virtual {v0, p1}, LTg/c;->Y(LTg/f;)LTg/c;

    :goto_0
    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LNg/b;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LNg/c$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, LNg/c$b;->c:I

    iget v2, p0, LNg/c$b;->f:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0, v4, v3}, LNg/c$b;->h(III)V

    :cond_0
    iput-boolean v1, p0, LNg/c$b;->d:Z

    const v0, 0x7fffffff

    iput v0, p0, LNg/c$b;->c:I

    iget v0, p0, LNg/c$b;->f:I

    invoke-virtual {p0, v0, v4, v3}, LNg/c$b;->h(III)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LNg/b;

    iget-object v4, v3, LNg/b;->a:LTg/f;

    invoke-virtual {v4}, LTg/f;->Y()LTg/f;

    move-result-object v4

    iget-object v5, v3, LNg/b;->b:LTg/f;

    sget-object v6, LNg/c;->f:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v9, v6, 0x1

    if-le v9, v7, :cond_3

    const/16 v10, 0x8

    if-ge v9, v10, :cond_3

    sget-object v10, LNg/c;->e:[LNg/b;

    aget-object v11, v10, v6

    iget-object v11, v11, LNg/b;->b:LTg/f;

    invoke-static {v11, v5}, LGg/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v6, v9

    goto :goto_1

    :cond_2
    aget-object v10, v10, v9

    iget-object v10, v10, LNg/b;->b:LTg/f;

    invoke-static {v10, v5}, LGg/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    add-int/lit8 v6, v6, 0x2

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_1

    :cond_3
    move v6, v9

    move v9, v8

    goto :goto_1

    :cond_4
    move v6, v8

    move v9, v6

    :goto_1
    if-ne v9, v8, :cond_7

    iget v10, p0, LNg/c$b;->h:I

    add-int/2addr v10, v7

    iget-object v7, p0, LNg/c$b;->g:[LNg/b;

    array-length v7, v7

    :goto_2
    if-ge v10, v7, :cond_7

    iget-object v11, p0, LNg/c$b;->g:[LNg/b;

    aget-object v11, v11, v10

    iget-object v11, v11, LNg/b;->a:LTg/f;

    invoke-static {v11, v4}, LGg/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, LNg/c$b;->g:[LNg/b;

    aget-object v11, v11, v10

    iget-object v11, v11, LNg/b;->b:LTg/f;

    invoke-static {v11, v5}, LGg/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget v7, p0, LNg/c$b;->h:I

    sub-int/2addr v10, v7

    sget-object v7, LNg/c;->e:[LNg/b;

    array-length v7, v7

    add-int v9, v10, v7

    goto :goto_3

    :cond_5
    if-ne v6, v8, :cond_6

    iget v6, p0, LNg/c$b;->h:I

    sub-int v6, v10, v6

    sget-object v11, LNg/c;->e:[LNg/b;

    array-length v11, v11

    add-int/2addr v6, v11

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eq v9, v8, :cond_8

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v9, v3, v4}, LNg/c$b;->h(III)V

    goto :goto_4

    :cond_8
    const/16 v7, 0x40

    if-ne v6, v8, :cond_9

    iget-object v6, p0, LNg/c$b;->a:LTg/c;

    invoke-virtual {v6, v7}, LTg/c;->d0(I)LTg/c;

    invoke-virtual {p0, v4}, LNg/c$b;->f(LTg/f;)V

    invoke-virtual {p0, v5}, LNg/c$b;->f(LTg/f;)V

    invoke-virtual {p0, v3}, LNg/c$b;->d(LNg/b;)V

    goto :goto_4

    :cond_9
    sget-object v8, LNg/b;->d:LTg/f;

    invoke-virtual {v4, v8}, LTg/f;->T(LTg/f;)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, LNg/b;->n:LTg/f;

    invoke-virtual {v8, v4}, LTg/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v3, 0xf

    invoke-virtual {p0, v6, v3, v1}, LNg/c$b;->h(III)V

    invoke-virtual {p0, v5}, LNg/c$b;->f(LTg/f;)V

    goto :goto_4

    :cond_a
    const/16 v4, 0x3f

    invoke-virtual {p0, v6, v4, v7}, LNg/c$b;->h(III)V

    invoke-virtual {p0, v5}, LNg/c$b;->f(LTg/f;)V

    invoke-virtual {p0, v3}, LNg/c$b;->d(LNg/b;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public h(III)V
    .locals 1

    if-ge p1, p2, :cond_0

    iget-object p2, p0, LNg/c$b;->a:LTg/c;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, LTg/c;->d0(I)LTg/c;

    return-void

    :cond_0
    iget-object v0, p0, LNg/c$b;->a:LTg/c;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, LTg/c;->d0(I)LTg/c;

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    iget-object v0, p0, LNg/c$b;->a:LTg/c;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, LTg/c;->d0(I)LTg/c;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    iget-object p2, p0, LNg/c$b;->a:LTg/c;

    invoke-virtual {p2, p1}, LTg/c;->d0(I)LTg/c;

    return-void
.end method
