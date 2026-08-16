.class public final Lcom/android/tools/r8/internal/kO;
.super Lcom/android/tools/r8/internal/iO;
.source "SourceFile"


# instance fields
.field public final d:Lcom/android/tools/r8/internal/PO;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/B50;Lcom/android/tools/r8/internal/PO;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/iO;-><init>(Lcom/android/tools/r8/internal/I50;Lcom/android/tools/r8/internal/HO;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/kO;->d:Lcom/android/tools/r8/internal/PO;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Landroidx/annotation/keep/MethodAccessFlags;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Lcom/android/tools/r8/keepanno/annotations/MethodAccessFlags;"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance p2, Lcom/android/tools/r8/internal/Dg1;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/Dg1;-><init>(Lcom/android/tools/r8/internal/kO;)V

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/util/function/BiPredicate;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Landroidx/annotation/keep/MemberAccessFlags;"

    invoke-super {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/iO;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "BRIDGE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "SYNCHRONIZED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "STRICT_FP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "ABSTRACT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_0

    :sswitch_4
    const-string v3, "NATIVE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v0

    :pswitch_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/kO;->d:Lcom/android/tools/r8/internal/PO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_5

    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_1

    :cond_5
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_1
    iput-object p2, p1, Lcom/android/tools/r8/internal/PO;->h:Lcom/android/tools/r8/internal/LX;

    return v1

    :pswitch_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/kO;->d:Lcom/android/tools/r8/internal/PO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_2
    iput-object p2, p1, Lcom/android/tools/r8/internal/PO;->g:Lcom/android/tools/r8/internal/LX;

    return v1

    :pswitch_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/kO;->d:Lcom/android/tools/r8/internal/PO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_7

    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_3

    :cond_7
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_3
    iput-object p2, p1, Lcom/android/tools/r8/internal/PO;->k:Lcom/android/tools/r8/internal/LX;

    return v1

    :pswitch_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/kO;->d:Lcom/android/tools/r8/internal/PO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_8

    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_4

    :cond_8
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_4
    iput-object p2, p1, Lcom/android/tools/r8/internal/PO;->j:Lcom/android/tools/r8/internal/LX;

    return v1

    :pswitch_4
    iget-object p1, p0, Lcom/android/tools/r8/internal/kO;->d:Lcom/android/tools/r8/internal/PO;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_9

    sget-object p2, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_5

    :cond_9
    sget-object p2, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    :goto_5
    iput-object p2, p1, Lcom/android/tools/r8/internal/PO;->i:Lcom/android/tools/r8/internal/LX;

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_4
        -0x6a101fde -> :sswitch_3
        -0x65c4c600 -> :sswitch_2
        0x32b46d14 -> :sswitch_1
        0x75459789 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
