.class public final Lcom/android/tools/r8/internal/AN;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/mO;

.field public final d:Lcom/android/tools/r8/internal/wN;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/H50;Lcom/android/tools/r8/internal/mO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    new-instance p1, Lcom/android/tools/r8/internal/wN;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/wN;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    iput-object p2, p0, Lcom/android/tools/r8/internal/AN;->c:Lcom/android/tools/r8/internal/mO;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AN;->c:Lcom/android/tools/r8/internal/mO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    .line 2
    new-instance v2, Lcom/android/tools/r8/internal/xN;

    .line 3
    iget-object v3, v1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 4
    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/xN;-><init>(Ljava/util/HashSet;)V

    .line 5
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/wN;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/tools/r8/internal/uN;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/uN;-><init>(Lcom/android/tools/r8/internal/xN;)V

    move-object v2, v1

    .line 6
    :cond_0
    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/mO;->accept(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/Q2;->a:Lcom/android/tools/r8/internal/Q2;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Q2;->a()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 9
    const-string v0, "Landroidx/annotation/keep/KeepConstraint;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/KeepConstraint;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "FIELD_REPLACE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "METHOD_REPLACE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "CLASS_INSTANTIATE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "VISIBILITY_INVARIANT"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "VISIBILITY_RESTRICT"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "VISIBILITY_RELAX"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "NAME"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v2, "FIELD_SET"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v2, "FIELD_GET"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v2, "NEVER_INLINE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_a
    const-string v2, "METHOD_INVOKE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_c
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_b
    const-string v2, "CLASS_OPEN_HIERARCHY"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_c
    const-string v2, "GENERIC_SIGNATURE"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1

    :cond_e
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_d
    const-string v2, "LOOKUP"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1

    :cond_f
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 12
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 13
    :pswitch_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/hN;->b:Lcom/android/tools/r8/internal/hN;

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 15
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 16
    :pswitch_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/mN;->b:Lcom/android/tools/r8/internal/mN;

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 18
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 19
    :pswitch_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/eN;->b:Lcom/android/tools/r8/internal/eN;

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 22
    :pswitch_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/pN;->b:Lcom/android/tools/r8/internal/pN;

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/qN;->b:Lcom/android/tools/r8/internal/qN;

    .line 26
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 27
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 28
    :pswitch_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/qN;->b:Lcom/android/tools/r8/internal/qN;

    .line 29
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 30
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 31
    :pswitch_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/pN;->b:Lcom/android/tools/r8/internal/pN;

    .line 32
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 34
    :pswitch_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/nN;->b:Lcom/android/tools/r8/internal/nN;

    .line 35
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 36
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 37
    :pswitch_7
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/iN;->b:Lcom/android/tools/r8/internal/iN;

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 39
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 40
    :pswitch_8
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/gN;->b:Lcom/android/tools/r8/internal/gN;

    .line 41
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 42
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 43
    :pswitch_9
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/oN;->b:Lcom/android/tools/r8/internal/oN;

    .line 44
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 45
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 46
    :pswitch_a
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/lN;->b:Lcom/android/tools/r8/internal/lN;

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 48
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 49
    :pswitch_b
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/fN;->b:Lcom/android/tools/r8/internal/fN;

    .line 50
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 51
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 52
    :pswitch_c
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/jN;->b:Lcom/android/tools/r8/internal/jN;

    .line 53
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 54
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 55
    :pswitch_d
    iget-object p1, p0, Lcom/android/tools/r8/internal/AN;->d:Lcom/android/tools/r8/internal/wN;

    sget-object p2, Lcom/android/tools/r8/internal/kN;->b:Lcom/android/tools/r8/internal/kN;

    .line 56
    iget-object p1, p1, Lcom/android/tools/r8/internal/wN;->b:Ljava/util/HashSet;

    .line 57
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79d16286 -> :sswitch_d
        -0x761f3ff0 -> :sswitch_c
        -0x4edc37d9 -> :sswitch_b
        -0x249f9e6a -> :sswitch_a
        -0x168c9034 -> :sswitch_9
        -0xe6b11af -> :sswitch_8
        -0xe6ae4a3 -> :sswitch_7
        0x24728b -> :sswitch_6
        0x3d9a703 -> :sswitch_5
        0x1a6e6149 -> :sswitch_4
        0x22270ab3 -> :sswitch_3
        0x52c3e263 -> :sswitch_2
        0x5d123936 -> :sswitch_1
        0x6bb3142f -> :sswitch_0
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
