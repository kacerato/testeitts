.class public Lcom/android/tools/r8/internal/w10;
.super Lcom/android/tools/r8/internal/Iv0;
.source "SourceFile"


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final k:Lcom/android/tools/r8/internal/T10;

.field public final l:Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lcom/android/tools/r8/internal/Iv0;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iput-object p2, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    sget-boolean p1, Lcom/android/tools/r8/internal/w10;->m:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/w10;->u2()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-static {p1}, Lcom/android/tools/r8/internal/D70;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/D70;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/yD;)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kn;)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->e:Lcom/android/tools/r8/internal/xw0;

    .line 3
    iget v1, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/zE;->g:I

    .line 8
    iget-object v3, p1, Lcom/android/tools/r8/internal/Kn;->d:Lcom/android/tools/r8/internal/mS;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v1

    .line 9
    sget-object v2, Lcom/android/tools/r8/internal/v10;->a:[I

    iget-object v3, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v2, v3

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x7

    const-string v8, ", "

    const-string v9, "Unexpected types "

    if-eq v3, v6, :cond_9

    if-eq v3, v5, :cond_5

    if-eq v3, v4, :cond_1

    if-ne v3, v7, :cond_0

    .line 10
    iget-object v3, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 11
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :pswitch_0
    new-instance v2, Lcom/android/tools/r8/internal/Sp;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Sp;-><init>(II)V

    goto/16 :goto_0

    .line 13
    :pswitch_1
    new-instance v2, Lcom/android/tools/r8/internal/Tp;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Tp;-><init>(II)V

    goto/16 :goto_0

    .line 14
    :pswitch_2
    new-instance v2, Lcom/android/tools/r8/internal/Up;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Up;-><init>(II)V

    goto/16 :goto_0

    .line 15
    :pswitch_3
    new-instance v2, Lcom/android/tools/r8/internal/Vp;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Vp;-><init>(II)V

    goto/16 :goto_0

    .line 16
    :pswitch_4
    new-instance v2, Lcom/android/tools/r8/internal/Rp;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Rp;-><init>(II)V

    goto/16 :goto_0

    .line 17
    :pswitch_5
    new-instance v2, Lcom/android/tools/r8/internal/Qp;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Qp;-><init>(II)V

    goto/16 :goto_0

    .line 18
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v7, :cond_2

    .line 20
    new-instance v2, Lcom/android/tools/r8/internal/Fo;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Fo;-><init>(II)V

    goto/16 :goto_0

    .line 21
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_3
    new-instance v2, Lcom/android/tools/r8/internal/Eo;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Eo;-><init>(II)V

    goto/16 :goto_0

    .line 23
    :cond_4
    new-instance v2, Lcom/android/tools/r8/internal/Go;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Go;-><init>(II)V

    goto/16 :goto_0

    .line 24
    :cond_5
    iget-object v3, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v6, :cond_8

    if-eq v2, v4, :cond_7

    if-ne v2, v7, :cond_6

    .line 25
    new-instance v2, Lcom/android/tools/r8/internal/Oo;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Oo;-><init>(II)V

    goto :goto_0

    .line 26
    :cond_6
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_7
    new-instance v2, Lcom/android/tools/r8/internal/No;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/No;-><init>(II)V

    goto :goto_0

    .line 28
    :cond_8
    new-instance v2, Lcom/android/tools/r8/internal/Po;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Po;-><init>(II)V

    goto :goto_0

    .line 29
    :cond_9
    iget-object v3, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v5, :cond_c

    if-eq v2, v4, :cond_b

    if-ne v2, v7, :cond_a

    .line 30
    new-instance v2, Lcom/android/tools/r8/internal/zq;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/zq;-><init>(II)V

    goto :goto_0

    .line 31
    :cond_a
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_b
    new-instance v2, Lcom/android/tools/r8/internal/xq;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/xq;-><init>(II)V

    goto :goto_0

    .line 33
    :cond_c
    new-instance v2, Lcom/android/tools/r8/internal/yq;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/yq;-><init>(II)V

    .line 34
    :goto_0
    invoke-virtual {p1, p0, v2}, Lcom/android/tools/r8/internal/Kn;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Np;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/PS;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    new-instance v3, Lcom/android/tools/r8/internal/Ba;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Ba;->B()I

    move-result v0

    .line 41
    sget-boolean v1, Lcom/android/tools/r8/internal/PS;->u:Z

    if-nez v1, :cond_1

    const/16 v3, 0x85

    if-gt v3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    const/16 v1, 0x93

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_3
    :goto_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 44
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/h9;)V
    .locals 3

    .line 36
    new-instance v0, Lcom/android/tools/r8/internal/Ba;

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/tools/r8/internal/h9;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/zE;)V

    return-void
.end method

.method public final a(Ljava/util/Set;)Z
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/zE;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d2()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->z0()Lcom/android/tools/r8/internal/w10;

    move-result-object p1

    iget-object v0, p1, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    iget-object v0, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final d2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final r2()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public final u2()Z
    .locals 8

    sget-object v0, Lcom/android/tools/r8/internal/v10;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->k:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_1

    if-eq v1, v6, :cond_0

    return v7

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return v7

    :pswitch_0
    return v5

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    return v7

    :cond_2
    return v5

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_4

    if-eq v0, v2, :cond_4

    if-eq v0, v6, :cond_4

    return v7

    :cond_4
    return v5

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/w10;->l:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    if-eq v0, v6, :cond_6

    return v7

    :cond_6
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final z0()Lcom/android/tools/r8/internal/w10;
    .locals 0

    return-object p0
.end method
