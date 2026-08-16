.class public final Lorg/blacksquircle/ui/language/base/model/ColorScheme;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LF6/c;
.end annotation


# instance fields
.field private final attrNameColor:I

.field private final attrValueColor:I

.field private final backgroundColor:I

.field private final commentColor:I

.field private final delimiterBackgroundColor:I

.field private final entityRefColor:I

.field private final findResultBackgroundColor:I

.field private final gutterColor:I

.field private final gutterCurrentLineNumberColor:I

.field private final gutterDividerColor:I

.field private final gutterLineAlert:I

.field private final gutterLineError:I

.field private final gutterTextColor:I

.field private final keywordColor:I

.field private final langConstColor:I

.field private final methodColor:I

.field private final numberColor:I

.field private final operatorColor:I

.field private final preprocessorColor:I

.field private final selectedLineColor:I

.field private final selectionColor:I

.field private final stringColor:I

.field private final suggestionQueryColor:I

.field private final tagColor:I

.field private final tagNameColor:I

.field private final textColor:I

.field private final typeColor:I

.field private final variableColor:I


# direct methods
.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p10    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p11    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p13    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p14    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p15    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p16    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p17    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p18    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p19    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p20    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p21    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p22    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p23    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p24    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p25    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p26    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p27    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p28    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    move v1, p2

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    move v1, p3

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    move v1, p4

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    move v1, p5

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    move v1, p6

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    move v1, p7

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    move v1, p8

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    move v1, p9

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    move v1, p10

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    move v1, p11

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    move v1, p12

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    move v1, p13

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    move/from16 v1, p14

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    move/from16 v1, p15

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    move/from16 v1, p16

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    move/from16 v1, p17

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    move/from16 v1, p18

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    move/from16 v1, p19

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    move/from16 v1, p20

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    move/from16 v1, p21

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    move/from16 v1, p22

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    move/from16 v1, p23

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    move/from16 v1, p24

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    move/from16 v1, p25

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    move/from16 v1, p26

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    move/from16 v1, p27

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    move/from16 v1, p28

    iput v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    return-void
.end method

.method public static synthetic copy$default(Lorg/blacksquircle/ui/language/base/model/ColorScheme;IIIIIIIIIIIIIIIIIIIIIIIIIIIIILjava/lang/Object;)Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p29

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_11

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    goto :goto_11

    :cond_11
    move/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move/from16 p18, v15

    if-eqz v16, :cond_12

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    goto :goto_12

    :cond_12
    move/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p19, v15

    if-eqz v16, :cond_13

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    goto :goto_13

    :cond_13
    move/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move/from16 p20, v15

    if-eqz v16, :cond_14

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    goto :goto_14

    :cond_14
    move/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_15

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    goto :goto_15

    :cond_15
    move/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move/from16 p22, v15

    if-eqz v16, :cond_16

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    goto :goto_16

    :cond_16
    move/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p23, v15

    if-eqz v16, :cond_17

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    goto :goto_17

    :cond_17
    move/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p24, v15

    if-eqz v16, :cond_18

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    goto :goto_18

    :cond_18
    move/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_19

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    goto :goto_19

    :cond_19
    move/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_1a

    iget v15, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    goto :goto_1a

    :cond_1a
    move/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1b

    iget v1, v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    goto :goto_1b

    :cond_1b
    move/from16 v1, p28

    :goto_1b
    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p27, v15

    move/from16 p28, v1

    invoke-virtual/range {p0 .. p28}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->copy(IIIIIIIIIIIIIIIIIIIIIIIIIIII)Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    return v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    return v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    return v0
.end method

.method public final component18()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    return v0
.end method

.method public final component19()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    return v0
.end method

.method public final component20()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    return v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    return v0
.end method

.method public final component22()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    return v0
.end method

.method public final component23()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    return v0
.end method

.method public final component24()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    return v0
.end method

.method public final component25()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    return v0
.end method

.method public final component26()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    return v0
.end method

.method public final component27()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    return v0
.end method

.method public final component28()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    return v0
.end method

.method public final copy(IIIIIIIIIIIIIIIIIIIIIIIIIIII)Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 30
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p10    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p11    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p12    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p13    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p14    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p15    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p16    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p17    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p18    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p19    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p20    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p21    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p22    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p23    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p24    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p25    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p26    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p27    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p28    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    new-instance v29, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object/from16 v0, v29

    invoke-direct/range {v0 .. v28}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    return-object v29
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    iget v3, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    iget p1, p1, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    if-eq v1, p1, :cond_1d

    return v2

    :cond_1d
    return v0
.end method

.method public final getAttrNameColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    return v0
.end method

.method public final getAttrValueColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    return v0
.end method

.method public final getCommentColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    return v0
.end method

.method public final getDelimiterBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    return v0
.end method

.method public final getEntityRefColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    return v0
.end method

.method public final getFindResultBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    return v0
.end method

.method public final getGutterColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    return v0
.end method

.method public final getGutterCurrentLineNumberColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    return v0
.end method

.method public final getGutterDividerColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    return v0
.end method

.method public final getGutterLineAlert()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    return v0
.end method

.method public final getGutterLineError()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    return v0
.end method

.method public final getGutterTextColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    return v0
.end method

.method public final getKeywordColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    return v0
.end method

.method public final getLangConstColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    return v0
.end method

.method public final getMethodColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    return v0
.end method

.method public final getNumberColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    return v0
.end method

.method public final getOperatorColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    return v0
.end method

.method public final getPreprocessorColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    return v0
.end method

.method public final getSelectedLineColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    return v0
.end method

.method public final getSelectionColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    return v0
.end method

.method public final getStringColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    return v0
.end method

.method public final getSuggestionQueryColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    return v0
.end method

.method public final getTagColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    return v0
.end method

.method public final getTagNameColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    return v0
.end method

.method public final getTextColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    return v0
.end method

.method public final getTypeColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    return v0
.end method

.method public final getVariableColor()I
    .locals 1

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorScheme(textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gutterColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gutterDividerColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterDividerColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gutterCurrentLineNumberColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterCurrentLineNumberColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gutterTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterTextColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectedLineColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectedLineColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectionColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->selectionColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suggestionQueryColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->suggestionQueryColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", findResultBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->findResultBackgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delimiterBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->delimiterBackgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->numberColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operatorColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->operatorColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keywordColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->keywordColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", typeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->typeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", langConstColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->langConstColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preprocessorColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->preprocessorColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", variableColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->variableColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", methodColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->methodColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stringColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->stringColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->commentColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagNameColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->tagNameColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attrNameColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrNameColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attrValueColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->attrValueColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entityRefColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->entityRefColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gutterLineError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gutterLineAlert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->gutterLineAlert:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
