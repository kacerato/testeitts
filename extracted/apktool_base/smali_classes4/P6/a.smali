.class public LP6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public final X:Ljava/lang/String;

.field public Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

.field public Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public a0:Landroid/view/View;

.field public b0:Landroid/view/View;

.field public c0:Landroid/widget/LinearLayout;

.field public d0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f0:Landroid/view/View;

.field public final g0:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    const-string v0, "Noise editor"

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LP6/a;->d0:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LP6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LP6/a;->g0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p1, p0, LP6/a;->X:Ljava/lang/String;

    return-void
.end method

.method private A1(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LP6/a;->g0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    if-nez p1, :cond_0

    iget-object p1, p0, LP6/a;->b0:Landroid/view/View;

    :cond_0
    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v0}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LP6/a$d;

    invoke-direct {v1, p0, p1}, LP6/a$d;-><init>(LP6/a;Lq7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private B1()V
    .locals 3

    iget-object v0, p0, LP6/a;->a0:Landroid/view/View;

    const v1, 0x7f090532

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LP6/a;->X:Ljava/lang/String;

    invoke-static {v2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, LP6/a;->J1()V

    const v1, 0x7f090426

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LP6/a;->c0:Landroid/widget/LinearLayout;

    invoke-direct {p0}, LP6/a;->I1()V

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LP6/a;->b0:Landroid/view/View;

    new-instance v1, LP6/a$a;

    invoke-direct {v1, p0}, LP6/a$a;-><init>(LP6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private C1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "org",
            "active"
        }
    .end annotation

    new-instance p1, LU/h;

    invoke-direct {p1}, LU/h;-><init>()V

    invoke-virtual {p1}, LU/a;->y()LU/a;

    move-result-object p1

    check-cast p1, LU/h;

    const p2, 0x7f070271

    invoke-virtual {p1, p2}, LU/a;->u(I)LU/a;

    move-result-object p1

    check-cast p1, LU/h;

    iget-object p2, p0, LP6/a;->a0:Landroid/view/View;

    const v0, 0x7f0901dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09028d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LP6/a;->X:Ljava/lang/String;

    invoke-static {v2}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".texture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    new-instance v3, LP6/a$e;

    invoke-direct {v3, p0, p2}, LP6/a$e;-><init>(LP6/a;Landroid/widget/ImageView;)V

    invoke-static {v0, v1, p1, v2, v3}, LVc/e;->j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V

    return-void
.end method

.method private E1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LP6/a;->d0:Ljava/util/List;

    invoke-direct {p0}, LP6/a;->I1()V

    return-void
.end method

.method public static G1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "inProjectFile"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    const/16 v0, 0x12c

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x15e

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LP6/a;

    invoke-direct {v2, p2}, LP6/a;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, p1, v0, v1}, Lr4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;Lr4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Anchor can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private I1()V
    .locals 4

    iget-object v0, p0, LP6/a;->d0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LP6/a;->d0:Ljava/util/List;

    iget-object v1, p0, LP6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    new-instance v2, LP6/a$f;

    invoke-direct {v2, p0}, LP6/a$f;-><init>(LP6/a;)V

    invoke-static {v1, v2}, LP6/b;->f(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;LP6/b$z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, LP6/a;->d0:Ljava/util/List;

    iget-object v1, p0, LP6/a;->c0:Landroid/widget/LinearLayout;

    new-instance v2, LP6/a$g;

    invoke-direct {v2, p0}, LP6/a$g;-><init>(LP6/a;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, LP6/a;->H1(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V

    return-void
.end method

.method private J1()V
    .locals 4

    iget-object v0, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    if-nez v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, LP6/a$c;

    invoke-direct {v0, p0}, LP6/a$c;-><init>(LP6/a;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iget-object v0, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->originalHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LP6/a;->C1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, ""

    invoke-direct {p0, v0, v0}, LP6/a;->C1(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private K1()V
    .locals 6

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    invoke-virtual {v0}, LU/a;->y()LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    const v1, 0x7f070271

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    iget-object v1, p0, LP6/a;->a0:Landroid/view/View;

    const v2, 0x7f0901dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LP6/a;->X:Ljava/lang/String;

    invoke-static {v4}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".texture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    new-instance v5, LP6/a$b;

    invoke-direct {v5, p0, v1}, LP6/a$b;-><init>(LP6/a;Landroid/widget/ImageView;)V

    invoke-static {v2, v3, v0, v4, v5}, LVc/e;->j(Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;LVc/e$k;)V

    return-void
.end method

.method public static synthetic p1(LP6/a;)V
    .locals 0

    invoke-virtual {p0}, LP6/a;->F1()V

    return-void
.end method

.method public static synthetic q1(LP6/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iget-object p0, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p0
.end method

.method public static synthetic r1(LP6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LP6/a;->X:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s1(LP6/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LP6/a;->C1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t1(LP6/a;)V
    .locals 0

    invoke-virtual {p0}, LP6/a;->D1()V

    return-void
.end method

.method public static synthetic u1(LP6/a;)V
    .locals 0

    invoke-direct {p0}, LP6/a;->K1()V

    return-void
.end method

.method public static synthetic v1(LP6/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LP6/a;->g0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic w1(LP6/a;)V
    .locals 0

    invoke-direct {p0}, LP6/a;->E1()V

    return-void
.end method

.method public static synthetic x1(LP6/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LP6/a;->z1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y1(LP6/a;)V
    .locals 0

    invoke-direct {p0}, LP6/a;->I1()V

    return-void
.end method

.method private z1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LP6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LP6/a;->f0:Landroid/view/View;

    iget-object p1, p0, LP6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0155

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LP6/a;->a0:Landroid/view/View;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, LP6/a;->X:Ljava/lang/String;

    invoke-static {v2}, LX7/a;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput-object v1, p0, LP6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;-><init>()V

    iput-object v1, p0, LP6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    :cond_0
    iget-object v1, p0, LP6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iput-object v1, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p0}, LP6/a;->B1()V

    return-object v0
.end method

.method public final D1()V
    .locals 8

    new-instance v0, Lub/j;

    iget-object v1, p0, LP6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-direct {v0, v1}, Lub/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    invoke-virtual {v0}, Lub/j;->U0()V

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_0

    invoke-virtual {v0, v5, v6}, Lub/n;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LP6/a;->X:Ljava/lang/String;

    invoke-static {v2}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".texture"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, LP6/a;->Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public final F1()V
    .locals 3

    iget-object v0, p0, LP6/a;->X:Ljava/lang/String;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, LP6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, LX7/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method

.method public H1(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entries",
            "content",
            "clearViews",
            "entriesListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Z",
            "LB5/b;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LC5/b;

    iget-object v0, v3, LC5/b;->n:LC5/b$a;

    sget-object v1, LC5/b$a;->Vector:LC5/b$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v0, v3, v1, v2}, LC5/h;->y(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object v1, LC5/b$a;->Component:LC5/b$a;

    if-ne v0, v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    new-instance v6, LP6/a$h;

    invoke-direct {v6, p0, p4, p1, p2}, LP6/a$h;-><init>(LP6/a;LB5/b;Ljava/util/List;Landroid/widget/LinearLayout;)V

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LC5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;ILandroid/content/Context;LC5/n;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, LC5/h;->x(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LC5/b;IZLandroid/content/Context;)Landroid/view/View;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 2

    new-instance v0, LP6/a;

    iget-object v1, p0, LP6/a;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, LP6/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public m1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, LP6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LP6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LP6/a;->g0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LP6/a;->e0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, LP6/a;->f0:Landroid/view/View;

    invoke-direct {p0, v0}, LP6/a;->A1(Landroid/view/View;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
