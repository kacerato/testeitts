.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;,
        Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$g;
    }
.end annotation


# static fields
.field public static final e0:Ljava/lang/String; = "PackageImportSelector"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:Ljava/io/File;

.field public final Z:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;

.field public a0:LF7/l;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public final c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "zipFile",
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Import "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->a0:LF7/l;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->c0:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->d0:Ljava/util/List;

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->X:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Y:Ljava/io/File;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Z:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;

    return-void
.end method

.method public static E1(Ljava/lang/String;Ljava/io/File;Landroid/view/View;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "zipFile",
            "anchor",
            "anchorSide",
            "listener"
        }
    .end annotation

    new-instance v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-direct {v6, p0, p1, p4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;)V

    new-instance v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$a;

    invoke-direct {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$a;-><init>()V

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3f4ccccd    # 0.8f

    move-object v0, p2

    move-object v1, v6

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lr4/a;->i(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FFLr4/a$f;)V

    return-object v6
.end method

.method public static F1(Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "zipFile",
            "listener"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;)V

    const p0, 0x3f19999a    # 0.6f

    const p1, 0x3f4ccccd    # 0.8f

    const p2, 0x3e4ccccd    # 0.2f

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, p2, v1, p0, p1}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D1(Z)V

    return-object v0
.end method

.method private I1()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->a0:LF7/l;

    invoke-virtual {v0}, LF7/l;->v()V

    return-void
.end method

.method public static synthetic p1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->I1()V

    return-void
.end method

.method public static synthetic q1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->z1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->H1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;)V

    return-void
.end method

.method public static synthetic s1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;LF7/i;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->C1(LF7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->w1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)LF7/l;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->a0:LF7/l;

    return-object p0
.end method

.method public static synthetic v1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Z:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;

    return-object p0
.end method

.method public static y1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, "/"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object p0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method

.method public static z1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public A1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;
    .locals 9

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, LMc/b;

    invoke-direct {v1}, LMc/b;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->d0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->d0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF7/i;

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    iget-object v4, v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v0, v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->D1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;

    iget-boolean v6, v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->b:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->g()V

    iget-object v6, v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v5, 0x1

    move v6, v5

    :goto_2
    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;

    iget-boolean v8, v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->b:Z

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v7, v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;

    invoke-direct {v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$i;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public final B1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;Ljava/util/List;)V
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
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;",
            "Ljava/util/List<",
            "LF7/i;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->x1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    invoke-direct {v4, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v4, v2}, LF7/i;->r(Z)V

    iget-object v2, v4, LF7/i;->f:LF7/h;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;->a:Z

    iput-boolean v3, v2, LF7/h;->c:Z

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->b0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Y:Ljava/io/File;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r;->h(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Y:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Z:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;

    invoke-interface {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;->onCancel()V

    :cond_0
    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->c0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    const-string v4, ""

    const/4 v5, 0x1

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    invoke-virtual {p0, v6, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->G1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result v1

    if-ge v4, v1, :cond_2

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    move-result-object v1

    iput-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->j:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->c0:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, LF7/l;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V

    invoke-direct {v1, v2, v3}, LF7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LF7/k;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->a0:LF7/l;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final C1(LF7/i;)Ljava/util/List;
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

    instance-of v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;->m:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->B1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;Ljava/util/List;)V

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

.method public final D1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileElement",
            "outFiles",
            "out",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;",
            ">;",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result p4

    if-lez p4, :cond_3

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result p4

    if-ge v1, p4, :cond_3

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->D1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    if-eqz p4, :cond_2

    invoke-virtual {p4, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;)V

    goto :goto_2

    :cond_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result p4

    if-ge v1, p4, :cond_3

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    move-result-object p4

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->D1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;Ljava/util/List;Ljava/util/List;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final G1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zFile",
            "parent"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Ljava/lang/String;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    iget-object v1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    :goto_0
    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->h()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;->f(I)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->G1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/r$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final H1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->a0:LF7/l;

    invoke-virtual {v0, p1}, LF7/l;->t(LF7/i;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 4

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->X:Ljava/lang/String;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Y:Ljava/io/File;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->Z:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$k;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-object v0
.end method

.method public final w1()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LF7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->d0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->c0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->c0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->x1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->i()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;

    invoke-direct {v4, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$m;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->h()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v4, v2}, LF7/i;->r(Z)V

    iget-object v2, v4, LF7/i;->f:LF7/h;

    iget-boolean v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$h;->a:Z

    iput-boolean v3, v2, LF7/h;->c:Z

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->d0:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i;->d0:Ljava/util/List;

    return-object v0
.end method

.method public final x1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;)Z
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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->j()Ljava/lang/String;

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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/i$l;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
