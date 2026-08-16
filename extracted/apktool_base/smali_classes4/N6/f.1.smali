.class public LN6/f;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public final X:LN6/H;

.field public final Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public a0:Landroid/widget/LinearLayout;

.field public b0:Landroid/widget/ImageView;

.field public c0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

.field public d0:Landroid/widget/ImageView;

.field public e0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LN6/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphView",
            "graphData"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROPERTIES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, LN6/f;->X:LN6/H;

    iput-object p2, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a1(Z)V

    return-void
.end method

.method private E1()V
    .locals 10

    iget-object v0, p0, LN6/f;->a0:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    if-nez v1, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    :cond_2
    iget-object v0, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    if-nez v1, :cond_3

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    :cond_3
    iget-object v0, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-boolean v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->isPostProcessing:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->i(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->k()V

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, LN6/f;->X:LN6/H;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LN6/H;->b0()V

    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->attributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const v3, 0x7f0c0199

    iget-object v4, p0, LN6/f;->a0:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0900b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0900b3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0900b0

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0900af

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v9, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v6, :cond_8

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->type:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    invoke-static {v4}, LN6/f;->I1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v4, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;->settings:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphSettings;->isPostProcessing:Z

    if-eqz v4, :cond_9

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->k(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v5, 0x1

    :cond_9
    if-eqz v7, :cond_b

    if-eqz v5, :cond_a

    const/4 v4, 0x4

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_a
    new-instance v4, LN6/d;

    invoke-direct {v4, p0, v2}, LN6/d;-><init>(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    invoke-virtual {v7, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_1
    if-eqz v8, :cond_c

    new-instance v4, LN6/e;

    invoke-direct {v4, p0, v2}, LN6/e;-><init>(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v2, p0, LN6/f;->a0:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private F1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanelArea"
        }
    .end annotation

    iput-object p1, p0, LN6/f;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static G1(Landroid/view/View;Lr4/a$e;LN6/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 1
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
            "graphView",
            "graphData"
        }
    .end annotation

    new-instance v0, LN6/f;

    invoke-direct {v0, p2, p3}, LN6/f;-><init>(LN6/H;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)V

    const/16 p2, 0xfa

    invoke-static {p2}, LN7/c;->g(I)F

    move-result p2

    const/16 p3, 0x15e

    invoke-static {p3}, LN7/c;->f(I)F

    move-result p3

    invoke-static {p0, v0, p1, p2, p3}, Lr4/a;->k(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-direct {v0, p0}, LN6/f;->F1(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    return-object p0
.end method

.method private H1(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    iget-object v0, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$b;

    invoke-direct {v2, p0, p1}, LN6/f$b;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Number"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$c;

    invoke-direct {v2, p0, p1}, LN6/f$c;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Number 01"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$d;

    invoke-direct {v2, p0, p1}, LN6/f$d;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Float2"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$e;

    invoke-direct {v2, p0, p1}, LN6/f$e;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Float3"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$f;

    invoke-direct {v2, p0, p1}, LN6/f$f;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Float4"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$g;

    invoke-direct {v2, p0, p1}, LN6/f$g;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Color"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$h;

    invoke-direct {v2, p0, p1}, LN6/f$h;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Texture"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ldd/b;

    new-instance v2, LN6/f$i;

    invoke-direct {v2, p0, p1}, LN6/f$i;-><init>(LN6/f;Landroid/view/View;)V

    const-string v3, "Cubemap"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public static I1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v0, :cond_1

    const-string p0, "Number 01"

    return-object p0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v0, :cond_2

    const-string p0, "Color"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p1(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/f;->B1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q1(LN6/f;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LN6/f;->z1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, LN6/f;->y1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s1(LN6/f;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, LN6/f;->A1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t1(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/f;->C1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u1(LN6/f;Landroid/view/View;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LN6/f;->D1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    return-void
.end method

.method public static synthetic v1(LN6/f;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;
    .locals 0

    iget-object p0, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    return-object p0
.end method

.method public static synthetic w1(LN6/f;)LN6/H;
    .locals 0

    iget-object p0, p0, LN6/f;->X:LN6/H;

    return-object p0
.end method

.method public static synthetic x1(LN6/f;)V
    .locals 0

    invoke-direct {p0}, LN6/f;->E1()V

    return-void
.end method

.method private static synthetic y1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic z1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LN6/f;->H1(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final synthetic A1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public final synthetic B1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;Landroid/view/View;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delete attribute \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, LN6/f$a;

    invoke-direct {v0, p0, p1}, LN6/f$a;-><init>(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    const-string p1, "Delete"

    invoke-static {p1, p2, v0}, LZ6/c;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    return-void
.end method

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

    const v3, 0x7f0c019a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    new-instance v1, LN6/a;

    invoke-direct {v1}, LN6/a;-><init>()V

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

    iput-object v0, p0, LN6/f;->a0:Landroid/widget/LinearLayout;

    const v0, 0x7f0900b7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LN6/f;->b0:Landroid/widget/ImageView;

    const v0, 0x7f0900ba

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    iput-object v0, p0, LN6/f;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    const v0, 0x7f0900b8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LN6/f;->d0:Landroid/widget/ImageView;

    const v0, 0x7f0900bc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LN6/f;->e0:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROPERTIES:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, LN6/f;->b0:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    new-instance v1, LN6/b;

    invoke-direct {v1, p0}, LN6/b;-><init>(LN6/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, LN6/f;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_5

    iget-object v1, p0, LN6/f;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(Lcom/itsmagic/engine/Activities/Editor/Utils/DragPanelView;)V

    :cond_5
    iget-object v0, p0, LN6/f;->d0:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    new-instance v1, LN6/c;

    invoke-direct {v1, p0}, LN6/c;-><init>(LN6/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-direct {p0}, LN6/f;->E1()V

    return-object v2
.end method

.method public final synthetic C1(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;Landroid/view/View;)V
    .locals 0

    iget-object p2, p0, LN6/f;->X:LN6/H;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, LN6/H;->p(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphAttribute;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    return-void
.end method

.method public final D1(Landroid/view/View;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "type"
        }
    .end annotation

    iget-object v0, p0, LN6/f;->Y:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p2, v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v1, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/A;->a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/ShaderGraphData;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADER_GRAPH_MAX_TEXTURES_LIMIT_REACHED:LAc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v1, LN6/f$j;

    invoke-direct {v1, p0, p2}, LN6/f$j;-><init>(LN6/f;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)V

    const-string p2, "Attribute name"

    const-string v2, "Attribute"

    invoke-static {p1, v0, p2, v2, v1}, LZ6/f;->v1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    return-void
.end method
