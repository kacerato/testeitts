.class public final Lcom/android/tools/r8/internal/YY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xJ;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/xJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xJ;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/YY;->a:Lcom/android/tools/r8/internal/xJ;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Yy;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/YY;->a:Lcom/android/tools/r8/internal/xJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/xJ;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/ha0;->f:Lcom/android/tools/r8/internal/ha0;

    new-instance v0, Lcom/android/tools/r8/internal/ga0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ga0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/YY;->a:Lcom/android/tools/r8/internal/xJ;

    iget-object v2, v1, Lcom/android/tools/r8/internal/xJ;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "<get-keys>(...)"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/tools/r8/internal/xJ;->b:Ljava/util/HashMap;

    new-instance v3, Lcom/android/tools/r8/internal/wJ;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/wJ;-><init>(Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Ze;->a(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/vr0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/vr0;->a:Lcom/android/tools/r8/internal/ba0;

    const-string v3, "element"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, v0, Lcom/android/tools/r8/internal/ga0;->c:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/tools/r8/internal/ga0;->d:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/tools/r8/internal/ga0;->d:Ljava/util/List;

    iget v3, v0, Lcom/android/tools/r8/internal/ga0;->c:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/android/tools/r8/internal/ga0;->c:I

    :cond_1
    iget-object v3, v0, Lcom/android/tools/r8/internal/ga0;->d:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ba0;->c()Lcom/android/tools/r8/internal/ea0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ea0;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/cv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/cv0;-><init>()V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ga0;->a()Lcom/android/tools/r8/internal/O0;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Yy;

    return-object v0
.end method
