.class public final Lcom/android/tools/r8/internal/Bw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Bw0;->a:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Aw0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw0;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/bB0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/bB0;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Aw0;

    return-object p1
.end method

.method public final a()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Bw0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 4
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Aw0;

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/Ok0;

    new-instance v3, Lcom/android/tools/r8/internal/cB0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/cB0;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/Ok0;-><init>(Ljava/util/function/Function;)V

    .line 8
    sget-boolean v3, Lcom/android/tools/r8/internal/Ok0;->h:Z

    if-nez v3, :cond_2

    iget v3, v2, Lcom/android/tools/r8/internal/Ok0;->a:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/Ok0;->a(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/android/tools/r8/internal/Ok0;->f:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/Set;

    .line 12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 13
    sget-boolean v6, Lcom/android/tools/r8/internal/Bw0;->b:Z

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Aw0;

    .line 15
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 16
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/Aw0;

    .line 17
    iget-object v8, v7, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    .line 18
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Aw0;

    .line 19
    iget-object v10, v9, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v10, v9, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v10, v6, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 22
    :cond_5
    iget-object v8, v7, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 23
    iget-object v8, v7, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/Aw0;

    .line 24
    iget-object v10, v9, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v10, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    iget-object v10, v9, Lcom/android/tools/r8/internal/Aw0;->c:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v10, v6, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 27
    :cond_6
    iget-object v8, v7, Lcom/android/tools/r8/internal/Aw0;->d:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 28
    iget-object v8, v7, Lcom/android/tools/r8/internal/Aw0;->b:Ljava/util/Set;

    .line 29
    iget-object v9, v6, Lcom/android/tools/r8/internal/Aw0;->b:Ljava/util/Set;

    .line 30
    invoke-interface {v9, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 31
    iget-object v8, p0, Lcom/android/tools/r8/internal/Bw0;->a:Ljava/util/IdentityHashMap;

    iget-object v7, v7, Lcom/android/tools/r8/internal/Aw0;->a:Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8, v7, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 32
    :cond_7
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/Set;)V

    goto/16 :goto_1

    :cond_8
    return-void
.end method
