.class public final Lcom/android/tools/r8/graph/D;
.super Lcom/android/tools/r8/graph/T;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;I)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/tools/r8/graph/T;-><init>(Lcom/android/tools/r8/graph/y;I)V

    iput-object p2, p0, Lcom/android/tools/r8/graph/D;->g:Ljava/util/function/Function;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Y5;)Lcom/android/tools/r8/graph/D;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/graph/D;

    new-instance v1, Lcom/android/tools/r8/graph/E6;

    invoke-direct {v1, p1, p0}, Lcom/android/tools/r8/graph/E6;-><init>(Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/y;)V

    const/4 p1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/graph/D;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;I)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)Lcom/android/tools/r8/graph/D;
    .locals 2

    .line 6
    new-instance v0, Lcom/android/tools/r8/graph/D6;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/graph/D6;-><init>(Lcom/android/tools/r8/graph/c4;)V

    .line 7
    new-instance p1, Lcom/android/tools/r8/graph/D;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v0, v1}, Lcom/android/tools/r8/graph/D;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;I)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/E0;)Ljava/lang/Iterable;
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/graph/Y5;->b(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;

    move-result-object p0

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/tools/r8/graph/F6;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/graph/F6;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 4
    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/vK;->a(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/sK;

    move-result-object p0

    new-instance p1, Lcom/android/tools/r8/graph/G6;

    invoke-direct {p1}, Lcom/android/tools/r8/graph/G6;-><init>()V

    .line 5
    new-instance p2, Lcom/android/tools/r8/internal/rK;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/internal/rK;-><init>(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)V

    return-object p2
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)V
    .locals 3

    .line 8
    iget-boolean v0, p0, Lcom/android/tools/r8/graph/T;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/graph/D;->g:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 12
    iget v1, p0, Lcom/android/tools/r8/graph/T;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/D;->a(Lcom/android/tools/r8/graph/E0;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
