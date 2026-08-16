.class public final Lcom/android/tools/r8/internal/dO;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/mO;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/android/tools/r8/internal/G50;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/C50;Lcom/android/tools/r8/internal/mO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/dO;->c:Lcom/android/tools/r8/internal/mO;

    iput-object p3, p0, Lcom/android/tools/r8/internal/dO;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/tools/r8/internal/dO;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/tools/r8/internal/dO;->f:Ljava/lang/String;

    new-instance p2, Lcom/android/tools/r8/internal/G50;

    invoke-direct {p2, p1, p4, p5}, Lcom/android/tools/r8/internal/G50;-><init>(Lcom/android/tools/r8/internal/C50;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/dO;->g:Lcom/android/tools/r8/internal/G50;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 11

    .line 19
    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 20
    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {p2}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object p2

    .line 23
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v1, 0x4

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, p2, v3

    .line 26
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/DP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/DP;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 27
    array-length v7, v1

    if-ge v7, v6, :cond_0

    .line 28
    array-length v7, v1

    invoke-static {v7, v6}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 29
    :cond_0
    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 30
    :cond_1
    const-string p2, "V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 31
    sget-object p2, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    goto :goto_1

    .line 32
    :cond_2
    invoke-static {v0}, Lcom/android/tools/r8/internal/DP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/DP;

    move-result-object p2

    .line 33
    instance-of v0, p2, Lcom/android/tools/r8/internal/zP;

    if-eqz v0, :cond_3

    .line 34
    sget-object p2, Lcom/android/tools/r8/internal/XO;->b:Lcom/android/tools/r8/internal/XO;

    goto :goto_1

    .line 35
    :cond_3
    new-instance v0, Lcom/android/tools/r8/internal/XO;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/XO;-><init>(Lcom/android/tools/r8/internal/DP;)V

    move-object p2, v0

    .line 36
    :goto_1
    sget-object v0, Lcom/android/tools/r8/internal/NO;->d:Lcom/android/tools/r8/internal/NO;

    .line 37
    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 39
    sget-object v2, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 40
    sget-object v6, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 41
    invoke-static {p0}, Lcom/android/tools/r8/internal/mP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p0

    .line 42
    new-instance v3, Lcom/android/tools/r8/internal/WM;

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 44
    iget-object v5, v2, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 45
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 46
    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {v0, p0, v2}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 47
    :goto_2
    invoke-direct {v3, v0, v6}, Lcom/android/tools/r8/internal/WM;-><init>(Lcom/android/tools/r8/internal/YM;Lcom/android/tools/r8/internal/x40;)V

    .line 48
    iget-object p0, p3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance p0, Lcom/android/tools/r8/internal/PM;

    const-string v0, "CLASS"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/PM;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object p3, p3, Lcom/android/tools/r8/internal/pO;->a:Lcom/android/tools/r8/internal/OM;

    invoke-virtual {p3, p0, v3}, Lcom/android/tools/r8/internal/OM;->a(Lcom/android/tools/r8/internal/PM;Lcom/android/tools/r8/internal/FO;)V

    .line 52
    new-instance p3, Lcom/android/tools/r8/internal/UM;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/UM;-><init>(Lcom/android/tools/r8/internal/PM;)V

    .line 53
    sget-object v7, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    .line 54
    sget-object p0, Lcom/android/tools/r8/internal/RO;->b:Lcom/android/tools/r8/internal/RO;

    .line 55
    sget-object p0, Lcom/android/tools/r8/internal/XO;->b:Lcom/android/tools/r8/internal/XO;

    .line 56
    invoke-static {p1}, Lcom/android/tools/r8/internal/vP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/vP;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/RO;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/RO;

    move-result-object v8

    .line 57
    invoke-static {v4, v1}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 59
    sget-object p0, Lcom/android/tools/r8/internal/TO;->b:Lcom/android/tools/r8/internal/TO;

    move-object v10, p0

    goto :goto_3

    .line 60
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/TO;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/TO;-><init>(Ljava/util/List;)V

    move-object v10, p1

    .line 61
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    sget-object p0, Lcom/android/tools/r8/internal/RO;->c:Lcom/android/tools/r8/internal/RO;

    if-ne p0, v8, :cond_6

    goto :goto_4

    .line 63
    :cond_6
    sget-object p0, Lcom/android/tools/r8/internal/RO;->d:Lcom/android/tools/r8/internal/RO;

    if-ne p0, v8, :cond_9

    .line 64
    :goto_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result p0

    if-nez p0, :cond_8

    .line 65
    instance-of p0, p2, Lcom/android/tools/r8/internal/YO;

    if-eqz p0, :cond_7

    goto :goto_5

    .line 66
    :cond_7
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string p1, "Method constructor pattern must match \'void\' type."

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_8
    :goto_5
    sget-object p2, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    :cond_9
    move-object v9, p2

    .line 68
    new-instance p0, Lcom/android/tools/r8/internal/WO;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/tools/r8/internal/WO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/QO;Lcom/android/tools/r8/internal/RO;Lcom/android/tools/r8/internal/ZO;Lcom/android/tools/r8/internal/UO;)V

    .line 69
    new-instance p1, Lcom/android/tools/r8/internal/LO;

    invoke-direct {p1, p3, p0}, Lcom/android/tools/r8/internal/LO;-><init>(Lcom/android/tools/r8/internal/UM;Lcom/android/tools/r8/internal/OO;)V

    return-object p1
.end method

.method public static a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;
    .locals 10

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    return-object v7

    :cond_0
    if-nez p2, :cond_1

    return-object v7

    .line 1
    :cond_1
    const-string v8, "Landroidx/annotation/keep/KeepEdge;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    const-string v8, "Lcom/android/tools/r8/keepanno/annotations/KeepEdge;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_5

    .line 2
    :cond_2
    const-string v8, "Landroidx/annotation/keep/UsesReflection;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "Lcom/android/tools/r8/keepanno/annotations/UsesReflection;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_4

    .line 3
    :cond_3
    const-string v8, "Landroidx/annotation/keep/KeepForApi;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "Lcom/android/tools/r8/keepanno/annotations/KeepForApi;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_3

    .line 4
    :cond_4
    const-string v8, "Landroidx/annotation/keep/UsedByReflection;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "Lcom/android/tools/r8/keepanno/annotations/UsedByReflection;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto/16 :goto_2

    .line 5
    :cond_5
    const-string v8, "Landroidx/annotation/keep/UsedByNative;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "Lcom/android/tools/r8/keepanno/annotations/UsedByNative;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    .line 6
    :cond_6
    const-string v8, "Landroidx/annotation/keep/CheckRemoved;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "Lcom/android/tools/r8/keepanno/annotations/CheckRemoved;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_1

    .line 7
    :cond_7
    const-string v8, "Landroidx/annotation/keep/CheckOptimizedOut;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "Lcom/android/tools/r8/keepanno/annotations/CheckOptimizedOut;"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    return-object v7

    .line 8
    :cond_9
    :goto_0
    new-instance v7, Lcom/android/tools/r8/internal/PN;

    .line 9
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/tools/r8/internal/z81;

    invoke-direct {v8, p3}, Lcom/android/tools/r8/internal/z81;-><init>(Ljava/util/function/Consumer;)V

    new-instance v9, Lcom/android/tools/r8/internal/A81;

    invoke-direct {v9, p5, v4, v5}, Lcom/android/tools/r8/internal/A81;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    move-object v0, v7

    move-object v1, p4

    move-object v2, v8

    move-object/from16 v3, p8

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;I)V

    return-object v7

    .line 10
    :cond_a
    :goto_1
    new-instance v7, Lcom/android/tools/r8/internal/PN;

    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/tools/r8/internal/z81;

    invoke-direct {v8, p3}, Lcom/android/tools/r8/internal/z81;-><init>(Ljava/util/function/Consumer;)V

    new-instance v9, Lcom/android/tools/r8/internal/B81;

    invoke-direct {v9, p5, v4, v5}, Lcom/android/tools/r8/internal/B81;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p4

    move-object v2, v8

    move-object/from16 v3, p8

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/PN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;I)V

    return-object v7

    .line 12
    :cond_b
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/oO;

    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v7, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/C81;

    invoke-direct {v1, p5, v4, v5}, Lcom/android/tools/r8/internal/C81;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p4, v7, v6, v1}, Lcom/android/tools/r8/internal/oO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    return-object v0

    .line 14
    :cond_c
    :goto_3
    new-instance v0, Lcom/android/tools/r8/internal/VN;

    .line 15
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v7, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/D81;

    invoke-direct {v1, p5, v4, v5}, Lcom/android/tools/r8/internal/D81;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p4, v7, v6, v1}, Lcom/android/tools/r8/internal/VN;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    return-object v0

    .line 16
    :cond_d
    :goto_4
    new-instance v0, Lcom/android/tools/r8/internal/qO;

    .line 17
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v7, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/E81;

    invoke-direct {v1, p5, v4, v5}, Lcom/android/tools/r8/internal/E81;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p4, v7, v6, v1}, Lcom/android/tools/r8/internal/qO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;Ljava/util/function/Function;)V

    return-object v0

    .line 18
    :cond_e
    :goto_5
    new-instance v0, Lcom/android/tools/r8/internal/eO;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/internal/C51;

    invoke-direct {v3, p3}, Lcom/android/tools/r8/internal/C51;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v0, p4, v3, v6}, Lcom/android/tools/r8/internal/eO;-><init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/mO;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/FO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/dO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/dO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/dO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/dO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/dO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/pO;)Lcom/android/tools/r8/internal/LO;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Q2;
    .locals 10

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/internal/dO;->c:Lcom/android/tools/r8/internal/mO;

    .line 71
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/internal/y51;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/y51;-><init>(Lcom/android/tools/r8/internal/mO;)V

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/dO;->g:Lcom/android/tools/r8/internal/G50;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    new-instance v5, Lcom/android/tools/r8/internal/B50;

    invoke-direct {v5, v0, p1}, Lcom/android/tools/r8/internal/B50;-><init>(Lcom/android/tools/r8/internal/I50;Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/android/tools/r8/internal/dO;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/tools/r8/internal/dO;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/tools/r8/internal/dO;->f:Ljava/lang/String;

    new-instance v9, Lcom/android/tools/r8/internal/y81;

    invoke-direct {v9, p0}, Lcom/android/tools/r8/internal/y81;-><init>(Lcom/android/tools/r8/internal/dO;)V

    const/4 v3, 0x1

    move-object v1, p1

    move v2, p2

    .line 75
    invoke-static/range {v1 .. v9}, Lcom/android/tools/r8/internal/dO;->a(Ljava/lang/String;ZZLjava/util/function/Consumer;Lcom/android/tools/r8/internal/B50;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/R2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/GN;)V
    .locals 10

    .line 76
    iget-object v0, p0, Lcom/android/tools/r8/internal/dO;->d:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Lcom/android/tools/r8/internal/sO;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/dO;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/internal/dO;->f:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 80
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 81
    invoke-static {v5}, Lcom/android/tools/r8/internal/tt0;->b(Ljava/lang/String;)[Lcom/android/tools/r8/internal/tt0;

    move-result-object v5

    .line 82
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    array-length v7, v5

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    .line 84
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v5, Lcom/android/tools/r8/internal/LN;

    .line 86
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Lcom/android/tools/r8/internal/tt0;->e(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 88
    invoke-static {v2, v3, v4}, Lcom/android/tools/r8/internal/tt0;->a(Ljava/lang/String;II)Lcom/android/tools/r8/internal/tt0;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v1, v2, v6}, Lcom/android/tools/r8/internal/LN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    iput-object v5, p1, Lcom/android/tools/r8/internal/GN;->b:Lcom/android/tools/r8/internal/IN;

    return-void
.end method
