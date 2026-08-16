.class public final Lcom/android/tools/r8/ir/optimize/s;
.super Lcom/android/tools/r8/internal/gv;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Je0;

.field public final b:Lcom/android/tools/r8/internal/EW$a;

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gv;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/s;->a:Lcom/android/tools/r8/internal/Je0;

    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/s;->b:Lcom/android/tools/r8/internal/EW$a;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/z10;->b()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/s;->c:[I

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/W5;)I
    .locals 10

    .line 24
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    goto :goto_3

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/s;->a:Lcom/android/tools/r8/internal/Je0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 29
    iget v5, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 30
    invoke-interface {v3, v4, v5}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    .line 31
    :goto_1
    iget-object v4, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :cond_2
    :goto_2
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    shl-int/lit8 v3, v3, 0x4

    .line 33
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 34
    iget-object v8, p0, Lcom/android/tools/r8/ir/optimize/s;->a:Lcom/android/tools/r8/internal/Je0;

    .line 35
    iget v9, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 36
    invoke-interface {v8, v7, v9}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_2

    :cond_3
    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v3

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_3
    return v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 19
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 20
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s;->c:[I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 21
    sget-boolean v1, Lcom/android/tools/r8/ir/optimize/s;->d:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/s;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return v0

    .line 22
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/s;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/s;->c:[I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result p1

    aput v0, v1, p1

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    .line 6
    iget-object v1, v1, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/s;->a:Lcom/android/tools/r8/internal/Je0;

    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/s;->b:Lcom/android/tools/r8/internal/EW$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 9
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/s;->a:Lcom/android/tools/r8/internal/Je0;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/Je0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v0

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/N8;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v4

    .line 14
    :cond_4
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/s;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object p2

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 16
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 17
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method
