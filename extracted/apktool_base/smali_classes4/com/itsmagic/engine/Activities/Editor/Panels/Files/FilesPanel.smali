.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final f0:Ljava/lang/String; = "FilesV2"

.field public static final g0:Ljava/lang/Class;


# instance fields
.field public X:Lh7/d;

.field public Y:Landroid/widget/LinearLayout;

.field public Z:Ljava/lang/String;

.field public a0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

.field public b0:Landroid/view/View;

.field public c0:Landroid/widget/TextView;

.field public final d0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

.field public final e0:Ln7/c;

.field private gridZoom:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isGrid:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private serializedSelectedLeftFolder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->g0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 7
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FILES:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilesV2"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, "Files/Models"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->serializedSelectedLeftFolder:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->isGrid:Z

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->gridZoom:I

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->d0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->e0:Ln7/c;

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(LK8/a;)V

    .line 2
    const-string p1, "Files/Models"

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->serializedSelectedLeftFolder:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->isGrid:Z

    .line 4
    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->gridZoom:I

    .line 5
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->d0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

    .line 6
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$c;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->e0:Ln7/c;

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic q1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lh7/d;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->gridZoom:I

    return p1
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->Z:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->Y:Landroid/widget/LinearLayout;

    const v1, 0x7f09039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    const v2, 0x7f09057e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->c0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    const v2, 0x7f090100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    const v2, 0x7f0900ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "pf"

    const-string v3, "pfsettings.config"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, LX7/a;->C(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->e0:Ln7/c;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->d0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;Landroid/app/Activity;Ln7/e;Ln7/d;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    invoke-virtual {v1, v2}, Lh7/d;->A(Lh7/f;)V

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->gridZoom:I

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    invoke-virtual {v2, v1}, Lh7/d;->z(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    invoke-virtual {v1}, Lh7/d;->k()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->gridZoom:I

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lh7/d;->i(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->serializedSelectedLeftFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lh7/d;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->isGrid:Z

    invoke-virtual {v1, v2}, Lh7/d;->y(Z)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public J0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    invoke-virtual {v0}, Lh7/d;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->serializedSelectedLeftFolder:Ljava/lang/String;

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J0()V

    return-void
.end method

.method public N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V

    return-object v0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

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
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->d0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->a0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a$a;->b(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)V

    sget-object v0, Lw5/j;->a:Ljava/io/File;

    const-string v1, ": "

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->c0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COPY:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lw5/j;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lw5/j;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->c0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MOVE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lw5/j;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->b0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public n1()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    invoke-virtual {v0}, Lh7/d;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->isGrid:Z

    :cond_0
    return-void
.end method

.method public o1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->Z:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->X:Lh7/d;

    const-string v1, "Files/"

    invoke-virtual {v0, v1}, Lh7/d;->o(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->Z:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public z(Lo4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    return-void
.end method
