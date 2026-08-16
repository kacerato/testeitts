.class public final Lcom/android/tools/r8/internal/Ib0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ib0;->a:Lcom/android/tools/r8/graph/u1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ua0;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/ua0;->e:Ljava/util/LinkedList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ua0;->e:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/Fa0;

    new-instance v4, Lcom/android/tools/r8/internal/UI0;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/UI0;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Fa0;->a(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/ua0;->d:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    :cond_2
    if-lez v2, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/ua0;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ua0;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/tools/r8/internal/ua0;->c:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/na0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/na0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method
