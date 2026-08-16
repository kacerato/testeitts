.class public LC5/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    iget-object p0, p0, LC5/b;->b:LD5/h;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "temp"

    invoke-direct {p2, p3, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic B(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-eq p2, p3, :cond_0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    :cond_0
    iget-object p0, p0, LC5/b;->b:LD5/h;

    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-direct {p2, p3, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static C(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "extras",
            "context",
            "extrasList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "LC5/m;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC5/m;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v3, v1, LC5/m;->a:I

    invoke-static {v2, v3, p1}, LVc/e;->V(Landroid/widget/ImageView;ILandroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0600b1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v5

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v6

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v7

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v4

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, v1, LC5/m;->c:Z

    if-eqz v3, :cond_0

    iget v3, v1, LC5/m;->d:I

    invoke-static {v2, p1, v3}, LVc/e;->x(Landroid/widget/ImageView;Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, LC5/h$a0;

    invoke-direct {v3, v1}, LC5/h$a0;-><init>(LC5/m;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static D(Landroid/content/Context;I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "color"
        }
    .end annotation

    if-nez p0, :cond_0

    return p1

    :cond_0
    const v0, 0x7f050167

    if-eq p1, v0, :cond_8

    const v0, 0x7f050166

    if-eq p1, v0, :cond_8

    const v0, 0x7f0500ad

    if-ne p1, v0, :cond_1

    goto :goto_3

    :cond_1
    const v0, 0x7f05016b

    if-eq p1, v0, :cond_7

    const v0, 0x7f05016a

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const v0, 0x7f050170

    if-eq p1, v0, :cond_6

    const v0, 0x7f0500b3

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f050158

    if-eq p1, v0, :cond_5

    const v0, 0x7f0500a6

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1

    :cond_5
    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :cond_6
    :goto_1
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :cond_7
    :goto_2
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0

    :cond_8
    :goto_3
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p0

    return p0
.end method

.method public static E(LC5/b;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "textView",
            "context",
            "updateText"
        }
    .end annotation

    iget-object v0, p0, LC5/b;->o:Ljava/lang/String;

    new-instance v1, LC5/h$X;

    invoke-direct {v1, p2, p1, p0, p3}, LC5/h$X;-><init>(Landroid/content/Context;Landroid/widget/TextView;LC5/b;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, LYc/c;->a(Ljava/lang/String;LYc/g;)V

    return-void
.end method

.method public static F(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "context",
            "textView"
        }
    .end annotation

    iget-object v0, p0, LC5/b;->b:LD5/h;

    invoke-interface {v0}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, LC5/h$S;

    invoke-direct {v2, p1, p2, p0}, LC5/h$S;-><init>(Landroid/content/Context;Landroid/widget/TextView;LC5/b;)V

    invoke-static {v0, v1, v2}, LYc/c;->b(Ljava/lang/String;Landroid/app/Activity;LYc/g;)V

    return-void
.end method

.method public static G(LC5/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, LC5/b;->N:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    if-eqz v0, :cond_5

    iget-object v1, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v1, :cond_3

    const-string v0, "p"

    iget-object v1, p0, LC5/b;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LAc/b;

    iget-object v1, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->k3(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    goto :goto_0

    :cond_0
    const-string v0, "s"

    iget-object v1, p0, LC5/b;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LAc/b;

    iget-object v1, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->j0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->o3(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    goto :goto_0

    :cond_1
    const-string v0, "r"

    iget-object v1, p0, LC5/b;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LAc/b;

    iget-object v1, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v0, v1}, LAc/b;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LC5/b;->P:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->m3(LAc/b;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, LC5/b;->O:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, LC5/b;->M:Ljava/lang/String;

    :try_start_0
    sget-object v3, LC5/h$b0;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getImageFromAnimation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getSquare5FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getQuatFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getVec2FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getVec2FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_5
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getVec3FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_6
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getColorFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_7
    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getIntFromAnimation(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3, v4, v2, v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_8
    new-instance v3, LAc/b;

    iget-object v4, p0, LC5/b;->K:Ljava/lang/String;

    invoke-direct {v3, v4}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v4, LAc/b;

    iget-object p0, p0, LC5/b;->L:Ljava/lang/String;

    invoke-direct {v4, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getFloatFromAnimation(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v3, v4, v2, v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->g3(LAc/b;LAc/b;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static H(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "context",
            "colorImage"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LC5/h$U;

    invoke-direct {v0, p0, p1, p2}, LC5/h$U;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    const-string p0, ".usy"

    invoke-static {p0, v0}, LYc/c;->a(Ljava/lang/String;LYc/g;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/widget/LinearLayout;LC5/b;LC5/n;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, LC5/h;->z(Landroid/widget/LinearLayout;LC5/b;LC5/n;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic b(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, LC5/h;->B(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, LC5/h;->A(LC5/b;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/view/View;Landroid/content/Context;LC5/b;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "entry",
            "textView",
            "updateText"
        }
    .end annotation

    new-instance v0, LC5/h$W;

    invoke-direct {v0, p3, p2, p1, p4}, LC5/h$W;-><init>(Landroid/widget/TextView;LC5/b;Landroid/content/Context;Ljava/lang/Runnable;)V

    sget-object p1, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p0, p1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public static e(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "context",
            "colorImage"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LC5/h$T;

    invoke-direct {v0, p0, p1, p2}, LC5/h$T;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    const-string p0, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {p0, v0}, LYc/c;->a(Ljava/lang/String;LYc/g;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2}, LC5/h;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic h(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2}, LC5/h;->t(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic i(LC5/b;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, LC5/h;->E(LC5/b;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic j(Landroid/view/View;Landroid/content/Context;LC5/b;Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LC5/h;->d(Landroid/view/View;Landroid/content/Context;LC5/b;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2}, LC5/h;->F(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic l(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2}, LC5/h;->u(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic m(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2}, LC5/h;->s(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic n(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2}, LC5/h;->e(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic o(Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0}, LC5/h;->r(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic p(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2}, LC5/h;->H(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static q(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->b(Landroid/view/View;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static r(Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {p0, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method

.method public static s(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "context",
            "textView"
        }
    .end annotation

    iget-object v0, p0, LC5/b;->d:LD5/d;

    if-eqz v0, :cond_0

    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select any object with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LC5/b;->d:LD5/d;

    invoke-interface {v2}, LD5/d;->getTittle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, LC5/h$Z;

    invoke-direct {v2, p2, p0, p1}, LC5/h$Z;-><init>(Landroid/widget/TextView;LC5/b;Landroid/content/Context;)V

    invoke-static {p2, v0, v1, v2}, LX6/b;->D1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;LX6/b$f;)LX6/b;

    :cond_0
    return-void
.end method

.method public static t(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "context",
            "colorImage"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, LC5/h$V;

    invoke-direct {v0, p0, p1, p2}, LC5/h$V;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    const-string p0, ".cbm"

    invoke-static {p0, v0}, LYc/c;->a(Ljava/lang/String;LYc/g;)V

    :cond_0
    return-void
.end method

.method public static u(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "context",
            "textView"
        }
    .end annotation

    sget-object p1, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v0, LC5/h$Y;

    invoke-direct {v0, p2, p0}, LC5/h$Y;-><init>(Landroid/widget/TextView;LC5/b;)V

    const-string v1, "Select an object"

    invoke-static {p2, p1, v1, v0}, LX6/b;->D1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;LX6/b$f;)LX6/b;

    move-result-object p1

    iget-object p0, p0, LC5/b;->c:LD5/k;

    invoke-interface {p0}, LD5/k;->getParent()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    invoke-virtual {p1, p0}, LX6/b;->B1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "objectUID",
            "componentUID",
            "entryName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, LAc/b;

    invoke-direct {v0, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance v2, LAc/b;

    invoke-direct {v2, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->u2(LAc/b;LAc/b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x7f0700f9

    return p0

    :cond_1
    new-instance v0, LAc/b;

    invoke-direct {v0, p0}, LAc/b;-><init>(Ljava/lang/String;)V

    new-instance p0, LAc/b;

    invoke-direct {p0, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->v2(LAc/b;LAc/b;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0700fa

    return p0

    :cond_2
    return v1
.end method

.method public static w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "inflater",
            "entry",
            "positionInAdapter",
            "context",
            "upperCommunication"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    if-eqz v7, :cond_1f

    iget-object v0, v8, LC5/b;->n:LC5/b$a;

    sget-object v1, LC5/b$a;->Component:LC5/b$a;

    const/4 v11, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, LC5/b$a;->ComponentList:LC5/b$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v11

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, v8, LC5/b;->Q:LC5/a;

    const v1, 0x7f0c00da

    if-eqz v0, :cond_4

    iget-object v0, v0, LC5/a;->n:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0c00db

    invoke-virtual {v7, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_1
    move-object v12, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v7, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :goto_2
    if-nez v12, :cond_5

    return-void

    :cond_5
    invoke-static {v12, v10}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    const v0, 0x7f09057b

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v13, 0x8

    if-eqz v0, :cond_7

    iget-object v1, v8, LC5/b;->f:LD5/i;

    if-eqz v1, :cond_6

    iget-object v1, v8, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->ComponentList:LC5/b$a;

    if-ne v1, v2, :cond_6

    new-instance v1, LC5/h$k;

    invoke-direct {v1, v8, v9}, LC5/h$k;-><init>(LC5/b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    iget-object v0, v8, LC5/b;->Q:LC5/a;

    if-eqz v0, :cond_1f

    const v0, 0x7f090544

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090406

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09014f

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/ToggleButton;

    const v2, 0x7f09014e

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    const v2, 0x7f0904f3

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    const v2, 0x7f090552

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    const v2, 0x7f090553

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v2, 0x7f090567

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, v8, LC5/b;->Q:LC5/a;

    iget-boolean v11, v4, LC5/a;->s:Z

    if-eqz v11, :cond_8

    iget-object v4, v4, LC5/a;->a:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    new-instance v11, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v11}, Landroid/text/style/StrikethroughSpan;-><init>()V

    iget-object v13, v8, LC5/b;->Q:LC5/a;

    iget-object v13, v13, LC5/a;->a:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v16, v5

    const/16 v5, 0x21

    move-object/from16 v17, v6

    const/4 v6, 0x0

    invoke-interface {v4, v11, v6, v13, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_8
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const/4 v6, 0x0

    iget-object v4, v4, LC5/a;->a:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    if-eqz v1, :cond_a

    iget-object v4, v8, LC5/b;->Q:LC5/a;

    iget-object v4, v4, LC5/a;->b:Ljava/lang/String;

    if-eqz v4, :cond_9

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v8, LC5/b;->Q:LC5/a;

    iget-object v4, v4, LC5/a;->b:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    iget-object v1, v8, LC5/b;->Q:LC5/a;

    invoke-virtual {v1}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, v8, LC5/b;->Q:LC5/a;

    invoke-virtual {v1}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, v8, LC5/b;->Q:LC5/a;

    invoke-virtual {v1}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result v1

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, -0x2

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_6
    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v11, v1

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_7
    if-eqz v2, :cond_e

    iget-object v1, v8, LC5/b;->Q:LC5/a;

    iget v1, v1, LC5/a;->p:I

    if-eqz v1, :cond_d

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    iget-object v1, v8, LC5/b;->Q:LC5/a;

    iget v1, v1, LC5/a;->p:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8

    :cond_d
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_8
    iget-object v1, v8, LC5/b;->Q:LC5/a;

    iget-boolean v1, v1, LC5/a;->f:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    iget-object v2, v8, LC5/b;->Q:LC5/a;

    iget-boolean v2, v2, LC5/a;->e:Z

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, LC5/g;

    move-object/from16 v13, p5

    invoke-direct {v1, v14, v8, v13, v9}, LC5/g;-><init>(Landroid/widget/LinearLayout;LC5/b;LC5/n;I)V

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v1, 0x0

    goto :goto_a

    :cond_10
    move-object/from16 v13, p5

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_a
    iget-object v2, v8, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->h:LD5/g;

    if-eqz v2, :cond_11

    new-instance v2, LC5/h$v;

    invoke-direct {v2, v8, v10, v9}, LC5/h$v;-><init>(LC5/b;Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_b

    :cond_11
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_b
    iget-object v1, v8, LC5/b;->Q:LC5/a;

    iget-boolean v1, v1, LC5/a;->e:Z

    if-eqz v1, :cond_12

    new-instance v6, LC5/h$G;

    move-object v1, v6

    move-object v2, v14

    move-object/from16 v4, p2

    move-object/from16 v13, v16

    move-object/from16 v5, p5

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move/from16 v17, v11

    move-object v11, v6

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LC5/h$G;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ToggleButton;LC5/b;LC5/n;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_c

    :cond_12
    move-object/from16 v13, v16

    const/4 v1, 0x0

    move-object/from16 v16, v12

    move-object/from16 v12, v17

    move/from16 v17, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_c
    if-eqz v12, :cond_15

    iget-object v0, v8, LC5/b;->Q:LC5/a;

    iget-boolean v0, v0, LC5/a;->d:Z

    if-eqz v0, :cond_14

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    :try_start_1
    iget-object v0, v8, LC5/b;->Q:LC5/a;

    iget-object v0, v0, LC5/a;->g:LD5/h;

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    iget-object v0, v8, LC5/b;->Q:LC5/a;

    iget-object v0, v0, LC5/a;->g:LD5/h;

    invoke-interface {v0}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v12, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    :goto_d
    new-instance v0, LC5/h$R;

    invoke-direct {v0, v8}, LC5/h$R;-><init>(LC5/b;)V

    invoke-virtual {v12, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    goto :goto_e

    :cond_14
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    :cond_15
    :goto_e
    if-eqz v15, :cond_19

    iget-object v0, v8, LC5/b;->Q:LC5/a;

    iget-object v0, v0, LC5/a;->n:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LC5/b;

    iget-object v1, v3, LC5/b;->n:LC5/b$a;

    sget-object v2, LC5/b$a;->Vector:LC5/b$a;

    if-ne v1, v2, :cond_16

    invoke-static {v15, v7, v3, v9, v10}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_f

    :cond_16
    sget-object v2, LC5/b$a;->Component:LC5/b$a;

    if-eq v1, v2, :cond_18

    sget-object v2, LC5/b$a;->ComponentList:LC5/b$a;

    if-ne v1, v2, :cond_17

    goto :goto_10

    :cond_17
    const/4 v5, 0x1

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_f

    :cond_18
    :goto_10
    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_f

    :cond_19
    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v17, :cond_1e

    iget-object v0, v8, LC5/b;->Q:LC5/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, LC5/a;->r:Z

    iget-object v0, v0, LC5/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LC5/b;

    iget-object v0, v3, LC5/b;->n:LC5/b$a;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    if-ne v0, v1, :cond_1a

    invoke-static {v14, v7, v3, v9, v10}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_11

    :cond_1a
    sget-object v1, LC5/b$a;->Component:LC5/b$a;

    if-eq v0, v1, :cond_1c

    sget-object v1, LC5/b$a;->ComponentList:LC5/b$a;

    if-ne v0, v1, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v5, 0x1

    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v6, p4

    :try_start_2
    invoke-static/range {v1 .. v6}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :cond_1c
    :goto_13
    move-object v1, v14

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_11

    :cond_1d
    :goto_14
    move-object/from16 v1, p0

    move-object/from16 v11, v16

    goto :goto_15

    :cond_1e
    iget-object v0, v8, LC5/b;->Q:LC5/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, LC5/a;->r:Z

    goto :goto_14

    :goto_15
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1f
    return-void
.end method

.method public static x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "inflater",
            "entry",
            "positionInAdapter",
            "ignoreLayoutParams",
            "context"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move/from16 v3, p3

    move-object/from16 v10, p5

    const/4 v11, 0x0

    if-eqz v2, :cond_77

    if-eqz v9, :cond_77

    :try_start_0
    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->NoteText:LC5/b$a;

    if-ne v4, v5, :cond_0

    const v4, 0x7f0c00e3

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :goto_0
    move-object v12, v4

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_31

    :cond_0
    sget-object v5, LC5/b$a;->Header:LC5/b$a;

    if-ne v4, v5, :cond_1

    const v4, 0x7f0c00de

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_1
    sget-object v5, LC5/b$a;->SLFloatWrap:LC5/b$a;

    if-eq v4, v5, :cond_24

    sget-object v5, LC5/b$a;->SLIntWrap:LC5/b$a;

    if-eq v4, v5, :cond_24

    sget-object v5, LC5/b$a;->SLStringWrap:LC5/b$a;

    if-eq v4, v5, :cond_24

    sget-object v5, LC5/b$a;->SLShortWrap:LC5/b$a;

    if-eq v4, v5, :cond_24

    sget-object v5, LC5/b$a;->SLDoubleWrap:LC5/b$a;

    if-eq v4, v5, :cond_24

    sget-object v5, LC5/b$a;->SLLongWrap:LC5/b$a;

    if-eq v4, v5, :cond_24

    sget-object v5, LC5/b$a;->SLCharWrap:LC5/b$a;

    if-ne v4, v5, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-object v5, LC5/b$a;->String:LC5/b$a;

    if-eq v4, v5, :cond_23

    sget-object v5, LC5/b$a;->Float:LC5/b$a;

    if-eq v4, v5, :cond_23

    sget-object v5, LC5/b$a;->Int:LC5/b$a;

    if-eq v4, v5, :cond_23

    sget-object v5, LC5/b$a;->Short:LC5/b$a;

    if-eq v4, v5, :cond_23

    sget-object v5, LC5/b$a;->Double:LC5/b$a;

    if-eq v4, v5, :cond_23

    sget-object v5, LC5/b$a;->Long:LC5/b$a;

    if-eq v4, v5, :cond_23

    sget-object v5, LC5/b$a;->Char:LC5/b$a;

    if-ne v4, v5, :cond_3

    goto/16 :goto_5

    :cond_3
    sget-object v5, LC5/b$a;->SLFloatSlider:LC5/b$a;

    if-eq v4, v5, :cond_22

    sget-object v5, LC5/b$a;->SLIntSlider:LC5/b$a;

    if-ne v4, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    sget-object v5, LC5/b$a;->SLFloat01:LC5/b$a;

    if-ne v4, v5, :cond_5

    const v4, 0x7f0c00f3

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_5
    sget-object v5, LC5/b$a;->SLFloatSliderFPanel:LC5/b$a;

    if-ne v4, v5, :cond_6

    const v4, 0x7f0c00f2

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_6
    sget-object v5, LC5/b$a;->SLString:LC5/b$a;

    if-eq v4, v5, :cond_21

    sget-object v5, LC5/b$a;->SLPassword:LC5/b$a;

    if-eq v4, v5, :cond_21

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    if-eq v4, v5, :cond_21

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    if-eq v4, v5, :cond_21

    sget-object v5, LC5/b$a;->SLShort:LC5/b$a;

    if-eq v4, v5, :cond_21

    sget-object v5, LC5/b$a;->SLDouble:LC5/b$a;

    if-eq v4, v5, :cond_21

    sget-object v5, LC5/b$a;->SLLong:LC5/b$a;

    if-eq v4, v5, :cond_21

    sget-object v5, LC5/b$a;->SLChar:LC5/b$a;

    if-ne v4, v5, :cond_7

    goto/16 :goto_3

    :cond_7
    sget-object v5, LC5/b$a;->MLString:LC5/b$a;

    if-ne v4, v5, :cond_8

    const v4, 0x7f0c00df

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    sget-object v5, LC5/b$a;->InputFile:LC5/b$a;

    const v6, 0x7f0c00ee

    if-ne v4, v5, :cond_9

    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_9
    sget-object v5, LC5/b$a;->OutputFile:LC5/b$a;

    if-ne v4, v5, :cond_a

    const v4, 0x7f0c00f0

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    sget-object v5, LC5/b$a;->GameObject:LC5/b$a;

    if-eq v4, v5, :cond_20

    sget-object v5, LC5/b$a;->ComponentEntry:LC5/b$a;

    if-ne v4, v5, :cond_b

    goto/16 :goto_2

    :cond_b
    sget-object v5, LC5/b$a;->Boolean:LC5/b$a;

    const v6, 0x7f0c00e7

    if-ne v4, v5, :cond_c

    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_c
    sget-object v5, LC5/b$a;->SLBoolean:LC5/b$a;

    if-ne v4, v5, :cond_d

    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_d
    sget-object v5, LC5/b$a;->SLBooleanWrap:LC5/b$a;

    if-ne v4, v5, :cond_e

    const v4, 0x7f0c00e8

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_e
    sget-object v5, LC5/b$a;->CompostBoolean:LC5/b$a;

    if-ne v4, v5, :cond_f

    const v4, 0x7f0c00d9

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_f
    sget-object v5, LC5/b$a;->Tab:LC5/b$a;

    if-ne v4, v5, :cond_10

    const v4, 0x7f0c00f6

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_10
    sget-object v5, LC5/b$a;->Button:LC5/b$a;

    if-ne v4, v5, :cond_11

    const v4, 0x7f0c00d5

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_11
    sget-object v5, LC5/b$a;->ButtonMatchParent:LC5/b$a;

    if-ne v4, v5, :cond_12

    const v4, 0x7f0c00d6

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_12
    sget-object v5, LC5/b$a;->Color:LC5/b$a;

    if-ne v4, v5, :cond_13

    const v4, 0x7f0c00d7

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_13
    sget-object v5, LC5/b$a;->Dropdown:LC5/b$a;

    if-ne v4, v5, :cond_14

    const v4, 0x7f0c00dc

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_14
    sget-object v5, LC5/b$a;->SLDropdown:LC5/b$a;

    if-ne v4, v5, :cond_15

    const v4, 0x7f0c00eb

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_15
    sget-object v5, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    if-ne v4, v5, :cond_16

    const v4, 0x7f0c00ec

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_16
    sget-object v5, LC5/b$a;->Texture:LC5/b$a;

    const v6, 0x7f0c00fb

    if-eq v4, v5, :cond_1f

    sget-object v5, LC5/b$a;->UITexture:LC5/b$a;

    if-eq v4, v5, :cond_1f

    sget-object v5, LC5/b$a;->UIStyle:LC5/b$a;

    if-eq v4, v5, :cond_1f

    sget-object v5, LC5/b$a;->Matcap:LC5/b$a;

    if-ne v4, v5, :cond_17

    goto :goto_1

    :cond_17
    sget-object v5, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    if-ne v4, v5, :cond_18

    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_18
    sget-object v5, LC5/b$a;->Anchor:LC5/b$a;

    if-ne v4, v5, :cond_19

    const v4, 0x7f0c00d4

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_19
    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->TextAlignment:LC5/b$a;

    if-ne v4, v5, :cond_1a

    const v4, 0x7f0c00fa

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_1a
    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->FileListItem:LC5/b$a;

    if-ne v4, v5, :cond_1b

    const v4, 0x7f0c00dd

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_1b
    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->StringList:LC5/b$a;

    if-ne v4, v5, :cond_1c

    const v4, 0x7f0c00f5

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_1c
    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->CustomView:LC5/b$a;

    if-ne v4, v5, :cond_1e

    iget-object v4, v9, LC5/b;->g:LD5/e;

    if-eqz v4, :cond_1e

    invoke-interface {v4, v10, v9}, LD5/e;->a(Landroid/content/Context;LC5/b;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1d

    iget v4, v9, LC5/b;->i:I

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_1d
    iget-object v5, v9, LC5/b;->g:LD5/e;

    invoke-interface {v5, v4, v10, v9}, LD5/e;->onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V

    goto/16 :goto_0

    :cond_1e
    move-object v12, v11

    goto :goto_7

    :cond_1f
    :goto_1
    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_20
    :goto_2
    invoke-virtual {v2, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_21
    :goto_3
    const v4, 0x7f0c00ef

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_22
    :goto_4
    const v4, 0x7f0c00f1

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_23
    :goto_5
    const v4, 0x7f0c00e0

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :cond_24
    :goto_6
    const v4, 0x7f0c00f4

    invoke-virtual {v2, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    :goto_7
    if-eqz v12, :cond_76

    invoke-static {v12, v10}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    const/4 v13, -0x1

    if-nez p4, :cond_25

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v12, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_25
    const v4, 0x7f090544

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->CustomView:LC5/b$a;

    const/4 v7, 0x2

    const/16 v8, 0x8

    if-eq v4, v5, :cond_28

    if-eqz v6, :cond_28

    iget-object v4, v9, LC5/b;->l:Ljava/lang/String;

    if-eqz v4, :cond_27

    invoke-static {v4}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, v9, LC5/b;->t:Z

    if-eqz v4, :cond_26

    iget v4, v9, LC5/b;->r:I

    int-to-float v4, v4

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_26
    iget v4, v9, LC5/b;->s:I

    if-lez v4, :cond_28

    invoke-static {v10, v4}, LC5/h;->D(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_27
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    :goto_8
    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->Float:LC5/b$a;

    if-eq v4, v5, :cond_29

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    if-eq v4, v5, :cond_29

    sget-object v5, LC5/b$a;->SLFloatWrap:LC5/b$a;

    if-ne v4, v5, :cond_2a

    :cond_29
    new-instance v4, LE5/f;

    invoke-direct {v4}, LE5/f;-><init>()V

    invoke-virtual {v4, v9, v12, v6, v10}, LE5/f;->d(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    :cond_2a
    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->Double:LC5/b$a;

    if-eq v4, v5, :cond_72

    sget-object v5, LC5/b$a;->SLDouble:LC5/b$a;

    if-eq v4, v5, :cond_72

    sget-object v5, LC5/b$a;->SLDoubleWrap:LC5/b$a;

    if-ne v4, v5, :cond_2b

    goto/16 :goto_2e

    :cond_2b
    sget-object v5, LC5/b$a;->Int:LC5/b$a;

    if-eq v4, v5, :cond_71

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    if-eq v4, v5, :cond_71

    sget-object v5, LC5/b$a;->SLIntWrap:LC5/b$a;

    if-ne v4, v5, :cond_2c

    goto/16 :goto_2d

    :cond_2c
    sget-object v5, LC5/b$a;->Char:LC5/b$a;

    if-eq v4, v5, :cond_70

    sget-object v5, LC5/b$a;->SLChar:LC5/b$a;

    if-eq v4, v5, :cond_70

    if-ne v4, v5, :cond_2d

    goto/16 :goto_2c

    :cond_2d
    sget-object v5, LC5/b$a;->Short:LC5/b$a;

    if-eq v4, v5, :cond_6f

    sget-object v5, LC5/b$a;->SLShort:LC5/b$a;

    if-eq v4, v5, :cond_6f

    sget-object v5, LC5/b$a;->SLShortWrap:LC5/b$a;

    if-ne v4, v5, :cond_2e

    goto/16 :goto_2b

    :cond_2e
    sget-object v5, LC5/b$a;->Long:LC5/b$a;

    if-eq v4, v5, :cond_6e

    sget-object v5, LC5/b$a;->SLLong:LC5/b$a;

    if-eq v4, v5, :cond_6e

    sget-object v5, LC5/b$a;->SLLongWrap:LC5/b$a;

    if-ne v4, v5, :cond_2f

    goto/16 :goto_2a

    :cond_2f
    sget-object v5, LC5/b$a;->SLFloatSlider:LC5/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v14, 0x41000000    # 8.0f

    const/high16 v15, 0x40c00000    # 6.0f

    const v13, 0x7f0903d8

    const-string v11, " "

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x1

    if-eq v4, v5, :cond_6b

    :try_start_1
    sget-object v5, LC5/b$a;->SLFloatSliderFPanel:LC5/b$a;

    if-ne v4, v5, :cond_30

    goto/16 :goto_25

    :cond_30
    sget-object v5, LC5/b$a;->SLFloat01:LC5/b$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v5, :cond_32

    :try_start_2
    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    iget-object v3, v9, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v3, v0

    goto :goto_b

    :cond_31
    :goto_9
    invoke-static {v3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v3, v9, LC5/b;->b:LD5/h;

    invoke-interface {v3}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v3}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    const v3, 0x7f090447

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusBottomRight(F)V

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusTopRight(F)V

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusBottomLeft(F)V

    invoke-static {v4}, LNc/b;->k0(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setRadiusTopLeft(F)V

    iget v4, v9, LC5/b;->u:F

    div-float v4, v16, v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setValue(F)V

    new-instance v4, LC5/h$g0;

    invoke-direct {v4, v9}, LC5/h$g0;-><init>(LC5/b;)V

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar;->setOnValueChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/SeekBar/SeekBar$a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2f

    :goto_b
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2f

    :cond_32
    sget-object v5, LC5/b$a;->SLIntSlider:LC5/b$a;

    if-ne v4, v5, :cond_35

    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    iget-object v3, v9, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_33
    invoke-static {v3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v9, LC5/b;->x:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    cmpl-float v4, v3, v16

    if-lez v4, :cond_34

    float-to-int v3, v3

    goto :goto_c

    :cond_34
    move/from16 v3, v17

    :goto_c
    :try_start_6
    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v4}, LNc/b;->w1(Ljava/lang/String;)I

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    new-instance v4, LE5/g;

    invoke-direct {v4}, LE5/g;-><init>()V

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setStep(I)V

    iget v3, v9, LC5/b;->v:F

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMinValue(I)V

    iget v3, v9, LC5/b;->w:F

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMaxValue(I)V

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setFillColor(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBaseColor(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleFillColor(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextColor(I)V

    invoke-static {v15, v10}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBarHeight(I)V

    invoke-static {v14, v10}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleRadius(I)V

    invoke-static {v8, v10}, LNc/b;->p1(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextSize(I)V

    new-instance v3, LC5/h$a;

    invoke-direct {v3, v9, v4}, LC5/h$a;-><init>(LC5/b;LE5/g;)V

    invoke-virtual {v5, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setOnRangeSeekBarViewChangeListener(Ldn/e;)V

    new-instance v3, LC5/h$b;

    invoke-direct {v3, v9, v5}, LC5/h$b;-><init>(LC5/b;Lorg/mohammedalaa/seekbar/RangeSeekBarView;)V

    invoke-virtual {v4, v9, v12, v6, v3}, LE5/g;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;LE5/g$i;)V

    goto/16 :goto_2f

    :cond_35
    sget-object v5, LC5/b$a;->String:LC5/b$a;

    const v11, 0x7f09029b

    if-eq v4, v5, :cond_68

    sget-object v5, LC5/b$a;->SLString:LC5/b$a;

    if-eq v4, v5, :cond_68

    sget-object v5, LC5/b$a;->SLPassword:LC5/b$a;

    if-eq v4, v5, :cond_68

    sget-object v5, LC5/b$a;->SLStringWrap:LC5/b$a;

    if-eq v4, v5, :cond_68

    sget-object v5, LC5/b$a;->StringList:LC5/b$a;

    if-ne v4, v5, :cond_36

    goto/16 :goto_22

    :cond_36
    sget-object v5, LC5/b$a;->MLString:LC5/b$a;

    if-ne v4, v5, :cond_37

    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    new-instance v4, LC5/h$g;

    invoke-direct {v4, v9, v3}, LC5/h$g;-><init>(LC5/b;Landroid/view/View;)V

    iput-object v4, v9, LC5/b;->k:LD5/f;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v4

    new-instance v5, LC5/f;

    invoke-direct {v5, v9}, LC5/f;-><init>(LC5/b;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_e
    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v4

    new-instance v5, LC5/h$h;

    invoke-direct {v5, v9, v3}, LC5/h$h;-><init>(LC5/b;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_2f

    :cond_37
    sget-object v5, LC5/b$a;->InputFile:LC5/b$a;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const v13, 0x7f090285

    const v14, 0x7f09057e

    const-string v15, ""

    const-string v7, "/"

    if-eq v4, v5, :cond_63

    :try_start_a
    sget-object v5, LC5/b$a;->FileListItem:LC5/b$a;

    if-ne v4, v5, :cond_38

    goto/16 :goto_20

    :cond_38
    sget-object v5, LC5/b$a;->OutputFile:LC5/b$a;

    if-ne v4, v5, :cond_3c

    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v5, LC5/h$o;

    invoke-direct {v5, v9, v10, v4}, LC5/h$o;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    new-instance v6, LC5/h$p;

    invoke-direct {v6, v9, v10, v4}, LC5/h$p;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v8, v9, LC5/b;->b:LD5/h;

    invoke-interface {v8}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-nez v8, :cond_39

    goto :goto_f

    :cond_39
    move-object v15, v8

    :goto_f
    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-virtual {v15, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_3a
    if-eqz v4, :cond_3b

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3b
    new-instance v5, LC5/h$q;

    invoke-direct {v5, v9, v10, v4}, LC5/h$q;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, LC5/h$r;

    invoke-direct {v3, v9, v4}, LC5/h$r;-><init>(LC5/b;Landroid/widget/TextView;)V

    iput-object v3, v9, LC5/b;->k:LD5/f;

    goto/16 :goto_2f

    :cond_3c
    sget-object v5, LC5/b$a;->GameObject:LC5/b$a;

    if-ne v4, v5, :cond_42

    iget-object v3, v9, LC5/b;->c:LD5/k;

    if-eqz v3, :cond_73

    if-eqz v6, :cond_3f

    iget-object v3, v9, LC5/b;->l:Ljava/lang/String;

    if-eqz v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, LC5/b;->c:LD5/k;

    invoke-interface {v4}, LD5/k;->getExtraTittle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, v9, LC5/b;->t:Z

    if-eqz v3, :cond_3d

    iget v3, v9, LC5/b;->r:I

    int-to-float v3, v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3d
    iget v3, v9, LC5/b;->s:I

    if-lez v3, :cond_3f

    invoke-static {v10, v3}, LC5/h;->D(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10

    :cond_3e
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_3f
    :goto_10
    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v5, LC5/h$s;

    invoke-direct {v5, v9, v10, v4}, LC5/h$s;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    new-instance v6, LC5/h$t;

    invoke-direct {v6, v9, v10, v4}, LC5/h$t;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v7, v9, LC5/b;->c:LD5/k;

    invoke-interface {v7}, LD5/k;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v7

    if-eqz v4, :cond_41

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v7}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_40
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    :goto_11
    new-instance v7, LC5/h$u;

    invoke-direct {v7, v9, v10, v4}, LC5/h$u;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, LC5/h$w;

    invoke-direct {v3, v9, v4, v5, v6}, LC5/h$w;-><init>(LC5/b;Landroid/widget/TextView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v3, v9, LC5/b;->k:LD5/f;

    goto/16 :goto_2f

    :cond_42
    sget-object v5, LC5/b$a;->ComponentEntry:LC5/b$a;

    if-ne v4, v5, :cond_48

    iget-object v3, v9, LC5/b;->d:LD5/d;

    if-eqz v3, :cond_73

    if-eqz v6, :cond_45

    iget-object v3, v9, LC5/b;->l:Ljava/lang/String;

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, LC5/b;->d:LD5/d;

    invoke-interface {v4}, LD5/d;->getExtraTittle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, v9, LC5/b;->t:Z

    if-eqz v3, :cond_43

    iget v3, v9, LC5/b;->r:I

    int-to-float v3, v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_43
    iget v3, v9, LC5/b;->s:I

    if-lez v3, :cond_45

    invoke-static {v10, v3}, LC5/h;->D(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_12

    :cond_44
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_45
    :goto_12
    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v5, LC5/h$x;

    invoke-direct {v5, v9, v10, v4}, LC5/h$x;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    new-instance v6, LC5/h$y;

    invoke-direct {v6, v9, v10, v4}, LC5/h$y;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v7, v9, LC5/b;->d:LD5/d;

    invoke-interface {v7}, LD5/d;->get()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v7

    if-eqz v4, :cond_47

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v7, :cond_46

    :try_start_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_13

    :catch_5
    move-exception v0

    move-object v7, v0

    :try_start_c
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    :cond_46
    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_47
    :goto_13
    new-instance v7, LC5/h$z;

    invoke-direct {v7}, LC5/h$z;-><init>()V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, LC5/h$A;

    invoke-direct {v3, v9, v4, v5, v6}, LC5/h$A;-><init>(LC5/b;Landroid/widget/TextView;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v3, v9, LC5/b;->k:LD5/f;

    goto/16 :goto_2f

    :cond_48
    sget-object v5, LC5/b$a;->Boolean:LC5/b$a;

    if-eq v4, v5, :cond_62

    sget-object v5, LC5/b$a;->SLBoolean:LC5/b$a;

    if-eq v4, v5, :cond_62

    sget-object v5, LC5/b$a;->SLBooleanWrap:LC5/b$a;

    if-ne v4, v5, :cond_49

    goto/16 :goto_1f

    :cond_49
    sget-object v5, LC5/b$a;->CompostBoolean:LC5/b$a;

    if-ne v4, v5, :cond_4a

    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    const v3, 0x7f090555

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v9, LC5/b;->q:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v9, LC5/b;->q:[Ljava/lang/String;

    aget-object v5, v5, v17

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Lh/a;->setLabels(Ljava/util/ArrayList;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;->setCheckedTogglePosition(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_14

    :catch_6
    move-exception v0

    move-object v4, v0

    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_14
    new-instance v4, LC5/h$B;

    invoke-direct {v4, v9, v3}, LC5/h$B;-><init>(LC5/b;Lbelka/us/androidtoggleswitch/widgets/ToggleSwitch;)V

    iput-object v4, v9, LC5/b;->k:LD5/f;

    new-instance v4, LC5/h$C;

    invoke-direct {v4, v9}, LC5/h$C;-><init>(LC5/b;)V

    invoke-virtual {v3, v4}, Lh/a;->setOnToggleSwitchChangeListener(Lh/a$b;)V

    goto/16 :goto_2f

    :cond_4a
    sget-object v5, LC5/b$a;->Tab:LC5/b$a;

    if-ne v4, v5, :cond_4c

    const v3, 0x7f0904df

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v3, :cond_73

    iget-object v4, v9, LC5/b;->B:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    if-eqz v4, :cond_73

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->D()Lcom/google/android/material/tabs/TabLayout$i;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/material/tabs/TabLayout$i;->D(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$i;

    invoke-virtual {v3, v6}, Lcom/google/android/material/tabs/TabLayout;->e(Lcom/google/android/material/tabs/TabLayout$i;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_15

    :cond_4b
    :try_start_f
    iget v4, v9, LC5/b;->C:I

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->z(I)Lcom/google/android/material/tabs/TabLayout$i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$i;->r()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_16

    :catch_7
    move-exception v0

    move-object v4, v0

    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_16
    new-instance v4, LC5/h$D;

    invoke-direct {v4, v9}, LC5/h$D;-><init>(LC5/b;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/tabs/TabLayout;->d(Lcom/google/android/material/tabs/TabLayout$f;)V

    goto/16 :goto_2f

    :cond_4c
    sget-object v5, LC5/b$a;->Button:LC5/b$a;

    if-eq v4, v5, :cond_61

    sget-object v5, LC5/b$a;->ButtonMatchParent:LC5/b$a;

    if-ne v4, v5, :cond_4d

    goto/16 :goto_1e

    :cond_4d
    sget-object v3, LC5/b$a;->Color:LC5/b$a;

    const v5, 0x7f090283

    if-ne v4, v3, :cond_50

    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_73

    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    if-eqz v4, :cond_4e

    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->color_value:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    goto :goto_17

    :cond_4e
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :goto_17
    if-nez v4, :cond_4f

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iget-object v5, v9, LC5/b;->b:LD5/h;

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v6, v15, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-interface {v5, v6}, LD5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    :cond_4f
    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object v4

    new-instance v5, Lv3/k;

    new-instance v6, LC5/h$H;

    invoke-direct {v6, v9, v3}, LC5/h$H;-><init>(LC5/b;Landroid/widget/ImageView;)V

    sget-object v7, LW7/b;->f:LC8/a;

    iget-object v7, v7, LC8/a;->a:LD8/a;

    iget v7, v7, LD8/a;->s:I

    sget-object v8, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {v5, v6, v7, v8}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {v4, v5}, Lv3/o;->a(Lv3/k;)V

    new-instance v4, LC5/h$I;

    invoke-direct {v4, v9, v10, v3}, LC5/h$I;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2f

    :cond_50
    sget-object v3, LC5/b$a;->Dropdown:LC5/b$a;

    if-eq v4, v3, :cond_5e

    sget-object v3, LC5/b$a;->SLDropdown:LC5/b$a;

    if-eq v4, v3, :cond_5e

    sget-object v3, LC5/b$a;->SLDropdownWrap:LC5/b$a;

    if-ne v4, v3, :cond_51

    goto/16 :goto_1d

    :cond_51
    sget-object v3, LC5/b$a;->Texture:LC5/b$a;

    const v8, 0x7f070115

    if-eq v4, v3, :cond_56

    sget-object v3, LC5/b$a;->UITexture:LC5/b$a;

    if-eq v4, v3, :cond_56

    sget-object v3, LC5/b$a;->UIStyle:LC5/b$a;

    if-eq v4, v3, :cond_56

    sget-object v3, LC5/b$a;->Matcap:LC5/b$a;

    if-ne v4, v3, :cond_52

    goto/16 :goto_1a

    :cond_52
    sget-object v3, LC5/b$a;->CubemapOrGallery:LC5/b$a;

    if-ne v4, v3, :cond_55

    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    if-eqz v3, :cond_73

    :try_start_11
    invoke-static {v3}, LC5/h;->r(Landroid/widget/ImageView;)V

    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    if-eqz v4, :cond_54

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v5, :cond_54

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v6}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".meta/thumb.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_53

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v3, v5, v10, v8, v6}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    goto :goto_18

    :catch_8
    move-exception v0

    move-object v3, v0

    goto :goto_19

    :cond_53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v3, v5, v10, v8, v6}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    :cond_54
    :goto_18
    new-instance v5, LC5/h$M;

    invoke-direct {v5, v9, v10, v3}, LC5/h$M;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, LC5/h$N;

    invoke-direct {v5, v9, v10, v3, v4}, LC5/h$N;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_2f

    :goto_19
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2f

    :cond_55
    sget-object v3, LC5/b$a;->NoteText:LC5/b$a;

    if-ne v4, v3, :cond_73

    iget-object v3, v9, LC5/b;->I:LD5/n;

    if-eqz v3, :cond_73

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object v3

    new-instance v4, Lv3/k;

    new-instance v5, LC5/h$O;

    invoke-direct {v5, v9, v6}, LC5/h$O;-><init>(LC5/b;Landroid/widget/TextView;)V

    sget-object v6, LW7/b;->f:LC8/a;

    iget-object v6, v6, LC8/a;->a:LD8/a;

    iget v6, v6, LD8/a;->s:I

    sget-object v7, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {v4, v5, v6, v7}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {v3, v4}, Lv3/o;->a(Lv3/k;)V

    goto/16 :goto_2f

    :cond_56
    :goto_1a
    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v3, :cond_73

    :try_start_13
    invoke-static {v3}, LC5/h;->r(Landroid/widget/ImageView;)V

    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    if-eqz v4, :cond_5d

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v5, :cond_5d

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    iget-object v5, v9, LC5/b;->n:LC5/b$a;

    sget-object v6, LC5/b$a;->UITexture:LC5/b$a;

    if-ne v5, v6, :cond_57

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v6, "@@UIG@@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    if-eqz v5, :cond_57

    :try_start_14
    invoke-static {v3}, LC5/h;->r(Landroid/widget/ImageView;)V

    invoke-static/range {p5 .. p5}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v5

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LH3/h;->z1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/k;->H(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto/16 :goto_1b

    :catch_9
    move-exception v0

    move-object v5, v0

    :try_start_15
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1b

    :catch_a
    move-exception v0

    move-object v3, v0

    goto/16 :goto_1c

    :cond_57
    iget-object v5, v9, LC5/b;->n:LC5/b$a;

    sget-object v6, LC5/b$a;->Matcap:LC5/b$a;

    if-ne v5, v6, :cond_58

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v6, "@@MG@@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    if-eqz v5, :cond_58

    :try_start_16
    invoke-static {v3}, LC5/h;->r(Landroid/widget/ImageView;)V

    invoke-static/range {p5 .. p5}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v5

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LH3/f;->y1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bumptech/glide/k;->H(Ljava/io/File;)Lcom/bumptech/glide/j;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_1b

    :catch_b
    move-exception v0

    move-object v5, v0

    :try_start_17
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1b

    :cond_58
    iget-object v5, v9, LC5/b;->n:LC5/b$a;

    sget-object v6, LC5/b$a;->UIStyle:LC5/b$a;

    if-ne v5, v6, :cond_5a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v6}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".meta/thumb.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_59

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v3, v5, v10, v8, v6}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    goto/16 :goto_1b

    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v10, v6}, LIc/l;->j(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_1b

    :cond_5a
    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v6, ".ivo"

    invoke-static {v5, v6}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const v5, 0x7f070258

    invoke-static {v3, v5}, LVc/e;->U(Landroid/widget/ImageView;I)V

    goto :goto_1b

    :cond_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v6}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".texture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v3, v5, v10, v8, v6}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    goto :goto_1b

    :cond_5c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v3, v5, v10, v8, v6}, LVc/e;->Q(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;ILcom/bumptech/glide/load/engine/i;)V

    :cond_5d
    :goto_1b
    new-instance v5, LC5/h$K;

    invoke-direct {v5, v9, v10, v3}, LC5/h$K;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, LC5/h$L;

    invoke-direct {v5, v9, v10, v3, v4}, LC5/h$L;-><init>(LC5/b;Landroid/content/Context;Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_2f

    :goto_1c
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2f

    :cond_5e
    :goto_1d
    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    const v3, 0x7f090159

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090533

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0901d0

    invoke-virtual {v12, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_73

    iget-object v7, v9, LC5/b;->b:LD5/h;

    if-eqz v7, :cond_5f

    invoke-interface {v7}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v7

    if-eqz v7, :cond_5f

    iget-object v8, v7, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v11, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v8, v11, :cond_5f

    iget-object v7, v7, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v7, :cond_5f

    iput-object v7, v9, LC5/b;->l:Ljava/lang/String;

    :cond_5f
    iget-object v7, v9, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_60

    iget-object v7, v9, LC5/b;->m:Ljava/lang/String;

    if-eqz v7, :cond_60

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_60
    new-instance v6, LC5/h$J;

    invoke-direct {v6, v9, v4, v3, v5}, LC5/h$J;-><init>(LC5/b;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2f

    :cond_61
    :goto_1e
    const v4, 0x7f0902b3

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_73

    new-instance v5, LC5/h$E;

    invoke-direct {v5, v6, v9}, LC5/h$E;-><init>(Landroid/widget/TextView;LC5/b;)V

    iput-object v5, v9, LC5/b;->k:LD5/f;

    new-instance v5, LC5/h$F;

    invoke-direct {v5, v9, v3}, LC5/h$F;-><init>(LC5/b;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2f

    :cond_62
    :goto_1f
    new-instance v3, LE5/a;

    invoke-direct {v3}, LE5/a;-><init>()V

    invoke-virtual {v3, v9, v12, v6}, LE5/a;->b(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V

    goto/16 :goto_2f

    :cond_63
    :goto_20
    iget-object v4, v9, LC5/b;->b:LD5/h;

    if-eqz v4, :cond_73

    const v4, 0x7f09057b

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_64

    iget-object v5, v9, LC5/b;->f:LD5/i;

    if-eqz v5, :cond_64

    new-instance v5, LC5/h$i;

    invoke-direct {v5, v9, v3}, LC5/h$i;-><init>(LC5/b;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_64
    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v5, LC5/h$j;

    invoke-direct {v5, v9, v4, v10}, LC5/h$j;-><init>(LC5/b;Landroid/widget/TextView;Landroid/content/Context;)V

    new-instance v6, LC5/h$l;

    invoke-direct {v6, v10, v9, v4}, LC5/h$l;-><init>(Landroid/content/Context;LC5/b;Landroid/widget/TextView;)V

    iget-object v8, v9, LC5/b;->b:LD5/h;

    invoke-interface {v8}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v8

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-nez v8, :cond_65

    goto :goto_21

    :cond_65
    move-object v15, v8

    :goto_21
    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-virtual {v15, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v15, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_66
    if-eqz v4, :cond_67

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_67
    new-instance v5, LC5/h$m;

    invoke-direct {v5, v10, v9, v4}, LC5/h$m;-><init>(Landroid/content/Context;LC5/b;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, LC5/h$n;

    invoke-direct {v3, v9, v4}, LC5/h$n;-><init>(LC5/b;Landroid/widget/TextView;)V

    iput-object v3, v9, LC5/b;->k:LD5/f;

    goto/16 :goto_2f

    :cond_68
    :goto_22
    iget-object v4, v9, LC5/b;->b:LD5/h;

    if-eqz v4, :cond_73

    const v4, 0x7f09057b

    invoke-virtual {v12, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_69

    iget-object v5, v9, LC5/b;->f:LD5/i;

    if-eqz v5, :cond_69

    new-instance v5, LC5/h$c;

    invoke-direct {v5, v9, v3}, LC5/h$c;-><init>(LC5/b;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_69
    invoke-virtual {v12, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v9, LC5/b;->n:LC5/b$a;

    sget-object v5, LC5/b$a;->SLPassword:LC5/b$a;

    if-ne v4, v5, :cond_6a

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->Password:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    goto :goto_23

    :cond_6a
    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;->MultiLineText:Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;

    invoke-static {v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->e(Lcom/itsmagic/engine/Activities/Editor/Utils/F$a;Landroid/view/View;)V

    :goto_23
    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    new-instance v4, LC5/h$d;

    invoke-direct {v4, v9, v3}, LC5/h$d;-><init>(LC5/b;Landroid/view/View;)V

    iput-object v4, v9, LC5/b;->k:LD5/f;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :try_start_19
    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v4

    new-instance v5, LC5/e;

    invoke-direct {v5, v9}, LC5/e;-><init>(LC5/b;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v5, LC5/h$e;

    invoke-direct {v5, v9}, LC5/h$e;-><init>(LC5/b;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto :goto_24

    :catch_c
    move-exception v0

    move-object v4, v0

    :try_start_1a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_24
    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v4

    new-instance v5, LC5/h$f;

    invoke-direct {v5, v9, v3}, LC5/h$f;-><init>(LC5/b;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_2f

    :cond_6b
    :goto_25
    :try_start_1b
    iget-object v3, v9, LC5/b;->b:LD5/h;

    if-eqz v3, :cond_73

    iget-object v3, v9, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :catch_d
    move-exception v0

    move-object v3, v0

    goto/16 :goto_29

    :cond_6c
    :goto_26
    invoke-static {v3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v9, LC5/b;->x:F
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    cmpl-float v4, v3, v16

    const v5, 0x461c4000    # 10000.0f

    if-lez v4, :cond_6d

    mul-float/2addr v3, v5

    goto :goto_27

    :cond_6d
    const v3, 0x38d1b717    # 1.0E-4f

    :goto_27
    :try_start_1c
    iget-object v4, v9, LC5/b;->b:LD5/h;

    invoke-interface {v4}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v4

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v4}, LNc/b;->u1(Ljava/lang/String;)F

    move-result v16
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_e

    goto :goto_28

    :catch_e
    move-exception v0

    move-object v4, v0

    :try_start_1d
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_28
    new-instance v4, LE5/f;

    invoke-direct {v4}, LE5/f;-><init>()V

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setStep(I)V

    iget v3, v9, LC5/b;->v:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMinValue(I)V

    iget v3, v9, LC5/b;->w:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMaxValue(I)V

    mul-float v3, v16, v5

    float-to-int v3, v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setFillColor(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBaseColor(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleFillColor(I)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextColor(I)V

    invoke-static {v15, v10}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBarHeight(I)V

    invoke-static {v14, v10}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleRadius(I)V

    invoke-static {v8, v10}, LNc/b;->p1(ILandroid/content/Context;)I

    move-result v3

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextSize(I)V

    new-instance v3, LC5/h$e0;

    invoke-direct {v3, v5, v9, v4}, LC5/h$e0;-><init>(FLC5/b;LE5/f;)V

    invoke-virtual {v7, v3}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setOnRangeSeekBarViewChangeListener(Ldn/e;)V

    new-instance v8, LC5/h$f0;

    invoke-direct {v8, v9, v7, v5}, LC5/h$f0;-><init>(LC5/b;Lorg/mohammedalaa/seekbar/RangeSeekBarView;F)V

    move-object v3, v4

    move-object/from16 v4, p2

    move-object v5, v12

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, LE5/f;->e(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LE5/f$i;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_d

    goto :goto_2f

    :goto_29
    :try_start_1e
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2f

    :cond_6e
    :goto_2a
    new-instance v3, LE5/i;

    invoke-direct {v3}, LE5/i;-><init>()V

    invoke-virtual {v3, v9, v12, v6}, LE5/i;->c(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_2f

    :cond_6f
    :goto_2b
    new-instance v3, LE5/g;

    invoke-direct {v3}, LE5/g;-><init>()V

    invoke-virtual {v3, v9, v12, v6}, LE5/g;->d(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_2f

    :cond_70
    :goto_2c
    new-instance v4, LE5/c;

    invoke-direct {v4}, LE5/c;-><init>()V

    invoke-virtual {v4, v9, v12, v6, v3}, LE5/c;->b(LC5/b;Landroid/view/View;Landroid/widget/TextView;I)V

    goto :goto_2f

    :cond_71
    :goto_2d
    new-instance v3, LE5/g;

    invoke-direct {v3}, LE5/g;-><init>()V

    invoke-virtual {v3, v9, v12, v6}, LE5/g;->d(LC5/b;Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_2f

    :cond_72
    :goto_2e
    new-instance v3, LE5/e;

    invoke-direct {v3}, LE5/e;-><init>()V

    invoke-virtual {v3, v9, v12, v6, v10}, LE5/e;->c(LC5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;)V

    :cond_73
    :goto_2f
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v3

    if-eqz v3, :cond_75

    iget-object v3, v9, LC5/b;->N:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    if-eqz v3, :cond_75

    const v3, 0x7f0c00e2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v10}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    const v3, 0x7f0902ad

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0902ac

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    new-instance v5, LC5/h$P;

    invoke-direct {v5, v9}, LC5/h$P;-><init>(LC5/b;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object v1

    new-instance v3, Lv3/k;

    new-instance v5, LC5/h$Q;

    invoke-direct {v5, v9, v4, v10}, LC5/h$Q;-><init>(LC5/b;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    sget-object v6, LW7/b;->f:LC8/a;

    iget-object v6, v6, LC8/a;->a:LD8/a;

    iget v6, v6, LD8/a;->s:I

    sget-object v7, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {v3, v5, v6, v7}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {v1, v3}, Lv3/o;->a(Lv3/k;)V

    iget-object v1, v9, LC5/b;->K:Ljava/lang/String;

    iget-object v3, v9, LC5/b;->L:Ljava/lang/String;

    iget-object v5, v9, LC5/b;->M:Ljava/lang/String;

    invoke-static {v1, v3, v5}, LC5/h;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_74

    const/4 v3, -0x1

    if-eq v1, v3, :cond_74

    invoke-static {v10, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_30

    :cond_74
    const v1, 0x7f0700f8

    invoke-static {v10, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_30
    invoke-static {v4, v10}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    return-object v2

    :cond_75
    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    :cond_76
    return-object v12

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_77
    const/4 v1, 0x0

    return-object v1
.end method

.method public static y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "inflater",
            "entry",
            "positionInAdapter",
            "context"
        }
    .end annotation

    if-eqz p1, :cond_8

    iget-object v0, p2, LC5/b;->n:LC5/b$a;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c00e1

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    invoke-static {v0, p4}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v3, p2, LC5/b;->l:Ljava/lang/String;

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p2, LC5/b;->l:Ljava/lang/String;

    invoke-static {v3}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    move v9, v3

    :goto_2
    iget-object v3, p2, LC5/b;->p:[LC5/b;

    array-length v4, v3

    if-ge v9, v4, :cond_5

    aget-object v5, v3, v9

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, p1

    move v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p2, LC5/b;->p:[LC5/b;

    aget-object v4, v4, v9

    iget-boolean v4, v4, LC5/b;->H:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->i2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p3, p2, LC5/b;->N:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    if-eqz p3, :cond_7

    const p3, 0x7f0c00e2

    invoke-virtual {p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p4}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    const p3, 0x7f0902ad

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v1, 0x7f0902ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v2, LC5/h$c0;

    invoke-direct {v2, p2}, LC5/h$c0;-><init>(LC5/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, LN7/c;->I()Lv3/o;

    move-result-object p0

    new-instance p1, Lv3/k;

    new-instance p3, LC5/h$d0;

    invoke-direct {p3, p2, v1, p4}, LC5/h$d0;-><init>(LC5/b;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->a:LD8/a;

    iget v0, v0, LD8/a;->s:I

    sget-object v2, LN7/c$g;->Editor:LN7/c$g;

    invoke-direct {p1, p3, v0, v2}, Lv3/k;-><init>(Lv3/j;ILN7/c$g;)V

    invoke-virtual {p0, p1}, Lv3/o;->a(Lv3/k;)V

    iget-object p0, p2, LC5/b;->K:Ljava/lang/String;

    iget-object p1, p2, LC5/b;->L:Ljava/lang/String;

    iget-object p2, p2, LC5/b;->M:Ljava/lang/String;

    invoke-static {p0, p1, p2}, LC5/h;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_6

    const/4 p1, -0x1

    if-eq p0, p1, :cond_6

    invoke-static {p4, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    const p0, 0x7f0700f8

    invoke-static {p4, p0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-static {v1, p4}, LC5/h;->q(Landroid/view/View;Landroid/content/Context;)V

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public static synthetic z(Landroid/widget/LinearLayout;LC5/b;LC5/n;ILandroid/widget/CompoundButton;Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p5, :cond_0

    const/4 v0, -0x2

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v0, p1, LC5/b;->Q:LC5/a;

    invoke-virtual {v0}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, LC5/b;->Q:LC5/a;

    invoke-virtual {v0}, LC5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    iget-object p1, p1, LC5/b;->Q:LC5/a;

    iget-boolean p1, p1, LC5/a;->r:Z

    if-eq p5, p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2, p3}, LC5/n;->refresh(I)V

    :cond_1
    invoke-virtual {p0, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
