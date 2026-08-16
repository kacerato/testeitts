.class public Ly4/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final e0:Ljava/lang/String; = "AreaConsole"

.field public static final f0:Ljava/lang/Class;

.field public static final g0:I = 0x64

.field public static final h0:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ly4/d;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile i0:Z


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public Z:Ly4/a;

.field public a0:Z

.field public final b0:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ly4/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c0:Ljava/lang/Object;

.field public d0:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ly4/b;

    sput-object v0, Ly4/b;->f0:Ljava/lang/Class;

    new-instance v0, Ly4/b$a;

    invoke-direct {v0}, Ly4/b$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Ly4/b;->h0:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6
    const-string v0, "Bake info log"

    const-string v1, "AreaConsole"

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ly4/b;->c0:Ljava/lang/Object;

    .line 9
    iput-object v2, p0, Ly4/b;->d0:Ljava/lang/Process;

    const/4 v0, 0x0

    .line 10
    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

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
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/b;->c0:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ly4/b;->d0:Ljava/lang/Process;

    const/4 p1, 0x0

    .line 5
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Z)V

    return-void
.end method

.method public static q1()V
    .locals 2

    sget-object v0, Ly4/b;->h0:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static s1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    sget-boolean v0, Ly4/b;->i0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ly4/b;->h0:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ly4/d;

    invoke-direct {v1, p0}, Ly4/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Ly4/b;->h0:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private t1()V
    .locals 2

    iget-object v0, p0, Ly4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ly4/b;->Z:Ly4/a;

    invoke-virtual {v1}, Ly4/a;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public C0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c019c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Ly4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    sput-boolean v1, Ly4/b;->i0:Z

    new-instance v3, Ly4/b$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ly4/b$b;-><init>(Ly4/b;Landroid/content/Context;)V

    iput-object v3, p0, Ly4/b;->Y:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    iget-object v1, p0, Ly4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Ly4/b;->Y:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Ly4/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-direct {v1, v3, v4}, Ly4/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Ly4/b;->Z:Ly4/a;

    iget-object v3, p0, Ly4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Ly4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-object v0
.end method

.method public G0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G0()V

    const/4 v0, 0x0

    sput-boolean v0, Ly4/b;->i0:Z

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S0()V

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i()V

    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, Ly4/b;

    invoke-direct {v0}, Ly4/b;-><init>()V

    return-object v0
.end method

.method public o1()V
    .locals 6

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o1()V

    sget-object v0, Ly4/b;->h0:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Ly4/b;->Z:Ly4/a;

    invoke-virtual {v1}, Ly4/a;->k()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Ly4/b;->Z:Ly4/a;

    invoke-virtual {v2, v1}, Ly4/a;->g(Ljava/util/List;)V

    iget-object v2, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ly4/b;->u1()V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly4/d;

    iget-object v5, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    sget-object v2, Ly4/b;->h0:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Ly4/b;->Z:Ly4/a;

    invoke-virtual {v2, v1}, Ly4/a;->o(Ljava/util/List;)V

    monitor-exit v0

    return-void

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Ly4/b;->Z:Ly4/a;

    invoke-virtual {v2, v1}, Ly4/a;->g(Ljava/util/List;)V

    iget-object v2, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ly4/b;->u1()V

    :cond_6
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p1()Z
    .locals 2

    iget-object v0, p0, Ly4/b;->c0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly4/b;->d0:Ljava/lang/Process;

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final r1()Z
    .locals 1

    iget-boolean v0, p0, Ly4/b;->a0:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->catchTerminalExceptionsEvenIfClosed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final u1()V
    .locals 3

    iget-object v0, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ly4/b;->b0:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ly4/b;->Z:Ly4/a;

    invoke-virtual {v1, v0}, Ly4/a;->l(I)V

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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z(Lo4/b;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result p1

    iput-boolean p1, p0, Ly4/b;->a0:Z

    return-void
.end method
