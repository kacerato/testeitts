.class public abstract Lcom/ardor3d/util/SortUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SHELL_SORT_THRESHOLD:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    add-int/lit8 p3, p3, 0x1

    move v0, p2

    move v1, p3

    :goto_0
    if-gt p2, p4, :cond_3

    if-ne v0, p3, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-object v1, p0, v1

    aput-object v1, p1, p2

    move v1, v2

    goto :goto_3

    :cond_0
    add-int/lit8 v2, p4, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-object v0, p0, v0

    aput-object v0, p1, p2

    :goto_1
    move v0, v2

    goto :goto_3

    :cond_1
    aget-object v2, p0, v0

    aget-object v3, p0, v1

    invoke-interface {p5, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-object v0, p0, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget-object v1, p0, v1

    move v4, v2

    move v2, v0

    move-object v0, v1

    move v1, v4

    :goto_2
    aput-object v0, p1, p2

    goto :goto_1

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static msort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    invoke-static {v0, p0, p1, p2, p3}, Lcom/ardor3d/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method public static msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 4
    sget v1, Lcom/ardor3d/util/SortUtil;->SHELL_SORT_THRESHOLD:I

    if-gt v0, v1, :cond_0

    .line 5
    invoke-static {p1, p2, p3, p4}, Lcom/ardor3d/util/SortUtil;->shellSort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void

    :cond_0
    add-int v0, p2, p3

    shr-int/lit8 v4, v0, 0x1

    .line 6
    invoke-static {p1, p0, p2, v4, p4}, Lcom/ardor3d/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    add-int/lit8 v0, v4, 0x1

    .line 7
    invoke-static {p1, p0, v0, p3, p4}, Lcom/ardor3d/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/ardor3d/util/SortUtil;->merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    return-void
.end method

.method public static shellSort([Ljava/lang/Comparable;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>([TT;II)V"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    .line 7
    div-int/lit8 v2, v2, 0x9

    if-gt v1, v2, :cond_0

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    if-lez v1, :cond_3

    add-int v0, p1, v1

    move v2, v0

    :goto_2
    if-gt v2, p2, :cond_2

    .line 8
    aget-object v3, p0, v2

    move v4, v2

    :goto_3
    if-lt v4, v0, :cond_1

    add-int/lit8 v5, v4, -0x1

    .line 9
    aget-object v5, p0, v5

    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    sub-int v5, v4, v1

    .line 10
    aget-object v6, p0, v5

    aput-object v6, p0, v4

    move v4, v5

    goto :goto_3

    .line 11
    :cond_1
    aput-object v3, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12
    :cond_2
    div-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static shellSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    add-int/lit8 v2, p2, -0x1

    .line 1
    div-int/lit8 v2, v2, 0x9

    if-gt v1, v2, :cond_0

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    :goto_1
    if-lez v1, :cond_3

    add-int v0, p1, v1

    move v2, v0

    :goto_2
    if-gt v2, p2, :cond_2

    .line 2
    aget-object v3, p0, v2

    move v4, v2

    :goto_3
    if-lt v4, v0, :cond_1

    sub-int v5, v4, v1

    .line 3
    aget-object v6, p0, v5

    invoke-interface {p3, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_1

    .line 4
    aget-object v6, p0, v5

    aput-object v6, p0, v4

    move v4, v5

    goto :goto_3

    .line 5
    :cond_1
    aput-object v3, p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6
    :cond_2
    div-int/lit8 v1, v1, 0x3

    goto :goto_1

    :cond_3
    return-void
.end method
