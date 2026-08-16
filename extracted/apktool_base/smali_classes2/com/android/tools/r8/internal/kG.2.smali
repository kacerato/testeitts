.class public final Lcom/android/tools/r8/internal/kG;
.super Lcom/android/tools/r8/internal/GF;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jG;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/GF;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(II)Lcom/android/tools/r8/internal/jG;
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public final b()Lcom/android/tools/r8/internal/I30;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/O30;->a:Lcom/android/tools/r8/internal/N30;

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/M30;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/O30;->a:Lcom/android/tools/r8/internal/N30;

    return-object v0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/jG;
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public final c(I)Lcom/android/tools/r8/internal/jG;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final comparator()Lcom/android/tools/r8/internal/gI;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    .line 2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final e()Lcom/android/tools/r8/internal/I30;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/O30;->a:Lcom/android/tools/r8/internal/N30;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/O30;->a:Lcom/android/tools/r8/internal/N30;

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    return-object p1
.end method

.method public final keySet()Lcom/android/tools/r8/internal/nI;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object v0
.end method

.method public final keySet()Lcom/android/tools/r8/internal/qI;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/sI;->a:Lcom/android/tools/r8/internal/rI;

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    return-object p1
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/lG;->a:Lcom/android/tools/r8/internal/kG;

    return-object p1
.end method
