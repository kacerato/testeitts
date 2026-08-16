.class public abstract Lcom/android/tools/r8/internal/rO;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;
    .locals 7

    .line 24
    new-instance v6, Lcom/android/tools/r8/internal/Br1;

    invoke-direct {v6, p3}, Lcom/android/tools/r8/internal/Br1;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p5

    move-object v4, p4

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/bO;->a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;
    .locals 9

    .line 25
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/Cr1;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Cr1;-><init>(Ljava/util/function/Consumer;)V

    new-instance v8, Lcom/android/tools/r8/internal/Dr1;

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct {v8, p3, p4, p5}, Lcom/android/tools/r8/internal/Dr1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p6

    .line 26
    invoke-static/range {v0 .. v8}, Lcom/android/tools/r8/internal/cO;->a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object v0

    return-object v0
.end method

.method public static a([B)Ljava/util/ArrayList;
    .locals 4

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/Vd;

    .line 19
    array-length v1, p0

    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Vd;-><init>([BZ)V

    .line 21
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v2, Lcom/android/tools/r8/internal/bO;

    new-instance v3, Lcom/android/tools/r8/internal/Gr1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Gr1;-><init>(Ljava/util/List;)V

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/bO;-><init>(Lcom/android/tools/r8/internal/mO;)V

    const/4 v3, 0x0

    .line 23
    new-array v3, v3, [Lcom/android/tools/r8/internal/K4;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/Vd;->a(Lcom/android/tools/r8/internal/ge;[Lcom/android/tools/r8/internal/K4;I)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/GN;)V
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/sO;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/HN;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/HN;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object v0, p1, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/GN;)V
    .locals 2

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/tools/r8/internal/sO;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/KN;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/KN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iput-object v0, p3, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 11
    const-string v0, "Landroidx/annotation/keep/KeepEdge;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/KeepEdge;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 12
    :cond_0
    const-string v0, "Landroidx/annotation/keep/UsesReflection;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/UsesReflection;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    const-string v0, "Landroidx/annotation/keep/KeepForApi;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/KeepForApi;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    const-string v0, "Landroidx/annotation/keep/UsedByReflection;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/UsedByReflection;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    const-string v0, "Landroidx/annotation/keep/UsedByNative;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/UsedByNative;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    const-string v0, "Landroidx/annotation/keep/CheckRemoved;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/CheckRemoved;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    const-string v0, "Landroidx/annotation/keep/CheckOptimizedOut;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/CheckOptimizedOut;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/B50;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;
    .locals 9

    .line 16
    invoke-static/range {p7 .. p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/Er1;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Er1;-><init>(Ljava/util/function/Consumer;)V

    new-instance v8, Lcom/android/tools/r8/internal/Fr1;

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct {v8, p3, p4, p5}, Lcom/android/tools/r8/internal/Fr1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p6

    .line 17
    invoke-static/range {v0 .. v8}, Lcom/android/tools/r8/internal/dO;->a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/GN;)V
    .locals 7

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/sO;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 9
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/LN;

    .line 11
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 13
    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/tools/r8/internal/LN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 15
    iput-object v2, p3, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    return-void
.end method
