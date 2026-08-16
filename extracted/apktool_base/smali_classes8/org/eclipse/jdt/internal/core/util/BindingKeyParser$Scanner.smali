.class Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/util/BindingKeyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scanner"
.end annotation


# static fields
.field static final ARRAY:I = 0x4

.field static final BASE_TYPE:I = 0xa

.field static final CAPTURE:I = 0x8

.field static final CAPTURE18:I = 0x9

.field static final END:I = 0xc

.field static final FIELD:I = 0x2

.field static final FLAGS:I = 0x6

.field static final LOCAL_VAR:I = 0x5

.field static final METHOD:I = 0x3

.field static final MODULE:I = 0xb

.field static final PACKAGE:I = 0x0

.field static final START:I = -0x1

.field static final TYPE:I = 0x1

.field static final WILDCARD:I = 0x7


# instance fields
.field index:I

.field source:[C

.field start:I

.field token:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    return-void
.end method


# virtual methods
.method public getTokenSource()[C
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    sub-int/2addr v0, v1

    new-array v2, v0, [C

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public isAtAnnotationStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtCapture18Start()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtCaptureStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtFieldOrMethodStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtLocalVariableStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtMemberTypeStart()Z
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v2, v1, v0

    const/16 v3, 0x24

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    sub-int/2addr v0, v4

    aget-char v0, v1, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    :cond_0
    return v4

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAtModuleStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtParametersEnd()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtParametersStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v0, v1, v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isAtRawTypeEnd()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtSecondaryTypeStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtThrownStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtTypeArgumentStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-string v2, "LIZVCDBFJS[!"

    aget-char v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtTypeParameterStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtTypeVariableStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtTypeWithCaptureStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAtWildcardStart()Z
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextToken()I
    .locals 15

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v1, v1

    const/4 v2, -0x1

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    const/16 v5, 0xc

    if-le v4, v1, :cond_0

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v5

    :cond_0
    const/4 v6, 0x0

    if-ne v4, v1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    aget-char v7, v7, v4

    :goto_1
    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x2e

    const/4 v13, 0x1

    if-eqz v7, :cond_1b

    const/16 v5, 0x3e

    if-eq v7, v5, :cond_19

    const/16 v6, 0x40

    if-eq v7, v6, :cond_19

    const/16 v6, 0x46

    if-eq v7, v6, :cond_17

    const/16 v6, 0x4c

    if-eq v7, v6, :cond_15

    const/16 v6, 0x4e

    if-eq v7, v6, :cond_17

    const/16 v6, 0x56

    if-eq v7, v6, :cond_17

    const/16 v6, 0x5e

    if-eq v7, v6, :cond_14

    const/16 v6, 0x7e

    if-eq v7, v6, :cond_12

    const/16 v6, 0x2d

    if-eq v7, v6, :cond_11

    const/16 v6, 0xb

    if-eq v7, v12, :cond_10

    const/16 v14, 0x49

    if-eq v7, v14, :cond_17

    const/16 v14, 0x4a

    if-eq v7, v14, :cond_17

    const/16 v14, 0x53

    if-eq v7, v14, :cond_17

    const/16 v14, 0x54

    if-eq v7, v14, :cond_15

    const/16 v14, 0x5a

    if-eq v7, v14, :cond_17

    const/16 v14, 0x5b

    if-eq v7, v14, :cond_d

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    goto/16 :goto_6

    :pswitch_0
    iget v6, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    if-lez v6, :cond_1a

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    add-int/lit8 v8, v6, -0x1

    aget-char v8, v7, v8

    if-eq v8, v12, :cond_4

    if-ne v4, v0, :cond_2

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    :goto_2
    move v3, v2

    goto/16 :goto_6

    :cond_2
    if-eq v3, v2, :cond_3

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    :cond_3
    iput v13, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v13

    :cond_4
    sub-int/2addr v6, v11

    aget-char v0, v7, v6

    if-ne v0, v5, :cond_6

    if-eq v3, v2, :cond_5

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    :cond_5
    iput v13, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    goto :goto_3

    :cond_6
    iput v10, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    :goto_3
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v0

    :pswitch_1
    if-ne v4, v0, :cond_7

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    goto :goto_2

    :cond_7
    if-eq v3, v2, :cond_8

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    :cond_8
    iput v13, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v13

    :pswitch_2
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    if-ne v0, v13, :cond_9

    iput v11, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v11

    :cond_9
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    goto :goto_2

    :pswitch_3
    iput v10, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v10

    :pswitch_4
    if-ne v4, v0, :cond_a

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    goto :goto_2

    :cond_a
    if-ne v3, v2, :cond_b

    move v3, v4

    goto/16 :goto_6

    :cond_b
    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v13, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v13

    :pswitch_5
    if-ne v4, v0, :cond_c

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    goto :goto_2

    :cond_c
    iput v9, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v9

    :pswitch_6
    add-int/2addr v4, v13

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v6, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v6

    :pswitch_7
    add-int/2addr v4, v13

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v0

    :cond_d
    :goto_4
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    if-ge v0, v1, :cond_f

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    aget-char v2, v2, v0

    if-eq v2, v14, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    goto :goto_4

    :cond_f
    :goto_5
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v0

    :cond_10
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    if-ne v5, v6, :cond_19

    goto :goto_6

    :cond_11
    :pswitch_8
    add-int/2addr v4, v13

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v8, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v8

    :cond_12
    if-ne v4, v0, :cond_13

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    goto/16 :goto_2

    :cond_13
    iput v13, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v13

    :cond_14
    add-int/2addr v4, v13

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    const/16 v0, 0x9

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v0

    :cond_15
    if-ne v4, v0, :cond_1a

    if-eqz v4, :cond_16

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    add-int/lit8 v6, v4, -0x1

    aget-char v5, v5, v6

    if-eq v5, v12, :cond_1a

    :cond_16
    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    goto/16 :goto_2

    :cond_17
    :pswitch_9
    if-ne v4, v0, :cond_1a

    if-eqz v4, :cond_18

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    add-int/lit8 v6, v4, -0x1

    aget-char v5, v5, v6

    if-eq v5, v12, :cond_1a

    :cond_18
    add-int/2addr v4, v13

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v0

    :cond_19
    :pswitch_a
    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    goto/16 :goto_2

    :cond_1a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    goto/16 :goto_0

    :cond_1b
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    if-eq v0, v2, :cond_20

    if-eq v0, v13, :cond_1e

    if-eq v0, v10, :cond_1d

    if-eq v0, v9, :cond_1d

    if-eq v0, v8, :cond_1c

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    goto :goto_7

    :cond_1c
    iput v13, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    goto :goto_7

    :cond_1d
    iput v9, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    goto :goto_7

    :cond_1e
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    if-le v4, v0, :cond_1f

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    sub-int/2addr v0, v13

    aget-char v0, v1, v0

    if-ne v0, v12, :cond_1f

    iput v11, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    goto :goto_7

    :cond_1f
    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    goto :goto_7

    :cond_20
    iput v6, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    :goto_7
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    return v0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3a
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public skipCapture18Delim()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v1, v1, v0

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    return-void
.end method

.method public skipMethodSignature()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    aget-char v2, v2, v1

    const/16 v3, 0x23

    if-eq v2, v3, :cond_5

    const/16 v3, 0x25

    if-eq v2, v3, :cond_5

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7c

    if-eq v2, v3, :cond_5

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public skipParametersEnd()V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v1, v1, v0

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    return-void
.end method

.method public skipParametersStart()V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v1, v1, v0

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public skipRank()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const-string v2, "0123456789"

    aget-char v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public skipRankEnd()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v1, v1, v0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    return-void
.end method

.method public skipRankStart()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v1, v1, v0

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    :cond_0
    return-void
.end method

.method public skipThrownStart()V
    .locals 3

    :goto_0
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-char v1, v1, v0

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public skipTypeEnd()V
    .locals 3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v1, v1, v0

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->token:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "END: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v1, "MODULE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    const-string v1, "BASE TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    const-string v1, "CAPTURE18: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_4
    const-string v1, "CAPTURE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_5
    const-string v1, "WILDCARD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_6
    const-string v1, "MODIFIERS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_7
    const-string v1, "LOCAL VAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_8
    const-string v1, "ARRAY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_9
    const-string v1, "METHOD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_a
    const-string v1, "FIELD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_b
    const-string v1, "TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_c
    const-string v1, "PACKAGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_d
    const-string v1, "START: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    const-string v2, "**"

    if-gez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    array-length v4, v3

    if-gt v1, v4, :cond_2

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    if-gt v2, v3, :cond_1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    sub-int/2addr v3, v2

    invoke-virtual {v0, v4, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->index:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->source:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/BindingKeyParser$Scanner;->start:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
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
