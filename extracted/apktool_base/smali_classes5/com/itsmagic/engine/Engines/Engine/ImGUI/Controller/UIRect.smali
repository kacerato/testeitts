.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;
.source "SourceFile"


# static fields
.field public static final q1:Ljava/lang/String; = "UIRect"

.field public static final v1:Ljava/lang/Class;


# instance fields
.field public D0:I

.field public E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

.field public final F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

.field public final G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

.field public final H:LW9/c;

.field public final I:LW9/c;

.field public final J:LW9/a;

.field public K:I

.field public L:I

.field public M:Z

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:Z

.field private autoSH:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private autoSW:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public b1:I

.field public i1:LJAVARuntime/GizmoObject;

.field private localPosition:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public m1:LJAVARuntime/Component;

.field private margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public q0:Z

.field private size:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public v0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->v1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$c;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "UIRect"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;-><init>(II)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    .line 8
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;-><init>(II)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 9
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 10
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 11
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    .line 12
    new-instance v1, LW9/a;

    invoke-direct {v1}, LW9/a;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    .line 14
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->M:Z

    .line 16
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->c:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sx",
            "sy"
        }
    .end annotation

    .line 34
    const-string v0, "UIRect"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 36
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;-><init>(II)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 37
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    .line 38
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    .line 40
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    .line 41
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;-><init>(II)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 42
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 43
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 44
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    .line 45
    new-instance v1, LW9/a;

    invoke-direct {v1}, LW9/a;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    const/4 v1, 0x1

    .line 46
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    .line 47
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    .line 48
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->M:Z

    .line 49
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->g(II)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "autoSW",
            "autoSH"
        }
    .end annotation

    .line 17
    const-string v0, "UIRect"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    const/16 v1, 0x32

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;-><init>(II)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    .line 23
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    .line 24
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;-><init>(II)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 25
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 26
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 27
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    .line 28
    new-instance v1, LW9/a;

    invoke-direct {v1}, LW9/a;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    const/4 v1, 0x1

    .line 29
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    .line 30
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    .line 31
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->M:Z

    .line 32
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    .line 33
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)LW9/c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    return p0
.end method

.method private dp(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->dpToPx(I)I

    move-result p1

    return p1
.end method

.method private incrementLayoutSizeStamp()V
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    :cond_0
    return-void
.end method

.method private incrementLayoutStamp()V
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    :cond_0
    return-void
.end method

.method private markControllerDirty()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    return-void
.end method

.method private migrateValues()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPosition:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPosition:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPosition:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->size:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->j(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->size:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPxSize()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->k(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->size:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    :cond_2
    return-void
.end method

.method private pxToDp(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxToDP(I)F

    move-result p1

    return p1
.end method

.method private recursiveCalculateBounds(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LW9/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "out"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    :try_start_0
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getInternalWidgetRect()LW9/c;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, LW9/c;->d()I

    move-result v3

    invoke-virtual {v2}, LW9/c;->e()I

    move-result v4

    invoke-virtual {v2}, LW9/c;->f()I

    move-result v5

    invoke-virtual {v2}, LW9/c;->g()I

    move-result v6

    if-gt v5, v3, :cond_3

    invoke-virtual {v2}, LW9/c;->c()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_3
    :goto_1
    if-gt v6, v4, :cond_4

    invoke-virtual {v2}, LW9/c;->b()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v6, v4, v2

    :cond_4
    if-le v5, v3, :cond_6

    if-gt v6, v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p2, LW9/b;->e:Z

    iget v2, p2, LW9/b;->a:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, LW9/b;->a:I

    iget v2, p2, LW9/b;->b:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, LW9/b;->b:I

    iget v2, p2, LW9/b;->c:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p2, LW9/b;->c:I

    iget v2, p2, LW9/b;->d:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p2, LW9/b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->recursiveCalculateBounds(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LW9/b;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private refreshDirtySnapshot()V
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->M:Z

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->M:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->N:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->O:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->P:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->Q:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->R:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->S:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->T:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->U:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->V:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->W:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->X:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->Y:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->Z:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->q0:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->M:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->N:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->O:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->P:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->Q:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->R:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->S:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->T:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->U:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->V:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->W:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->X:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->Y:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->Z:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->q0:Z

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    :cond_2
    return-void
.end method

.method private saveLayoutStamps()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->v0:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->D0:I

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->v0:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutStamp()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->D0:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutDependencyStamp()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->b1:I

    return-void
.end method

.method private syncScreenRectsWithGlobal()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    invoke-virtual {v0, v1}, LW9/c;->l(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    invoke-virtual {v0, v1}, LW9/c;->m(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, LW9/c;->n(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, LW9/c;->o(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    invoke-virtual {v0, v1}, LW9/c;->k(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v1

    invoke-virtual {v0, v1}, LW9/c;->j(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v1

    invoke-virtual {v0, v1}, LW9/a;->l(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v1

    invoke-virtual {v0, v1}, LW9/a;->m(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    invoke-virtual {v0}, LW9/a;->d()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, LW9/a;->n(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    invoke-virtual {v0}, LW9/a;->e()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, LW9/a;->o(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v1

    invoke-virtual {v0, v1}, LW9/a;->k(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v1

    invoke-virtual {v0, v1}, LW9/a;->j(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LW9/a;->l(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LW9/a;->m(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LW9/a;->n(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LW9/a;->o(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LW9/a;->k(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, LW9/a;->j(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public alignToParentLeft(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParentPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move p1, v1

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->e()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->g()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v1, v3

    add-int/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(II)Z

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalWidth(I)Z

    :cond_2
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalHeight(I)Z

    :cond_3
    return-void
.end method

.method public allowOncePerObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public applyBounds(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Ljava/util/List;LW9/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "boundList",
            "copyScreenRectOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;",
            "Ljava/util/List<",
            "LW9/b;",
            ">;",
            "LW9/b;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutDependencyStamp()I

    move-result v0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->applyBounds(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Ljava/util/List;LW9/b;I)Z

    move-result p1

    return p1
.end method

.method public applyBounds(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Ljava/util/List;LW9/b;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "boundList",
            "copyScreenRectOutput",
            "layoutDependencyStampAtCalculationStart"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;",
            "Ljava/util/List<",
            "LW9/b;",
            ">;",
            "LW9/b;",
            "I)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 3
    const-class v2, LW9/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LW9/b;

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParentPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v4

    .line 6
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    .line 7
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    move-object/from16 v7, p2

    .line 8
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LW9/b;

    .line 9
    invoke-virtual {v9}, LW9/b;->c()I

    move-result v10

    .line 10
    invoke-virtual {v9}, LW9/b;->d()I

    move-result v11

    .line 11
    invoke-virtual {v9}, LW9/b;->a()I

    move-result v12

    .line 12
    invoke-virtual {v9}, LW9/b;->b()I

    move-result v9

    .line 13
    iput-boolean v8, v2, LW9/b;->e:Z

    .line 14
    iget v8, v2, LW9/b;->a:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v2, LW9/b;->a:I

    .line 15
    iget v8, v2, LW9/b;->b:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v2, LW9/b;->b:I

    .line 16
    iget v8, v2, LW9/b;->c:I

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v2, LW9/b;->c:I

    .line 17
    iget v8, v2, LW9/b;->d:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v2, LW9/b;->d:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 18
    :cond_0
    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v6}, LW9/c;->d()I

    move-result v6

    .line 19
    iget-object v7, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v7}, LW9/c;->e()I

    move-result v7

    .line 20
    iget-object v9, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v9}, LW9/c;->f()I

    move-result v9

    .line 21
    iget-object v10, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v10}, LW9/c;->g()I

    move-result v10

    .line 22
    iget-object v11, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v11}, LW9/c;->c()I

    move-result v11

    .line 23
    iget-object v12, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v12}, LW9/c;->b()I

    move-result v12

    .line 24
    iget-boolean v13, v2, LW9/b;->e:Z

    if-eqz v13, :cond_1

    .line 25
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v14, v2, LW9/b;->a:I

    invoke-virtual {v13, v14}, LW9/c;->l(I)V

    .line 26
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v14, v2, LW9/b;->b:I

    invoke-virtual {v13, v14}, LW9/c;->m(I)V

    .line 27
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v14, v2, LW9/b;->c:I

    invoke-virtual {v13, v14}, LW9/c;->n(I)V

    .line 28
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v14, v2, LW9/b;->d:I

    invoke-virtual {v13, v14}, LW9/c;->o(I)V

    .line 29
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v14, v2, LW9/b;->c:I

    iget v15, v2, LW9/b;->a:I

    sub-int/2addr v14, v15

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v13, v14}, LW9/c;->k(I)V

    .line 30
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v14, v2, LW9/b;->d:I

    iget v15, v2, LW9/b;->b:I

    sub-int/2addr v14, v15

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v13, v14}, LW9/c;->j(I)V

    goto :goto_1

    .line 31
    :cond_1
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13, v5}, LW9/c;->l(I)V

    .line 32
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13, v5}, LW9/c;->m(I)V

    .line 33
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13, v5}, LW9/c;->n(I)V

    .line 34
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13, v5}, LW9/c;->o(I)V

    .line 35
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13, v5}, LW9/c;->k(I)V

    .line 36
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13, v5}, LW9/c;->j(I)V

    .line 37
    :goto_1
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13}, LW9/c;->d()I

    move-result v14

    iget-object v15, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, LW9/c;->l(I)V

    .line 38
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13}, LW9/c;->e()I

    move-result v14

    iget-object v15, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, LW9/c;->m(I)V

    .line 39
    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v13}, LW9/c;->f()I

    move-result v14

    iget-object v15, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v15

    add-int/2addr v14, v15

    iget-object v15, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->f()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v4

    invoke-virtual {v13, v14}, LW9/c;->n(I)V

    .line 40
    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v4}, LW9/c;->g()I

    move-result v13

    iget-object v14, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->c()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v13, v3

    invoke-virtual {v4, v13}, LW9/c;->o(I)V

    .line 41
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v4

    invoke-virtual {v3, v4}, LW9/c;->l(I)V

    .line 42
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    invoke-virtual {v3}, LW9/c;->d()I

    move-result v4

    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v13

    add-int/2addr v4, v13

    invoke-virtual {v3, v4}, LW9/c;->n(I)V

    .line 43
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v4

    invoke-virtual {v3, v4}, LW9/c;->k(I)V

    .line 44
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v4

    invoke-virtual {v3, v4}, LW9/c;->m(I)V

    .line 45
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    invoke-virtual {v3}, LW9/c;->e()I

    move-result v4

    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v13

    add-int/2addr v4, v13

    invoke-virtual {v3, v4}, LW9/c;->o(I)V

    .line 46
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v4

    invoke-virtual {v3, v4}, LW9/c;->j(I)V

    .line 47
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v4

    invoke-virtual {v3, v4}, LW9/a;->l(F)V

    .line 48
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    invoke-virtual {v3}, LW9/a;->d()F

    move-result v4

    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v13

    invoke-direct {v1, v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v13

    add-float/2addr v4, v13

    invoke-virtual {v3, v4}, LW9/a;->n(F)V

    .line 49
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v4

    invoke-virtual {v3, v4}, LW9/a;->k(F)V

    .line 50
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v4

    invoke-virtual {v3, v4}, LW9/a;->m(F)V

    .line 51
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    invoke-virtual {v3}, LW9/a;->e()F

    move-result v4

    iget-object v13, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v13

    invoke-direct {v1, v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v13

    add-float/2addr v4, v13

    invoke-virtual {v3, v4}, LW9/a;->o(F)V

    .line 52
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v4

    invoke-direct {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->pxToDp(I)F

    move-result v4

    invoke-virtual {v3, v4}, LW9/a;->j(F)V

    .line 53
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v3, v3, LW9/c;->a:I

    invoke-virtual {v0, v3}, LW9/b;->h(I)V

    .line 54
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v3, v3, LW9/c;->b:I

    invoke-virtual {v0, v3}, LW9/b;->i(I)V

    .line 55
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v3, v3, LW9/c;->c:I

    invoke-virtual {v0, v3}, LW9/b;->f(I)V

    .line 56
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v3, v3, LW9/c;->d:I

    invoke-virtual {v0, v3}, LW9/b;->g(I)V

    .line 57
    iput-boolean v8, v0, LW9/b;->e:Z

    .line 58
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v0}, LW9/c;->d()I

    move-result v0

    if-ne v6, v0, :cond_3

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 59
    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    if-ne v7, v0, :cond_3

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 60
    invoke-virtual {v0}, LW9/c;->f()I

    move-result v0

    if-ne v9, v0, :cond_3

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 61
    invoke-virtual {v0}, LW9/c;->g()I

    move-result v0

    if-ne v10, v0, :cond_3

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 62
    invoke-virtual {v0}, LW9/c;->c()I

    move-result v0

    if-ne v11, v0, :cond_3

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    .line 63
    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    if-eq v12, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v8

    .line 64
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutDependencyStamp()I

    move-result v3

    move/from16 v4, p4

    if-eq v3, v4, :cond_4

    move v3, v8

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    if-nez v0, :cond_5

    if-eqz v3, :cond_6

    .line 65
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->incrementLayoutStamp()V

    :cond_6
    if-nez v0, :cond_8

    if-eqz v3, :cond_7

    goto :goto_5

    .line 66
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->saveLayoutStamps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v5

    :cond_8
    :goto_5
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return v8

    :goto_6
    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    .line 68
    throw v0
.end method

.method public calculateInnerBounds()LW9/b;
    .locals 8

    const-class v0, LW9/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW9/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, LW9/b;->j()V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiRenderableComponent;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->getInternalWidgetRect()LW9/c;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, LW9/c;->d()I

    move-result v4

    invoke-virtual {v3}, LW9/c;->e()I

    move-result v5

    invoke-virtual {v3}, LW9/c;->f()I

    move-result v6

    invoke-virtual {v3}, LW9/c;->g()I

    move-result v7

    if-gt v6, v4, :cond_4

    invoke-virtual {v3}, LW9/c;->c()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v4

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_4
    :goto_1
    if-gt v7, v5, :cond_5

    invoke-virtual {v3}, LW9/c;->b()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v7, v5, v3

    :cond_5
    if-le v6, v4, :cond_7

    if-gt v7, v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v0, LW9/b;->e:Z

    iget v3, v0, LW9/b;->a:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, LW9/b;->a:I

    iget v3, v0, LW9/b;->b:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, LW9/b;->b:I

    iget v3, v0, LW9/b;->c:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, LW9/b;->c:I

    iget v3, v0, LW9/b;->d:I

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, LW9/b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    iget-boolean v1, v0, LW9/b;->e:Z

    if-nez v1, :cond_9

    invoke-virtual {v0}, LW9/b;->j()V

    :cond_9
    return-object v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPosition:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->e(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPosition:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->e(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->size:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->size:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->a()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    .line 9
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    .line 10
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public determineBoundsRecursively(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {p1}, LW9/c;->d()I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v0}, LW9/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v1}, LW9/c;->f()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v2}, LW9/c;->g()I

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v3}, LW9/c;->c()I

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v4}, LW9/c;->b()I

    move-result v4

    new-instance v5, LW9/b;

    invoke-direct {v5}, LW9/b;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->recursiveCalculateBounds(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LW9/b;)V

    iget-boolean v6, v5, LW9/b;->e:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v8, v5, LW9/b;->a:I

    invoke-virtual {v6, v8}, LW9/c;->l(I)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v8, v5, LW9/b;->b:I

    invoke-virtual {v6, v8}, LW9/c;->m(I)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v8, v5, LW9/b;->c:I

    invoke-virtual {v6, v8}, LW9/c;->n(I)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v8, v5, LW9/b;->d:I

    invoke-virtual {v6, v8}, LW9/c;->o(I)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v8, v5, LW9/b;->c:I

    iget v9, v5, LW9/b;->a:I

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v6, v8}, LW9/c;->k(I)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    iget v8, v5, LW9/b;->d:I

    iget v5, v5, LW9/b;->b:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v6, v5}, LW9/c;->j(I)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v5, v7}, LW9/c;->l(I)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v5, v7}, LW9/c;->m(I)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v5, v7}, LW9/c;->n(I)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v5, v7}, LW9/c;->o(I)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v5, v7}, LW9/c;->k(I)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v5, v7}, LW9/c;->j(I)V

    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {v5}, LW9/c;->d()I

    move-result v5

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {p1}, LW9/c;->e()I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {p1}, LW9/c;->f()I

    move-result p1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {p1}, LW9/c;->g()I

    move-result p1

    if-ne v2, p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {p1}, LW9/c;->c()I

    move-result p1

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    invoke-virtual {p1}, LW9/c;->b()I

    move-result p1

    if-eq v4, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->saveLayoutStamps()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->incrementLayoutStamp()V

    :goto_2
    return-void
.end method

.method public getBoundRect()LW9/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->H:LW9/c;

    return-object v0
.end method

.method public getCoordiantesEntriesForFP(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    const-string v2, "Coordinates"

    invoke-static {v2, v0, v1}, LF5/c;->H(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const-string v2, "Margin"

    invoke-static {v0, v2, v1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const-string v2, "Padding"

    invoke-static {v0, v2, v1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getGlobalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    return-object v0
.end method

.method public getGlobalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07009c

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a4

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;-><init>()V

    const-string v3, "Coordinates"

    invoke-static {v3, v1, v2}, LF5/c;->H(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$d;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;Landroid/content/Context;)V

    const-string p1, "Size"

    invoke-static {v1, p1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const-string v2, "Margin"

    invoke-static {p1, v2, v1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const-string v2, "Padding"

    invoke-static {p1, v2, v1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rect:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    invoke-virtual {v2}, LW9/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const/16 v3, 0xc

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(Ljava/lang/String;ILD5/n;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getJRMarginBottom()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v0

    return v0
.end method

.method public getJRMarginLeft()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v0

    return v0
.end method

.method public getJRMarginRight()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v0

    return v0
.end method

.method public getJRMarginTop()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v0

    return v0
.end method

.method public getJRPaddingBottom()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v0

    return v0
.end method

.method public getJRPaddingLeft()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v0

    return v0
.end method

.method public getJRPaddingRight()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v0

    return v0
.end method

.method public getJRPaddingTop()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v0

    return v0
.end method

.method public getJRPosition()LJAVARuntime/Point2;
    .locals 3
    .annotation runtime Ls8/a;
    .end annotation

    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Point2;-><init>(II)V

    return-object v0
.end method

.method public getJRPositionX()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result v0

    return v0
.end method

.method public getJRPositionY()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result v0

    return v0
.end method

.method public getJRSize()LJAVARuntime/Point2;
    .locals 3
    .annotation runtime Ls8/a;
    .end annotation

    new-instance v0, LJAVARuntime/Point2;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, LJAVARuntime/Point2;-><init>(II)V

    return-object v0
.end method

.method public getJRSizeX()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    return v0
.end method

.method public getJRSizeY()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    return v0
.end method

.method public getLayoutDependencyStamp()I
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    if-eqz v4, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiLayoutComponent;->getLayoutDependencyStamp()I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v2, :cond_3

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutDependencyStamp()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getLayoutSizeStamp()I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public getLayoutDependencyStampSnapshot()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->b1:I

    return v0
.end method

.method public getLayoutSizeStamp()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    return v0
.end method

.method public getLayoutStamp()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->K:I

    return v0
.end method

.method public getLayoutStampSnapshot()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->v0:I

    return v0
.end method

.method public getLocalPosition()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    return-object v0
.end method

.method public getLocalSize()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    return-object v0
.end method

.method public getMargin()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object v0
.end method

.method public getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object v0
.end method

.method public getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIController:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public getParentBounds()LW9/c;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIController:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getBoundRect()LW9/c;

    move-result-object v0

    return-object v0
.end method

.method public getParentLayoutStampSnapshot()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->D0:I

    return v0
.end method

.method public getParentPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIController:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v0

    return-object v0
.end method

.method public getScreenRect()LW9/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->I:LW9/c;

    return-object v0
.end method

.method public getScreenRectDP()LW9/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->J:LW9/a;

    return-object v0
.end method

.method public getSizeEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    const-string v3, "Width"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const-string v3, "Height"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Auto width"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    const-string v3, "Auto height"

    invoke-direct {v0, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "UIRect"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIRect:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v1, :cond_2

    :cond_1
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->migrateValues()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAutoSH()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    return v0
.end method

.method public isAutoSW()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    return v0
.end method

.method public markLayoutDirty()V
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->incrementLayoutStamp()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->incrementLayoutStamp()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getParent()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->b1:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, LP9/a;->k()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    :cond_1
    invoke-static {}, LP9/a;->k()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, LP9/a;->v()V

    :cond_2
    return-void
.end method

.method public onDeserialized()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDeserialized()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->E:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->M:Z

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->v0:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->D0:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->b1:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->L:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->refreshDirtySnapshot()V

    return-void
.end method

.method public setAutoSH(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoSH"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSH:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setAutoSW(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoSW"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->autoSW:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setGlobalHeight(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->k(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->incrementLayoutSizeStamp()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->syncScreenRectsWithGlobal()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    const/4 p1, 0x1

    return p1
.end method

.method public setGlobalPosition(II)Z
    .locals 1
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

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->setGlobalPosition(IIZ)Z

    move-result p1

    return p1
.end method

.method public setGlobalPosition(IIZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "includeLocalOffset"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result p3

    add-int/2addr p1, p3

    .line 3
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->dp(I)I

    move-result p3

    add-int/2addr p2, p3

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    move-result p3

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    move-result p3

    if-ne p3, p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->f()I

    .line 6
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->g()I

    .line 7
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->G:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {p3, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->h(II)V

    .line 8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->syncScreenRectsWithGlobal()V

    .line 9
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    const/4 p1, 0x1

    return p1
.end method

.method public setGlobalSize(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->j(I)V

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->f()I

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->k(I)V

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->incrementLayoutSizeStamp()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->syncScreenRectsWithGlobal()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    :cond_2
    return v1
.end method

.method public setGlobalWidth(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->e()I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->F:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->j(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->incrementLayoutSizeStamp()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->syncScreenRectsWithGlobal()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    const/4 p1, 0x1

    return p1
.end method

.method public setJRMarginBottom(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->o(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRMarginLeft(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->p(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRMarginRight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->q(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRMarginTop(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->r(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRPaddingBottom(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->o(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRPaddingLeft(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->p(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRPaddingRight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->q(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRPaddingTop(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->r(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRPosition(II)V
    .locals 1
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

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->h(II)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRPositionX(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->j(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRPositionY(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;->k(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRSize(II)V
    .locals 1
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

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->g(II)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRSizeX(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->j(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setJRSizeY(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->k(I)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setLocalPosition(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localPosition"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localPositionDP:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Vec2I;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setLocalSize(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localSize"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->localSize:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setMargin(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->margin:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setPadding(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->padding:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markControllerDirty()V

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->m1:LJAVARuntime/Component;

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->m1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIRect;

    invoke-direct {v0, p0}, LJAVARuntime/UIRect;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->m1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 7

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Z0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getUIController()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v1

    invoke-virtual {v1}, LW9/c;->c()I

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()LW9/c;

    move-result-object v0

    invoke-virtual {v0}, LW9/c;->b()I

    move-result v0

    int-to-float v0, v0

    new-instance v1, LJAVARuntime/Vector3;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2}, LJAVARuntime/Vector3;-><init>(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v2

    invoke-virtual {v2}, LW9/c;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, LJAVARuntime/Vector3;->setY(F)V

    new-instance v2, LJAVARuntime/Vector3;

    invoke-direct {v2}, LJAVARuntime/Vector3;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->d()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->c()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, LJAVARuntime/Vector3;->setX(F)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v3

    invoke-virtual {v3}, LW9/c;->e()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->getScreenRect()LW9/c;

    move-result-object v4

    invoke-virtual {v4}, LW9/c;->b()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    invoke-virtual {v2, v0}, LJAVARuntime/Vector3;->setY(F)V

    const v0, 0x459c3800    # 4999.0f

    invoke-virtual {v2, v0}, LJAVARuntime/Vector3;->setZ(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->i1:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/GizmoObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v3

    invoke-direct {v0, v3}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->i1:LJAVARuntime/GizmoObject;

    sget-object v3, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0, v3}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->i1:LJAVARuntime/GizmoObject;

    new-instance v3, LJAVARuntime/Color;

    const/16 v4, 0xa2

    const/16 v5, 0x57

    const/16 v6, 0xff

    invoke-direct {v3, v6, v4, v5}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {v0, v3}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->i1:LJAVARuntime/GizmoObject;

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->i1:LJAVARuntime/GizmoObject;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->i1:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_1
    return-void
.end method
