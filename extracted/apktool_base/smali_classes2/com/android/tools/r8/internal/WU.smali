.class public final Lcom/android/tools/r8/internal/WU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/references/MethodReference;

.field public b:Ljava/util/List;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/WU;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/WU;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/WU;->a:Lcom/android/tools/r8/references/MethodReference;

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/WU;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WU;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/WU;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/o50;

    .line 4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k$b;

    .line 5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/YE;

    .line 6
    new-instance v5, Lcom/android/tools/r8/internal/WE;

    const/16 v6, 0x10

    .line 7
    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/WE;-><init>(I)V

    .line 8
    new-instance v6, Lcom/android/tools/r8/internal/I01;

    invoke-direct {v6, p0, v5}, Lcom/android/tools/r8/internal/I01;-><init>(Lcom/android/tools/r8/internal/WU;Lcom/android/tools/r8/internal/WE;)V

    invoke-interface {v3, v6}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/internal/WU;->a:Lcom/android/tools/r8/references/MethodReference;

    .line 10
    new-instance v6, Lcom/android/tools/r8/internal/M40;

    invoke-direct {v6, v5, v3}, Lcom/android/tools/r8/internal/M40;-><init>(Lcom/android/tools/r8/internal/WE;Lcom/android/tools/r8/references/MethodReference;)V

    .line 11
    new-instance v3, Lcom/android/tools/r8/internal/J01;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/J01;-><init>()V

    .line 12
    invoke-virtual {v4, v3, v6}, Lcom/android/tools/r8/naming/k$b;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/android/tools/r8/internal/WU;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/internal/WU;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Mapped outline positions is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/WE;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4

    .line 14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/android/tools/r8/internal/WU;->b:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/UU;

    .line 16
    iget-object v3, v1, Lcom/android/tools/r8/internal/UU;->b:Lcom/android/tools/r8/internal/B60;

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 18
    iget p2, v1, Lcom/android/tools/r8/internal/UU;->a:I

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    if-eq p2, v2, :cond_2

    .line 19
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/WE;->b(II)I

    :cond_2
    return-void
.end method
