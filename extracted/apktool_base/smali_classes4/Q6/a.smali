.class public LQ6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# instance fields
.field public final X:Ljava/lang/String;

.field public Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

.field public Z:Landroid/widget/LinearLayout;

.field public final a0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b0:Landroid/view/View;

.field public c0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e0:Landroid/view/View;

.field public f0:Landroid/view/View;

.field public g0:Landroid/widget/ImageView;

.field public h0:Lub/n;

.field public i0:Landroid/graphics/Bitmap;

.field public j0:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    invoke-static {p1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LQ6/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v1, p0, LQ6/a;->c0:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LQ6/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    iput-object p1, p0, LQ6/a;->X:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A1(LQ6/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LQ6/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic B1(LQ6/a;)V
    .locals 0

    invoke-direct {p0}, LQ6/a;->L1()V

    return-void
.end method

.method private C1(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LQ6/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LQ6/a;->e0:Landroid/view/View;

    iget-object p1, p0, LQ6/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method private D1(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object v0, p0, LQ6/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    if-nez p1, :cond_0

    iget-object p1, p0, LQ6/a;->f0:Landroid/view/View;

    :cond_0
    sget-object v0, Lr4/a$e;->Left:Lr4/a$e;

    invoke-static {p1, v0}, Lq7/a;->t1(Landroid/view/View;Lr4/a$e;)Lq7/a;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LQ6/a$b;

    invoke-direct {v1, p0, p1}, LQ6/a$b;-><init>(LQ6/a;Lq7/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private E1()V
    .locals 3

    iget-object v0, p0, LQ6/a;->b0:Landroid/view/View;

    const v1, 0x7f09028d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, LQ6/a;->g0:Landroid/widget/ImageView;

    const v1, 0x7f090532

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, LQ6/a;->X:Ljava/lang/String;

    invoke-static {v2}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090426

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LQ6/a;->Z:Landroid/widget/LinearLayout;

    invoke-direct {p0}, LQ6/a;->L1()V

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LQ6/a;->f0:Landroid/view/View;

    new-instance v1, LQ6/a$a;

    invoke-direct {v1, p0}, LQ6/a$a;-><init>(LQ6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private F1()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LQ6/a;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LX7/a;->x(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    move-result-object v0

    iput-object v0, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;-><init>()V

    iput-object v0, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    :cond_0
    iget-object v0, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    new-instance v1, LQ6/a$c;

    invoke-direct {v1, p0}, LQ6/a$c;-><init>(LQ6/a;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private G1()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LQ6/a;->c0:Ljava/util/List;

    invoke-direct {p0}, LQ6/a;->L1()V

    return-void
.end method

.method private H1()V
    .locals 2

    iget-object v0, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->E0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LQ6/a;->X:Ljava/lang/String;

    invoke-static {v1, v0}, LX7/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static I1(Landroid/view/View;Lr4/a$e;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
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

    const/16 v0, 0x172

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LQ6/a;

    invoke-direct {v2, p2}, LQ6/a;-><init>(Ljava/lang/String;)V

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

.method public static J1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectFile"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    const/16 v0, 0x172

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v0

    const/16 v1, 0x12c

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v1

    new-instance v2, LQ6/a;

    invoke-direct {v2, p0}, LQ6/a;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lr4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private L1()V
    .locals 4

    iget-object v0, p0, LQ6/a;->c0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LQ6/a;->c0:Ljava/util/List;

    iget-object v1, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->h0(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, LQ6/a;->c0:Ljava/util/List;

    iget-object v1, p0, LQ6/a;->Z:Landroid/widget/LinearLayout;

    new-instance v2, LQ6/a$d;

    invoke-direct {v2, p0}, LQ6/a$d;-><init>(LQ6/a;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, LQ6/a;->K1(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V

    return-void
.end method

.method public static synthetic p1(LQ6/a;)V
    .locals 0

    invoke-direct {p0}, LQ6/a;->H1()V

    return-void
.end method

.method public static synthetic q1(LQ6/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, LQ6/a;->C1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r1(LQ6/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LQ6/a;->X:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic s1(LQ6/a;)Lub/n;
    .locals 0

    iget-object p0, p0, LQ6/a;->h0:Lub/n;

    return-object p0
.end method

.method public static synthetic t1(LQ6/a;Lub/n;)Lub/n;
    .locals 0

    iput-object p1, p0, LQ6/a;->h0:Lub/n;

    return-object p1
.end method

.method public static synthetic u1(LQ6/a;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
    .locals 0

    iget-object p0, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    return-object p0
.end method

.method public static synthetic v1(LQ6/a;)[I
    .locals 0

    iget-object p0, p0, LQ6/a;->j0:[I

    return-object p0
.end method

.method public static synthetic w1(LQ6/a;[I)[I
    .locals 0

    iput-object p1, p0, LQ6/a;->j0:[I

    return-object p1
.end method

.method public static synthetic x1(LQ6/a;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, LQ6/a;->i0:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic y1(LQ6/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, LQ6/a;->i0:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic z1(LQ6/a;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, LQ6/a;->g0:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c01c8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LQ6/a;->b0:Landroid/view/View;

    invoke-direct {p0}, LQ6/a;->F1()V

    iget-object v1, p0, LQ6/a;->Y:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-eqz v1, :cond_0

    invoke-direct {p0}, LQ6/a;->E1()V

    iget-object v1, p0, LQ6/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "Invalid file"

    invoke-static {v1}, LN7/c;->v0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :goto_0
    return-object v0
.end method

.method public K1(Ljava/util/List;Landroid/widget/LinearLayout;ZLB5/b;)V
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

    new-instance v6, LQ6/a$e;

    invoke-direct {v6, p0, p4, p1, p2}, LQ6/a$e;-><init>(LQ6/a;LB5/b;Ljava/util/List;Landroid/widget/LinearLayout;)V

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

    new-instance v0, LQ6/a;

    iget-object v1, p0, LQ6/a;->X:Ljava/lang/String;

    invoke-direct {v0, v1}, LQ6/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public m1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, LQ6/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LQ6/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, LQ6/a;->a0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LQ6/a;->d0:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    iget-object v0, p0, LQ6/a;->e0:Landroid/view/View;

    invoke-direct {p0, v0}, LQ6/a;->D1(Landroid/view/View;)V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
