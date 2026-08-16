.class public final Lcom/android/tools/r8/internal/J7;
.super Lcom/android/tools/r8/internal/H7;
.source "SourceFile"


# instance fields
.field public c:Lcom/android/tools/r8/internal/xw0;

.field public final d:Lcom/android/tools/r8/internal/DG;

.field public e:Lcom/android/tools/r8/internal/W5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/H7;-><init>(Lcom/android/tools/r8/internal/B60;)V

    new-instance p1, Lcom/android/tools/r8/internal/DG;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/DG;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/J7;->d:Lcom/android/tools/r8/internal/DG;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Y0;Lcom/android/tools/r8/internal/W5;)Ljava/lang/Integer;
    .locals 0

    .line 36
    invoke-interface {p0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Y0;Lcom/android/tools/r8/internal/W5;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/mB;)Lcom/android/tools/r8/internal/W5;
    .locals 8

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/k20;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/k20;-><init>()V

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Lcom/android/tools/r8/internal/Y0;->b:I

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/J7;->d:Lcom/android/tools/r8/internal/DG;

    .line 4
    iget v2, v1, Lcom/android/tools/r8/internal/DG;->c:I

    .line 5
    new-array v3, v2, [I

    .line 6
    new-array v2, v2, [I

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/sG;

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/rG;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/internal/sG;->c:Lcom/android/tools/r8/internal/DG;

    .line 10
    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/rG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BG;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/BG;->a()Lcom/android/tools/r8/internal/pG;

    move-result-object v5

    iget v5, v5, Lcom/android/tools/r8/internal/S;->b:I

    .line 13
    iget-object v6, p0, Lcom/android/tools/r8/internal/J7;->d:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    .line 14
    new-instance v7, Lcom/android/tools/r8/internal/gJ0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/gJ0;-><init>(Lcom/android/tools/r8/internal/Y0;)V

    .line 15
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 16
    aput v5, v3, v1

    .line 17
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/J7;->e:Lcom/android/tools/r8/internal/W5;

    new-instance v4, Lcom/android/tools/r8/internal/hJ0;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/hJ0;-><init>(Lcom/android/tools/r8/internal/Y0;)V

    .line 19
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 20
    new-instance v4, Lcom/android/tools/r8/internal/tI;

    iget-object v5, p0, Lcom/android/tools/r8/internal/J7;->c:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v4, v5, v3, v2, v1}, Lcom/android/tools/r8/internal/tI;-><init>(Lcom/android/tools/r8/internal/xw0;[I[II)V

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/H7;->b:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 22
    iget v1, p0, Lcom/android/tools/r8/internal/H7;->a:I

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/W5;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 24
    invoke-virtual {v2, v4, p1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/mB;)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    .line 26
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/k20;->j()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/tools/r8/internal/f20;

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/e20;

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/f20;->b:Lcom/android/tools/r8/internal/k20;

    .line 31
    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/e20;-><init>(Lcom/android/tools/r8/internal/k20;)V

    .line 32
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/i20;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    iget-object p1, v0, Lcom/android/tools/r8/internal/e20;->g:Lcom/android/tools/r8/internal/k20;

    iget-object p1, p1, Lcom/android/tools/r8/internal/k20;->c:[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/i20;->b()I

    move-result v1

    aget-object p1, p1, v1

    .line 34
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    .line 35
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    goto :goto_1

    :cond_1
    return-object v2
.end method
