.class public final Lcom/android/tools/r8/naming/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/dH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/dH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/t;->a:Lcom/android/tools/r8/internal/dH;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/android/tools/r8/naming/t;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dH;

    const/16 v1, 0x10

    .line 2
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k$b;

    .line 4
    iget-object v2, v1, Lcom/android/tools/r8/naming/k$b;->d:Lcom/android/tools/r8/naming/M0;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, v1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 6
    :goto_0
    iget v3, v2, Lcom/android/tools/r8/naming/M0;->a:I

    :goto_1
    iget v4, v2, Lcom/android/tools/r8/naming/M0;->b:I

    if-gt v3, v4, :cond_0

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v5}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v5}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, v1, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    iget v5, v5, Lcom/android/tools/r8/naming/M0;->a:I

    iget v6, v2, Lcom/android/tools/r8/naming/M0;->a:I

    sub-int v6, v3, v6

    add-int/2addr v6, v5

    .line 8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Lcom/android/tools/r8/naming/t;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/naming/t;-><init>(Lcom/android/tools/r8/internal/dH;)V

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/util/function/Consumer;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/naming/t;->a:Lcom/android/tools/r8/internal/dH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
