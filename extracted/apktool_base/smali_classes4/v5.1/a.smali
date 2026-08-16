.class public Lv5/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv5/a$i;
    }
.end annotation


# static fields
.field public static final m0:Ljava/lang/String; = "FilePickerPanel"

.field public static n0:Ljava/lang/String; = null

.field public static o0:Z = true

.field public static p0:Ljava/lang/String;


# instance fields
.field public X:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public final Y:I

.field public Z:Lh7/d;

.field public a0:Ljava/lang/String;

.field public b0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

.field public c0:F

.field public d0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final e0:Lv5/a$i;

.field public final f0:Ljava/lang/String;

.field public g0:Landroid/widget/TextView;

.field public h0:Ljava/io/File;

.field public final i0:Ljava/lang/String;

.field public final j0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

.field public final k0:Lv5/c;

.field public l0:Lj7/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lv5/a$i;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "formatAllowed",
            "initFolder",
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FILES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilePickerPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lv5/a;->Y:I

    new-instance v0, Lv5/a$a;

    invoke-direct {v0, p0}, Lv5/a$a;-><init>(Lv5/a;)V

    iput-object v0, p0, Lv5/a;->j0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

    new-instance v0, Lv5/a$b;

    invoke-direct {v0, p0}, Lv5/a$b;-><init>(Lv5/a;)V

    iput-object v0, p0, Lv5/a;->k0:Lv5/c;

    iput-object p1, p0, Lv5/a;->f0:Ljava/lang/String;

    iput-object p3, p0, Lv5/a;->e0:Lv5/a$i;

    iput-object p2, p0, Lv5/a;->i0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p1(Lv5/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv5/a;->f0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic q1(Lv5/a;)Lv5/a$i;
    .locals 0

    iget-object p0, p0, Lv5/a;->e0:Lv5/a$i;

    return-object p0
.end method

.method public static synthetic r1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lv5/a;->n0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s1(Lv5/a;)Lh7/d;
    .locals 0

    iget-object p0, p0, Lv5/a;->Z:Lh7/d;

    return-object p0
.end method

.method public static synthetic t1(Z)Z
    .locals 0

    sput-boolean p0, Lv5/a;->o0:Z

    return p0
.end method

.method public static synthetic u1(Lv5/a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lv5/a;->h0:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic v1(Lv5/a;Ljava/io/File;Landroid/widget/Button;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv5/a;->w1(Ljava/io/File;Landroid/widget/Button;)V

    return-void
.end method

.method public static x1(Ljava/lang/String;Lv5/a$i;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formatAllowed",
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xc

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v0

    sub-float/2addr v2, v0

    new-instance v0, Lv5/a;

    sget-object v3, Lv5/a;->n0:Ljava/lang/String;

    invoke-direct {v0, p0, v3, p1}, Lv5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lv5/a$i;)V

    invoke-static {v0, v1, v2}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    iput-object p0, v0, Lv5/a;->d0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput v2, v0, Lv5/a;->c0:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 10

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lv5/a$c;

    invoke-direct {v1, p0}, Lv5/a$c;-><init>(Lv5/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v3, "pf"

    const-string v4, "pfsettings.config"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, LX7/a;->C(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    iput-object v1, p0, Lv5/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lv5/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;-><init>()V

    iput-object v1, p0, Lv5/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    :cond_0
    const v1, 0x7f090452

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lv5/a;->g0:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, LN7/c;->a(Ljava/lang/Object;)V

    const v1, 0x7f090224

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lv5/a;->f0:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lbd/a;

    const-string v5, "Select any "

    const-string v6, "Selecione qualquer "

    invoke-direct {v4, v5, v6}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lv5/a;->f0:Ljava/lang/String;

    invoke-static {v4}, LIc/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v3, Lbd/a;

    const-string v4, "Select any file"

    const-string v5, "Selecione qualquer arquivo"

    invoke-direct {v3, v4, v5}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lv5/a$d;

    invoke-direct {v3, p0}, Lv5/a$d;-><init>(Lv5/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lv5/a$e;

    invoke-direct {v3, p0}, Lv5/a$e;-><init>(Lv5/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0905aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lv5/a$f;

    invoke-direct {v3, p0}, Lv5/a$f;-><init>(Lv5/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lv5/a$g;

    invoke-direct {v3, p0}, Lv5/a$g;-><init>(Lv5/a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lv5/a$h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lv5/a;->k0:Lv5/c;

    iget-object v7, p0, Lv5/a;->j0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

    move-object v3, v9

    move-object v4, p0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lv5/a$h;-><init>(Lv5/a;Landroid/app/Activity;Ln7/e;Ln7/d;Landroid/widget/Button;)V

    iput-object v9, p0, Lv5/a;->Z:Lh7/d;

    const v3, 0x7f090207

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Lh7/d;->i(Landroid/view/ViewGroup;)V

    iget-object v3, p0, Lv5/a;->Z:Lh7/d;

    iget-object v4, p0, Lv5/a;->i0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lh7/d;->o(Ljava/lang/String;)V

    iget-object v3, p0, Lv5/a;->Z:Lh7/d;

    sget-boolean v4, Lv5/a;->o0:Z

    invoke-virtual {v3, v4}, Lh7/d;->y(Z)V

    iget-object v3, p0, Lv5/a;->i0:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lv5/a;->Z:Lh7/d;

    invoke-virtual {v3}, Lh7/d;->m()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v3, v1}, Lv5/a;->w1(Ljava/io/File;Landroid/widget/Button;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2, v1}, Lv5/a;->w1(Ljava/io/File;Landroid/widget/Button;)V

    :cond_4
    :goto_3
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lv5/a;->a0:Ljava/lang/String;

    return-object v0
.end method

.method public G0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    invoke-static {p0}, LN7/c;->f0(Ljava/lang/Object;)V

    return-void
.end method

.method public O0(Ln4/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    instance-of v0, p1, Lw5/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lw5/k;

    if-eqz v0, :cond_2

    check-cast p1, Lw5/k;

    iget-object v0, p0, Lv5/a;->Z:Lh7/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lw5/k;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh7/d;->o(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S0()V

    return v1

    :cond_2
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O0(Ln4/f;)Z

    move-result p1

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 4

    new-instance v0, Lv5/a;

    iget-object v1, p0, Lv5/a;->f0:Ljava/lang/String;

    iget-object v2, p0, Lv5/a;->i0:Ljava/lang/String;

    iget-object v3, p0, Lv5/a;->e0:Lv5/a$i;

    invoke-direct {v0, v1, v2, v3}, Lv5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lv5/a$i;)V

    return-object v0
.end method

.method public m1()V
    .locals 2

    iget-object v0, p0, Lv5/a;->j0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

    iget-object v1, p0, Lv5/a;->b0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;->b(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)V

    return-void
.end method

.method public n1()V
    .locals 1

    iget-object v0, p0, Lv5/a;->Z:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method

.method public o1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    iget-object v0, p0, Lv5/a;->a0:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv5/a;->a0:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final w1(Ljava/io/File;Landroid/widget/Button;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "doneButton"
        }
    .end annotation

    iput-object p1, p0, Lv5/a;->h0:Ljava/io/File;

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lv5/a;->g0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lv5/a;->g0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setActivated(Z)V

    :goto_0
    return-void
.end method
