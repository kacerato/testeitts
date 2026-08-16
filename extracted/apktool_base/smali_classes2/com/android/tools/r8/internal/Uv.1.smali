.class public final Lcom/android/tools/r8/internal/Uv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/graph/l1;

.field public b:Lcom/android/tools/r8/internal/t40;

.field public c:Lcom/android/tools/r8/internal/t40;

.field public d:Lcom/android/tools/r8/graph/A2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uv;->c:Lcom/android/tools/r8/internal/t40;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/G;
    .locals 10

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/Uv;->e:Z

    if-nez v0, :cond_7

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uv;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Uv;->d:Lcom/android/tools/r8/graph/A2;

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 7
    :cond_7
    :goto_3
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 9
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v1, v4, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move v1, v2

    move v3, v1

    goto :goto_4

    :cond_8
    move v1, v3

    .line 12
    :goto_4
    iget-object v4, p0, Lcom/android/tools/r8/internal/Uv;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 13
    iget-object v4, p0, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    .line 14
    new-instance v5, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v5

    add-int/2addr v1, v5

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v4

    add-int/2addr v3, v4

    :cond_9
    move v6, v3

    .line 17
    iget-object v3, p0, Lcom/android/tools/r8/internal/Uv;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v3

    .line 18
    invoke-static {v3}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v3

    add-int/lit16 v3, v3, 0xb2

    iget-object v4, p0, Lcom/android/tools/r8/internal/Uv;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/t40;->f()I

    move-result v4

    shl-int/lit8 v2, v4, 0x1

    add-int/2addr v3, v2

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    invoke-static {v3, v2}, Lcom/android/tools/r8/internal/F9;->a(ILcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    .line 20
    iget-object v2, p0, Lcom/android/tools/r8/internal/Uv;->c:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 21
    new-instance v2, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bb;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :goto_5
    move v5, v1

    goto :goto_6

    .line 22
    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/internal/Uv;->a:Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Kw0;->c()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 24
    new-instance v3, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_5

    .line 25
    :goto_6
    sget-object v9, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    .line 26
    new-instance v1, Lcom/android/tools/r8/graph/G;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Uv;->d:Lcom/android/tools/r8/graph/A2;

    .line 27
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v7

    move-object v3, v1

    move-object v8, v9

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final a(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/Uv;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1
    :goto_0
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/internal/Uv;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uv;->c:Lcom/android/tools/r8/internal/t40;

    return-object p0
.end method

.method public final c()Lcom/android/tools/r8/internal/Uv;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Uv;->c:Lcom/android/tools/r8/internal/t40;

    return-object p0
.end method
