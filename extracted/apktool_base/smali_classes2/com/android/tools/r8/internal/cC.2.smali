.class public final Lcom/android/tools/r8/internal/cC;
.super Lcom/android/tools/r8/internal/xH;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/DG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/DG;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xH;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->a()I

    move-result v0

    return v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/wH;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    .line 2
    new-instance v6, Lcom/android/tools/r8/internal/AG;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/AG;-><init>(Lcom/android/tools/r8/internal/DG;IZIZ)V

    return-object v6
.end method

.method public final a(Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DG;->a(II)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)Lcom/android/tools/r8/internal/wH;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->b(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->b(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/internal/I30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/internal/M30;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lcom/android/tools/r8/internal/wH;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public final compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->d()I

    move-result v0

    return v0
.end method

.method public final e()Lcom/android/tools/r8/internal/I30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lcom/android/tools/r8/internal/M30;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final j()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/nI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should not modify an immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should not modify an immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Should not modify an immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Should not modify an immutable structure"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    iget v0, v0, Lcom/android/tools/r8/internal/DG;->c:I

    return v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/DG;->a(II)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/tools/r8/internal/cC;->b:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->b(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method
