.class public final Lkotlin/time/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Duration.kt\nkotlin/time/LongParser\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 Duration.kt\nkotlin/time/FractionalParser\n*L\n1#1,1613:1\n1#2:1614\n1284#3,12:1615\n1296#3,15:1630\n1284#3,12:1674\n1296#3,15:1689\n1656#4,3:1627\n1656#4,3:1668\n1656#4,3:1671\n1656#4,3:1686\n1656#4,3:1727\n1342#5,23:1645\n1342#5,23:1704\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n1100#1:1615,12\n1100#1:1630,15\n1179#1:1674,12\n1179#1:1689,15\n1100#1:1627,3\n1109#1:1668,3\n1174#1:1671,3\n1179#1:1686,3\n1191#1:1727,3\n1109#1:1645,23\n1191#1:1704,23\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Duration.kt\nkotlin/time/LongParser\n+ 4 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 5 Duration.kt\nkotlin/time/FractionalParser\n*L\n1#1,1613:1\n1#2:1614\n1284#3,12:1615\n1296#3,15:1630\n1284#3,12:1674\n1296#3,15:1689\n1656#4,3:1627\n1656#4,3:1668\n1656#4,3:1671\n1656#4,3:1686\n1656#4,3:1727\n1342#5,23:1645\n1342#5,23:1704\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n1100#1:1615,12\n1100#1:1630,15\n1179#1:1674,12\n1179#1:1689,15\n1100#1:1627,3\n1109#1:1668,3\n1174#1:1671,3\n1179#1:1686,3\n1191#1:1727,3\n1109#1:1645,23\n1191#1:1704,23\n*E\n"
    }
.end annotation


# static fields
.field public static final a:I = 0xf4240

.field public static final b:J = 0x3e8L

.field public static final c:J = 0x3e8L

.field public static final d:J = 0x3ffffffffffa14bfL

.field public static final e:J = 0x3fffffffffffffffL

.field public static final f:J = 0x431bde82d7aL

.field public static final g:J = 0x3e8L

.field public static final h:J = 0xea60L

.field public static final i:J = 0x36ee80L

.field public static final j:J = 0x5265c00L

.field public static final k:Ljava/lang/String; = "Infinity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:I = 0xf


# direct methods
.method public static final A(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static final B(I)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static final C(J)J
    .locals 3
    .annotation build LEf/f;
    .end annotation

    const/4 v0, 0x3

    shl-long v0, p0, v0

    const/4 v2, 0x1

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final D(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static final E(JLMf/a;)Lkotlin/time/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LMf/a<",
            "Lkotlin/time/h;",
            ">;)",
            "Lkotlin/time/h;"
        }
    .end annotation

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/h;->u(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, LMf/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/time/h;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->j(J)Lkotlin/time/h;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final F(Ljava/lang/String;IZZ)J
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    xor-int/lit8 v2, p2, 0x1

    if-eqz p2, :cond_2

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_2

    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_1

    if-nez p3, :cond_0

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v2

    move/from16 v2, p1

    :goto_0
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    :goto_1
    if-ge v2, v1, :cond_25

    if-nez v12, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    sget-object v12, Lkotlin/time/B;->e:Lkotlin/time/B$a;

    invoke-virtual {v12}, Lkotlin/time/B$a;->a()Lkotlin/time/B;

    move-result-object v12

    invoke-static {v12}, Lkotlin/time/B;->a(Lkotlin/time/B;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2b

    if-eq v13, v14, :cond_4

    const/16 v14, 0x2d

    if-eq v13, v14, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v2, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    move v13, v2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x30

    if-ge v13, v14, :cond_6

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v15, :cond_6

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    const-string v3, ""

    const/16 v15, 0x3a

    if-ge v13, v14, :cond_b

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v18, v4

    const/16 v4, 0x30

    if-gt v4, v14, :cond_c

    if-ge v14, v15, :cond_c

    add-int/lit8 v14, v14, -0x30

    invoke-static {v12}, Lkotlin/time/B;->f(Lkotlin/time/B;)J

    move-result-wide v19

    cmp-long v4, v5, v19

    if-gtz v4, :cond_8

    invoke-static {v12}, Lkotlin/time/B;->f(Lkotlin/time/B;)J

    move-result-wide v19

    cmp-long v4, v5, v19

    move-wide/from16 v19, v10

    if-nez v4, :cond_7

    int-to-long v10, v14

    invoke-static {v12}, Lkotlin/time/B;->d(Lkotlin/time/B;)J

    move-result-wide v21

    cmp-long v4, v10, v21

    if-lez v4, :cond_7

    goto :goto_6

    :cond_7
    const/4 v3, 0x3

    shl-long v3, v5, v3

    const/4 v10, 0x1

    shl-long/2addr v5, v10

    add-long/2addr v3, v5

    int-to-long v5, v14

    add-long/2addr v5, v3

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v18

    move-wide/from16 v10, v19

    const/16 v15, 0x30

    goto :goto_5

    :cond_8
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v13, v1, :cond_9

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-gt v2, v1, :cond_9

    if-ge v1, v15, :cond_9

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_9
    if-nez p3, :cond_a

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move/from16 v18, v4

    :cond_c
    move-wide/from16 v19, v10

    if-eq v13, v2, :cond_23

    if-eq v13, v1, :cond_23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_d

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_17

    add-int/lit8 v2, v13, 0x1

    sget-object v4, Lkotlin/time/p;->a:Lkotlin/time/p;

    add-int/lit8 v4, v13, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v11, v2

    const/4 v14, 0x0

    :goto_8
    if-ge v11, v4, :cond_e

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v22, v4

    const/16 v4, 0x30

    if-gt v4, v12, :cond_e

    if-ge v12, v15, :cond_e

    shl-int/lit8 v4, v14, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int/2addr v4, v14

    add-int/lit8 v12, v12, -0x30

    add-int v14, v4, v12

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v22

    goto :goto_8

    :cond_e
    sub-int v4, v11, v2

    rsub-int/lit8 v4, v4, 0x6

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v4, :cond_f

    shl-int/lit8 v22, v14, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int v14, v22, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v4, v11, 0x9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v12, v11

    const/16 v22, 0x0

    :goto_a
    if-ge v12, v4, :cond_10

    move/from16 v23, v4

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v24, v13

    const/16 v13, 0x30

    if-gt v13, v4, :cond_11

    if-ge v4, v15, :cond_11

    shl-int/lit8 v13, v22, 0x3

    shl-int/lit8 v22, v22, 0x1

    add-int v13, v13, v22

    add-int/lit8 v4, v4, -0x30

    add-int v22, v13, v4

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v23

    move/from16 v13, v24

    goto :goto_a

    :cond_10
    move/from16 v24, v13

    :cond_11
    sub-int v4, v12, v11

    rsub-int/lit8 v4, v4, 0x9

    move/from16 v11, v22

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v4, :cond_12

    shl-int/lit8 v22, v11, 0x3

    shl-int/lit8 v11, v11, 0x1

    add-int v11, v22, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v12, v4, :cond_13

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v13, 0x30

    if-gt v13, v4, :cond_13

    if-ge v4, v15, :cond_13

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_13
    if-eq v12, v2, :cond_15

    if-ne v12, v1, :cond_14

    goto :goto_d

    :cond_14
    int-to-long v2, v14

    const v4, 0x3b9aca00

    int-to-long v13, v4

    mul-long/2addr v2, v13

    int-to-long v13, v11

    add-long/2addr v2, v13

    move v13, v12

    move/from16 v4, v24

    goto :goto_e

    :cond_15
    :goto_d
    if-nez p3, :cond_16

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v24, v13

    const/4 v2, -0x1

    move v4, v2

    const-wide/16 v2, 0x0

    :goto_e
    invoke-static {v0, v13}, Lkotlin/time/j;->k(Ljava/lang/String;I)Lkotlin/time/k;

    move-result-object v11

    if-nez v11, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown duration unit short name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_18

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    if-eqz v7, :cond_1b

    invoke-virtual {v7, v11}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-gtz v7, :cond_1b

    if-nez p3, :cond_1a

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected order of duration components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    sget-object v7, Lkotlin/time/j$a;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v7, v7, v12

    const/4 v12, 0x1

    if-eq v7, v12, :cond_1d

    const/4 v14, 0x2

    if-eq v7, v14, :cond_1c

    invoke-static {v5, v6, v11}, Lkotlin/time/n;->f(JLkotlin/time/k;)J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Lkotlin/time/j;->j(JJ)J

    move-result-wide v5

    move-wide v8, v5

    goto :goto_10

    :cond_1c
    const v7, 0xf4240

    int-to-long v14, v7

    div-long v16, v5, v14

    add-long v8, v8, v16

    rem-long/2addr v5, v14

    add-long v5, v19, v5

    :goto_f
    move-wide/from16 v19, v5

    goto :goto_10

    :cond_1d
    const-wide/16 v14, 0x3e8

    div-long v16, v5, v14

    add-long v8, v8, v16

    const-wide v16, 0x431bde82d7aL

    cmp-long v7, v8, v16

    if-gtz v7, :cond_1e

    rem-long/2addr v5, v14

    mul-long/2addr v5, v14

    goto :goto_f

    :cond_1e
    :goto_10
    invoke-static {v11}, Lkotlin/time/j;->u(Lkotlin/time/k;)I

    move-result v5

    add-int/2addr v5, v13

    if-eqz v10, :cond_22

    if-ge v5, v1, :cond_20

    if-nez p3, :cond_1f

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fractional component must be last"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    sget-object v6, Lkotlin/time/k;->MINUTES:Lkotlin/time/k;

    invoke-virtual {v11, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-ltz v6, :cond_21

    sub-int v6, v5, v4

    const/16 v7, 0xf

    if-le v6, v7, :cond_21

    invoke-static {v11}, Lkotlin/time/j;->u(Lkotlin/time/k;)I

    move-result v2

    sub-int v2, v5, v2

    invoke-static {v0, v4, v2, v11}, Lkotlin/time/j;->I(Ljava/lang/String;IILkotlin/time/k;)J

    move-result-wide v2

    goto :goto_11

    :cond_21
    invoke-static {v2, v3, v11}, Lkotlin/time/j;->q(JLkotlin/time/k;)J

    move-result-wide v2

    :goto_11
    add-long v2, v19, v2

    move-object v7, v11

    move/from16 v4, v18

    const/4 v12, 0x0

    move-wide v10, v2

    move v2, v5

    goto/16 :goto_1

    :cond_22
    move v2, v5

    move-object v7, v11

    move/from16 v4, v18

    move-wide/from16 v10, v19

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_23
    if-nez p3, :cond_24

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move-wide/from16 v19, v10

    sget-object v0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    invoke-static {v8, v9, v0}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide v0

    sget-object v2, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    move-wide/from16 v5, v19

    invoke-static {v5, v6, v2}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/h;->W(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final G(Ljava/lang/String;ZZ)J
    .locals 10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->p()J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The string is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    move v1, v0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v0

    move v1, v3

    :goto_1
    if-lez v1, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v1, :cond_6

    if-nez p2, :cond_5

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->p()J

    move-result-wide p0

    return-wide p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No components"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_7

    add-int/2addr v1, v3

    invoke-static {p0, v1, p2}, Lkotlin/time/j;->J(Ljava/lang/String;IZ)J

    move-result-wide p0

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_9

    if-nez p2, :cond_8

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->p()J

    move-result-wide p0

    return-wide p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, ""

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    const/16 v3, 0x8

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x1

    const-string v6, "Infinity"

    const/4 v7, 0x0

    move-object v4, p0

    move v5, v1

    invoke-static/range {v4 .. v9}, Lag/K;->u2(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->o()J

    move-result-wide p0

    goto :goto_2

    :cond_a
    invoke-static {p0, v1, v0, p2}, Lkotlin/time/j;->F(Ljava/lang/String;IZZ)J

    move-result-wide p0

    :goto_2
    if-eqz v2, :cond_b

    sget-object p2, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p2}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/h;->u(JJ)Z

    move-result p2

    if-nez p2, :cond_b

    invoke-static {p0, p1}, Lkotlin/time/h;->l0(J)J

    move-result-wide p0

    :cond_b
    return-wide p0
.end method

.method public static synthetic H(Ljava/lang/String;ZZILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlin/time/j;->G(Ljava/lang/String;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final I(Ljava/lang/String;IILkotlin/time/k;)J
    .locals 1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p3}, Lkotlin/time/j;->r(Lkotlin/time/k;)J

    move-result-wide p2

    long-to-double p2, p2

    mul-double/2addr p0, p2

    invoke-static {p0, p1}, LRf/d;->M0(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final J(Ljava/lang/String;IZ)J
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    move/from16 v3, p1

    if-ne v3, v1, :cond_1

    if-nez p2, :cond_0

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x54

    if-ne v12, v13, :cond_5

    if-nez v11, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v3, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v13, Lkotlin/time/B;->e:Lkotlin/time/B$a;

    invoke-virtual {v13}, Lkotlin/time/B$a;->b()Lkotlin/time/B;

    move-result-object v13

    invoke-static {v13}, Lkotlin/time/B;->a(Lkotlin/time/B;)Z

    move-result v15

    const/16 v1, 0x2d

    const/16 v4, 0x2b

    if-eqz v15, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v4, :cond_7

    if-eq v5, v1, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v3, 0x1

    const/4 v15, -0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v3, 0x1

    :goto_2
    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    :goto_3
    move v5, v3

    goto :goto_2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x30

    if-ge v5, v1, :cond_9

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_9

    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0x2b

    goto :goto_4

    :cond_9
    const-wide/16 v16, 0x0

    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v14, 0x3a

    if-ge v5, v1, :cond_13

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v4, v1, :cond_13

    if-ge v1, v14, :cond_13

    add-int/lit8 v1, v1, -0x30

    invoke-static {v13}, Lkotlin/time/B;->f(Lkotlin/time/B;)J

    move-result-wide v19

    cmp-long v19, v16, v19

    if-gtz v19, :cond_c

    invoke-static {v13}, Lkotlin/time/B;->f(Lkotlin/time/B;)J

    move-result-wide v19

    cmp-long v19, v16, v19

    if-nez v19, :cond_a

    move/from16 v19, v15

    int-to-long v14, v1

    invoke-static {v13}, Lkotlin/time/B;->d(Lkotlin/time/B;)J

    move-result-wide v21

    cmp-long v14, v14, v21

    if-lez v14, :cond_b

    move/from16 v22, v5

    :goto_6
    const/16 v18, 0x1

    goto :goto_7

    :cond_a
    move/from16 v19, v15

    :cond_b
    const/4 v14, 0x3

    shl-long v14, v16, v14

    const/16 v18, 0x1

    shl-long v16, v16, v18

    add-long v14, v14, v16

    move/from16 v22, v5

    int-to-long v4, v1

    add-long v16, v14, v4

    add-int/lit8 v5, v22, 0x1

    move/from16 v15, v19

    const/16 v4, 0x30

    goto :goto_5

    :cond_c
    move/from16 v22, v5

    move/from16 v19, v15

    goto :goto_6

    :goto_7
    move/from16 v5, v22

    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_d

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x30

    if-gt v4, v1, :cond_d

    const/16 v4, 0x3a

    if-ge v1, v4, :cond_d

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v5, v1, :cond_11

    const/16 v1, 0x2b

    if-eq v12, v1, :cond_e

    const/16 v1, 0x2d

    if-eq v12, v1, :cond_e

    const/4 v14, 0x0

    goto :goto_9

    :cond_e
    move/from16 v14, v18

    :goto_9
    add-int/2addr v3, v14

    if-ne v5, v3, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {v13}, Lkotlin/time/B;->e(Lkotlin/time/B;)J

    move-result-wide v16

    :cond_10
    move-wide/from16 v3, v16

    goto :goto_c

    :cond_11
    :goto_a
    if-nez p2, :cond_12

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move/from16 v22, v5

    move/from16 v19, v15

    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    move/from16 v5, v22

    if-eq v5, v1, :cond_29

    const/16 v1, 0x2b

    if-eq v12, v1, :cond_14

    const/16 v1, 0x2d

    if-eq v12, v1, :cond_14

    const/4 v14, 0x0

    goto :goto_b

    :cond_14
    move/from16 v14, v18

    :goto_b
    add-int/2addr v3, v14

    if-ne v5, v3, :cond_10

    goto/16 :goto_15

    :goto_c
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x2e

    if-ne v1, v12, :cond_1d

    add-int/lit8 v1, v5, 0x1

    sget-object v9, Lkotlin/time/p;->a:Lkotlin/time/p;

    add-int/lit8 v5, v5, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v9, v1

    const/4 v10, 0x0

    :goto_d
    if-ge v9, v5, :cond_15

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-gt v13, v12, :cond_15

    const/16 v13, 0x3a

    if-ge v12, v13, :cond_15

    shl-int/lit8 v13, v10, 0x3

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v13, v10

    add-int/lit8 v12, v12, -0x30

    add-int v10, v13, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_15
    sub-int v5, v9, v1

    rsub-int/lit8 v5, v5, 0x6

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v5, :cond_16

    shl-int/lit8 v13, v10, 0x3

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_16
    add-int/lit8 v5, v9, 0x9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v12, v9

    const/4 v13, 0x0

    :goto_f
    if-ge v12, v5, :cond_17

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-gt v15, v14, :cond_17

    const/16 v15, 0x3a

    if-ge v14, v15, :cond_17

    shl-int/lit8 v15, v13, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v13

    add-int/lit8 v14, v14, -0x30

    add-int v13, v15, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_17
    sub-int v5, v12, v9

    rsub-int/lit8 v5, v5, 0x9

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v5, :cond_18

    shl-int/lit8 v14, v13, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_18
    move v5, v12

    :goto_11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_19

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v12, 0x30

    if-gt v12, v9, :cond_19

    const/16 v14, 0x3a

    if-ge v9, v14, :cond_19

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_19
    if-eq v5, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v5, v1, :cond_1b

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x53

    if-eq v1, v9, :cond_1a

    goto :goto_12

    :cond_1a
    int-to-long v9, v10

    const v1, 0x3b9aca00

    int-to-long v14, v1

    mul-long/2addr v9, v14

    int-to-long v12, v13

    add-long/2addr v9, v12

    move/from16 v14, v19

    int-to-long v12, v14

    sget-object v1, Lkotlin/time/k;->SECONDS:Lkotlin/time/k;

    invoke-static {v9, v10, v1}, Lkotlin/time/j;->q(JLkotlin/time/k;)J

    move-result-wide v9

    mul-long/2addr v12, v9

    move-wide v9, v12

    goto :goto_13

    :cond_1b
    :goto_12
    if-nez p2, :cond_1c

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    move/from16 v14, v19

    :goto_13
    invoke-static {v0, v5}, Lkotlin/time/j;->z(Ljava/lang/String;I)Lkotlin/time/k;

    move-result-object v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown duration unit short name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1e

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    if-eqz v6, :cond_21

    invoke-virtual {v6, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    if-gtz v6, :cond_21

    if-nez p2, :cond_20

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected order of duration components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    sget-object v6, Lkotlin/time/k;->DAYS:Lkotlin/time/k;

    if-ne v1, v6, :cond_24

    if-eqz v11, :cond_23

    if-nez p2, :cond_22

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    int-to-long v6, v14

    invoke-static {v3, v4, v1}, Lkotlin/time/n;->f(JLkotlin/time/k;)J

    move-result-wide v3

    mul-long/2addr v6, v3

    move-wide v7, v6

    goto :goto_14

    :cond_24
    if-nez v11, :cond_26

    if-nez p2, :cond_25

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    int-to-long v12, v14

    invoke-static {v3, v4, v1}, Lkotlin/time/n;->f(JLkotlin/time/k;)J

    move-result-wide v3

    mul-long/2addr v12, v3

    invoke-static {v7, v8, v12, v13}, Lkotlin/time/j;->j(JJ)J

    move-result-wide v3

    const-wide v6, 0x7fffffffffffc0deL

    cmp-long v6, v3, v6

    if-nez v6, :cond_28

    if-nez p2, :cond_27

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    move-wide v7, v3

    :goto_14
    add-int/lit8 v3, v5, 0x1

    move-object v6, v1

    goto/16 :goto_0

    :cond_29
    :goto_15
    if-nez p2, :cond_2a

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->p()J

    move-result-wide v0

    return-wide v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    sget-object v0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    invoke-static {v7, v8, v0}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide v0

    sget-object v2, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    invoke-static {v9, v10, v2}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/h;->W(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final K(JJ)Z
    .locals 0
    .annotation build LEf/f;
    .end annotation

    xor-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final L(DJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/h;->X(JD)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final M(IJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    invoke-static {p1, p2, p0}, Lkotlin/time/h;->Y(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final N(DLkotlin/time/k;)J
    .locals 4
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/m;->a(DLkotlin/time/k;Lkotlin/time/k;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, LRf/d;->M0(D)J

    move-result-wide v0

    const-wide v2, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-wide v2, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-static {v0, v1}, Lkotlin/time/j;->o(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/m;->a(DLkotlin/time/k;Lkotlin/time/k;)D

    move-result-wide p0

    invoke-static {p0, p1}, LRf/d;->M0(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->n(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final O(ILkotlin/time/k;)J
    .locals 2
    .param p1    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/k;->SECONDS:Lkotlin/time/k;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    sget-object p0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    invoke-static {v0, v1, p1, p0}, Lkotlin/time/m;->c(JLkotlin/time/k;Lkotlin/time/k;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->o(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final P(JLkotlin/time/k;)J
    .locals 6
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkotlin/time/m;->c(JLkotlin/time/k;Lkotlin/time/k;)J

    move-result-wide v1

    neg-long v3, v1

    cmp-long v3, v3, p0

    if-gtz v3, :cond_0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_0

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/m;->c(JLkotlin/time/k;Lkotlin/time/k;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->o(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {p0, p1}, LRf/d;->V(J)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, p1, v2, v3}, LVf/u;->x(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Lkotlin/time/n;->f(JLkotlin/time/k;)J

    move-result-wide p0

    mul-long/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/time/j;->m(J)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2, v0}, Lkotlin/time/m;->b(JLkotlin/time/k;Lkotlin/time/k;)J

    move-result-wide v0

    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v0 .. v5}, LVf/u;->M(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->m(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final synthetic a(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/j;->j(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/time/j;->l(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(J)J
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/j;->m(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic d(J)J
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/j;->n(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic e(J)J
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/j;->o(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic f(J)J
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/j;->p(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic g(J)J
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/j;->A(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic h(J)J
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/j;->D(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic i(Ljava/lang/String;ZZ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlin/time/j;->G(Ljava/lang/String;ZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final j(JJ)J
    .locals 7

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p0, v0

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    if-eqz v2, :cond_3

    cmp-long v2, p0, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    cmp-long v0, p2, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-long v1, p0, p2

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static/range {v1 .. v6}, LVf/u;->M(JJJ)J

    move-result-wide p0

    goto :goto_2

    :cond_2
    :goto_0
    move-wide p0, p2

    goto :goto_2

    :cond_3
    :goto_1
    cmp-long v2, v3, p2

    if-gez v2, :cond_4

    cmp-long v0, p2, v0

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    xor-long/2addr p2, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-ltz p2, :cond_5

    goto :goto_2

    :cond_5
    const-wide p0, 0x7fffffffffffc0deL

    :goto_2
    return-wide p0
.end method

.method public static final k(Ljava/lang/String;I)Lkotlin/time/k;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0}, Lag/P;->C3(Ljava/lang/CharSequence;)I

    move-result v1

    if-ge p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 p1, 0x64

    if-eq v0, p1, :cond_7

    const/16 p1, 0x68

    if-eq v0, p1, :cond_6

    const/16 p1, 0x73

    if-eq v0, p1, :cond_5

    const/16 v1, 0x75

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ne p0, p1, :cond_8

    sget-object v2, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    goto :goto_1

    :cond_2
    if-ne p0, p1, :cond_3

    sget-object v2, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    goto :goto_1

    :cond_3
    sget-object v2, Lkotlin/time/k;->MINUTES:Lkotlin/time/k;

    goto :goto_1

    :cond_4
    if-ne p0, p1, :cond_8

    sget-object v2, Lkotlin/time/k;->MICROSECONDS:Lkotlin/time/k;

    goto :goto_1

    :cond_5
    sget-object v2, Lkotlin/time/k;->SECONDS:Lkotlin/time/k;

    goto :goto_1

    :cond_6
    sget-object v2, Lkotlin/time/k;->HOURS:Lkotlin/time/k;

    goto :goto_1

    :cond_7
    sget-object v2, Lkotlin/time/k;->DAYS:Lkotlin/time/k;

    :cond_8
    :goto_1
    return-object v2
.end method

.method public static final l(JI)J
    .locals 3

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    int-to-long v1, p2

    add-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lkotlin/time/h$a;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final m(J)J
    .locals 3

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lkotlin/time/h$a;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final n(J)J
    .locals 6

    const-wide v0, -0x431bde82d7aL

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x431bde82d7bL

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/j;->A(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->o(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, LVf/u;->M(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->m(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final o(J)J
    .locals 2

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    const/4 v1, 0x1

    shl-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Lkotlin/time/h$a;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final p(J)J
    .locals 2

    const-wide v0, -0x3ffffffffffa14bfL    # -2.0000000001722644

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    const-wide v0, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/j;->o(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/j;->D(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->m(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final q(JLkotlin/time/k;)J
    .locals 2

    long-to-double p0, p0

    invoke-static {p2}, Lkotlin/time/j;->s(Lkotlin/time/k;)D

    move-result-wide v0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, LRf/d;->M0(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final r(Lkotlin/time/k;)J
    .locals 3

    sget-object v0, Lkotlin/time/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const-wide v0, 0x4e94914f0000L

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for fallback fraction multiplier"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v0, 0x34630b8a000L

    goto :goto_0

    :cond_2
    const-wide v0, 0xdf8475800L

    :goto_0
    return-wide v0
.end method

.method public static final s(Lkotlin/time/k;)D
    .locals 3

    sget-object v0, Lkotlin/time/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-wide v0, 0x3fb61e4f765fd8aeL    # 0.0864

    goto :goto_0

    :pswitch_1
    const-wide v0, 0x3f6d7dbf487fcb92L    # 0.0036

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x3f0f75104d551d69L    # 6.0E-5

    goto :goto_0

    :pswitch_3
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    goto :goto_0

    :pswitch_4
    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    goto :goto_0

    :pswitch_5
    const-wide v0, 0x3cd203af9ee75616L    # 1.0E-15

    goto :goto_0

    :pswitch_6
    const-wide v0, 0x3d719799812dea11L    # 1.0E-12

    :goto_0
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic t(Lkotlin/time/k;)V
    .locals 0

    return-void
.end method

.method public static final u(Lkotlin/time/k;)I
    .locals 3

    sget-object v0, Lkotlin/time/j$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static final v(ZLjava/lang/String;)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->p()J

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w(ZLjava/lang/String;ILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->p()J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final x(J)Z
    .locals 2
    .annotation build LEf/f;
    .end annotation

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final y(J)Z
    .locals 2
    .annotation build LEf/f;
    .end annotation

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final z(Ljava/lang/String;I)Lkotlin/time/k;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x44

    if-eq p0, p1, :cond_3

    const/16 p1, 0x48

    if-eq p0, p1, :cond_2

    const/16 p1, 0x4d

    if-eq p0, p1, :cond_1

    const/16 p1, 0x53

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/time/k;->SECONDS:Lkotlin/time/k;

    goto :goto_0

    :cond_1
    sget-object p0, Lkotlin/time/k;->MINUTES:Lkotlin/time/k;

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/time/k;->HOURS:Lkotlin/time/k;

    goto :goto_0

    :cond_3
    sget-object p0, Lkotlin/time/k;->DAYS:Lkotlin/time/k;

    :goto_0
    return-object p0
.end method
