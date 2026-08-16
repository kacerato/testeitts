.class public abstract Lcom/android/tools/r8/graph/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:I

.field public final c:Ljava/util/HashSet;

.field public final d:Ljava/util/ArrayDeque;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/T;->c:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/graph/T;->d:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/graph/T;->e:Z

    iput-object p1, p0, Lcom/android/tools/r8/graph/T;->a:Lcom/android/tools/r8/graph/y;

    iput p2, p0, Lcom/android/tools/r8/graph/T;->b:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/E0;)V
.end method

.method public final a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Wr0;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/graph/T;->c:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void

    .line 4
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/T;->a(Lcom/android/tools/r8/graph/E0;)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/graph/T;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/graph/T;->c:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    sget-boolean v1, Lcom/android/tools/r8/graph/T;->f:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/tools/r8/graph/T;->b:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_5
    :goto_2
    invoke-interface {p2, v0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method
