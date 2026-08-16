.class public abstract Lcom/android/tools/r8/internal/LL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/android/tools/r8/internal/KL;
    .locals 9

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p5

    .line 1
    invoke-static/range {v2 .. v8}, Lcom/android/tools/r8/internal/LL;->a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/KL;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/tools/r8/internal/KL;
    .locals 11

    .line 2
    new-instance v9, Lcom/android/tools/r8/internal/KL;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    filled-new-array {v2, v3, v0}, [I

    move-result-object v4

    if-nez p2, :cond_0

    .line 5
    new-array v0, v3, [Ljava/lang/String;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p2

    :goto_0
    if-nez p3, :cond_1

    .line 6
    new-array v0, v3, [Ljava/lang/String;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p3

    :goto_1
    const-string v0, ""

    if-nez p4, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p4

    :goto_2
    if-nez p5, :cond_3

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    .line 7
    :goto_3
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object v0, v9

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v10

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/internal/KL;-><init>(I[I[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v9
.end method
