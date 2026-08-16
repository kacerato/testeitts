.class public final Lcom/android/tools/r8/internal/OK;
.super Lcom/android/tools/r8/internal/QW;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/BitSet;

.field public final y:Ljava/util/BitSet;

.field public final z:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/t4;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/high16 v1, 0x90000

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/QW;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2}, Ljava/util/BitSet;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/OK;->y:Ljava/util/BitSet;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/OK;->z:Ljava/util/HashMap;

    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2}, Ljava/util/BitSet;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/OK;->A:Ljava/util/BitSet;

    iput-object p1, p0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/XQ;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/internal/QW;->a(ILcom/android/tools/r8/internal/XQ;)V

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    .line 3
    iget-object p2, p2, Lcom/android/tools/r8/internal/OD;->d:Lcom/android/tools/r8/internal/H;

    .line 4
    check-cast p2, Lcom/android/tools/r8/internal/rL;

    iget-object p2, p2, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/OK;->z:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/tools/r8/internal/OK;->z:Ljava/util/HashMap;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(ILjava/util/BitSet;Ljava/util/BitSet;)V
    .locals 5

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    .line 8
    iget v0, v0, Lcom/android/tools/r8/internal/OD;->b:I

    if-ge p1, v0, :cond_5

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 11
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/OK;->A:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 13
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->set(I)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H;->a()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 16
    iget v1, v0, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_2

    .line 17
    check-cast v0, Lcom/android/tools/r8/internal/rL;

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget-object v0, v0, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/OK;->a(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_3

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H;->a()I

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 20
    check-cast v0, Lcom/android/tools/r8/internal/wr0;

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget-object v2, v0, Lcom/android/tools/r8/internal/wr0;->i:Lcom/android/tools/r8/internal/YQ;

    .line 22
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v1

    .line 23
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/internal/OK;->a(ILjava/util/BitSet;Ljava/util/BitSet;)V

    .line 24
    iget-object v0, v0, Lcom/android/tools/r8/internal/wr0;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/YQ;

    .line 25
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/tools/r8/internal/OK;->a(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/H;->a()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 27
    check-cast v0, Lcom/android/tools/r8/internal/vU;

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget-object v2, v0, Lcom/android/tools/r8/internal/vU;->g:Lcom/android/tools/r8/internal/YQ;

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v1

    .line 30
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/internal/OK;->a(ILjava/util/BitSet;Ljava/util/BitSet;)V

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/vU;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/YQ;

    .line 32
    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v2

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/tools/r8/internal/OK;->a(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_2

    .line 33
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v0

    .line 34
    iget v0, v0, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(ILjava/util/BitSet;Ljava/util/BitSet;)V
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/OK;->a(ILjava/util/BitSet;Ljava/util/BitSet;)V

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/pt0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget-object v3, v1, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget-object v4, v1, Lcom/android/tools/r8/internal/pt0;->a:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget-object v1, v1, Lcom/android/tools/r8/internal/pt0;->b:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v1

    invoke-virtual {p2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    if-lt v4, v3, :cond_1

    if-ge v4, v1, :cond_1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/tools/r8/internal/OK;->a(ILjava/util/BitSet;Ljava/util/BitSet;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_0

    return-void
.end method

.method public final c()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/tools/r8/internal/OK;->z:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iget-object v2, v0, Lcom/android/tools/r8/internal/OK;->y:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/tools/r8/internal/OK;->b(ILjava/util/BitSet;Ljava/util/BitSet;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/OK;->z:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/YQ;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    iget-object v6, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v5

    invoke-virtual {v0, v5, v4, v1}, Lcom/android/tools/r8/internal/OK;->b(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/NK;

    iget-object v4, v0, Lcom/android/tools/r8/internal/OK;->y:Ljava/util/BitSet;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v4}, Lcom/android/tools/r8/internal/NK;-><init>(Lcom/android/tools/r8/internal/OK;Lcom/android/tools/r8/internal/NK;Ljava/util/BitSet;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/internal/OD;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/OD;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/NK;

    move v8, v3

    move-object v9, v5

    :goto_1
    iget-object v10, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iget v11, v10, Lcom/android/tools/r8/internal/OD;->b:I

    if-ge v8, v11, :cond_9

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/internal/OD;->j(I)Lcom/android/tools/r8/internal/H;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/H;->a()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_2

    check-cast v10, Lcom/android/tools/r8/internal/YQ;

    iget-object v11, v7, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/YQ;

    if-eq v10, v9, :cond_8

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    move-object v9, v10

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/NK;->a(I)Lcom/android/tools/r8/internal/NK;

    move-result-object v11

    if-ne v11, v7, :cond_8

    iget v11, v10, Lcom/android/tools/r8/internal/H;->a:I

    const/16 v12, 0xa9

    const/16 v13, 0xa7

    if-ne v11, v12, :cond_6

    move-object v11, v5

    move-object v10, v7

    :goto_2
    if-eqz v10, :cond_4

    iget-object v12, v10, Lcom/android/tools/r8/internal/NK;->c:Ljava/util/BitSet;

    invoke-virtual {v12, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v11, v10, Lcom/android/tools/r8/internal/NK;->e:Lcom/android/tools/r8/internal/YQ;

    :cond_3
    iget-object v10, v10, Lcom/android/tools/r8/internal/NK;->b:Lcom/android/tools/r8/internal/NK;

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_5

    new-instance v10, Lcom/android/tools/r8/internal/rL;

    invoke-direct {v10, v13, v11}, Lcom/android/tools/r8/internal/rL;-><init>(ILcom/android/tools/r8/internal/YQ;)V

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Instruction #"

    const-string v3, " is a RET not owned by any subroutine"

    invoke-static {v8, v2, v3}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/16 v12, 0xa8

    if-ne v11, v12, :cond_7

    check-cast v10, Lcom/android/tools/r8/internal/rL;

    iget-object v10, v10, Lcom/android/tools/r8/internal/rL;->g:Lcom/android/tools/r8/internal/YQ;

    iget-object v11, v0, Lcom/android/tools/r8/internal/OK;->z:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/BitSet;

    new-instance v12, Lcom/android/tools/r8/internal/NK;

    invoke-direct {v12, v0, v7, v11}, Lcom/android/tools/r8/internal/NK;-><init>(Lcom/android/tools/r8/internal/OK;Lcom/android/tools/r8/internal/NK;Ljava/util/BitSet;)V

    iget-object v11, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v11, v10}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/internal/NK;->a(I)Lcom/android/tools/r8/internal/NK;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/YQ;

    new-instance v11, Lcom/android/tools/r8/internal/PD;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Lcom/android/tools/r8/internal/PD;-><init>(I)V

    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    new-instance v11, Lcom/android/tools/r8/internal/rL;

    invoke-direct {v11, v13, v10}, Lcom/android/tools/r8/internal/rL;-><init>(ILcom/android/tools/r8/internal/YQ;)V

    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    iget-object v10, v12, Lcom/android/tools/r8/internal/NK;->e:Lcom/android/tools/r8/internal/YQ;

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    invoke-virtual {v1, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v10, v7}, Lcom/android/tools/r8/internal/H;->a(Lcom/android/tools/r8/internal/NK;)Lcom/android/tools/r8/internal/H;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/OD;->a(Lcom/android/tools/r8/internal/H;)V

    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_9
    iget-object v8, v0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/pt0;

    iget-object v10, v9, Lcom/android/tools/r8/internal/pt0;->a:Lcom/android/tools/r8/internal/YQ;

    iget-object v11, v7, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/YQ;

    iget-object v11, v9, Lcom/android/tools/r8/internal/pt0;->b:Lcom/android/tools/r8/internal/YQ;

    iget-object v12, v7, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/YQ;

    if-eq v10, v11, :cond_a

    iget-object v12, v9, Lcom/android/tools/r8/internal/pt0;->c:Lcom/android/tools/r8/internal/YQ;

    iget-object v13, v7, Lcom/android/tools/r8/internal/NK;->f:Lcom/android/tools/r8/internal/OK;

    iget-object v13, v13, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    invoke-virtual {v13, v12}, Lcom/android/tools/r8/internal/OD;->b(Lcom/android/tools/r8/internal/H;)I

    move-result v13

    invoke-virtual {v7, v13}, Lcom/android/tools/r8/internal/NK;->a(I)Lcom/android/tools/r8/internal/NK;

    move-result-object v13

    iget-object v13, v13, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/YQ;

    if-eqz v10, :cond_b

    if-eqz v11, :cond_b

    if-eqz v12, :cond_b

    new-instance v13, Lcom/android/tools/r8/internal/pt0;

    iget-object v9, v9, Lcom/android/tools/r8/internal/pt0;->d:Ljava/lang/String;

    invoke-direct {v13, v10, v11, v12, v9}, Lcom/android/tools/r8/internal/pt0;-><init>(Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Internal error!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_c
    iget-object v8, v0, Lcom/android/tools/r8/internal/QW;->u:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/ST;

    iget-object v10, v9, Lcom/android/tools/r8/internal/ST;->d:Lcom/android/tools/r8/internal/YQ;

    iget-object v11, v7, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Lcom/android/tools/r8/internal/YQ;

    iget-object v10, v9, Lcom/android/tools/r8/internal/ST;->e:Lcom/android/tools/r8/internal/YQ;

    iget-object v11, v7, Lcom/android/tools/r8/internal/NK;->d:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/YQ;

    if-eq v15, v10, :cond_d

    new-instance v14, Lcom/android/tools/r8/internal/ST;

    iget-object v12, v9, Lcom/android/tools/r8/internal/ST;->a:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/tools/r8/internal/ST;->b:Ljava/lang/String;

    iget-object v11, v9, Lcom/android/tools/r8/internal/ST;->c:Ljava/lang/String;

    iget v9, v9, Lcom/android/tools/r8/internal/ST;->f:I

    move-object/from16 v16, v11

    move-object v11, v14

    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v10

    move/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/android/tools/r8/internal/ST;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/internal/YQ;Lcom/android/tools/r8/internal/YQ;I)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_5

    :cond_e
    iput-object v2, v0, Lcom/android/tools/r8/internal/QW;->q:Lcom/android/tools/r8/internal/OD;

    iput-object v4, v0, Lcom/android/tools/r8/internal/QW;->r:Ljava/util/List;

    iput-object v6, v0, Lcom/android/tools/r8/internal/QW;->u:Ljava/util/List;

    :cond_f
    iget-object v1, v0, Lcom/android/tools/r8/internal/DX;->b:Lcom/android/tools/r8/internal/DX;

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/QW;->a(Lcom/android/tools/r8/internal/DX;)V

    :cond_10
    return-void
.end method
