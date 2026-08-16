.class public interface abstract Lcom/android/tools/r8/internal/LY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# direct methods
.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/internal/MY;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/ObjIntConsumer;Lcom/android/tools/r8/internal/MY;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/MY;->a()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
.end method

.method public abstract a(Ljava/lang/Object;I)I
.end method

.method public a(Ljava/util/function/ObjIntConsumer;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-interface {p0}, Lcom/android/tools/r8/internal/LY;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/aM0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/aM0;-><init>(Ljava/util/function/ObjIntConsumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract a(ILjava/lang/Object;)Z
.end method

.method public abstract b(ILjava/lang/Object;)I
.end method

.method public abstract b(Ljava/lang/Object;)I
.end method

.method public abstract entrySet()Ljava/util/Set;
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/LY;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ZL0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/ZL0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract hashCode()I
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lcom/android/tools/r8/internal/QY;->a(Lcom/android/tools/r8/internal/LY;)Lcom/android/tools/r8/internal/Re;

    move-result-object v0

    return-object v0
.end method

.method public abstract w()Ljava/util/Set;
.end method
