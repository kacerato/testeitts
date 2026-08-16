.class public final Lcom/android/tools/r8/internal/wK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Ljava/util/function/Predicate;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljava/util/function/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/wK;->c:Ljava/util/Iterator;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wK;->d:Ljava/util/function/Predicate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/wK;->c:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/wK;->c:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/wK;->d:Ljava/util/function/Predicate;

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/wK;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wK;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/wK;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/wK;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/wK;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/wK;->d:Ljava/util/function/Predicate;

    invoke-interface {v2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/tools/r8/internal/wK;->b:Ljava/lang/Object;

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
