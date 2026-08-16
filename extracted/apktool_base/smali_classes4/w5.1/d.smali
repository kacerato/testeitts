.class public Lw5/d;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final g0:Ljava/lang/String; = "FileUsagesPanel"

.field public static final h0:Ljava/lang/Class;


# instance fields
.field public X:Lh7/d;

.field public Y:Landroid/widget/LinearLayout;

.field public Z:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public final b0:Ljava/lang/Object;

.field public final c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e0:Ln7/e;

.field public final f0:Ln7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lw5/d;

    sput-object v0, Lw5/d;->h0:Ljava/lang/Class;

    new-instance v0, Lw5/d$a;

    invoke-direct {v0}, Lw5/d$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "File Usages"

    const-string v1, "FileUsagesPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw5/d;->b0:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lw5/d;->c0:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lw5/d;->d0:Ljava/util/HashSet;

    new-instance v0, Lw5/d$b;

    invoke-direct {v0, p0}, Lw5/d$b;-><init>(Lw5/d;)V

    iput-object v0, p0, Lw5/d;->e0:Ln7/e;

    new-instance v0, Lw5/d$c;

    invoke-direct {v0, p0}, Lw5/d$c;-><init>(Lw5/d;)V

    iput-object v0, p0, Lw5/d;->f0:Ln7/d;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic p1(Lw5/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw5/d;->b0:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic q1(Lw5/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw5/d;->c0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic r1(Lw5/d;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lw5/d;->d0:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic s1(Lw5/d;Lq7/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw5/d;->z1(Lq7/a;)V

    return-void
.end method

.method public static synthetic t1(Lw5/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw5/d;->a0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic u1(Lw5/d;)Lh7/d;
    .locals 0

    iget-object p0, p0, Lw5/d;->X:Lh7/d;

    return-object p0
.end method

.method public static v1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static x1(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw5/d;->y1(Ljava/lang/String;)V

    return-void
.end method

.method public static y1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    const/16 v0, 0x104

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x140

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lw5/d;

    invoke-direct {v2}, Lw5/d;-><init>()V

    invoke-static {p0}, Lw5/d;->v1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lw5/d;->a0:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01d0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lw5/d;->Y:Landroid/widget/LinearLayout;

    new-instance v1, Lw5/d$d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lw5/d;->e0:Ln7/e;

    iget-object v4, p0, Lw5/d;->f0:Ln7/d;

    invoke-direct {v1, p0, v2, v3, v4}, Lw5/d$d;-><init>(Lw5/d;Landroid/app/Activity;Ln7/e;Ln7/d;)V

    iput-object v1, p0, Lw5/d;->X:Lh7/d;

    iget-object v2, p0, Lw5/d;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lh7/d;->i(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lw5/d;->X:Lh7/d;

    const-string v2, "Files/"

    invoke-virtual {v1, v2}, Lh7/d;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lw5/d;->X:Lh7/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lh7/d;->y(Z)V

    iget-object v1, p0, Lw5/d;->X:Lh7/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lh7/d;->E(Z)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lw5/d;->Z:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lw5/d;->w1(Z)V

    return-object v0
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public O0(Ln4/f;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelIntent"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O0(Ln4/f;)Z

    move-result p1

    return p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Lw5/d;

    invoke-direct {v0}, Lw5/d;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 1

    iget-object v0, p0, Lw5/d;->X:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method

.method public n1()V
    .locals 1

    iget-object v0, p0, Lw5/d;->X:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method

.method public o1()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw5/d;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lw5/d;->Z:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw5/d;->w1(Z)V

    :cond_1
    return-void
.end method

.method public final w1(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showLoading"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw5/d;->a0:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lw5/d$e;

    invoke-direct {p1, p0}, Lw5/d$e;-><init>(Lw5/d;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lq7/a;->u1(ZLq7/a$d;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lw5/d;->z1(Lq7/a;)V

    :cond_2
    :goto_0
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

.method public final z1(Lq7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalLoading"
        }
    .end annotation

    new-instance v0, Lw5/d$f;

    invoke-direct {v0, p0, p1}, Lw5/d$f;-><init>(Lw5/d;Lq7/a;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
