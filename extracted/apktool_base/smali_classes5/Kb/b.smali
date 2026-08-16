.class public LKb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v6, "\\|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v6, p0

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v6, :cond_f

    aget-object v9, p0, v7

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v11, "center_horizontal"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v10, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v11, "start"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v10, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v11, "right"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v10, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v11, "left"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v10, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v11, "fill"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v10, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v11, "top"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_1

    :cond_6
    move v10, v0

    goto/16 :goto_1

    :sswitch_6
    const-string v11, "end"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_1

    :cond_7
    move v10, v1

    goto :goto_1

    :sswitch_7
    const-string v11, "clip_vertical"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_1

    :cond_8
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_8
    const-string v11, "center_vertical"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_1

    :cond_9
    move v10, v2

    goto :goto_1

    :sswitch_9
    const-string v11, "fill_horizontal"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_1

    :cond_a
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_a
    const-string v11, "clip_horizontal"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_1

    :cond_b
    move v10, v3

    goto :goto_1

    :sswitch_b
    const-string v11, "center"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_1

    :cond_c
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_c
    const-string v11, "bottom"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_1

    :cond_d
    move v10, v4

    goto :goto_1

    :sswitch_d
    const-string v11, "fill_vertical"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    goto :goto_1

    :cond_e
    move v10, v5

    :goto_1
    packed-switch v10, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    or-int/2addr v8, v4

    goto :goto_3

    :pswitch_1
    const v9, 0x800003

    :goto_2
    or-int/2addr v8, v9

    goto :goto_3

    :pswitch_2
    or-int/2addr v8, v2

    goto :goto_3

    :pswitch_3
    or-int/2addr v8, v3

    goto :goto_3

    :pswitch_4
    or-int/lit8 v8, v8, 0x77

    goto :goto_3

    :pswitch_5
    or-int/lit8 v8, v8, 0x30

    goto :goto_3

    :pswitch_6
    const v9, 0x800005

    goto :goto_2

    :pswitch_7
    or-int/lit16 v8, v8, 0x80

    goto :goto_3

    :pswitch_8
    or-int/lit8 v8, v8, 0x10

    goto :goto_3

    :pswitch_9
    or-int/2addr v8, v1

    goto :goto_3

    :pswitch_a
    or-int/2addr v8, v0

    goto :goto_3

    :pswitch_b
    or-int/lit8 v8, v8, 0x11

    goto :goto_3

    :pswitch_c
    or-int/lit8 v8, v8, 0x50

    goto :goto_3

    :pswitch_d
    or-int/lit8 v8, v8, 0x70

    :goto_3
    add-int/2addr v7, v4

    goto/16 :goto_0

    :cond_f
    if-nez v8, :cond_10

    goto :goto_4

    :cond_10
    move v5, v8

    :goto_4
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6155d94e -> :sswitch_d
        -0x527265d5 -> :sswitch_c
        -0x514d33ab -> :sswitch_b
        -0x318af38d -> :sswitch_a
        -0x1ccf93a0 -> :sswitch_9
        -0x14c923e0 -> :sswitch_8
        -0x352507b -> :sswitch_7
        0x188db -> :sswitch_6
        0x1c155 -> :sswitch_5
        0x2ff583 -> :sswitch_4
        0x32a007 -> :sswitch_3
        0x677c21c -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x3f657e4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
