.class public final Lcom/android/tools/r8/internal/Hr0;
.super Lcom/android/tools/r8/internal/E70;
.source "SourceFile"


# static fields
.field public static final k:Ljava/util/List;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Ljava/util/HashMap;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "N"

    const-string v6, "U"

    const-string v0, "T"

    const-string v1, "I"

    const-string v2, "F"

    const-string v3, "D"

    const-string v4, "J"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Hr0;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/E70;-><init>()V

    const-string v0, "  "

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    const-string v0, "    "

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->f:Ljava/lang/String;

    const-string v0, "      "

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->g:Ljava/lang/String;

    const-string v0, "   "

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/tu0;Ljava/lang/String;Z)Lcom/android/tools/r8/internal/Hr0;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 30
    iget-object p3, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    iget-object p3, p0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object p3, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 33
    iget-object p3, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, ") : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(I)V

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p2, "\n"

    goto :goto_0

    :cond_0
    const-string p2, " // invisible\n"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/internal/Hr0;
    .locals 3

    .line 151
    new-instance v0, Lcom/android/tools/r8/internal/Hr0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hr0;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    .line 153
    iget-object v2, v0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/tools/r8/internal/E70;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 5

    ushr-int/lit8 v0, p1, 0x18

    const/high16 v1, 0xff0000

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const v2, 0xff00

    const-string v3, ", "

    const v4, 0xffff00

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 101
    const-string v1, "METHOD_REFERENCE_TYPE_ARGUMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "METHOD_INVOCATION_TYPE_ARGUMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 109
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 110
    const-string v1, "CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 112
    :pswitch_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "CAST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 113
    :pswitch_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "METHOD_REFERENCE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 114
    :pswitch_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "CONSTRUCTOR_REFERENCE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 115
    :pswitch_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "NEW"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 116
    :pswitch_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "INSTANCEOF"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 117
    :pswitch_9
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "EXCEPTION_PARAMETER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 118
    :pswitch_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "RESOURCE_VARIABLE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 119
    :pswitch_b
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "LOCAL_VARIABLE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 120
    :pswitch_c
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "THROWS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 121
    :pswitch_d
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 122
    const-string v2, "METHOD_FORMAL_PARAMETER "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x10

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 124
    :pswitch_e
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "METHOD_RECEIVER"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :pswitch_f
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "METHOD_RETURN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :pswitch_10
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "FIELD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 127
    :pswitch_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 128
    const-string v4, "METHOD_TYPE_PARAMETER_BOUND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v2

    shr-int/lit8 p1, p1, 0x8

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 132
    :pswitch_12
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 133
    const-string v4, "CLASS_TYPE_PARAMETER_BOUND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v2

    shr-int/lit8 p1, p1, 0x8

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :pswitch_13
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "CLASS_EXTENDS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x8

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 139
    const-string v2, "METHOD_TYPE_PARAMETER "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x10

    .line 140
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "CLASS_TYPE_PARAMETER "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x10

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
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

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 91
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, "// signature "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public final a(I[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    if-lez v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    aget-object v2, p2, v1

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 144
    check-cast v2, Ljava/lang/String;

    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    .line 146
    invoke-virtual {p0, v3, v2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 148
    :cond_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 149
    iget-object v3, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/tools/r8/internal/Hr0;->k:Ljava/util/List;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 150
    :cond_3
    check-cast v2, Lcom/android/tools/r8/internal/XQ;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/XQ;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Qz;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/tools/r8/internal/Qz;->a:I

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v2, "// handle kind 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :pswitch_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "INVOKEINTERFACE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "NEWINVOKESPECIAL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "INVOKESPECIAL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "INVOKESTATIC"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :pswitch_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, "INVOKEVIRTUAL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :pswitch_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "PUTSTATIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "PUTFIELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :pswitch_7
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "GETSTATIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :pswitch_8
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "GETFIELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v1, v2

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p2, p1, Lcom/android/tools/r8/internal/Qz;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    .line 17
    iget-object p2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    iget-object p2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qz;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_0

    .line 21
    iget-object p2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p2, 0x9

    .line 22
    iget-object v0, p1, Lcom/android/tools/r8/internal/Qz;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    if-nez v1, :cond_1

    .line 24
    iget-object p2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :cond_1
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/Qz;->e:Z

    if-eqz p1, :cond_2

    .line 26
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string p2, " itf"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final a(Lcom/android/tools/r8/internal/XQ;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->i:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->i:Ljava/util/HashMap;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hr0;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 96
    const-string v1, "L"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/T60;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hr0;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/wh;Ljava/lang/String;)V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p1, Lcom/android/tools/r8/internal/wh;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p1, Lcom/android/tools/r8/internal/wh;->b:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p1, Lcom/android/tools/r8/internal/wh;->c:Lcom/android/tools/r8/internal/Qz;

    .line 60
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/Qz;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p1, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    array-length v0, v0

    .line 65
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 66
    iget-object v4, p1, Lcom/android/tools/r8/internal/wh;->d:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 67
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Hr0;->e:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 38
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    .line 39
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x44

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 41
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x46

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 43
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x4c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 46
    :cond_3
    instance-of v0, p1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".class"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 48
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/E70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v1, "// arguments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    array-length v0, p2

    if-nez v0, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string p2, " none"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_6

    .line 76
    aget-object v1, p2, v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    instance-of v2, v1, Lcom/android/tools/r8/internal/tt0;

    if-eqz v2, :cond_3

    .line 80
    check-cast v1, Lcom/android/tools/r8/internal/tt0;

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 82
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/Hr0;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tt0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".class"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 84
    :cond_3
    instance-of v2, v1, Lcom/android/tools/r8/internal/Qz;

    if-eqz v2, :cond_4

    .line 85
    check-cast v1, Lcom/android/tools/r8/internal/Qz;

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/Qz;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_4
    instance-of v2, v1, Lcom/android/tools/r8/internal/wh;

    if-eqz v2, :cond_5

    .line 87
    iget-object v2, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v4, "// constant dynamic: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    check-cast v1, Lcom/android/tools/r8/internal/wh;

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/Hr0;->a(Lcom/android/tools/r8/internal/wh;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Hr0;->a(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final b(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/Hr0;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Hr0;->j:I

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Hr0;->b(I)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/E70;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
