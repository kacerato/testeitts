.class public LVb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LVb/b;
    .locals 2

    new-instance v0, LVb/b;

    invoke-direct {v0}, LVb/b;-><init>()V

    iget-object v1, p0, LVb/b;->a:Ljava/lang/String;

    iput-object v1, v0, LVb/b;->a:Ljava/lang/String;

    iget-object v1, p0, LVb/b;->b:Ljava/lang/String;

    iput-object v1, v0, LVb/b;->b:Ljava/lang/String;

    iget-object v1, p0, LVb/b;->c:Ljava/lang/String;

    iput-object v1, v0, LVb/b;->c:Ljava/lang/String;

    iget-object v1, p0, LVb/b;->d:Ljava/lang/String;

    iput-object v1, v0, LVb/b;->d:Ljava/lang/String;

    iget-boolean v1, p0, LVb/b;->e:Z

    iput-boolean v1, v0, LVb/b;->e:Z

    invoke-virtual {v0}, LVb/b;->b()V

    return-object v0
.end method

.method public b()V
    .locals 12

    const/4 v0, 0x2

    iget-object v1, p0, LVb/b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, 0x3

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, ","

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v11, "float"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v11, "rgba"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_2
    const-string v11, "bool"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_3
    const-string v11, "rgb"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_4
    const-string v11, "int"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v10, v4

    goto :goto_0

    :sswitch_5
    const-string v11, "float01"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v10, v2

    goto :goto_0

    :sswitch_6
    const-string v11, "float4"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v10, v0

    goto :goto_0

    :sswitch_7
    const-string v11, "float3"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v10, v9

    goto :goto_0

    :sswitch_8
    const-string v11, "float2"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move v10, v8

    :goto_0
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    new-array v0, v4, [F

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    array-length v1, v0

    if-ge v8, v1, :cond_a

    aget-object v1, v0, v8

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, LVb/b;->f:Ljava/lang/Object;

    check-cast v2, [F

    div-float/2addr v1, v3

    aput v1, v2, v8

    add-int/2addr v8, v9

    goto :goto_1

    :pswitch_1
    iput-object v6, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_9
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_2
    new-array v0, v2, [F

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    array-length v1, v0

    if-ge v8, v1, :cond_a

    aget-object v1, v0, v8

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, LVb/b;->f:Ljava/lang/Object;

    check-cast v2, [F

    div-float/2addr v1, v3

    aput v1, v2, v8

    add-int/2addr v8, v9

    goto :goto_2

    :pswitch_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_4
    iput-object v6, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_5
    new-array v0, v4, [F

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_3
    array-length v1, v0

    if-ge v8, v1, :cond_a

    aget-object v1, v0, v8

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, LVb/b;->f:Ljava/lang/Object;

    check-cast v2, [F

    aput v1, v2, v8

    add-int/2addr v8, v9

    goto :goto_3

    :pswitch_6
    new-array v0, v2, [F

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_4
    array-length v1, v0

    if-ge v8, v1, :cond_a

    aget-object v1, v0, v8

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, LVb/b;->f:Ljava/lang/Object;

    check-cast v2, [F

    aput v1, v2, v8

    add-int/2addr v8, v9

    goto :goto_4

    :pswitch_7
    new-array v0, v0, [F

    iput-object v0, p0, LVb/b;->f:Ljava/lang/Object;

    iget-object v0, p0, LVb/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_5
    array-length v1, v0

    if-ge v8, v1, :cond_a

    aget-object v1, v0, v8

    invoke-static {v1}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, LVb/b;->f:Ljava/lang/Object;

    check-cast v2, [F

    aput v1, v2, v8

    add-int/2addr v8, v9

    goto :goto_5

    :cond_a
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4bcbd6aa -> :sswitch_8
        -0x4bcbd6a9 -> :sswitch_7
        -0x4bcbd6a8 -> :sswitch_6
        -0x2daefea3 -> :sswitch_5
        0x197ef -> :sswitch_4
        0x1b8cd -> :sswitch_3
        0x2e3aea -> :sswitch_2
        0x356134 -> :sswitch_1
        0x5d0225c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
