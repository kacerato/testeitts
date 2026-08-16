.class public final Lcom/android/tools/r8/internal/Ok0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public a:I

.field public final b:Lcom/android/tools/r8/internal/qd0;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:Ljava/util/ArrayDeque;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ok0;->a:I

    new-instance v0, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->d:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->e:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ok0;->g:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->b:Lcom/android/tools/r8/internal/qd0;

    iget v1, p0, Lcom/android/tools/r8/internal/Ok0;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ok0;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->g:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok0;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/qd0;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Ok0;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok0;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok0;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok0;->b:Lcom/android/tools/r8/internal/qd0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ok0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/qd0;->b(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ok0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ok0;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ok0;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ok0;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/Ok0;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_4
    return-void
.end method
