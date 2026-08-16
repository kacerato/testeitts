.class public abstract Lcom/android/tools/r8/internal/Ul0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I
    .locals 10

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x46

    if-eq p1, v1, :cond_f

    const/16 v1, 0x4c

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x56

    if-eq p1, v1, :cond_f

    const/16 v1, 0x49

    if-eq p1, v1, :cond_f

    const/16 v1, 0x4a

    if-eq p1, v1, :cond_f

    const/16 v1, 0x53

    if-eq p1, v1, :cond_f

    const/16 v1, 0x54

    if-eq p1, v1, :cond_1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_f

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_0
    iget p1, p2, Lcom/android/tools/r8/internal/Is0;->j:I

    mul-int/lit8 p1, p1, 0x2

    or-int/2addr p1, v3

    iput p1, p2, Lcom/android/tools/r8/internal/Is0;->j:I

    invoke-static {p0, v0, p2}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iget-object v0, p2, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    iput-object p0, p2, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Is0;->a()V

    add-int/2addr p1, v3

    return p1

    :cond_2
    const/4 p1, 0x0

    move v4, p1

    move v5, v4

    :goto_0
    move v1, v0

    :goto_1
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    const/16 v9, 0x3e

    if-eq v7, v8, :cond_a

    if-ne v7, v2, :cond_3

    goto :goto_5

    :cond_3
    const/16 v8, 0x3c

    if-ne v7, v8, :cond_9

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_4

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Is0;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Is0;->a(Ljava/lang/String;)V

    :goto_2
    move v0, v6

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_8

    const/16 v6, 0x2a

    if-eq v4, v6, :cond_6

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_5

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_5

    const/16 v4, 0x3d

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/Is0;->a(C)Lcom/android/tools/r8/internal/Is0;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v0

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/Is0;->a(C)Lcom/android/tools/r8/internal/Is0;

    move-result-object v4

    invoke-static {p0, v0, v4}, Lcom/android/tools/r8/internal/Ul0;->a(Ljava/lang/String;ILcom/android/tools/r8/internal/Is0;)I

    move-result v0

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iget v4, p2, Lcom/android/tools/r8/internal/Is0;->i:I

    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/android/tools/r8/internal/Is0;->i:I

    iget-object v4, p2, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    iget-object v4, p2, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v4, p2, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const/16 v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_1

    :cond_9
    move v0, v6

    goto :goto_1

    :cond_a
    :goto_5
    if-nez v4, :cond_c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_b

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Is0;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Is0;->a(Ljava/lang/String;)V

    :cond_c
    :goto_6
    if-ne v7, v2, :cond_e

    iget p0, p2, Lcom/android/tools/r8/internal/Is0;->i:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_d

    iget-object p0, p2, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    iget p0, p2, Lcom/android/tools/r8/internal/Is0;->i:I

    div-int/lit8 p0, p0, 0x2

    iput p0, p2, Lcom/android/tools/r8/internal/Is0;->i:I

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Is0;->a()V

    return v6

    :cond_e
    move v4, p1

    move v5, v3

    move v0, v6

    goto/16 :goto_0

    :cond_f
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/Is0;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_10

    iget-object p1, p2, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Is0;->a()V

    return v0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
