.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$f;
    }
.end annotation


# static fields
.field public static final g0:Ljava/lang/String; = "PackageExportSelector"


# instance fields
.field public final X:Ljava/io/File;

.field public final Y:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;

.field public final Z:Ljava/lang/String;

.field public final a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b0:LF7/l;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            ">;"
        }
    .end annotation
.end field

.field public final e0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            ">;"
        }
    .end annotation
.end field

.field public final f0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outZipFile",
            "listener"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outZipFile",
            "projectRootPath",
            "initialSelectedPaths",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;",
            ")V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_FILE_SELECTOR_TITLE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->a0:Ljava/util/List;

    .line 4
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->b0:LF7/l;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->e0:Ljava/util/Map;

    .line 6
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->f0:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->X:Ljava/io/File;

    .line 8
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Z:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Y:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;

    if-eqz p3, :cond_0

    .line 10
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private B1()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->f0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->D1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    invoke-direct {v4, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v4, v2}, LF7/i;->r(Z)V

    iget-object v2, v4, LF7/i;->f:LF7/h;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->a:Z

    iput-boolean v3, v2, LF7/h;->c:Z

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->f0:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->f0:Ljava/util/List;

    return-object v0
.end method

.method private static E1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private H1(LF7/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LF7/i;",
            ")",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    instance-of v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->G1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/List;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LF7/i;

    invoke-virtual {p1}, LF7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, LF7/i;->q(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static M1(Ljava/io/File;Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outZipFile",
            "anchor",
            "anchorSide",
            "listener"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->O1(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    move-result-object p0

    return-object p0
.end method

.method public static N1(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outZipFile",
            "listener"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {p0, v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->P1(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    move-result-object p0

    return-object p0
.end method

.method public static O1(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outZipFile",
            "projectRootPath",
            "initialSelectedPaths",
            "anchor",
            "anchorSide",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            "Lr4/a$e;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;",
            ")",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;"
        }
    .end annotation

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-direct {v6, p0, p1, p2, p5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$a;

    invoke-direct {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$a;-><init>()V

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, p3

    move-object v1, v6

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-object v6
.end method

.method public static P1(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outZipFile",
            "projectRootPath",
            "initialSelectedPaths",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;",
            ")",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)V

    const p0, 0x3f19999a    # 0.6f

    const p1, 0x3f4ccccd    # 0.8f

    const p2, 0x3e4ccccd    # 0.2f

    const p3, 0x3dcccccd    # 0.1f

    invoke-static {v0, p2, p3, p0, p1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D1(Z)V

    return-object v0
.end method

.method private S1()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->b0:LF7/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF7/l;->v()V

    :cond_0
    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Q1()V

    return-void
.end method

.method public static synthetic q1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->E1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->R1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;)V

    return-void
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->H1(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->B1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)LF7/l;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->b0:LF7/l;

    return-object p0
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Y:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;

    return-object p0
.end method


# virtual methods
.method public final A1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->z1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->A1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0163

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->c0:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0900ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_GITHUB_FILE_SELECTOR_TITLE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONFIRM:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CANCEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->I1()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->f0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->e0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->C1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->x1()V

    new-instance v1, LF7/l;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)V

    invoke-direct {v1, v4, v5}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->b0:LF7/l;

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final C1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->e0:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->C1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final D1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {}, Lw5/m;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    invoke-static {}, Lw5/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public F1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LMc/b;

    invoke-direct {v1}, LMc/b;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->f0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->f0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF7/i;

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v0, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->K1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;

    iget-boolean v4, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;->b:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;->h()V

    iget-object v4, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$h;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public final G1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->D1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;

    invoke-direct {v4, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v4, v2}, LF7/i;->r(Z)V

    iget-object v2, v4, LF7/i;->f:LF7/h;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->a:Z

    iput-boolean v3, v2, LF7/h;->c:Z

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final I1()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;-><init>()V

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Z:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->J1(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->a:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final J1(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "folder",
            "parent",
            "pfSettings"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Z:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->n0(Ljava/lang/String;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->T1(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/a;->b(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    invoke-direct {v3, p0, v4, v5, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    invoke-virtual {p2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2, v3, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->J1(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final K1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "zfile",
            "outFiles",
            "out",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result p4

    if-lez p4, :cond_3

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result p4

    if-ge v1, p4, :cond_3

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->K1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    if-eqz p4, :cond_2

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;)V

    goto :goto_2

    :cond_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result p4

    if-ge v1, p4, :cond_3

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->K1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final L1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final Q1()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->y1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p0, v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->A1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Z:Ljava/lang/String;

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4, v5}, Lcom/itsmagic/engine/Activities/Editor/Utils/h;->l(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->d0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->w1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->S1()V

    return-void
.end method

.method public final R1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->b0:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->t(LF7/i;)V

    return-void
.end method

.method public final T1(Ljava/io/File;Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parentFolder",
            "child"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JAVARuntime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->X:Ljava/io/File;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Z:Ljava/lang/String;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->a0:Ljava/util/List;

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Y:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$j;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-object v0
.end method

.method public final w1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "selectedFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->L1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->w1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object p1

    iput-boolean v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    return-void
.end method

.method public final x1()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->a0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Q1()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->a0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->a0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->e0:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->L1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->p(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->Q1()V

    return-void
.end method

.method public final y1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$g;->c:Z

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->y1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final z1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->m()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->L1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->h()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u;->z1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/u$k;Ljava/util/LinkedHashSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
