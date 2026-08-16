.class public abstract Lcom/android/tools/r8/internal/Ku;
.super Lcom/android/tools/r8/internal/mr0;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/mr0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/internal/wH;Ljava/lang/Object;Lcom/android/tools/r8/internal/G9$a;Z)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 16
    sget-boolean v3, Lcom/android/tools/r8/internal/Ku;->c:Z

    if-nez v3, :cond_1

    if-eqz p4, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p4, :cond_3

    if-eqz p6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v6, v5

    :goto_2
    if-nez v3, :cond_5

    .line 17
    invoke-interface/range {p3 .. p3}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v3

    invoke-static {v6}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v7

    add-int/2addr v7, v3

    const/4 v3, 0x2

    if-lt v7, v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_5
    :goto_3
    invoke-interface/range {p3 .. p3}, Lcom/android/tools/r8/internal/xy;->size()I

    move-result v3

    xor-int/lit8 v7, v6, 0x1

    invoke-static {v7}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v7

    sub-int/2addr v3, v7

    new-array v7, v3, [I

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface/range {p3 .. p3}, Lcom/android/tools/r8/internal/wH;->keySet()Lcom/android/tools/r8/internal/qI;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/tools/r8/internal/qI;->iterator()Lcom/android/tools/r8/internal/HH;

    move-result-object v9

    move v10, v4

    :cond_6
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ge v10, v3, :cond_6

    add-int/lit8 v12, v10, 0x1

    .line 21
    aput v11, v7, v10

    .line 22
    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_4

    .line 23
    :cond_7
    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    if-eqz v6, :cond_8

    move-object/from16 v6, p4

    goto :goto_5

    .line 24
    :cond_8
    invoke-interface/range {p3 .. p3}, Lcom/android/tools/r8/internal/wH;->d()I

    move-result v6

    invoke-interface {v2, v6}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 25
    :goto_5
    sget-boolean v10, Lcom/android/tools/r8/internal/Ku;->c:Z

    if-nez v10, :cond_b

    sget-boolean v11, Lcom/android/tools/r8/internal/X3;->a:Z

    move v11, v4

    :goto_6
    add-int/lit8 v12, v3, -0x1

    if-ge v11, v12, :cond_b

    .line 26
    sget-boolean v12, Lcom/android/tools/r8/internal/X3;->a:Z

    if-nez v12, :cond_a

    aget v12, v7, v11

    add-int/lit8 v13, v11, 0x1

    aget v13, v7, v13

    if-ge v12, v13, :cond_9

    goto :goto_7

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_b
    if-nez v10, :cond_d

    .line 27
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v3, v10, :cond_c

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_d
    :goto_8
    new-instance v10, Lcom/android/tools/r8/internal/pa;

    move-object v11, p0

    iget-object v12, v11, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v12

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-static {v12}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v12

    invoke-direct {v10, v12, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v10, Lcom/android/tools/r8/internal/Bb;

    sget-object v12, Lcom/android/tools/r8/internal/Bb$a;->b:Lcom/android/tools/r8/internal/Bb$a;

    invoke-direct {v10, v12, v9, v7, v8}, Lcom/android/tools/r8/internal/Bb;-><init>(Lcom/android/tools/r8/internal/Bb$a;Lcom/android/tools/r8/internal/ka;[ILjava/util/ArrayList;)V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge v4, v3, :cond_10

    .line 30
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    aget v10, v7, v4

    invoke-interface {v2, v10}, Lcom/android/tools/r8/internal/HG;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, p1, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    sget-boolean v10, Lcom/android/tools/r8/internal/Ku;->c:Z

    if-nez v10, :cond_f

    .line 34
    invoke-static {p1, v5}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v10

    .line 35
    check-cast v10, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v10

    if-eqz v10, :cond_e

    goto :goto_a

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 36
    :cond_10
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual/range {p5 .. p5}, Lcom/android/tools/r8/internal/G9$a;->a()Lcom/android/tools/r8/internal/G9;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_11

    .line 38
    new-instance v1, Lcom/android/tools/r8/internal/x9;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 40
    :cond_11
    invoke-interface {v1, p1, v6}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget-boolean v1, Lcom/android/tools/r8/internal/Ku;->c:Z

    if-nez v1, :cond_13

    .line 42
    invoke-static {p1, v5}, Lcom/android/tools/r8/internal/J6;->a(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W9;->S()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_b

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    :goto_b
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/graph/M2;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p2, Lcom/android/tools/r8/internal/Hm0;

    if-eqz v0, :cond_2

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/internal/Ku;->c:Z

    if-nez p2, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/x9;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/x9;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->g0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    sget-boolean v0, Lcom/android/tools/r8/internal/Ku;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/mr0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 7
    :cond_4
    :goto_1
    new-instance p3, Lcom/android/tools/r8/internal/A9;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->P()Lcom/android/tools/r8/internal/Om0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Om0;->j0()Lcom/android/tools/r8/graph/L2;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_5
    instance-of v0, p2, Lcom/android/tools/r8/internal/Im0;

    if-eqz v0, :cond_8

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/Ku;->c:Z

    if-nez v0, :cond_7

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_7
    :goto_2
    new-instance v0, Lcom/android/tools/r8/internal/z9;

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object p2

    .line 12
    iget-wide v1, p2, Lcom/android/tools/r8/internal/Im0;->c:J

    .line 13
    invoke-static {p3}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 15
    :cond_8
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported value: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
