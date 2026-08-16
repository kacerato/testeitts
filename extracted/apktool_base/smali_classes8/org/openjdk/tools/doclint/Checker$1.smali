.class synthetic Lorg/openjdk/tools/doclint/Checker$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/Checker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

.field static final synthetic $SwitchMap$com$sun$tools$doclint$HtmlTag:[I

.field static final synthetic $SwitchMap$com$sun$tools$doclint$HtmlTag$Attr:[I

.field static final synthetic $SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

.field static final synthetic $SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType:[I

.field static final synthetic $SwitchMap$com$sun$tools$doclint$HtmlVersion:[I

.field static final synthetic $SwitchMap$javax$lang$model$element$ElementKind:[I

.field static final synthetic $SwitchMap$javax$lang$model$type$TypeKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    invoke-static {}, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->values()[Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->ALL:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    sget-object v3, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->HTML4:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    sget-object v4, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->INVALID:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    sget-object v5, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->OBSOLETE:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    sget-object v6, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->USE_CSS:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$AttrKind:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;->HTML5:Lorg/openjdk/tools/doclint/HtmlTag$AttrKind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    invoke-static {}, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->values()[Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$Attr:[I

    :try_start_6
    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->NAME:Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$Attr:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->ID:Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$Attr:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->HREF:Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$Attr:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->VALUE:Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$Attr:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$Attr;->BORDER:Lorg/openjdk/tools/doclint/HtmlTag$Attr;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    invoke-static {}, Lorg/openjdk/tools/doclint/HtmlVersion;->values()[Lorg/openjdk/tools/doclint/HtmlVersion;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlVersion:[I

    :try_start_b
    sget-object v7, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML4:Lorg/openjdk/tools/doclint/HtmlVersion;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlVersion:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlVersion;->HTML5:Lorg/openjdk/tools/doclint/HtmlVersion;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    invoke-static {}, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->values()[Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType:[I

    :try_start_d
    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->BLOCK:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->INLINE:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->LIST_ITEM:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->TABLE_ITEM:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag$BlockType:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag$BlockType;->OTHER:Lorg/openjdk/tools/doclint/HtmlTag$BlockType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    invoke-static {}, Lorg/openjdk/source/doctree/DocTree$Kind;->values()[Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    :try_start_12
    sget-object v7, Lorg/openjdk/source/doctree/DocTree$Kind;->START_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    sget-object v7, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    sget-object v7, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK_PLAIN:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$source$doctree$DocTree$Kind:[I

    sget-object v7, Lorg/openjdk/source/doctree/DocTree$Kind;->TEXT:Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    invoke-static {}, Lorg/openjdk/tools/doclint/HtmlTag;->values()[Lorg/openjdk/tools/doclint/HtmlTag;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    :try_start_16
    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag;->H1:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag;->H2:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag;->H3:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag;->H4:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag;->H5:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v6, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v7, Lorg/openjdk/tools/doclint/HtmlTag;->H6:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    const/4 v6, 0x7

    :try_start_1c
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v8, Lorg/openjdk/tools/doclint/HtmlTag;->CAPTION:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v8, Lorg/openjdk/tools/doclint/HtmlTag;->IMG:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0x8

    aput v9, v7, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v8, Lorg/openjdk/tools/doclint/HtmlTag;->SCRIPT:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0x9

    aput v9, v7, v8
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v8, Lorg/openjdk/tools/doclint/HtmlTag;->TABLE:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0xa

    aput v9, v7, v8
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v8, Lorg/openjdk/tools/doclint/HtmlTag;->SECTION:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0xb

    aput v9, v7, v8
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$com$sun$tools$doclint$HtmlTag:[I

    sget-object v8, Lorg/openjdk/tools/doclint/HtmlTag;->ARTICLE:Lorg/openjdk/tools/doclint/HtmlTag;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0xc

    aput v9, v7, v8
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    invoke-static {}, Lorg/openjdk/javax/lang/model/element/ElementKind;->values()[Lorg/openjdk/javax/lang/model/element/ElementKind;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    :try_start_22
    sget-object v8, Lorg/openjdk/javax/lang/model/element/ElementKind;->METHOD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v1, v7, v8
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v8, Lorg/openjdk/javax/lang/model/element/ElementKind;->CONSTRUCTOR:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v8, Lorg/openjdk/javax/lang/model/element/ElementKind;->CLASS:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v2, v7, v8
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v8, Lorg/openjdk/javax/lang/model/element/ElementKind;->ENUM:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v3, v7, v8
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v7, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v8, Lorg/openjdk/javax/lang/model/element/ElementKind;->INTERFACE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v4, v7, v8
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v4, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v7, Lorg/openjdk/javax/lang/model/element/ElementKind;->PACKAGE:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v4, v7
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v4, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$element$ElementKind:[I

    sget-object v5, Lorg/openjdk/javax/lang/model/element/ElementKind;->FIELD:Lorg/openjdk/javax/lang/model/element/ElementKind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v4, v5
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    invoke-static {}, Lorg/openjdk/javax/lang/model/type/TypeKind;->values()[Lorg/openjdk/javax/lang/model/type/TypeKind;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    :try_start_29
    sget-object v5, Lorg/openjdk/javax/lang/model/type/TypeKind;->VOID:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v1, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v4, Lorg/openjdk/javax/lang/model/type/TypeKind;->NONE:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->DECLARED:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lorg/openjdk/tools/doclint/Checker$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    sget-object v1, Lorg/openjdk/javax/lang/model/type/TypeKind;->TYPEVAR:Lorg/openjdk/javax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    return-void
.end method
