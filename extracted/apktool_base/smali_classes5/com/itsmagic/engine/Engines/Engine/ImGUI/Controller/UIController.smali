.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;
.super Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$r;
    }
.end annotation


# static fields
.field public static final F1:Ljava/lang/String; = "UIController"

.field public static final H1:Ljava/lang/Class;

.field public static final L1:I = 0x6

.field public static final q1:LAc/b;

.field public static final v1:LAc/b;

.field public static final y1:I = 0x1


# instance fields
.field public D0:LJAVARuntime/GizmoObject;

.field public E:LTb/a;

.field public F:LTb/a;

.field public G:Z

.field public H:I

.field public I:I

.field public J:Z

.field public K:I

.field public L:I

.field public M:I

.field public N:J

.field public O:J

.field public transient P:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;

.field public Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

.field public R:Z

.field public final S:Lfc/b;

.field public final T:LW9/c;

.field public final U:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

.field public final V:LMc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMc/a<",
            "Ltc/h;",
            ">;"
        }
    .end annotation
.end field

.field public W:I

.field public X:I

.field public Y:Lub/e;

.field public Z:Ljava/lang/String;

.field private allowScreenTouch:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public b1:LJAVARuntime/GizmoObject;

.field private drawToScreen:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fixedResolutionPixelsHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final fixedResolutionPixelsHeight_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private fixedResolutionPixelsWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final fixedResolutionPixelsWidth_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private freeResolutionPixels:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final freeResolutionPixels_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public i1:Lub/n;

.field public m1:LJAVARuntime/Component;

.field private pxSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final pxSize_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public q0:LJAVARuntime/GizmoObject;

.field private renderTextureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private resoPercentage:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final resoPercentage_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v0:LJAVARuntime/GizmoObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_COLOR:LAc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q1:LAc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->UI_EDITOR_GRID_BACKGROUND:LAc/b;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v1:LAc/b;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->H1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$h;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "UIController"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    const/high16 v1, 0x40600000    # 3.5f

    .line 4
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    .line 5
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize_OFCBRL:Lec/d;

    const v1, 0x3f4ccccd    # 0.8f

    .line 6
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    .line 7
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage_OFCBRL:Lec/d;

    .line 8
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;->FreeAspectResolution:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    const/16 v1, 0x500

    .line 9
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    .line 10
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth_OFCBRL:Lec/d;

    const/16 v1, 0x2d0

    .line 11
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    .line 12
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$l;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight_OFCBRL:Lec/d;

    .line 13
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    .line 14
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels_OFCBRL:Lec/d;

    .line 15
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v1, 0x7

    .line 16
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->H:I

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->J:Z

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->K:I

    .line 20
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->L:I

    .line 21
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->M:I

    const-wide/16 v1, -0x1

    .line 22
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->N:J

    .line 23
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    .line 24
    new-instance v1, Lfc/b;

    invoke-direct {v1}, Lfc/b;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->S:Lfc/b;

    .line 25
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->T:LW9/c;

    .line 26
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->U:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    .line 27
    new-instance v1, LMc/a;

    invoke-direct {v1}, LMc/a;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    .line 28
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    .line 29
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;IIZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolutionMode",
            "fixedResolutionPixelsWidth",
            "fixedResolutionPixelsHeight",
            "drawToScreen",
            "allowScreenTouch"
        }
    .end annotation

    .line 30
    const-string v0, "UIController"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    .line 32
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    const/high16 v1, 0x40600000    # 3.5f

    .line 33
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    .line 34
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize_OFCBRL:Lec/d;

    const v1, 0x3f4ccccd    # 0.8f

    .line 35
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    .line 36
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage_OFCBRL:Lec/d;

    .line 37
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;->FreeAspectResolution:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    const/16 v1, 0x500

    .line 38
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    .line 39
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth_OFCBRL:Lec/d;

    const/16 v1, 0x2d0

    .line 40
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    .line 41
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$l;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight_OFCBRL:Lec/d;

    .line 42
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    .line 43
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels_OFCBRL:Lec/d;

    .line 44
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v1, 0x7

    .line 45
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->H:I

    .line 46
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->J:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->K:I

    .line 49
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->L:I

    .line 50
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->M:I

    const-wide/16 v1, -0x1

    .line 51
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->N:J

    .line 52
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    .line 53
    new-instance v1, Lfc/b;

    invoke-direct {v1}, Lfc/b;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->S:Lfc/b;

    .line 54
    new-instance v1, LW9/c;

    invoke-direct {v1}, LW9/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->T:LW9/c;

    .line 55
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->U:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    .line 56
    new-instance v1, LMc/a;

    invoke-direct {v1}, LMc/a;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    .line 57
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    .line 58
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I

    .line 59
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    .line 60
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    .line 61
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    .line 62
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    .line 63
    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Lub/n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->i1:Lub/n;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    return p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    return p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    return p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    return p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->renderTextureFile:Ljava/lang/String;

    return-object p0
.end method

.method private apkReducer(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    return p1
.end method

.method private determineImageResolutionPercentage()I
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/16 v2, 0x64

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    invoke-static {v1}, LNc/b;->D(F)F

    move-result v1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, LNc/b;->D(F)F

    move-result v2

    invoke-static {v1, v2}, LNc/b;->S0(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0
.end method

.method private getImageHeight()I
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    sget-object v0, LK8/c;->e:LK8/c$a;

    sget-object v3, LK8/c$a;->Landscape:LK8/c$a;

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    invoke-static {}, LJAVARuntime/Screen;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {}, LJAVARuntime/Screen;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    return v0

    :cond_5
    invoke-static {}, LJAVARuntime/Screen;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0
.end method

.method private getImageWidth()I
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    sget-object v0, LK8/c;->e:LK8/c$a;

    sget-object v3, LK8/c$a;->Landscape:LK8/c$a;

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    invoke-static {}, LJAVARuntime/Screen;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {}, LJAVARuntime/Screen;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    return v0

    :cond_5
    invoke-static {}, LJAVARuntime/Screen;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0
.end method

.method private hasAnyTouchActivity()Z
    .locals 5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {}, Lrc/a;->L()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-static {v0}, Lrc/a;->n(I)Ltc/h;

    move-result-object v3

    invoke-virtual {v3}, Ltc/h;->k()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ltc/h;->q()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ltc/h;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v3}, LMc/a;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v3, v0}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltc/h;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ltc/h;->k()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ltc/h;->q()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ltc/h;->t()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method

.method private markAllLayoutsDirty()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markLayoutsDirtyRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method private markLayoutsDirtyRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;->markLayoutDirty()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markLayoutsDirtyRecursive(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private onUIFrameBuilt(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fbW",
            "fbH"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->K:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->L:I

    return-void
.end method

.method private removeFromGraphics()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resetLayoutCacheContext()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->b()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTb/a;->c()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LTb/a;->c()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->G:Z

    const/4 v2, 0x7

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->H:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markAllLayoutsDirty()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->K:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->L:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->N:J

    iput-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->J:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->S:Lfc/b;

    invoke-virtual {v0, v1}, Lfc/b;->l(Lub/p;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    :cond_3
    return-void
.end method

.method private resetLayoutCacheContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->P:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;

    return-void
.end method

.method private shouldBuildUIFrame(II)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fbW",
            "fbH"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->K:I

    if-ne v0, p1, :cond_3

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->L:I

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private toThemeColor(LAc/b;LJAVARuntime/Color;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "out"
        }
    .end annotation

    :try_start_0
    iget-object p2, p2, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateRenderTexture()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->renderTextureFile:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Y:Lub/e;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Z:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Z:Ljava/lang/String;

    invoke-static {v0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v0

    check-cast v0, Lub/e;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Y:Lub/e;

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Y:Lub/e;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterRender()V
    .locals 5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LTb/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->S:Lfc/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPixelsPosX()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getPixelsPosY()I

    move-result v2

    invoke-static {}, LJAVARuntime/Screen;->getWidth()I

    move-result v3

    invoke-static {}, LJAVARuntime/Screen;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lfc/b;->k(IIII)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->S:Lfc/b;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Lfc/b;->j(I)V

    :cond_0
    return-void
.end method

.method public allowScreenDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    .line 4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    .line 10
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 11
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->renderTextureFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->renderTextureFile:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public dpToPx(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .line 1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    mul-float/2addr p1, v0

    invoke-static {p1}, LNc/b;->w0(F)F

    move-result p1

    return p1
.end method

.method public dpToPx(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    int-to-float p1, p1

    .line 2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    mul-float/2addr p1, v0

    invoke-static {p1}, LNc/b;->w0(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public emitTouch()LV9/r;
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v0}, LMc/a;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, LV9/r;

    invoke-direct {v0}, LV9/r;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v1, v0}, LMc/a;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Max supported active virtual touchs at the same time in a controller is 15. Make sure to call releaseTouch(t) after releasing press."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitTouch(LV9/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v0}, LMc/a;->size()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v0, p1}, LMc/a;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Max supported active virtual touchs at the same time in a controller is 15. Make sure to call releaseTouch(t) after releasing press."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finishRenderFrame()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->J:Z

    return-void
.end method

.method public getCacheBuffer()LTb/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    return-object v0
.end method

.method public getControllerScreenRect()LW9/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->T:LW9/c;

    return-object v0
.end method

.method public getFixedResolutionPixelsHeight()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    return v0
.end method

.method public getFixedResolutionPixelsWidth()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    return v0
.end method

.method public getFrameBuffer()LTb/a;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    return-object v0
.end method

.method public getFrameBufferH()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->X:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getFrameBufferW()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->W:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getFreeResolutionPixels()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070270

    return v0
.end method

.method public getImageRatio()F
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getImageToScreen()Lfc/b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->S:Lfc/b;

    return-object v0
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

    const p1, 0x7f0500a3

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$o;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    const-string v2, "PX Size"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v3, "pxSize"

    invoke-virtual {p1, v1, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    if-nez p1, :cond_2

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    :cond_2
    new-instance p1, LC5/b;

    new-instance v1, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESOLUTION:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v4}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {p1, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object v1, p1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v1, LC5/a;->p:I

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MODE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$p;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    const-class v7, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    invoke-static {v3, v7, v4, v6}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PIXELS:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "freeResolutionPixels"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v3, p0, v4, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->WIDTH:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v6, "fixedResolutionPixelsWidth"

    invoke-virtual {v2, v3, p0, v6, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HEIGHT:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "fixedResolutionPixelsHeight"

    invoke-virtual {v2, v3, p0, v5, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p1, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESOLUTION_PERCENTAGE:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v5, "resoPercentage"

    invoke-virtual {v3, v4, p0, v5, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v3, "Draw to screen"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    const-string v3, "Listen screen touches"

    invoke-direct {p1, v1, v3, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$g;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    sget-object v2, LC5/b$a;->InputFile:LC5/b$a;

    const-string v3, ".rte"

    const-string v4, "Render texture"

    invoke-direct {p1, v1, v4, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayoutCacheContext()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->P:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->P:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->P:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$q;

    return-object v0
.end method

.method public getPadding()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->U:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    return-object v0
.end method

.method public getPixelsPosX()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    invoke-virtual {v0}, Lgb/g;->getX()F

    move-result v0

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget v1, LK8/c;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPixelsPosY()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    invoke-virtual {v0}, Lgb/g;->getY()F

    move-result v0

    invoke-static {}, LK8/c;->a()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sget v1, LK8/c;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPxSize()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    return v0
.end method

.method public getRenderTextureFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->renderTextureFile:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionMode()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    return-object v0
.end method

.method public getResolutionPercentage()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "UIController"

    return-object v0
.end method

.method public getTouchPos(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    invoke-virtual {p1}, Ltc/h;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;-><init>(II)V

    return-object v0
.end method

.method public getTouchPosInVec2(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getTouchPos(Ltc/h;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/UVec2I;->l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->UIController:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getUIBuildIntervalFrames()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public getVirtualToucheAt(I)Ltc/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v0, p1}, LMc/a;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltc/h;

    return-object p1
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isAllowScreenTouch()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    return v0
.end method

.method public isDrawToScreen()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    return v0
.end method

.method public isRenderOutputRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->J:Z

    return v0
.end method

.method public markUIDirty()V
    .locals 1

    invoke-static {}, LP9/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    return-void
.end method

.method public onAttach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markAllLayoutsDirty()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->removeFromGraphics()V

    return-void
.end method

.method public onGuiEnd()V
    .locals 0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeEndScreen()V

    return-void
.end method

.method public onGuiStart()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->T:LW9/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, LW9/c;->h(IIIIII)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->nativeBeginScreen()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resetLayoutCacheContext()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->J:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->N:J

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->M:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->K:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->L:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markAllLayoutsDirty()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resetLayoutCacheContext()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->removeFromGraphics()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {p1}, LMc/a;->clear()V

    :goto_0
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->B0()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->M:I

    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->M:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markAllLayoutsDirty()V

    :cond_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->K:I

    if-ne p1, p2, :cond_2

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->L:I

    if-eq p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markAllLayoutsDirty()V

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    if-nez p1, :cond_4

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-nez p1, :cond_5

    new-instance p1, LTb/a;

    invoke-direct {p1, p2, v0}, LTb/a;-><init>(II)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, LTb/a;->p()I

    move-result p1

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    invoke-virtual {p1}, LTb/a;->o()I

    move-result p1

    if-eq p1, v0, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    invoke-virtual {p1, p2, v0}, LTb/a;->u(II)Z

    :cond_7
    :goto_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->G:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->H:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->H:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->H:I

    const/4 v3, 0x6

    if-gt p1, v3, :cond_9

    move p1, v2

    goto :goto_2

    :cond_9
    move p1, v1

    :goto_2
    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    if-nez p1, :cond_a

    new-instance p1, LTb/a;

    invoke-direct {p1, p2, v0}, LTb/a;-><init>(II)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, LTb/a;->p()I

    move-result p1

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    invoke-virtual {p1}, LTb/a;->o()I

    move-result p1

    if-eq p1, v0, :cond_d

    :cond_b
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    invoke-virtual {p1, p2, v0}, LTb/a;->u(II)Z

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, LTb/a;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->F:LTb/a;

    :cond_d
    :goto_3
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->G:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->updateRenderTexture()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    invoke-virtual {p1}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->J()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->S:Lfc/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    invoke-virtual {v1}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfc/b;->l(Lub/p;)V

    sget-boolean p1, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->a0:Z

    if-nez p1, :cond_f

    invoke-direct {p0, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->shouldBuildUIFrame(II)Z

    move-result p1

    if-eqz p1, :cond_e

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->J:Z

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->I:I

    invoke-static {p0}, LP9/a;->b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    invoke-direct {p0, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->onUIFrameBuilt(II)V

    goto :goto_4

    :cond_e
    invoke-static {p0}, LP9/a;->m(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    :cond_f
    :goto_4
    invoke-static {p0}, LP9/a;->A(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Y:Lub/e;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lub/e;->G0()LTb/a;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-eq p1, p2, :cond_10

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Y:Lub/e;

    invoke-virtual {p1, p2}, Lub/e;->H0(LTb/a;)V

    :cond_10
    return-void
.end method

.method public propagateEditorViewModes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf5/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->propagateEditorViewModes(Ljava/util/List;)V

    return-void
.end method

.method public pxToDP(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "px"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    int-to-float p1, p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    div-float/2addr p1, v0

    return p1
.end method

.method public releaseTouch(Ltc/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v0, p1}, LMc/a;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public requestCacheBuffer()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->G:Z

    return-void
.end method

.method public setAllowScreenTouch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowScreenTouch"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->allowScreenTouch:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setDrawToScreen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawToScreen"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->drawToScreen:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setFixedResolutionPixelsHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixedResolutionPixelsHeight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsHeight:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setFixedResolutionPixelsWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixedResolutionPixelsWidth"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->fixedResolutionPixelsWidth:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setFreeResolutionPixels(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "freeResolutionPixels"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/16 v0, 0x10

    invoke-static {v0, p1}, LNc/b;->N(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->freeResolutionPixels:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setPxSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pxSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->pxSize:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setRenderTextureFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderTextureFile"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->renderTextureFile:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setResolutionMode(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionMode"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$s;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public setResolutionPercentage(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resoPercentage"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->resoPercentage:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->m1:LJAVARuntime/Component;

    return-void
.end method

.method public setUIBuildIntervalFrames(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiBuildIntervalFrames"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->m1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/UIController;

    invoke-direct {v0, p0}, LJAVARuntime/UIController;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->m1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnEditor()V
    .locals 10

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markAllLayoutsDirty()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->markUIDirty()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->i1:Lub/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lub/p;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->i1:Lub/n;

    invoke-virtual {v0}, Lub/p;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Lub/n;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lub/n;-><init>(II)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->i1:Lub/n;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    invoke-virtual {v0}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->J()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q0:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-nez v0, :cond_2

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-static {v2}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v4

    invoke-direct {v0, v4}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q0:LJAVARuntime/GizmoObject;

    invoke-static {v3, v3, v3}, LJAVARuntime/Quaternion;->fromEuler(FFF)LJAVARuntime/Quaternion;

    move-result-object v4

    invoke-virtual {v0, v4}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q0:LJAVARuntime/GizmoObject;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v1:LAc/b;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q0:LJAVARuntime/GizmoObject;

    invoke-virtual {v4}, LJAVARuntime/GizmoObject;->getColor()LJAVARuntime/Color;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->toThemeColor(LAc/b;LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q0:LJAVARuntime/GizmoObject;

    new-instance v6, LJAVARuntime/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    const v9, 0x459c9000    # 5010.0f

    invoke-direct {v6, v7, v8, v9}, LJAVARuntime/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v6}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q0:LJAVARuntime/GizmoObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7, v4}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q0:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->i1:Lub/n;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lub/n;->J()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_4

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-static {v2}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v6

    invoke-direct {v0, v6}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    invoke-static {v3, v3, v3}, LJAVARuntime/Quaternion;->fromEuler(FFF)LJAVARuntime/Quaternion;

    move-result-object v6

    invoke-virtual {v0, v6}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->q1:LAc/b;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    invoke-virtual {v6}, LJAVARuntime/GizmoObject;->getColor()LJAVARuntime/Color;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->toThemeColor(LAc/b;LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    new-instance v6, LJAVARuntime/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    const v9, 0x459c8800    # 5009.0f

    invoke-direct {v6, v7, v8, v9}, LJAVARuntime/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v6}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7, v4}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->i1:Lub/n;

    invoke-virtual {v6}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v6

    invoke-virtual {v0, v6}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->v0:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_7

    new-instance v0, LJAVARuntime/GizmoObject;

    invoke-static {v2}, LJAVARuntime/Vertex;->loadPrimitive(I)LJAVARuntime/Vertex;

    move-result-object v2

    invoke-direct {v0, v2}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    invoke-static {v3, v3, v3}, LJAVARuntime/Quaternion;->fromEuler(FFF)LJAVARuntime/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObject;->setEnableTransparency(Z)V

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    const v1, 0x459c4000    # 5000.0f

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    new-instance v2, LJAVARuntime/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    invoke-direct {v2, v6, v7, v1}, LJAVARuntime/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6, v4}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->E:LTb/a;

    invoke-virtual {v2}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v2

    invoke-virtual {v2}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v2

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    :cond_8
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->D0:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->b1:LJAVARuntime/GizmoObject;

    if-nez v0, :cond_9

    new-instance v0, LJAVARuntime/GizmoObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;->CUBE:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E1(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$v;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v2

    invoke-direct {v0, v2}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->b1:LJAVARuntime/GizmoObject;

    sget-object v2, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoObject;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->b1:LJAVARuntime/GizmoObject;

    invoke-static {v3, v3, v3}, LJAVARuntime/Quaternion;->fromEuler(FFF)LJAVARuntime/Quaternion;

    move-result-object v2

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->b1:LJAVARuntime/GizmoObject;

    new-instance v2, LJAVARuntime/Color;

    const/16 v3, 0x28

    invoke-direct {v2, v3, v3, v3}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    :cond_9
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->b1:LJAVARuntime/GizmoObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2, v3, v4}, LJAVARuntime/GizmoTransform;->setScale(FFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->b1:LJAVARuntime/GizmoObject;

    new-instance v2, LJAVARuntime/Vector3;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4, v1}, LJAVARuntime/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->b1:LJAVARuntime/GizmoObject;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_a
    return-void
.end method

.method public virtualTouchsCount()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->V:LMc/a;

    invoke-virtual {v0}, LMc/a;->size()I

    move-result v0

    return v0
.end method
