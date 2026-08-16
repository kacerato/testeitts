.class public Li5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final l0:Ljava/lang/String; = "UVBakeProgressPanel"


# instance fields
.field public X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public a0:Landroid/widget/TextView;

.field public b0:Landroid/widget/TextView;

.field public c0:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Ljava/lang/String;

.field public g0:Lorg/ITsMagic/Atlas/e;

.field public h0:Lorg/ITsMagic/Atlas/e$c;

.field public i0:Landroid/widget/LinearLayout;

.field public j0:Z

.field public k0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li5/a;->j0:Z

    return-void
.end method

.method public static synthetic p1(Li5/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li5/a;->c0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic q1(Li5/a;)Lorg/ITsMagic/Atlas/e$c;
    .locals 0

    iget-object p0, p0, Li5/a;->h0:Lorg/ITsMagic/Atlas/e$c;

    return-object p0
.end method

.method public static synthetic r1(Li5/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li5/a;->d0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic s1(Li5/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li5/a;->e0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic t1(Li5/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Li5/a;->f0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic u1(Li5/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iget-object p0, p0, Li5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method

.method public static synthetic v1(Li5/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, Li5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static w1(ZLorg/ITsMagic/Atlas/e;Lorg/ITsMagic/Atlas/e$c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "useSimpleWhiteAtlas",
            "generator",
            "listener"
        }
    .end annotation

    new-instance v0, Li5/a;

    invoke-direct {v0}, Li5/a;-><init>()V

    const/16 v1, 0xc8

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v1

    const/16 v2, 0x96

    invoke-static {v2}, LN7/c;->f(I)F

    move-result v2

    invoke-static {v0, v1, v2}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iput-object v1, v0, Li5/a;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-object p1, v0, Li5/a;->g0:Lorg/ITsMagic/Atlas/e;

    iput-object p2, v0, Li5/a;->h0:Lorg/ITsMagic/Atlas/e$c;

    iput-boolean p0, v0, Li5/a;->k0:Z

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    return-object v1
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Li5/a$c;

    invoke-direct {v1, p0}, Li5/a$c;-><init>(Li5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Li5/a;->i0:Landroid/widget/LinearLayout;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Li5/a;->Y:Landroid/widget/TextView;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Li5/a;->Z:Landroid/widget/TextView;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Li5/a;->a0:Landroid/widget/TextView;

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Li5/a;->b0:Landroid/widget/TextView;

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Li5/a;

    invoke-direct {v0}, Li5/a;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Li5/a;->Y:Landroid/widget/TextView;

    iget-object v1, p0, Li5/a;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Li5/a;->Z:Landroid/widget/TextView;

    iget-object v1, p0, Li5/a;->d0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Li5/a;->a0:Landroid/widget/TextView;

    iget-object v1, p0, Li5/a;->e0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Li5/a;->b0:Landroid/widget/TextView;

    iget-object v1, p0, Li5/a;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Li5/a;->j0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Li5/a;->j0:Z

    :try_start_0
    iget-object v0, p0, Li5/a;->g0:Lorg/ITsMagic/Atlas/e;

    iget-boolean v1, p0, Li5/a;->k0:Z

    new-instance v2, Li5/a$a;

    invoke-direct {v2, p0}, Li5/a$a;-><init>(Li5/a;)V

    invoke-virtual {v0, v1, v2}, Lorg/ITsMagic/Atlas/e;->l(ZLorg/ITsMagic/Atlas/e$c;)V
    :try_end_0
    .catch Lorg/ITsMagic/Atlas/InvalidBufferAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "Ops!"

    iput-object v0, p0, Li5/a;->c0:Ljava/lang/String;

    const-string v0, "Unable to allocate native memory on your phone."

    iput-object v0, p0, Li5/a;->d0:Ljava/lang/String;

    const-string v0, "Some smart phones have this problem in the implementation of C++"

    iput-object v0, p0, Li5/a;->e0:Ljava/lang/String;

    const-string v0, "We are looking for the solution."

    iput-object v0, p0, Li5/a;->f0:Ljava/lang/String;

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "Close"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Li5/a$b;

    invoke-direct {v1, p0}, Li5/a$b;-><init>(Li5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Li5/a;->i0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void
.end method
