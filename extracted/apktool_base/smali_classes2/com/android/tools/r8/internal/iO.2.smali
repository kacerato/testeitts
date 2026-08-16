.class public Lcom/android/tools/r8/internal/iO;
.super Lcom/android/tools/r8/internal/R2;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/internal/HO;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/I50;Lcom/android/tools/r8/internal/HO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/R2;-><init>(Lcom/android/tools/r8/internal/I50;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/iO;->c:Lcom/android/tools/r8/internal/HO;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/function/BiPredicate;)Z
    .locals 1

    .line 6
    const-string v0, "NON_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, v0}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Landroidx/annotation/keep/MemberAccessFlags;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/MemberAccessFlags;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/ae1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/ae1;-><init>(Lcom/android/tools/r8/internal/iO;)V

    .line 4
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/util/function/BiPredicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/R2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v4, v3

    goto :goto_1

    :sswitch_0
    const-string v4, "PACKAGE_PRIVATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "PRIVATE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    :sswitch_2
    const-string v4, "PUBLIC"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :sswitch_3
    const-string v4, "PROTECTED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_1
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_2

    .line 10
    :pswitch_0
    sget-object v4, Lcom/android/tools/r8/internal/a2;->d:Lcom/android/tools/r8/internal/a2;

    goto :goto_2

    .line 11
    :pswitch_1
    sget-object v4, Lcom/android/tools/r8/internal/a2;->e:Lcom/android/tools/r8/internal/a2;

    goto :goto_2

    .line 12
    :pswitch_2
    sget-object v4, Lcom/android/tools/r8/internal/a2;->b:Lcom/android/tools/r8/internal/a2;

    goto :goto_2

    .line 13
    :pswitch_3
    sget-object v4, Lcom/android/tools/r8/internal/a2;->c:Lcom/android/tools/r8/internal/a2;

    :goto_2
    if-eqz v4, :cond_5

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/iO;->c:Lcom/android/tools/r8/internal/HO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 15
    iget-object p1, p1, Lcom/android/tools/r8/internal/HO;->a:Ljava/util/HashSet;

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/internal/HO;->b:Ljava/util/HashSet;

    .line 16
    :goto_3
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v1

    .line 17
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_4
    move v0, v3

    goto :goto_5

    :sswitch_4
    const-string v4, "FINAL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :sswitch_5
    const-string v0, "SYNTHETIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :sswitch_6
    const-string v0, "STATIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    move v0, v2

    :cond_8
    :goto_5
    packed-switch v0, :pswitch_data_1

    return v2

    .line 18
    :pswitch_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/iO;->c:Lcom/android/tools/r8/internal/HO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_9

    .line 19
    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_6

    :cond_9
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 20
    :goto_6
    iput-object p2, p1, Lcom/android/tools/r8/internal/HO;->d:Lcom/android/tools/r8/internal/LX;

    return v1

    .line 21
    :pswitch_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/iO;->c:Lcom/android/tools/r8/internal/HO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_a

    .line 22
    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_7

    :cond_a
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 23
    :goto_7
    iput-object p2, p1, Lcom/android/tools/r8/internal/HO;->e:Lcom/android/tools/r8/internal/LX;

    return v1

    .line 24
    :pswitch_6
    iget-object p1, p0, Lcom/android/tools/r8/internal/iO;->c:Lcom/android/tools/r8/internal/HO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_b

    .line 25
    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_8

    :cond_b
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 26
    :goto_8
    iput-object p2, p1, Lcom/android/tools/r8/internal/HO;->c:Lcom/android/tools/r8/internal/LX;

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7e2d8472 -> :sswitch_3
        -0x72af5997 -> :sswitch_2
        0x180cb163 -> :sswitch_1
        0x44b5924a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d9f3d92 -> :sswitch_6
        -0x1ef308db -> :sswitch_5
        0x3fcc956 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
