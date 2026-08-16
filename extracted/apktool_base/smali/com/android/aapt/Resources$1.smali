.class synthetic Lcom/android/aapt/Resources$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

.field static final synthetic $SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

.field static final synthetic $SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

.field static final synthetic $SwitchMap$com$android$aapt$Resources$Value$ValueCase:[I

.field static final synthetic $SwitchMap$com$android$aapt$Resources$XmlNode$NodeCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lcom/android/aapt/Resources$XmlNode$NodeCase;->values()[Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$XmlNode$NodeCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/android/aapt/Resources$XmlNode$NodeCase;->ELEMENT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$XmlNode$NodeCase:[I

    sget-object v3, Lcom/android/aapt/Resources$XmlNode$NodeCase;->TEXT:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$XmlNode$NodeCase:[I

    sget-object v4, Lcom/android/aapt/Resources$XmlNode$NodeCase;->NODE_NOT_SET:Lcom/android/aapt/Resources$XmlNode$NodeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->values()[Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    :try_start_3
    sget-object v4, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->NULL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v4, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->EMPTY_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v4, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FLOAT_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v5, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v6, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v5, 0x6

    :try_start_8
    sget-object v6, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v7, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_DECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v6, 0x7

    :try_start_9
    sget-object v7, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v8, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->INT_HEXADECIMAL_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v7, 0x8

    :try_start_a
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->BOOLEAN_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0x9

    aput v10, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB8_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0xa

    aput v10, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_ARGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0xb

    aput v10, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->COLOR_RGB4_VALUE:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0xc

    aput v10, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->DIMENSION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0xd

    aput v10, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->FRACTION_VALUE_DEPRECATED:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    aput v10, v8, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->ONEOFVALUE_NOT_SET:Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/16 v10, 0xf

    aput v10, v8, v9
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->values()[Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    :try_start_12
    sget-object v9, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->ATTR:Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->STYLE:Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->STYLEABLE:Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->ARRAY:Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->PLURAL:Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v4, v8, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->MACRO:Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v5, v8, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v6, v8, v9
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    invoke-static {}, Lcom/android/aapt/Resources$Item$ValueCase;->values()[Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    :try_start_19
    sget-object v9, Lcom/android/aapt/Resources$Item$ValueCase;->REF:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Item$ValueCase;->STR:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Item$ValueCase;->RAW_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v8, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    sget-object v9, Lcom/android/aapt/Resources$Item$ValueCase;->STYLED_STR:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    sget-object v8, Lcom/android/aapt/Resources$Item$ValueCase;->FILE:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v4, v3, v8
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    sget-object v4, Lcom/android/aapt/Resources$Item$ValueCase;->ID:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    sget-object v4, Lcom/android/aapt/Resources$Item$ValueCase;->PRIM:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    sget-object v4, Lcom/android/aapt/Resources$Item$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Item$ValueCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v7, v3, v4
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    invoke-static {}, Lcom/android/aapt/Resources$Value$ValueCase;->values()[Lcom/android/aapt/Resources$Value$ValueCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Value$ValueCase:[I

    :try_start_21
    sget-object v4, Lcom/android/aapt/Resources$Value$ValueCase;->ITEM:Lcom/android/aapt/Resources$Value$ValueCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v1, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Value$ValueCase:[I

    sget-object v3, Lcom/android/aapt/Resources$Value$ValueCase;->COMPOUND_VALUE:Lcom/android/aapt/Resources$Value$ValueCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Value$ValueCase:[I

    sget-object v1, Lcom/android/aapt/Resources$Value$ValueCase;->VALUE_NOT_SET:Lcom/android/aapt/Resources$Value$ValueCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method
