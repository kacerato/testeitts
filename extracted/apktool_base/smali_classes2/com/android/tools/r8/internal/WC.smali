.class public abstract Lcom/android/tools/r8/internal/WC;
.super Lcom/android/tools/r8/internal/XC;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lcom/android/tools/r8/internal/jn0;


# static fields
.field public static final synthetic g:I


# instance fields
.field public final transient e:Ljava/util/Comparator;

.field public transient f:Lcom/android/tools/r8/internal/WC;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/XC;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;
    .locals 2

    sget-object v0, Lcom/android/tools/r8/internal/dZ;->b:Lcom/android/tools/r8/internal/dZ;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/ff0;->i:Lcom/android/tools/r8/internal/ff0;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/ff0;

    sget-object v1, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method public final bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/WC;->k()Lcom/android/tools/r8/internal/WC;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    return-object p1
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    return-object p1
.end method

.method public final k()Lcom/android/tools/r8/internal/WC;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/WC;->f:Lcom/android/tools/r8/internal/WC;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    iget-object v1, v0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/tools/r8/internal/WC;->a(Ljava/util/Comparator;)Lcom/android/tools/r8/internal/ff0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/ff0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->i()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ff0;-><init>(Lcom/android/tools/r8/internal/hC;Ljava/util/Comparator;)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/WC;->f:Lcom/android/tools/r8/internal/WC;

    iput-object p0, v0, Lcom/android/tools/r8/internal/WC;->f:Lcom/android/tools/r8/internal/WC;

    :cond_1
    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 4
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;->b(Ljava/lang/Object;Z)I

    move-result p1

    .line 6
    iget-object p2, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p2

    const/4 p3, 0x0

    .line 9
    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/WC;->e:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 14
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/ff0;->b(Ljava/lang/Object;Z)I

    move-result p1

    .line 16
    iget-object v1, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 17
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/ff0;->a(Ljava/lang/Object;Z)I

    move-result p2

    .line 19
    invoke-virtual {p1, v0, p2}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;->b(Ljava/lang/Object;Z)I

    move-result p1

    .line 4
    iget-object p2, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/ff0;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/ff0;->b(Ljava/lang/Object;Z)I

    move-result p1

    .line 9
    iget-object v1, v0, Lcom/android/tools/r8/internal/ff0;->h:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/ff0;->e(II)Lcom/android/tools/r8/internal/ff0;

    move-result-object p1

    return-object p1
.end method
