.class public Le6/l;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public final X:Le6/X;

.field public final Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

.field public final Z:Z

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public b0:Landroid/widget/LinearLayout;

.field public c0:Landroid/widget/ImageView;

.field public d0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

.field public e0:Landroid/widget/ImageView;

.field public f0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "graphView",
            "graphData",
            "editGlobalAttributes"
        }
    .end annotation

    if-eqz p3, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GLOBAL_ATTRIBUTES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTRIBUTES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Le6/l;->X:Le6/X;

    iput-object p2, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iput-boolean p3, p0, Le6/l;->Z:Z

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    return-void
.end method

.method public static synthetic A1(Le6/l;)Z
    .locals 0

    iget-boolean p0, p0, Le6/l;->Z:Z

    return p0
.end method

.method public static synthetic B1(Le6/l;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Le6/l;->E1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C1(Le6/l;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Le6/l;->P1(Z)V

    return-void
.end method

.method public static synthetic D1(Le6/l;)V
    .locals 0

    invoke-virtual {p0}, Le6/l;->R1()V

    return-void
.end method

.method private static synthetic F1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static U1(Landroid/view/View;Lr4/a$e;Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "side",
            "view",
            "data"
        }
    .end annotation

    new-instance v0, Le6/l;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Le6/l;-><init>(Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)V

    const/16 p2, 0x118

    invoke-static {p2}, LN7/c;->g(I)F

    move-result p2

    const/16 p3, 0x15e

    invoke-static {p3}, LN7/c;->f(I)F

    move-result p3

    invoke-static {p0, v0, p1, p2, p3}, Lr4/a;->k(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {v0, p0}, Le6/l;->T1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p0
.end method

.method public static W1(Landroid/view/View;Lr4/a$e;Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "side",
            "view",
            "data"
        }
    .end annotation

    new-instance v0, Le6/l;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, v1}, Le6/l;-><init>(Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)V

    const/16 p2, 0xfa

    invoke-static {p2}, LN7/c;->g(I)F

    move-result p2

    const/16 p3, 0x15e

    invoke-static {p3}, LN7/c;->f(I)F

    move-result p3

    invoke-static {p0, v0, p1, p2, p3}, Lr4/a;->k(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {v0, p0}, Le6/l;->T1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object p0
.end method

.method public static synthetic p1(Le6/l;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Le6/l;->V1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/l;->I1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Lga/H;Lga/H;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le6/l;->O1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Lga/H;Lga/H;)V

    return-void
.end method

.method public static synthetic s1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/l;->M1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/l;->L1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Le6/l;->F1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v1(Le6/l;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Le6/l;->G1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le6/l;->J1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic x1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/l;->H1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le6/l;->K1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z1(Le6/l;Landroid/view/View;Lga/H;Lga/H;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le6/l;->N1(Landroid/view/View;Lga/H;Lga/H;)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, LN7/c;->B()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0151

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v1, Le6/a;

    invoke-direct {v1}, Le6/a;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v3, 0x40c00000    # 6.0f

    if-eqz v1, :cond_1

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v1

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->CARD:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x7f0900bd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v3}, LNc/b;->k0(F)I

    move-result v3

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v3, v3

    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    const/4 v6, 0x2

    aput v3, v5, v6

    const/4 v6, 0x3

    aput v3, v5, v6

    const/4 v3, 0x4

    aput v0, v5, v3

    const/4 v3, 0x5

    aput v0, v5, v3

    const/4 v3, 0x6

    aput v0, v5, v3

    const/4 v3, 0x7

    aput v0, v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v0, 0x7f0900b9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Le6/l;->b0:Landroid/widget/LinearLayout;

    const v0, 0x7f0900b7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le6/l;->c0:Landroid/widget/ImageView;

    const v0, 0x7f0900ba

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    iput-object v0, p0, Le6/l;->d0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    const v0, 0x7f0900b8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le6/l;->e0:Landroid/widget/ImageView;

    const v0, 0x7f0900bc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le6/l;->f0:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Le6/l;->Z:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GLOBAL_ATTRIBUTES:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTRIBUTES:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Le6/l;->c0:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    new-instance v1, Le6/c;

    invoke-direct {v1, p0}, Le6/c;-><init>(Le6/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Le6/l;->a0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_6

    iget-object v1, p0, Le6/l;->d0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)V

    :cond_6
    iget-object v0, p0, Le6/l;->e0:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    new-instance v1, Le6/d;

    invoke-direct {v1, p0}, Le6/d;-><init>(Le6/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-virtual {p0}, Le6/l;->R1()V

    return-object v2
.end method

.method public final E1()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Le6/l;->Z:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->e0()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->H()V

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic G1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public final synthetic H1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Le6/l;->S1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    return-void
.end method

.method public final synthetic I1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Le6/l;->X1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    return-void
.end method

.method public final synthetic J1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/widget/CompoundButton;Z)V
    .locals 0

    iput-boolean p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le6/l;->P1(Z)V

    return-void
.end method

.method public final synthetic K1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Ljava/util/List;Landroid/view/View;)V
    .locals 1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delete attribute \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Le6/l$b;

    invoke-direct {v0, p0, p2, p1}, Le6/l$b;-><init>(Le6/l;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    const-string p1, "Delete"

    invoke-static {p1, p3, v0}, LZ6/c;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    return-void
.end method

.method public final synthetic L1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Le6/l;->X:Le6/X;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Le6/X;->p(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method

.method public final synthetic M1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, Le6/l;->X:Le6/X;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Le6/X;->s(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method

.method public final synthetic N1(Landroid/view/View;Lga/H;Lga/H;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Le6/l;->Q1(Landroid/view/View;Lga/H;Lga/H;)V

    return-void
.end method

.method public final synthetic O1(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Lga/H;Lga/H;)V
    .locals 3

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->a(Lga/H;Lga/H;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-boolean p2, p0, Le6/l;->Z:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Le6/l;->P1(Z)V

    invoke-virtual {p0}, Le6/l;->R1()V

    return-void
.end method

.method public final P1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rebuildGraph"
        }
    .end annotation

    iget-boolean v0, p0, Le6/l;->Z:Z

    if-eqz v0, :cond_3

    invoke-static {}, LK8/a;->l()Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->k()V

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    iget-object v0, p0, Le6/l;->X:Le6/X;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Le6/X;->m0()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Le6/X;->i0()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->y0()V

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_5
    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    if-eqz v0, :cond_6

    iget-object v0, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->i0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeFileExecutor;->storeRuntimeAttributeValues()V

    :cond_6
    iget-object v0, p0, Le6/l;->X:Le6/X;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    iget-object p1, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->C0()V

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Le6/X;->i0()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final Q1(Landroid/view/View;Lga/H;Lga/H;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "type",
            "listItemType"
        }
    .end annotation

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTRIBUTE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le6/l$a;

    invoke-direct {v2, p0, p2, p3}, Le6/l$a;-><init>(Le6/l;Lga/H;Lga/H;)V

    const-string p2, "Attribute name"

    invoke-static {p1, v0, p2, v1, v2}, LZ6/f;->v1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    return-void
.end method

.method public final R1()V
    .locals 14

    invoke-virtual {p0}, Le6/l;->E1()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Le6/l;->b0:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_a

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const v4, 0x7f0c0150

    iget-object v5, p0, Le6/l;->b0:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0900b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f0900b3

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0900b6

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v9, 0x7f0900b5

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900b0

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f0900af

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0900b2

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v5, :cond_2

    iget-object v13, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v13, Le6/g;

    invoke-direct {v13, p0, v3}, Le6/g;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v7, :cond_3

    iget-object v5, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->type:Lga/H;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeStoredValue;->g()Lga/H;

    move-result-object v13

    invoke-static {v5, v13}, Lga/a;->e(Lga/H;Lga/H;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Le6/h;

    invoke-direct {v5, p0, v3}, Le6/h;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-virtual {v7, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-boolean v5, p0, Le6/l;->Z:Z

    if-eqz v5, :cond_5

    iput-boolean v6, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    const/16 v5, 0x8

    if-eqz v9, :cond_4

    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_6

    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-eqz v8, :cond_6

    iget-boolean v5, v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->visible:Z

    invoke-virtual {v8, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v5, Le6/i;

    invoke-direct {v5, p0, v3}, Le6/i;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-virtual {v8, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    :goto_1
    if-eqz v10, :cond_7

    new-instance v5, Le6/j;

    invoke-direct {v5, p0, v3, v0}, Le6/j;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Ljava/util/List;)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    if-eqz v11, :cond_8

    new-instance v5, Le6/k;

    invoke-direct {v5, p0, v3}, Le6/k;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-virtual {v11, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v12, :cond_9

    new-instance v5, Le6/b;

    invoke-direct {v5, p0, v3}, Le6/b;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v3, p0, Le6/l;->b0:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_a
    :goto_2
    return-void
.end method

.method public final S1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "attribute"
        }
    .end annotation

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTRIBUTE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Le6/l$c;

    invoke-direct {v2, p0, p2}, Le6/l$c;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    const-string p2, "Attribute name"

    invoke-static {p1, v0, p2, v1, v2}, LZ6/f;->v1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    return-void
.end method

.method public final T1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanelArea"
        }
    .end annotation

    iput-object p1, p0, Le6/l;->a0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public final V1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    invoke-virtual {p0}, Le6/l;->E1()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le6/f;

    invoke-direct {v0, p0, p1}, Le6/f;-><init>(Le6/l;Landroid/view/View;)V

    invoke-static {v0}, Lga/a;->b(Lga/a$d;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public final X1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "attribute"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v1, Le6/e;

    invoke-direct {v1, p0, p2}, Le6/e;-><init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V

    invoke-static {v1}, Lga/a;->b(Lga/a$d;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, v0, p2}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 4

    new-instance v0, Le6/l;

    iget-object v1, p0, Le6/l;->X:Le6/X;

    iget-object v2, p0, Le6/l;->Y:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-boolean v3, p0, Le6/l;->Z:Z

    invoke-direct {v0, v1, v2, v3}, Le6/l;-><init>(Le6/X;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Z)V

    return-object v0
.end method
