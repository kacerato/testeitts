.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j;,
        Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$l;
    }
.end annotation


# static fields
.field public static final V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;",
            ">;"
        }
    .end annotation
.end field

.field public static final W:I = 0x5


# instance fields
.field public A:Lp4/c;

.field public B:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

.field public final C:Ljava/lang/Object;

.field public final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/a;",
            ">;"
        }
    .end annotation
.end field

.field public final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/a;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public G:F

.field public H:I

.field public I:I

.field public J:Z

.field public final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq4/c;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/util/concurrent/atomic/AtomicInteger;

.field public O:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final P:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La4/b;",
            ">;"
        }
    .end annotation
.end field

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:LJAVARuntime/EditorPanel;

.field public final a:Lo4/f;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public isSerializable:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public j:Landroid/view/LayoutInflater;

.field public k:Li4/a;

.field public l:Landroid/view/View;

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public n:LAc/b;

.field public o:Z

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final q:Lo4/d;

.field public r:Landroid/widget/FrameLayout;

.field public s:Landroid/widget/FrameLayout;

.field public serializedComponentType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public t:Landroid/view/View;

.field public final u:Landroid/graphics/Rect;

.field public final v:Landroid/graphics/Rect;

.field public final w:Landroid/graphics/Rect;

.field public x:Li4/e;

.field public y:Lo4/c;

.field public z:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->V:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Objects/ObjectsPanel;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LJ4/d;

    invoke-direct {v1, v2}, LJ4/d;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Editor3DPanel;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lz5/a;

    invoke-direct {v1, v2}, Lz5/a;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LA5/a;

    invoke-direct {v1, v2}, LA5/a;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ly6/e;

    invoke-direct {v1, v2}, Ly6/e;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LZ5/f;

    invoke-direct {v1, v2}, LZ5/f;-><init>(LK8/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/ShaderGraph/ShaderGraphPanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/NoCode/NoCodePanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/TerrainStudioPanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/TerrainTools/TerrainToolsPanel;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ln/a;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lo4/f;

    invoke-direct {v0}, Lo4/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    .line 36
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 37
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o:Z

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v1, Lo4/d;

    invoke-direct {v1}, Lo4/d;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q:Lo4/d;

    .line 41
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    .line 43
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    .line 44
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->C:Ljava/lang/Object;

    .line 45
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    .line 46
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E:Ljava/util/List;

    .line 47
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G:F

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H:I

    .line 50
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I:I

    .line 51
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J:Z

    .line 52
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K:Ljava/util/List;

    const/4 v2, 0x0

    .line 53
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    .line 54
    const-string v2, "Panel"

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    .line 55
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    .line 58
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S:Z

    .line 59
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->isSerializable:Z

    .line 60
    monitor-enter v2

    .line 61
    :try_start_0
    new-instance v0, La4/b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_maximizePanel:Ljava/lang/String;

    invoke-static {v1}, La4/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La4/b;-><init>([Ljava/lang/String;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {v0, v1}, La4/b;->j(La4/a;)La4/b;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, La4/b;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)La4/b;

    move-result-object v0

    .line 63
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const-string v0, "Panel"

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception v0

    .line 66
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public constructor <init>(LK8/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lo4/f;

    invoke-direct {p1}, Lo4/f;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    .line 3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    invoke-direct {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 4
    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o:Z

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Lo4/d;

    invoke-direct {v0}, Lo4/d;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q:Lo4/d;

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->C:Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G:F

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H:I

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I:I

    .line 18
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J:Z

    .line 19
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K:Ljava/util/List;

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    .line 21
    const-string v1, "Panel"

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    .line 25
    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S:Z

    .line 26
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->isSerializable:Z

    .line 27
    monitor-enter v1

    .line 28
    :try_start_0
    new-instance p1, La4/b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_maximizePanel:Ljava/lang/String;

    invoke-static {v0}, La4/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, La4/b;-><init>([Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {p1, v0}, La4/b;->j(La4/a;)La4/b;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, La4/b;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)La4/b;

    move-result-object p1

    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const-string p1, ""

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lo4/f;

    invoke-direct {v0}, Lo4/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    .line 69
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 70
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o:Z

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v1, Lo4/d;

    invoke-direct {v1}, Lo4/d;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q:Lo4/d;

    .line 74
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    .line 75
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->C:Ljava/lang/Object;

    .line 78
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    .line 79
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G:F

    const/4 v1, 0x0

    .line 82
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H:I

    .line 83
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I:I

    .line 84
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J:Z

    .line 85
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K:Ljava/util/List;

    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    .line 87
    const-string v2, "Panel"

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    .line 88
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    .line 91
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S:Z

    .line 92
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->isSerializable:Z

    .line 93
    monitor-enter v2

    .line 94
    :try_start_0
    new-instance v0, La4/b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_maximizePanel:Ljava/lang/String;

    invoke-static {v1}, La4/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La4/b;-><init>([Ljava/lang/String;)V

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {v0, v1}, La4/b;->j(La4/a;)La4/b;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0}, La4/b;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)La4/b;

    move-result-object v0

    .line 96
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, LN7/c;->h0()V

    if-nez p2, :cond_0

    .line 99
    const-string p2, "Unnamed panel"

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    .line 102
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$a;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {p1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "icon",
            "tittle",
            "serializedComponentType"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lo4/f;

    invoke-direct {v0}, Lo4/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    .line 106
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 107
    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o:Z

    .line 109
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v1, Lo4/d;

    invoke-direct {v1}, Lo4/d;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q:Lo4/d;

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    .line 114
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->C:Ljava/lang/Object;

    .line 115
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    .line 116
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E:Ljava/util/List;

    .line 117
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G:F

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->H:I

    .line 120
    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I:I

    .line 121
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J:Z

    .line 122
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K:Ljava/util/List;

    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    .line 124
    const-string v2, "Panel"

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    .line 125
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    .line 128
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S:Z

    .line 129
    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->isSerializable:Z

    .line 130
    monitor-enter v2

    .line 131
    :try_start_0
    new-instance v1, La4/b;

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->shortcut_maximizePanel:Ljava/lang/String;

    invoke-static {v3}, La4/b;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, La4/b;-><init>([Ljava/lang/String;)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$c;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {v1, v3}, La4/b;->j(La4/a;)La4/b;

    move-result-object v1

    .line 132
    invoke-virtual {v1, p0}, La4/b;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)La4/b;

    move-result-object v1

    .line 133
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-static {}, LN7/c;->h0()V

    .line 136
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 138
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->serializedComponentType:Ljava/lang/String;

    .line 140
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->isSerializable:Z

    .line 141
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$b;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$b;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {p1}, LN7/c;->c0(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static a(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentInterface"
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    const-class v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    if-eq v0, v1, :cond_4

    const-class v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->V:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->V:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;

    invoke-interface {v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Serialized name already used by other type!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Type serialized name can\'t be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Component class type needs to extends EditorPanel.class"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Component class type can\'t be == EditorPanel.class"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Component class type can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "component interface can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "isSerializable"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v2, "serializedComponentType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->V:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :goto_0
    :try_start_1
    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->V:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;

    invoke-interface {v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k;->d(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F0(Ljava/lang/String;Lorg/json/JSONObject;)V

    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid component type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public A()Landroid/app/Activity;
    .locals 1

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public A0(Lo4/b;)V
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

.method public B()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->i:F

    return v0
.end method

.method public B0()V
    .locals 0

    return-void
.end method

.method public C()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->h:F

    return v0
.end method

.method public C0()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public D()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f:F

    return v0
.end method

.method public D0(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    monitor-enter p1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/b;

    invoke-static {v1}, La4/c;->b(La4/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public E()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->g:F

    return v0
.end method

.method public E0()V
    .locals 0

    return-void
.end method

.method public F()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public F0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "jsonObj"
        }
    .end annotation

    return-void
.end method

.method public G()LAc/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    return-object v0
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public H0()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PANEL_DETACHED["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo4/a;

    invoke-interface {v2}, Lo4/a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La4/b;

    invoke-static {v2}, La4/c;->e(La4/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public I()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    return-object v0
.end method

.method public I0()V
    .locals 0

    return-void
.end method

.method public J()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public J0()V
    .locals 0

    return-void
.end method

.method public K()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public K0()V
    .locals 0

    return-void
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public L0()V
    .locals 0

    return-void
.end method

.method public M()Landroid/content/Context;
    .locals 1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public M0()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->g()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/a;->c(Landroid/view/View;Landroid/content/Context;)V

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public N0()V
    .locals 0

    return-void
.end method

.method public O()Lo4/f;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    return-object v0
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

    const/4 p1, 0x0

    return p1
.end method

.method public P(Lo4/f;)Lo4/f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O()Lo4/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo4/f;->h(Lo4/f;)Lo4/f;

    return-object p1
.end method

.method public P0(Lo4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Q()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e:F

    return v0
.end method

.method public Q0(La4/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shortcut"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La4/b;

    iget-object v3, v2, La4/b;->d:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v2}, La4/c;->b(La4/b;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public R()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e:F

    invoke-static {}, LK8/c;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public R0()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$e;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public S()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    return-object v0
.end method

.method public S0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T:Z

    return-void
.end method

.method public T()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public T0()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$f;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public U()Lo4/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y:Lo4/c;

    return-object v0
.end method

.method public U0(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    invoke-static {p1}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public V()Lo4/d;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q:Lo4/d;

    return-object v0
.end method

.method public V0(Ln4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->B0(Ln4/f;)Z

    return-void
.end method

.method public W()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq4/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K:Ljava/util/List;

    return-object v0
.end method

.method public W0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowCloseX"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->B:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R:Z

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->r0(Z)V

    return-void
.end method

.method public X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    return-object v0
.end method

.method public X0(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return-object p0
.end method

.method public Y()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public Y0(LAc/b;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundColorTag"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->g()V

    return-object p0
.end method

.method public Z(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "touch can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Z0(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "color can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a0(Ltc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touch",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iput v1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iput p1, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "touch can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawBackground"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o:Z

    return-void
.end method

.method public b(Lo4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->D:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d:F

    return v0
.end method

.method public b1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->L:Ljava/lang/String;

    return-void
.end method

.method public c(Lq4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rightOption"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c0()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d:F

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public c1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multiInstancing"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J:Z

    return-void
.end method

.method public d(La4/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shortcut"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, La4/b;->b()La4/b;

    move-result-object v1

    iput-object p1, v1, La4/b;->d:Ljava/lang/Object;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$i;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$i;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;La4/b;)V

    invoke-virtual {v1, v2}, La4/b;->j(La4/a;)La4/b;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->P:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, La4/c;->b(La4/b;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->b:F

    return v0
.end method

.method public d1(Lo4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onDetachListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->y:Lo4/c;

    return-object p0
.end method

.method public e(Lo4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    return-void
.end method

.method public e0()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->b:F

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public e1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestCloseConfirmation"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S:Z

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c:F

    return v0
.end method

.method public f1(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittle"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n:LAc/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v0

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    :cond_0
    return-void
.end method

.method public g0()I
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->c:F

    invoke-static {}, LK8/c;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public g1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tittleColor"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public h(Lo4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "panelsBundle"
        }
    .end annotation

    return-void
.end method

.method public final h0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T:Z

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$d;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h1(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModeListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->C:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public i0()V
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->T:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->h0()V

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->B:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R:Z

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->r0(Z)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q:Z

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G:F

    invoke-static {}, LK8/d;->e()F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G:F

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->G:F

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I:I

    const/16 v3, 0xa

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->I:I

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public i1(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lo4/f;->l(F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lo4/f;->i(F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {}, LK8/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lo4/f;->k(F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->a:Lo4/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, LK8/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lo4/f;->j(F)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->t:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public j0()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->B:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->W()Z

    move-result v0

    return v0
.end method

.method public j1()LJAVARuntime/EditorPanel;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U:LJAVARuntime/EditorPanel;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/EditorPanel;

    invoke-direct {v0, p0}, LJAVARuntime/EditorPanel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->U:LJAVARuntime/EditorPanel;

    :cond_0
    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override this method panel tittle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->o:Z

    return v0
.end method

.method public k1()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A:Lp4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/c;->d()V

    :cond_0
    return-void
.end method

.method public l0()Z
    .locals 1

    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    instance-of v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l1()V
    .locals 0

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$h;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->d1(Lo4/a;)V

    return-void
.end method

.method public m0(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-lt p1, v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-gt p1, v2, :cond_0

    iget p1, v1, Landroid/graphics/Rect;->top:I

    if-lt p2, p1, :cond_0

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m1()V
    .locals 0

    return-void
.end method

.method public n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$g;-><init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->b(Lo4/a;)V

    return-void
.end method

.method public n0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n1()V
    .locals 0

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SERIALIZED_NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchFieldException:SERIALIZED_NAME in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "Unknown panel"

    :cond_3
    return-object v0
.end method

.method public o0()Z
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->w0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lrc/a;->u:Lrc/a$g;

    invoke-virtual {v0}, Lrc/a$g;->q()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v2}, Li4/e;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A:Lp4/c;

    invoke-interface {v3}, Lp4/c;->c()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v3

    invoke-interface {v2, v3}, Li4/e;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lrc/a$g;->i()I

    move-result v1

    invoke-virtual {v0}, Lrc/a$g;->j()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m0(II)Z

    move-result v0

    return v0
.end method

.method public o1()V
    .locals 0

    return-void
.end method

.method public p(IIII)Ltc/h;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height"
        }
    .end annotation

    sget-object v5, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q(IIIILJAVARuntime/GUIUtils$TouchFilter;)Ltc/h;

    move-result-object p1

    return-object p1
.end method

.method public p0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->J:Z

    return v0
.end method

.method public q(IIIILJAVARuntime/GUIUtils$TouchFilter;)Ltc/h;
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
            "x",
            "y",
            "width",
            "height",
            "touchFilter"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s(IIIILJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object p1

    return-object p1
.end method

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->S:Z

    return v0
.end method

.method public r(IIIILJAVARuntime/GUIUtils$TouchFilter;I)Ltc/h;
    .locals 8
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
            "x",
            "y",
            "width",
            "height",
            "touchFilter",
            "offset"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->t(IIIILJAVARuntime/GUIUtils$TouchFilter;ZI)Ltc/h;

    move-result-object p1

    return-object p1
.end method

.method public r0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->isSerializable:Z

    return v0
.end method

.method public s(IIIILJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;
    .locals 8
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
            "x",
            "y",
            "width",
            "height",
            "touchFilter",
            "disableTouchInFrontOfFloatingPanels"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->t(IIIILJAVARuntime/GUIUtils$TouchFilter;ZI)Ltc/h;

    move-result-object p1

    return-object p1
.end method

.method public s0(Ltc/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t(IIIILJAVARuntime/GUIUtils$TouchFilter;ZI)Ltc/h;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "width",
            "height",
            "touchFilter",
            "disableTouchInFrontOfFloatingPanels",
            "offset"
        }
    .end annotation

    move-object v1, p0

    move v0, p1

    move/from16 v2, p2

    move/from16 v3, p7

    iget-object v4, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    monitor-exit v4

    return-object v6

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lrc/a;->k:Ljava/util/List;

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_5

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltc/h;

    move-object/from16 v10, p5

    if-eqz v9, :cond_4

    invoke-static {v9, v10}, LJAVARuntime/GUIUtils;->applyFilter(Ltc/h;LJAVARuntime/GUIUtils$TouchFilter;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v11

    iget v12, v11, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    int-to-float v13, v0

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_4

    add-int v13, v0, p3

    int-to-float v13, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_4

    iget v11, v11, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    int-to-float v12, v2

    cmpl-float v12, v11, v12

    if-ltz v12, :cond_4

    add-int v12, v2, p4

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_4

    iget-object v11, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->C:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget-object v12, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;

    if-eqz v12, :cond_1

    invoke-interface {v12, v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$m;->a(Ltc/h;)Z

    move-result v12

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    move v12, v5

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v12, :cond_4

    if-eqz p6, :cond_3

    iget-object v11, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->x:Li4/e;

    invoke-interface {v11, v9}, Li4/e;->c(Ltc/h;)Z

    move-result v11

    if-nez v11, :cond_4

    if-lt v8, v3, :cond_2

    return-object v9

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    if-lt v8, v3, :cond_2

    return-object v9

    :goto_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v6

    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public varargs t0([Ltc/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v3

    :try_start_0
    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_1

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v4, v5, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    monitor-exit v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v3

    return v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public u(IIIIZ)Ltc/h;
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
            "x",
            "y",
            "width",
            "height",
            "disableTouchInFrontOfFloatingPanels"
        }
    .end annotation

    sget-object v5, LJAVARuntime/GUIUtils$TouchFilter;->All:LJAVARuntime/GUIUtils$TouchFilter;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s(IIIILJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object p1

    return-object p1
.end method

.method public u0(Ltc/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p1}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v(LJAVARuntime/GUIUtils$TouchFilter;)Ltc/h;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchFilter"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->q(IIIILJAVARuntime/GUIUtils$TouchFilter;)Ltc/h;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public varargs v0([Ltc/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ltc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    monitor-enter v3

    :try_start_0
    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget-object v5, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->v:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-ltz v6, :cond_1

    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_1

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    iget v4, v5, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    monitor-exit v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v3

    return v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public w(LJAVARuntime/GUIUtils$TouchFilter;I)Ltc/h;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchFilter",
            "offset"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->r(IIIILJAVARuntime/GUIUtils$TouchFilter;I)Ltc/h;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w0()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public x(LJAVARuntime/GUIUtils$TouchFilter;IZ)Ltc/h;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchFilter",
            "offset",
            "disableTouchInFrontOfFloatingPanels"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    move-object v7, p1

    move v8, p3

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->t(IIIILJAVARuntime/GUIUtils$TouchFilter;ZI)Ltc/h;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public x0()V
    .locals 0

    return-void
.end method

.method public y(LJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchFilter",
            "disableTouchInFrontOfFloatingPanels"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->u:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->s(IIIILJAVARuntime/GUIUtils$TouchFilter;Z)Ltc/h;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public y0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A:Lp4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/c;->f()V

    :cond_0
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

.method public z0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A:Lp4/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lp4/c;->a()V

    :cond_0
    return-void
.end method
