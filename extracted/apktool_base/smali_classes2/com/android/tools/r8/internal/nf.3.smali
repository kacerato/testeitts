.class public abstract Lcom/android/tools/r8/internal/nf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;Ljava/util/Comparator;)I
    .locals 6

    .line 15
    invoke-interface {p0}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 17
    sget-boolean p0, Lcom/android/tools/r8/internal/nf;->a:Z

    if-nez p0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return v1

    .line 18
    :cond_3
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/nf;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/nf;->a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_6

    .line 20
    sget-boolean p0, Lcom/android/tools/r8/internal/nf;->a:Z

    if-nez p0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_5
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    .line 22
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/SG;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 23
    new-instance v2, Lcom/android/tools/r8/internal/iQ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/iQ0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_7
    if-ge v3, v2, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 25
    invoke-interface {p0, v4}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 26
    invoke-interface {p1, v4}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 27
    invoke-interface {p2, v5, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_7

    return v4

    :cond_8
    return v1
.end method

.method public static a(Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;)I
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dK0;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I
    .locals 3

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static synthetic a(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 3

    .line 12
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 14
    aget-object v0, p1, v1

    aget-object v2, p2, v1

    invoke-interface {p0, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a([I[I)I
    .locals 3

    .line 8
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 10
    aget v0, p0, v1

    aget v2, p1, v1

    invoke-static {v0, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(Lcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/SG;)Ljava/lang/Integer;
    .locals 4

    .line 28
    invoke-interface {p0}, Lcom/android/tools/r8/internal/SG;->keySet()Lcom/android/tools/r8/internal/nI;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/nI;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object p0

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 29
    invoke-interface {p1, v2}, Lcom/android/tools/r8/internal/HG;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    .line 11
    new-instance v0, Lcom/android/tools/r8/internal/un1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/un1;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static b(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/tn1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tn1;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
