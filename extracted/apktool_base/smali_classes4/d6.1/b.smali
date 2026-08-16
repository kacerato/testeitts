.class public Ld6/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld6/b$m;
    }
.end annotation


# static fields
.field public static final i0:Ljava/lang/String; = "NewProjectPanel"

.field public static final j0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final k0:Ljava/lang/String; = "/new-project-templates"


# instance fields
.field public final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation
.end field

.field public final Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;"
        }
    .end annotation
.end field

.field public final Z:Ln7/d;

.field public final a0:Ln7/e;

.field public b0:Lh7/d;

.field public c0:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

.field public d0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final e0:Lo4/a;

.field public f0:Z

.field public g0:Z

.field public h0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Ld6/b;->j0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lo4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentTrigger"
        }
    .end annotation

    const-string v0, "New project panel"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Ld6/b;->X:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld6/b;->Y:Ljava/util/Map;

    new-instance v0, Ld6/b$d;

    invoke-direct {v0, p0}, Ld6/b$d;-><init>(Ld6/b;)V

    iput-object v0, p0, Ld6/b;->Z:Ln7/d;

    new-instance v0, Ld6/b$m;

    invoke-direct {v0, p0, v1}, Ld6/b$m;-><init>(Ld6/b;Ld6/b$d;)V

    iput-object v0, p0, Ld6/b;->a0:Ln7/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld6/b;->h0:Z

    iput-object p1, p0, Ld6/b;->e0:Lo4/a;

    return-void
.end method

.method private E1(Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentPanel"
        }
    .end annotation

    new-instance v0, Ld6/b$h;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ld6/b;->a0:Ln7/e;

    iget-object v3, p0, Ld6/b;->Z:Ln7/d;

    invoke-direct {v0, p0, v1, v2, v3}, Ld6/b$h;-><init>(Ld6/b;Landroid/app/Activity;Ln7/e;Ln7/d;)V

    iput-object v0, p0, Ld6/b;->b0:Lh7/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lh7/d;->D(Z)V

    iget-object v0, p0, Ld6/b;->b0:Lh7/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lh7/d;->y(Z)V

    iget-object v0, p0, Ld6/b;->b0:Lh7/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lh7/d;->z(I)V

    iget-object v0, p0, Ld6/b;->b0:Lh7/d;

    invoke-virtual {v0, p1}, Lh7/d;->i(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Ld6/b;->b0:Lh7/d;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Lh7/d;->o(Ljava/lang/String;)V

    iget-object p1, p0, Ld6/b;->b0:Lh7/d;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lh7/d;->B(Ljava/lang/String;)V

    return-void
.end method

.method private G1(Ld6/c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadProgress",
            "tittle"
        }
    .end annotation

    invoke-static {p2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->c0()Lx8/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lx8/c;->b(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "Preparing project"

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ld6/c;->p1(ILjava/lang/String;)V

    iget-boolean v0, p0, Ld6/b;->h0:Z

    if-eqz v0, :cond_0

    const-string v0, "Installing java"

    invoke-virtual {p1, v1, v0}, Ld6/c;->p1(ILjava/lang/String;)V

    new-instance p1, Ld6/b$a;

    invoke-direct {p1, p0, p2}, Ld6/b$a;-><init>(Ld6/b;Ljava/lang/String;)V

    invoke-static {p1}, Lid/a;->n(Lid/a$d;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ld6/b;->J1()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :goto_0
    return-void
.end method

.method private I1(Ljava/io/File;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "destinationFolder"
        }
    .end annotation

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_0
    const-string v1, "Editor/EmptyProject/Files.zip"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "temp.zip"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x400

    :try_start_1
    new-array v4, v3, [B

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    new-instance v2, Lug/a;

    invoke-direct {v2, v1}, Lug/a;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :cond_1
    :goto_1
    new-array v3, v3, [B

    invoke-virtual {v2}, Lug/a;->R()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LBg/j;

    invoke-virtual {v5}, LBg/b;->j()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, LBg/b;->s()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_4
    invoke-virtual {v2, v5}, Lug/a;->S(LBg/j;)Lzg/k;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_3
    :try_start_5
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v7, v3, v6, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_5
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_3
    move-exception p1

    goto :goto_6

    :goto_4
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    :try_start_9
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_6
    if-eqz v5, :cond_6

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    :try_start_b
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_7
    :try_start_c
    invoke-virtual {v2}, Lug/a;->close()V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_d

    :catch_0
    move-exception p1

    goto :goto_c

    :goto_8
    :try_start_d
    invoke-virtual {v2}, Lug/a;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    :goto_a
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    :try_start_10
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    return-void
.end method

.method private J1()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/World;-><init>()V

    const-string v1, "World.world"

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->fileName:Ljava/lang/String;

    const-string v1, "/Files/Worlds/"

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->folder:Ljava/lang/String;

    new-instance v1, Ld6/b$b;

    invoke-direct {v1, p0, v0}, Ld6/b$b;-><init>(Ld6/b;Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    invoke-static {v1}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private L1()V
    .locals 1

    iget-object v0, p0, Ld6/b;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private M1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const v0, 0x7f0903f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repository: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LT5/b;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static N1(Lo4/a;Landroid/view/View;Lr4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parentTrigger",
            "anchor",
            "anchorSide"
        }
    .end annotation

    new-instance v0, Ld6/b;

    invoke-direct {v0, p0}, Ld6/b;-><init>(Lo4/a;)V

    const/16 p0, 0x190

    invoke-static {p0}, LN7/c;->g(I)F

    move-result p0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, p2, p0, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    iput-object p0, v0, Ld6/b;->d0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method

.method public static O1(Lo4/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentTrigger"
        }
    .end annotation

    new-instance v0, Ld6/b;

    invoke-direct {v0, p0}, Ld6/b;-><init>(Lo4/a;)V

    const/4 p0, 0x1

    iput-boolean p0, v0, Ld6/b;->f0:Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p0, p0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->F1(Z)V

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    iput-object v1, v0, Ld6/b;->d0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v1
.end method

.method private P1(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    new-instance v0, Ld6/b$c;

    invoke-direct {v0, p0, p1}, Ld6/b$c;-><init>(Ld6/b;Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic p1(Ld6/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld6/b;->F1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic q1(Ld6/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ld6/b;->X:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic r1(Ld6/b;Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ld6/b;->C1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s1(Ld6/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ld6/b;->Y:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic t1(Ld6/b;)Lh7/d;
    .locals 0

    iget-object p0, p0, Ld6/b;->b0:Lh7/d;

    return-object p0
.end method

.method public static synthetic u1(Ld6/b;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Ld6/b;->A1(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v1(Ld6/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Ld6/b;->g0:Z

    return p1
.end method

.method public static synthetic w1(Ld6/b;Ld6/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld6/b;->G1(Ld6/c;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x1(Ld6/b;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ld6/b;->I1(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic y1(Ld6/b;)V
    .locals 0

    invoke-direct {p0}, Ld6/b;->J1()V

    return-void
.end method

.method public static synthetic z1(Ld6/b;Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 0

    invoke-direct {p0, p1}, Ld6/b;->P1(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    return-void
.end method


# virtual methods
.method public final A1(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newTemplates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_1
    iget-object v4, p0, Ld6/b;->X:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Ld6/b;->X:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    if-eqz v4, :cond_2

    iget-object v5, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    iget-object v4, v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Ld6/b;->X:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Ld6/b;->X:Ljava/util/List;

    new-instance v0, Ld6/b$k;

    invoke-direct {v0, p0}, Ld6/b$k;-><init>(Ld6/b;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Ld6/b;->L1()V

    return-void

    :cond_6
    :goto_3
    invoke-direct {p0}, Ld6/b;->L1()V

    return-void
.end method

.method public final B1()V
    .locals 2

    iget-object v0, p0, Ld6/b;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld6/b;->b0:Lh7/d;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ld6/b;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    new-instance v1, Ld6/b$i;

    invoke-direct {v1, p0}, Ld6/b$i;-><init>(Ld6/b;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;->c(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public C0()Landroid/view/View;
    .locals 3
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

    const v1, 0x7f0c014e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c014d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    new-instance v1, Ld6/b$e;

    invoke-direct {v1, p0}, Ld6/b$e;-><init>(Ld6/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NEW_PROJECT_PANEL_TITTLE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Ld6/b;->M1(Landroid/view/View;)V

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ld6/b$f;

    invoke-direct {v2, p0}, Ld6/b$f;-><init>(Ld6/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09034c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NEW_EMPTY_PROJECT_PANEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ld6/b$g;

    invoke-direct {v2, p0}, Ld6/b$g;-><init>(Ld6/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    iput-object v1, p0, Ld6/b;->c0:Lcom/itsmagic/engine/Activities/Editor/Utils/GenericSearchView;

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Ld6/b;->E1(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Ld6/b;->B1()V

    invoke-virtual {p0}, Ld6/b;->H1()V

    iget-boolean v1, p0, Ld6/b;->f0:Z

    if-eqz v1, :cond_2

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public final C1(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    invoke-static {p1}, LT5/b;->P(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_ERROR_DEFAULT_NAME:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Package"

    :cond_2
    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;->id:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    invoke-static {p1}, LTc/b;->M(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/new-project-templates/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " __id__"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final D1()V
    .locals 1

    iget-object v0, p0, Ld6/b;->X:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Ld6/b;->L1()V

    return-void
.end method

.method public final F1(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectTittle"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Ops!"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, LZ6/i$g;

    invoke-direct {v0}, LZ6/i$g;-><init>()V

    invoke-static {v1, p1, v0}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, LTc/b;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LW7/b;->f:LC8/a;

    iget-object v3, v3, LC8/a;->a:LD8/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, LD8/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, LZ6/i$g;

    invoke-direct {v0}, LZ6/i$g;-><init>()V

    invoke-static {v1, p1, v0}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    goto/16 :goto_3

    :cond_1
    const-string v2, "Files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p1, LZ6/i$g;

    invoke-direct {p1}, LZ6/i$g;-><init>()V

    const-string v0, "Files is a reserved name, please try another"

    invoke-static {v1, v0, p1}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ld6/b;->j0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object v0, p0, Ld6/b;->e0:Lo4/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo4/a;->a()V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->M()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->O(I)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->panelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    instance-of v3, v3, Lw6/b;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    invoke-static {}, Ld6/c;->r1()Ld6/c;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/_EDITOR/mj.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "2.0"

    invoke-static {v2, v1}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    new-instance v1, Ld6/b$l;

    invoke-direct {v1, p0, v0, p1}, Ld6/b$l;-><init>(Ld6/b;Ld6/c;Ljava/lang/String;)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p1, v1}, LN7/c;->l(FLjava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100c3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, LZ6/i$g;

    invoke-direct {v0}, LZ6/i$g;-><init>()V

    invoke-static {v1, p1, v0}, LZ6/i;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/i$h;)V

    :goto_3
    return-void
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    iget-boolean v0, p0, Ld6/b;->f0:Z

    if-eqz v0, :cond_0

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final H1()V
    .locals 2

    iget-boolean v0, p0, Ld6/b;->g0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld6/b;->g0:Z

    invoke-virtual {p0}, Ld6/b;->D1()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ld6/b$j;

    invoke-direct {v1, p0}, Ld6/b$j;-><init>(Ld6/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public K0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method

.method public K1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projectName"
        }
    .end annotation

    const-string p1, ""

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->s0(Ljava/lang/Object;)V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, Ld6/b;

    iget-object v1, p0, Ld6/b;->e0:Lo4/a;

    invoke-direct {v0, v1}, Ld6/b;-><init>(Lo4/a;)V

    return-object v0
.end method

.method public m1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, Ld6/b;->b0:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Ld6/b;->b0:Lh7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh7/d;->K()V

    :cond_0
    return-void
.end method
