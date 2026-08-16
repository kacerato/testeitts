.class public interface abstract Lcom/android/tools/r8/internal/TY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/m6;


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/util/Set;
.end method

.method public a(Lcom/android/tools/r8/internal/l6;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/rX0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/rX0;-><init>(Lcom/android/tools/r8/internal/TY;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/l6;->b(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public abstract a(Ljava/lang/Iterable;Ljava/lang/Object;)V
.end method

.method public a(Ljava/util/Set;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/sX0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/sX0;-><init>(Lcom/android/tools/r8/internal/TY;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/rX0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/rX0;-><init>(Lcom/android/tools/r8/internal/TY;)V

    check-cast p1, Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
