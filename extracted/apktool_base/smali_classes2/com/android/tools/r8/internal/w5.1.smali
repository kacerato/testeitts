.class public interface abstract Lcom/android/tools/r8/internal/w5;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;
.end method

.method public a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/QT;)Ljava/util/Collection;
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/w5;->a(Lcom/android/tools/r8/internal/ga;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/W9;

    move-result-object p1

    sget p2, Lcom/android/tools/r8/internal/hC;->c:I

    .line 2
    new-instance p2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
