.class public Lw6/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final C0:Ljava/lang/String; = "OpenProjectPanel"

.field public static final D0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final E0:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:F

.field public final X:Ln7/d;

.field public final Y:Ln7/e;

.field public Z:Lh7/d;

.field public a0:Landroid/widget/LinearLayout;

.field public b0:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

.field public c0:Lx6/c;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;

.field public f0:Landroid/widget/TextView;

.field public g0:Landroid/widget/TextView;

.field public h0:Z

.field public i0:Landroid/view/View;

.field public j0:Landroid/view/View;

.field public k0:Landroid/view/View;

.field public l0:Landroid/view/View;

.field public m0:Landroid/view/View;

.field public n0:Landroid/view/View;

.field public o0:Landroid/view/View;

.field public p0:Landroid/view/View;

.field public q0:Landroid/widget/TextView;

.field public r0:Landroid/widget/TextView;

.field public s0:Landroid/widget/TextView;

.field public t0:Landroid/widget/TextView;

.field public u0:Landroid/view/View;

.field public v0:Landroid/view/View;

.field public w0:Landroid/view/View;

.field public x0:Landroid/widget/FrameLayout;

.field public y0:Landroid/widget/FrameLayout;

.field public z0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lw6/b;->D0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lw6/b;->E0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROJECTS:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lw6/b$k;

    invoke-direct {v0, p0}, Lw6/b$k;-><init>(Lw6/b;)V

    iput-object v0, p0, Lw6/b;->X:Ln7/d;

    new-instance v0, Lw6/b$l;

    invoke-direct {v0, p0}, Lw6/b$l;-><init>(Lw6/b;)V

    iput-object v0, p0, Lw6/b;->Y:Ln7/e;

    const/4 v0, 0x0

    iput v0, p0, Lw6/b;->B0:F

    sget-object v0, Lw6/b;->E0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static I1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3

    new-instance v0, Lw6/b;

    invoke-direct {v0}, Lw6/b;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    return-object v0
.end method

.method public static synthetic p1(Lw6/b;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lw6/b;->C1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q1(Lw6/b;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw6/b;->K1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r1(Lw6/b;Lx6/c;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lw6/b;->H1(Lx6/c;Z)V

    return-void
.end method

.method public static synthetic s1(Lw6/b;)Lh7/d;
    .locals 0

    iget-object p0, p0, Lw6/b;->Z:Lh7/d;

    return-object p0
.end method

.method public static synthetic t1(Lw6/b;)Lx6/c;
    .locals 0

    iget-object p0, p0, Lw6/b;->c0:Lx6/c;

    return-object p0
.end method

.method public static synthetic u1(Lw6/b;Lx6/c;)Lx6/c;
    .locals 0

    iput-object p1, p0, Lw6/b;->c0:Lx6/c;

    return-object p1
.end method

.method public static synthetic v1(Lw6/b;)V
    .locals 0

    invoke-virtual {p0}, Lw6/b;->J1()V

    return-void
.end method

.method public static synthetic w1(Lw6/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lw6/b;->A1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x1(Lw6/b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lw6/b;->g0:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic y1(Lw6/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw6/b;->G1(Ljava/lang/String;)V

    return-void
.end method

.method public static z1()Z
    .locals 1

    sget-object v0, Lw6/b;->D0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public final A1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceProjectName",
            "targetProjectName"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-static {p2}, LTc/b;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "Ops!"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100bf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, LZ6/i$g;

    invoke-direct {p2}, LZ6/i$g;-><init>()V

    invoke-static {v1, p1, p2}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    return-void

    :cond_2
    const-string v0, "Files"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, LZ6/i$g;

    invoke-direct {p1}, LZ6/i$g;-><init>()V

    const-string p2, "Files is a reserved name, please try another"

    invoke-static {v1, p2, p1}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, LZ6/i$g;

    invoke-direct {p1}, LZ6/i$g;-><init>()V

    const-string p2, "Choose a different project name"

    invoke-static {v1, p2, p1}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    return-void

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/io/File;

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lw6/b$j;

    invoke-direct {v1, p0, p1, v0, p2}, Lw6/b$j;-><init>(Lw6/b;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lw6/b$m;

    invoke-direct {p1, p0, v1}, Lw6/b$m;-><init>(Lw6/b;Ljava/lang/Runnable;)V

    const-string p2, "Project exists"

    const-string v0, "A project with this name already exists. Replace it?"

    invoke-static {p2, v0, p1}, LZ6/c;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    :cond_7
    :goto_2
    new-instance p1, LZ6/i$g;

    invoke-direct {p1}, LZ6/i$g;-><init>()V

    const-string p2, "Source project was not found"

    invoke-static {v1, p2, p1}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final B1()Lx6/c;
    .locals 5

    iget-object v0, p0, Lw6/b;->Y:Ln7/e;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lw6/b;->C1()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ln7/e;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    iget-object v4, p0, Lw6/b;->X:Ln7/d;

    invoke-interface {v4, v3}, Ln7/d;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Lx6/c;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lx6/c;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lx6/c;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lw6/b;->D1(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    move-result-object v1

    iput-object v1, v0, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public C0()Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    sget-object v0, LK8/c;->e:LK8/c$a;

    sget-object v1, LK8/c$a;->Landscape:LK8/c$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0189

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0188

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    new-instance v1, Lw6/b$t;

    invoke-direct {v1, p0}, Lw6/b$t;-><init>(Lw6/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Projects"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f09056b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->d0:Landroid/view/View;

    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->e0:Landroid/view/View;

    const v1, 0x7f0903cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lw6/b;->f0:Landroid/widget/TextView;

    const v1, 0x7f0903c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lw6/b;->g0:Landroid/widget/TextView;

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->i0:Landroid/view/View;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lw6/b;->q0:Landroid/widget/TextView;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->m0:Landroid/view/View;

    const v1, 0x7f09041d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->n0:Landroid/view/View;

    const v1, 0x7f090464

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->o0:Landroid/view/View;

    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lw6/b;->x0:Landroid/widget/FrameLayout;

    const v1, 0x7f090138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->u0:Landroid/view/View;

    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lw6/b;->r0:Landroid/widget/TextView;

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->j0:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->k0:Landroid/view/View;

    const v1, 0x7f09012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lw6/b;->y0:Landroid/widget/FrameLayout;

    const v1, 0x7f09012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->v0:Landroid/view/View;

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lw6/b;->s0:Landroid/widget/TextView;

    const v1, 0x7f090589

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->p0:Landroid/view/View;

    const v1, 0x7f09058b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lw6/b;->z0:Landroid/widget/FrameLayout;

    const v1, 0x7f09058a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->w0:Landroid/view/View;

    const v1, 0x7f09058c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lw6/b;->t0:Landroid/widget/TextView;

    const v1, 0x7f090374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lw6/b;->l0:Landroid/view/View;

    const v1, 0x7f0905c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lw6/b$u;

    invoke-direct {v3, p0}, Lw6/b$u;-><init>(Lw6/b;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lw6/b$v;

    invoke-direct {v3, p0}, Lw6/b$v;-><init>(Lw6/b;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0905d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lw6/b$w;

    invoke-direct {v3, p0}, Lw6/b$w;-><init>(Lw6/b;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lw6/b;->a0:Landroid/widget/LinearLayout;

    const v1, 0x7f0903ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    iput-object v1, p0, Lw6/b;->b0:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    new-instance v1, Lw6/b$x;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lw6/b;->Y:Ln7/e;

    iget-object v5, p0, Lw6/b;->X:Ln7/d;

    invoke-direct {v1, p0, v3, v4, v5}, Lw6/b$x;-><init>(Lw6/b;Landroid/app/Activity;Ln7/e;Ln7/d;)V

    iput-object v1, p0, Lw6/b;->Z:Lh7/d;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lh7/d;->D(Z)V

    iget-object v1, p0, Lw6/b;->Z:Lh7/d;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lh7/d;->y(Z)V

    iget-object v1, p0, Lw6/b;->Z:Lh7/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v1, v5}, Lh7/d;->z(I)V

    iget-object v1, p0, Lw6/b;->Z:Lh7/d;

    iget-object v5, p0, Lw6/b;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Lh7/d;->i(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lw6/b;->Z:Lh7/d;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Lh7/d;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lw6/b;->Z:Lh7/d;

    const-string v5, ""

    invoke-virtual {v1, v5}, Lh7/d;->B(Ljava/lang/String;)V

    iget-object v1, p0, Lw6/b;->b0:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    if-eqz v1, :cond_1

    new-instance v5, Lw6/b$y;

    invoke-direct {v5, p0}, Lw6/b$y;-><init>(Lw6/b;)V

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->c(Landroid/text/TextWatcher;)V

    :cond_1
    invoke-virtual {p0}, Lw6/b;->B1()Lx6/c;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, v4}, Lw6/b;->H1(Lx6/c;Z)V

    :cond_2
    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lw6/b$a;

    invoke-direct {v4, p0}, Lw6/b$a;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lw6/b;->l0:Landroid/view/View;

    new-instance v4, Lw6/b$b;

    invoke-direct {v4, p0}, Lw6/b$b;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lw6/b;->m0:Landroid/view/View;

    new-instance v4, Lw6/b$c;

    invoke-direct {v4, p0}, Lw6/b$c;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lw6/b;->n0:Landroid/view/View;

    new-instance v4, Lw6/b$d;

    invoke-direct {v4, p0}, Lw6/b$d;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lw6/b;->o0:Landroid/view/View;

    new-instance v4, Lw6/b$e;

    invoke-direct {v4, p0}, Lw6/b$e;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lw6/b$f;

    invoke-direct {v4, p0}, Lw6/b$f;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lw6/b$g;

    invoke-direct {v4, p0}, Lw6/b$g;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lw6/b;->j0:Landroid/view/View;

    new-instance v4, Lw6/b$h;

    invoke-direct {v4, p0}, Lw6/b$h;-><init>(Lw6/b;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lw6/b;->E0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lw6/b;->F1()V

    iget-object v1, p0, Lw6/b;->j0:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public final C1()Ljava/lang/String;
    .locals 3

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->a:LD8/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LD8/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final D1(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectName"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/_EDITOR/pv.config"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, LX7/a;->z(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    new-instance p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;-><init>()V

    return-object p1
.end method

.method public E1(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectName"
        }
    .end annotation

    invoke-static {}, Ld8/j;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lbd/a;

    const-string v0, "Please wait scripts compiler to finish."

    const-string v1, "Por favor espere os scripts terminarem de compilar."

    invoke-direct {p1, v0, v1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "Please wait for the world to finish loading"

    invoke-static {p1}, LN7/c;->v0(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcn/pedant/SweetAlert/SweetAlertDialog;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lbd/a;

    const-string v2, "Swap project?"

    const-string v3, "Abrir outro projeto"

    invoke-direct {v1, v2, v3}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setTitleText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setContentText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v2, Lw6/b$q;

    invoke-direct {v2, p0, v0, p1}, Lw6/b$q;-><init>(Lw6/b;Lcn/pedant/SweetAlert/SweetAlertDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setConfirmClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object v1

    new-instance v2, Lw6/b$p;

    invoke-direct {v2, p0, v0, p1}, Lw6/b$p;-><init>(Lw6/b;Lcn/pedant/SweetAlert/SweetAlertDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setNeutralClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelText(Ljava/lang/String;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    new-instance v1, Lw6/b$o;

    invoke-direct {v1, p0, v0}, Lw6/b$o;-><init>(Lw6/b;Lcn/pedant/SweetAlert/SweetAlertDialog;)V

    invoke-virtual {p1, v1}, Lcn/pedant/SweetAlert/SweetAlertDialog;->setCancelClickListener(Lcn/pedant/SweetAlert/SweetAlertDialog$OnSweetClickListener;)Lcn/pedant/SweetAlert/SweetAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lw6/b;->G1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final F1()V
    .locals 4

    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v2, "theme:projects_panel_button"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->Q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->L()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lw6/b;->q0:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, LC8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw6/b;->i0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lw6/b;->i0:Landroid/view/View;

    const v1, 0x7f0701e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw6/b;->i0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lw6/b;->i0:Landroid/view/View;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->g(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lw6/b;->q0:Landroid/widget/TextView;

    const-string v1, "Log in"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lw6/b;->i0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lw6/b;->i0:Landroid/view/View;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->g(Landroid/view/View;)V

    return-void
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    return-void
.end method

.method public final G1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectName"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/App;->a()Lcom/itsmagic/engine/Activities/App$c;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/App$c;->Engine:Lcom/itsmagic/engine/Activities/App$c;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/_EDITOR/mj.bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LIc/o;->g(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->N()Z

    move-result v0

    const-string v1, "Project was created using ITsMagic 1.0 and its not compatible"

    if-nez v0, :cond_0

    const-string p1, "Ops!"

    invoke-static {p1, v1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, LL5/a;->r1(Ljava/lang/String;)V

    return-void
.end method

.method public final H1(Lx6/c;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "project",
            "notify"
        }
    .end annotation

    iget-object v0, p0, Lw6/b;->c0:Lx6/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lx6/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lx6/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lw6/b;->k0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw6/b;->l0:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lw6/b;->p0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-object p1, p0, Lw6/b;->c0:Lx6/c;

    if-eqz p1, :cond_5

    iget-object v0, p1, Lx6/c;->a:Ljava/lang/String;

    iget-object v1, p1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lw6/b;->D1(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    move-result-object v1

    iput-object v1, p1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    :cond_1
    iget-object v1, p0, Lw6/b;->f0:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lw6/b;->g0:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lw6/b;->e0:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lw6/b;->f0:Landroid/widget/TextView;

    iget-object v2, p0, Lw6/b;->c0:Lx6/c;

    iget-object v2, v2, Lx6/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v1, p1, Lx6/c;->b:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1, v2}, LTc/b;->s(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    iget-object v2, v2, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->lastOpen:Ljava/lang/String;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lx6/c;->c:Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;

    iget-object p1, p1, Lcom/itsmagic/engine/Core/Components/ProjectController/Utils/ProjectVersion;->appVersionName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v1, ""

    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lw6/b;->g0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lw6/b;->g0:Landroid/widget/TextView;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lw6/b$n;

    invoke-direct {v1, p0, v0, p1}, Lw6/b$n;-><init>(Lw6/b;Ljava/lang/String;Lx6/c;)V

    invoke-static {v1}, LO9/b;->d(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lw6/b;->f0:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lw6/b;->g0:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lw6/b;->e0:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz p2, :cond_7

    iget-object p1, p0, Lw6/b;->Z:Lh7/d;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lw6/b;->c0:Lx6/c;

    if-eqz p1, :cond_6

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lw6/b;->c0:Lx6/c;

    iget-object p2, p2, Lx6/c;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    iget-object p2, p0, Lw6/b;->Z:Lh7/d;

    invoke-virtual {p2, p1}, Lh7/d;->C(Ljava/io/File;)V

    :cond_7
    return-void
.end method

.method public final J1()V
    .locals 3

    iget-object v0, p0, Lw6/b;->c0:Lx6/c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lx6/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw6/b;->c0:Lx6/c;

    iget-object v0, v0, Lx6/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lw6/b;->c0:Lx6/c;

    iget-object v2, v2, Lx6/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_copy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw6/b$i;

    invoke-direct {v2, p0, v0}, Lw6/b$i;-><init>(Lw6/b;Ljava/lang/String;)V

    const-string v0, "Duplicate project"

    invoke-static {v0, v1, v2}, LZ6/f;->x1(Ljava/lang/String;Ljava/lang/String;LZ6/f$g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public K0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K0()V

    new-instance v0, Lw6/b$r;

    invoke-direct {v0, p0}, Lw6/b$r;-><init>(Lw6/b;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, LK8/a;->h(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final K1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    new-instance v0, Lw6/b$s;

    invoke-direct {v0, p0}, Lw6/b$s;-><init>(Lw6/b;)V

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lw6/b;

    invoke-direct {v0}, Lw6/b;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, Lw6/b;->Z:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method

.method public o1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    invoke-virtual {p0}, Lw6/b;->F1()V

    return-void
.end method
