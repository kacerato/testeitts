.class public Lh6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final X:Ljava/lang/String; = "OldVersionBlock"

.field public static Y:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "block"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p1()V
    .locals 0

    invoke-static {}, Lh6/a;->s1()V

    return-void
.end method

.method public static synthetic q1(Z)Z
    .locals 0

    sput-boolean p0, Lh6/a;->Y:Z

    return p0
.end method

.method public static r1()V
    .locals 5

    sget-boolean v0, Lh6/a;->Y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Led/c;

    new-instance v1, Lh6/a$a;

    invoke-direct {v1}, Lh6/a$a;-><init>()V

    invoke-direct {v0, v1}, Led/c;-><init>(Lhd/d;)V

    new-instance v1, Lh6/a$b;

    invoke-direct {v1}, Lh6/a$b;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->f()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$g;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Lhd/e;

    const-string v3, "PHPBackend/view/version/"

    const-string v4, "status.php"

    invoke-static {v3, v4}, LH8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lhd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Led/c;->d(Lhd/e;)V

    return-void
.end method

.method public static s1()V
    .locals 4

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v2, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c015e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh6/a$c;

    invoke-direct {v1, p0}, Lh6/a$c;-><init>(Lh6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090587

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lh6/a$d;

    invoke-direct {v2, p0}, Lh6/a$d;-><init>(Lh6/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_UPDATE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901a2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OLD_VERSION_BLOCK_PANEL_TITTLE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OLD_VERSION_BLOCK_PANEL_DESC:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-static {}, Lh6/a;->s1()V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lh6/a;

    invoke-direct {v0}, Lh6/a;-><init>()V

    return-object v0
.end method
