.class public LB4/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final k0:Ljava/lang/String; = "BakeProgress"


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

.field public g0:Lorg/ITsMagic/Atlas/g;

.field public h0:Landroid/widget/LinearLayout;

.field public i0:Z

.field public j0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Bake generator"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB4/c;->i0:Z

    return-void
.end method

.method public static synthetic p1(LB4/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LB4/c;->c0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic q1(LB4/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LB4/c;->d0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic r1(LB4/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LB4/c;->e0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic s1(LB4/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, LB4/c;->f0:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic t1(LB4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iget-object p0, p0, LB4/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method

.method public static synthetic u1(LB4/c;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, LB4/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic v1(LB4/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, LB4/c;->j0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic w1(LB4/c;)Lorg/ITsMagic/Atlas/g;
    .locals 0

    iget-object p0, p0, LB4/c;->g0:Lorg/ITsMagic/Atlas/g;

    return-object p0
.end method

.method public static x1(Landroid/content/Context;Lorg/ITsMagic/Atlas/g;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "generator"
        }
    .end annotation

    new-instance p0, LB4/c;

    invoke-direct {p0}, LB4/c;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0, v0}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iput-object v0, p0, LB4/c;->X:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-object p1, p0, LB4/c;->g0:Lorg/ITsMagic/Atlas/g;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    return-object v0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LB4/c$c;

    invoke-direct {v1, p0}, LB4/c$c;-><init>(LB4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LB4/c;->j0:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, LB4/c;->j0:Landroid/view/View;

    new-instance v2, LB4/c$d;

    invoke-direct {v2, p0}, LB4/c$d;-><init>(LB4/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LB4/c;->h0:Landroid/widget/LinearLayout;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/c;->Y:Landroid/widget/TextView;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/c;->Z:Landroid/widget/TextView;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/c;->a0:Landroid/widget/TextView;

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, LB4/c;->b0:Landroid/widget/TextView;

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, LB4/c;

    invoke-direct {v0}, LB4/c;-><init>()V

    return-object v0
.end method

.method public n1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, LB4/c;->Y:Landroid/widget/TextView;

    iget-object v1, p0, LB4/c;->c0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/c;->Z:Landroid/widget/TextView;

    iget-object v1, p0, LB4/c;->d0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/c;->a0:Landroid/widget/TextView;

    iget-object v1, p0, LB4/c;->e0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LB4/c;->b0:Landroid/widget/TextView;

    iget-object v1, p0, LB4/c;->f0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, LB4/c;->i0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LB4/c;->i0:Z

    :try_start_0
    iget-object v0, p0, LB4/c;->g0:Lorg/ITsMagic/Atlas/g;

    new-instance v1, LB4/c$a;

    invoke-direct {v1, p0}, LB4/c$a;-><init>(LB4/c;)V

    invoke-virtual {v0, v1}, Lorg/ITsMagic/Atlas/g;->p(Lorg/ITsMagic/Atlas/g$b;)V
    :try_end_0
    .catch Lorg/ITsMagic/Atlas/InvalidBufferAllocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "Ops!"

    iput-object v0, p0, LB4/c;->c0:Ljava/lang/String;

    const-string v0, "Unable to allocate native memory on your phone."

    iput-object v0, p0, LB4/c;->d0:Ljava/lang/String;

    const-string v0, "Some smart phones have this problem in the implementation of C++"

    iput-object v0, p0, LB4/c;->e0:Ljava/lang/String;

    const-string v0, "We are looking for the solution."

    iput-object v0, p0, LB4/c;->f0:Ljava/lang/String;

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "Close"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LB4/c$b;

    invoke-direct {v1, p0}, LB4/c$b;-><init>(LB4/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, LB4/c;->h0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void
.end method
