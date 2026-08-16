.class public abstract Lcom/android/tools/r8/internal/P;
.super Lcom/android/tools/r8/internal/N;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jG;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/N;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lcom/android/tools/r8/internal/I30;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/I30;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->b()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/jG;->c(I)Lcom/android/tools/r8/internal/jG;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/jG;->a(II)Lcom/android/tools/r8/internal/jG;

    move-result-object p1

    return-object p1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/jG;->b(I)Lcom/android/tools/r8/internal/jG;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/jG;->values()Lcom/android/tools/r8/internal/w30;

    move-result-object v0

    return-object v0
.end method
