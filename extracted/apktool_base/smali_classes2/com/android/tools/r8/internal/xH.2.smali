.class public Lcom/android/tools/r8/internal/xH;
.super Lcom/android/tools/r8/internal/TG;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wH;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/TG;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public a(II)Lcom/android/tools/r8/internal/wH;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/yH;->a:Lcom/android/tools/r8/internal/xH;

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xH;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/xH;->a(II)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lcom/android/tools/r8/internal/wH;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/yH;->a:Lcom/android/tools/r8/internal/xH;

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xH;->b(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Lcom/android/tools/r8/internal/I30;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/android/tools/r8/internal/M30;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/O30;->a:Lcom/android/tools/r8/internal/N30;

    return-object v0
.end method

.method public c(I)Lcom/android/tools/r8/internal/wH;
    .locals 0

    .line 3
    sget-object p1, Lcom/android/tools/r8/internal/yH;->a:Lcom/android/tools/r8/internal/xH;

    return-object p1
.end method

.method public final comparator()Lcom/android/tools/r8/internal/gI;
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic e()Lcom/android/tools/r8/internal/I30;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->i()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->i()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic firstKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->j()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xH;->a(Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/android/tools/r8/internal/M30;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/O30;->a:Lcom/android/tools/r8/internal/N30;

    return-object v0
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lcom/android/tools/r8/internal/nI;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lastKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xH;->k()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/xH;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/xH;->b(Ljava/lang/Integer;)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    return-object p1
.end method
