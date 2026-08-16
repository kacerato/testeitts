.class public LKb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0x14

    const/16 v1, 0x12

    const/16 v2, 0x11

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez p0, :cond_0

    return v6

    :cond_0
    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v8, "textCapSentences"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x19

    goto/16 :goto_0

    :sswitch_1
    const-string v8, "datetime"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string v8, "numberDecimal"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string v8, "textAutoCorrect"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string v8, "textEmailAddress"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x15

    goto/16 :goto_0

    :sswitch_5
    const-string v8, "textLongMessage"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    move v7, v0

    goto/16 :goto_0

    :sswitch_6
    const-string v8, "textFilter"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v8, "textCapCharacters"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    move v7, v1

    goto/16 :goto_0

    :sswitch_8
    const-string v8, "numberSigned"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    move v7, v2

    goto/16 :goto_0

    :sswitch_9
    const-string v8, "textWebEditText"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string v8, "textShortMessage"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v8, "textPassword"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v8, "textWebPassword"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string v8, "textPersonName"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_e
    const-string v8, "numberPassword"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string v8, "time"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string v8, "date"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v8, "textCapWords"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_13
    const-string v8, "textMultiLine"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_14
    const-string v8, "textImeMultiLine"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_15
    const-string v8, "number"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    move v7, v3

    goto :goto_0

    :sswitch_16
    const-string v8, "textVisiblePassword"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    move v7, v4

    goto :goto_0

    :sswitch_17
    const-string v8, "textUri"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    move v7, v5

    goto :goto_0

    :sswitch_18
    const-string v8, "textPostalAddress"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    move v7, v6

    goto :goto_0

    :sswitch_19
    const-string v8, "textWebEmailAddress"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    return v6

    :pswitch_0
    const/16 p0, 0x4001

    return p0

    :pswitch_1
    return v3

    :pswitch_2
    const/16 p0, 0x2002

    return p0

    :pswitch_3
    const p0, 0x8001

    return p0

    :pswitch_4
    const/16 p0, 0x21

    return p0

    :pswitch_5
    const/16 p0, 0x51

    return p0

    :pswitch_6
    const/16 p0, 0xb1

    return p0

    :pswitch_7
    const/16 p0, 0x1001

    return p0

    :pswitch_8
    const/16 p0, 0x1002

    return p0

    :pswitch_9
    const/16 p0, 0xa1

    return p0

    :pswitch_a
    const/16 p0, 0x41

    return p0

    :pswitch_b
    const/16 p0, 0x81

    return p0

    :pswitch_c
    const/16 p0, 0xe1

    return p0

    :pswitch_d
    const/16 p0, 0x61

    return p0

    :pswitch_e
    return v1

    :pswitch_f
    return v4

    :pswitch_10
    const/16 p0, 0x24

    return p0

    :pswitch_11
    return v0

    :pswitch_12
    const/16 p0, 0x2001

    return p0

    :pswitch_13
    const p0, 0x20001

    return p0

    :pswitch_14
    const p0, 0x40001

    return p0

    :pswitch_15
    return v5

    :pswitch_16
    const/16 p0, 0x91

    return p0

    :pswitch_17
    return v2

    :pswitch_18
    const/16 p0, 0x71

    return p0

    :pswitch_19
    const/16 p0, 0xd1

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7d548ac1 -> :sswitch_19
        -0x6a683784 -> :sswitch_18
        -0x5482a301 -> :sswitch_17
        -0x4132afc0 -> :sswitch_16
        -0x3da724b7 -> :sswitch_15
        -0x3b815c27 -> :sswitch_14
        -0x3791ede0 -> :sswitch_13
        -0x148f15bc -> :sswitch_12
        0x2eefae -> :sswitch_11
        0x3652cd -> :sswitch_10
        0x65b3d6e -> :sswitch_f
        0x935a104 -> :sswitch_e
        0x245a248d -> :sswitch_d
        0x271faaa2 -> :sswitch_c
        0x388ce6e8 -> :sswitch_b
        0x38fd8db8 -> :sswitch_a
        0x3e13025e -> :sswitch_9
        0x3e49dbc5 -> :sswitch_8
        0x3e9463af -> :sswitch_7
        0x5794a705 -> :sswitch_6
        0x5ab8227e -> :sswitch_5
        0x66f51e85 -> :sswitch_4
        0x6744c44e -> :sswitch_3
        0x6a663bc8 -> :sswitch_2
        0x6ae9bb7b -> :sswitch_1
        0x7fef808b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
