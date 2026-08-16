.class public Lag/I;
.super Lag/H;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,569:1\n267#1,7:570\n267#1,7:577\n278#1,8:584\n278#1,8:592\n1#2:600\n1656#3,3:601\n1656#3,3:604\n1656#3,3:607\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:570,7\n173#1:577,7\n253#1:584,8\n264#1:592,8\n430#1:601,3\n439#1:604,3\n452#1:607,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nStringNumberConversionsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,569:1\n267#1,7:570\n267#1,7:577\n278#1,8:584\n278#1,8:592\n1#2:600\n1656#3,3:601\n1656#3,3:604\n1656#3,3:607\n*S KotlinDebug\n*F\n+ 1 StringNumberConversionsJVM.kt\nkotlin/text/StringsKt__StringNumberConversionsJVMKt\n*L\n166#1:570,7\n173#1:577,7\n253#1:584,8\n264#1:592,8\n430#1:601,3\n439#1:604,3\n452#1:607,3\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lag/H;-><init>()V

    return-void
.end method

.method public static final E0(Ljava/lang/String;IIZLMf/l;)I
    .locals 6
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "LMf/l<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p4, v1}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    const/4 v3, -0x1

    if-le v0, p2, :cond_3

    if-eqz p3, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_2
    if-gt v4, p2, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p4, v5}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-eq v0, v4, :cond_5

    move p4, v2

    goto :goto_3

    :cond_5
    move p4, v1

    :goto_3
    move v0, v4

    goto :goto_4

    :cond_6
    move p4, v1

    :goto_4
    if-nez p1, :cond_c

    if-nez p4, :cond_c

    if-eqz p3, :cond_7

    return v3

    :cond_7
    add-int/lit8 p1, v0, 0x2

    if-ne p2, p1, :cond_8

    const-string p1, "NaN"

    goto :goto_5

    :cond_8
    add-int/lit8 p1, v0, 0x7

    if-ne p2, p1, :cond_9

    const-string p1, "Infinity"

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    :goto_5
    if-nez p1, :cond_a

    return v3

    :cond_a
    invoke-static {p0, p1, v0, v1}, Lag/P;->H3(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    if-ne p0, v0, :cond_b

    add-int/lit8 v3, p2, 0x1

    :cond_b
    return v3

    :cond_c
    return v0
.end method

.method public static final F0(Ljava/lang/String;IILMf/l;)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "LMf/l<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-gt p1, p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static final G0(C)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    or-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static final H0(Ljava/lang/String;IILMf/l;)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "LMf/l<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-le p2, p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p3, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static final I0(II)Ljava/lang/String;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    add-int/lit8 v0, p0, 0x2

    if-ne p1, v0, :cond_0

    const-string p0, "NaN"

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    if-ne p1, p0, :cond_1

    const-string p0, "Infinity"

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final J0(C)Z
    .locals 1
    .annotation build LEf/f;
    .end annotation

    add-int/lit8 p0, p0, -0x30

    const v0, 0xffff

    and-int/2addr p0, v0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final K0(C)Z
    .locals 1
    .annotation build LEf/f;
    .end annotation

    or-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x61

    const v0, 0xffff

    and-int/2addr p0, v0

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final L0(Ljava/lang/String;)Z
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    move v5, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_5

    sub-int/2addr v5, v0

    if-lez v5, :cond_4

    move v1, v4

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_7

    sub-int/2addr v5, v0

    if-le v5, v4, :cond_6

    move v1, v4

    :cond_6
    return v1

    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_8

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v5, v0, :cond_9

    return v4

    :cond_9
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x65

    if-eq v0, v6, :cond_a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x45

    if-eq v0, v6, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v0, v6, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v2, :cond_c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_d

    :cond_c
    add-int/lit8 v0, v5, 0x2

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_e

    return v1

    :cond_e
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v0, p0, :cond_10

    move v1, v4

    :cond_10
    return v1
.end method

.method public static final M0(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x20

    if-gt v4, v1, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-le v4, v1, :cond_1

    return v3

    :cond_1
    :goto_1
    if-le v1, v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v6, v5, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    if-le v4, v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x2e

    const/16 v10, 0xa

    const/16 v11, 0x30

    const v12, 0xffff

    const/4 v13, -0x1

    if-ne v6, v11, :cond_12

    add-int/lit8 v6, v4, 0x1

    if-le v6, v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v5

    const/16 v14, 0x78

    if-ne v6, v14, :cond_12

    add-int/lit8 v4, v4, 0x2

    move v6, v4

    :goto_2
    const/4 v14, 0x6

    if-gt v6, v1, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    and-int v7, v16, v12

    if-ge v7, v10, :cond_7

    goto :goto_3

    :cond_7
    or-int/lit8 v7, v15, 0x20

    add-int/lit8 v7, v7, -0x61

    and-int/2addr v7, v12

    if-ge v7, v14, :cond_8

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x2d

    goto :goto_2

    :cond_8
    if-eq v4, v6, :cond_9

    move v4, v2

    goto :goto_4

    :cond_9
    move v4, v3

    :goto_4
    if-le v6, v1, :cond_a

    :goto_5
    move v4, v13

    goto :goto_9

    :cond_a
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_d

    add-int/lit8 v6, v6, 0x1

    move v7, v6

    :goto_6
    if-gt v7, v1, :cond_c

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v16, v15, -0x30

    and-int v8, v16, v12

    if-ge v8, v10, :cond_b

    goto :goto_7

    :cond_b
    or-int/lit8 v8, v15, 0x20

    add-int/lit8 v8, v8, -0x61

    and-int/2addr v8, v12

    if-ge v8, v14, :cond_c

    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x2b

    goto :goto_6

    :cond_c
    if-eq v6, v7, :cond_e

    move v6, v2

    goto :goto_8

    :cond_d
    move v7, v6

    :cond_e
    move v6, v3

    :goto_8
    if-nez v4, :cond_f

    if-nez v6, :cond_f

    goto :goto_5

    :cond_f
    move v4, v7

    :goto_9
    if-eq v4, v13, :cond_11

    if-le v4, v1, :cond_10

    goto :goto_a

    :cond_10
    move v6, v2

    goto :goto_b

    :cond_11
    :goto_a
    return v3

    :cond_12
    move v6, v3

    :goto_b
    if-nez v6, :cond_1f

    move v7, v4

    :goto_c
    if-gt v7, v1, :cond_13

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int/2addr v8, v11

    and-int/2addr v8, v12

    if-ge v8, v10, :cond_13

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_13
    if-eq v4, v7, :cond_14

    move v4, v2

    goto :goto_d

    :cond_14
    move v4, v3

    :goto_d
    if-le v7, v1, :cond_15

    move v4, v7

    goto :goto_11

    :cond_15
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_17

    add-int/lit8 v7, v7, 0x1

    move v8, v7

    :goto_e
    if-gt v8, v1, :cond_16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v11

    and-int/2addr v9, v12

    if-ge v9, v10, :cond_16

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_16
    if-eq v7, v8, :cond_18

    move v7, v2

    goto :goto_f

    :cond_17
    move v8, v7

    :cond_18
    move v7, v3

    :goto_f
    if-nez v4, :cond_1d

    if-nez v7, :cond_1d

    add-int/lit8 v4, v8, 0x2

    if-ne v1, v4, :cond_19

    const-string v4, "NaN"

    goto :goto_10

    :cond_19
    add-int/lit8 v4, v8, 0x7

    if-ne v1, v4, :cond_1a

    const-string v4, "Infinity"

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    if-nez v4, :cond_1c

    :cond_1b
    move v4, v13

    goto :goto_11

    :cond_1c
    invoke-static {v0, v4, v8, v3}, Lag/P;->H3(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v4

    if-ne v4, v8, :cond_1b

    add-int/lit8 v4, v1, 0x1

    goto :goto_11

    :cond_1d
    move v4, v8

    :goto_11
    if-ne v4, v13, :cond_1e

    return v3

    :cond_1e
    if-le v4, v1, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    or-int/2addr v8, v5

    if-eqz v6, :cond_20

    const/16 v9, 0x70

    goto :goto_12

    :cond_20
    const/16 v9, 0x65

    :goto_12
    const/16 v13, 0x64

    const/16 v14, 0x66

    if-eq v8, v9, :cond_23

    if-nez v6, :cond_22

    if-eq v8, v14, :cond_21

    if-ne v8, v13, :cond_22

    :cond_21
    if-le v7, v1, :cond_22

    goto :goto_13

    :cond_22
    move v2, v3

    :goto_13
    return v2

    :cond_23
    if-le v7, v1, :cond_24

    return v3

    :cond_24
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2b

    if-eq v6, v8, :cond_25

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x2d

    if-ne v6, v8, :cond_26

    :cond_25
    add-int/lit8 v7, v4, 0x2

    if-le v7, v1, :cond_26

    return v3

    :cond_26
    :goto_14
    if-gt v7, v1, :cond_27

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v11

    and-int/2addr v4, v12

    if-ge v4, v10, :cond_27

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_27
    if-le v7, v1, :cond_28

    return v2

    :cond_28
    if-ne v7, v1, :cond_2b

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    or-int/2addr v0, v5

    if-eq v0, v14, :cond_2a

    if-ne v0, v13, :cond_29

    goto :goto_15

    :cond_29
    move v2, v3

    :cond_2a
    :goto_15
    return v2

    :cond_2b
    return v3
.end method

.method public static final N0(Ljava/lang/String;LMf/l;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "LMf/l<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lag/I;->L0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static final O0(Ljava/lang/String;LMf/l;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "LMf/l<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lag/I;->M0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static final P0(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final Q0(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public static final R0(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lag/I;->L0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static final S0(Ljava/lang/String;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/math/MathContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mathContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lag/I;->L0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static final T0(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final U0(Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final V0(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lag/I;->W0(Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static final W0(Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.2"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lag/e;->a(I)I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    move v2, v3

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lag/e;->b(CI)I

    move-result v3

    if-gez v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lag/e;->b(CI)I

    move-result v0

    if-gez v0, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-direct {v0, p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method public static final X0(Ljava/lang/String;)Z
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final Y0(Ljava/lang/String;)B
    .locals 1
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    return p0
.end method

.method public static final Z0(Ljava/lang/String;I)B
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result p0

    return p0
.end method

.method public static final a1(Ljava/lang/String;)D
    .locals 2
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final b1(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lag/I;->M0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static final c1(Ljava/lang/String;)F
    .locals 1
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static final d1(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lag/I;->M0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static final e1(Ljava/lang/String;)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final f1(Ljava/lang/String;I)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final g1(Ljava/lang/String;)J
    .locals 2
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final h1(Ljava/lang/String;I)J
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final i1(Ljava/lang/String;)S
    .locals 1
    .annotation build LEf/f;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method public static final j1(Ljava/lang/String;I)S
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result p0

    return p0
.end method

.method public static final k1(BI)Ljava/lang/String;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final l1(II)Ljava/lang/String;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final m1(JI)Ljava/lang/String;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    invoke-static {p2}, Lag/e;->a(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final n1(SI)Ljava/lang/String;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    invoke-static {p1}, Lag/e;->a(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
