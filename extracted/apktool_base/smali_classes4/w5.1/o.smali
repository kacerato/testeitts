.class public Lw5/o;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final f0:Ljava/lang/String; = "UnusedFilesPanel"

.field public static final g0:Ljava/lang/Class;


# instance fields
.field public X:Lh7/d;

.field public Y:Landroid/widget/LinearLayout;

.field public Z:Ljava/lang/String;

.field public final a0:Ljava/lang/Object;

.field public final b0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final c0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ln7/e;

.field public final e0:Ln7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lw5/o;

    sput-object v0, Lw5/o;->g0:Ljava/lang/Class;

    new-instance v0, Lw5/o$a;

    invoke-direct {v0}, Lw5/o$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "Unused Files"

    const-string v1, "UnusedFilesPanel"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw5/o;->a0:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lw5/o;->b0:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lw5/o;->c0:Ljava/util/HashSet;

    new-instance v0, Lw5/o$b;

    invoke-direct {v0, p0}, Lw5/o$b;-><init>(Lw5/o;)V

    iput-object v0, p0, Lw5/o;->d0:Ln7/e;

    new-instance v0, Lw5/o$c;

    invoke-direct {v0, p0}, Lw5/o$c;-><init>(Lw5/o;)V

    iput-object v0, p0, Lw5/o;->e0:Ln7/d;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static synthetic p1(Lw5/o;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lw5/o;->a0:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic q1(Lw5/o;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw5/o;->b0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic r1(Lw5/o;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lw5/o;->c0:Ljava/util/HashSet;

    return-object p0
.end method

.method public static synthetic s1(Lw5/o;Lq7/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw5/o;->z1(Lq7/a;)V

    return-void
.end method

.method public static synthetic t1(Lw5/o;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lw5/o;->x1(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u1(Lw5/o;)Lh7/d;
    .locals 0

    iget-object p0, p0, Lw5/o;->X:Lh7/d;

    return-object p0
.end method

.method public static y1()V
    .locals 3

    const/16 v0, 0x104

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x140

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, Lw5/o;

    invoke-direct {v2}, Lw5/o;-><init>()V

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

    iput-object v0, p0, Lw5/o;->Y:Landroid/widget/LinearLayout;

    new-instance v1, Lw5/o$d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lw5/o;->d0:Ln7/e;

    iget-object v4, p0, Lw5/o;->e0:Ln7/d;

    invoke-direct {v1, p0, v2, v3, v4}, Lw5/o$d;-><init>(Lw5/o;Landroid/app/Activity;Ln7/e;Ln7/d;)V

    iput-object v1, p0, Lw5/o;->X:Lh7/d;

    iget-object v2, p0, Lw5/o;->Y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lh7/d;->i(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lw5/o;->X:Lh7/d;

    const-string v2, "Files/"

    invoke-virtual {v1, v2}, Lh7/d;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lw5/o;->X:Lh7/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lh7/d;->y(Z)V

    iget-object v1, p0, Lw5/o;->X:Lh7/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lh7/d;->E(Z)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->T()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lw5/o;->Z:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lw5/o;->w1(Z)V

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

    new-instance v0, Lw5/o;

    invoke-direct {v0}, Lw5/o;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 1

    iget-object v0, p0, Lw5/o;->X:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method

.method public n1()V
    .locals 1

    iget-object v0, p0, Lw5/o;->X:Lh7/d;

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

    iget-object v1, p0, Lw5/o;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lw5/o;->Z:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw5/o;->w1(Z)V

    :cond_1
    return-void
.end method

.method public final v1(Ljava/io/File;Ljava/util/List;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "folder",
            "output",
            "projectRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_d

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v5, "Resources"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0, v4, p2, p3}, Lw5/o;->v1(Ljava/io/File;Ljava/util/List;Ljava/io/File;)V

    goto/16 :goto_2

    :cond_4
    const-string v5, ".java"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ".javac"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ".jar"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ".class"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ".dex"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ".mwf"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v5, ".config"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v5, v6}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_2

    :cond_6
    const-string v5, ".texture"

    invoke-static {v4, v5}, LIc/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_7

    move v6, v2

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_7

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".meta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "jmi.config"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    const-string v5, "thumb.png"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    const-string v5, "thumb_manifest.json"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "f.manifest"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_3
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

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lw5/o$e;

    invoke-direct {p1, p0}, Lw5/o$e;-><init>(Lw5/o;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lq7/a;->u1(ZLq7/a$d;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lw5/o;->z1(Lq7/a;)V

    return-void
.end method

.method public final x1(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, v1, v0, v1}, Lw5/o;->v1(Ljava/io/File;Ljava/util/List;Ljava/io/File;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p1

    :cond_3
    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;->a:Z

    iput-boolean v3, v1, Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;->b:Z

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/h;->n(Landroid/content/Context;Lcom/itsmagic/engine/Activities/Editor/Utils/h$b;)Lcom/itsmagic/engine/Activities/Editor/Utils/h$c;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_4

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LTc/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/h$c;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v1

    :cond_6
    :goto_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p1
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

    new-instance v0, Lw5/o$f;

    invoke-direct {v0, p0, p1}, Lw5/o$f;-><init>(Lw5/o;Lq7/a;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
