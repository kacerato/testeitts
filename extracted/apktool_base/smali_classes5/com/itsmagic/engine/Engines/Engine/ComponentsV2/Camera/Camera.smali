.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;
    }
.end annotation


# static fields
.field public static final M8:Ljava/lang/String; = "Camera"

.field public static final N8:Ljava/lang/Class;

.field public static final O8:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final P8:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field

.field public static final Q8:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public D0:Ljava/io/File;

.field public D2:F

.field public final D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public D4:F

.field public D5:F

.field public D6:I

.field public transient E:Lec/d;

.field public transient F:Lec/d;

.field public F1:Lfc/b;

.field public final F2:[Z

.field public final F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public F4:F

.field public F5:Z

.field public final F6:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            ">;"
        }
    .end annotation
.end field

.field public final F7:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/math/Matrix4f;",
            ">;"
        }
    .end annotation
.end field

.field public final F8:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/math/Matrix4f;",
            ">;"
        }
    .end annotation
.end field

.field public transient G:Lec/d;

.field public transient H:Lec/d;

.field public final H1:Lib/h;

.field public H2:LRb/a;

.field public final H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public H4:F

.field public H5:I

.field public final H6:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/f;",
            ">;"
        }
    .end annotation
.end field

.field public transient I:Lec/d;

.field public transient J:Lec/d;

.field public transient K:Lec/d;

.field public final K8:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/math/Matrix4f;",
            ">;"
        }
    .end annotation
.end field

.field public transient L:Lec/d;

.field public final L1:[F

.field public L2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

.field public L8:LJAVARuntime/Component;

.field public transient M:Lec/d;

.field public final M1:[F

.field public M2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

.field public final M3:[F

.field public transient N:Lec/d;

.field public O:LTb/a;
    .annotation build LIc/w;
    .end annotation
.end field

.field public P:LTb/a;
    .annotation build LIc/w;
    .end annotation
.end field

.field public Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;
    .annotation build LIc/w;
    .end annotation
.end field

.field public R:Z

.field public final R1:[F

.field public final R2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public S:LJAVARuntime/GizmoObject;

.field public T:Lub/e;

.field public U:Ljava/lang/String;

.field public V:F

.field public final V1:[F

.field public final V2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public X:F

.field public Y:Z

.field public Z:Z

.field public b1:LJAVARuntime/CameraObjectFilter;

.field public final b2:[F

.field private backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enablePostProcessing:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fixedResolutionPixelsHeight:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private fixedResolutionPixelsWidth:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private fov:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private freeResolutionPixels:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public i1:LV8/a;

.field public final i2:[D

.field public i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

.field private layer:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final m1:LV8/b;

.field public m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public final m3:Ljava/lang/Runnable;

.field public final m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private minimalDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private ortho_diameter:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public q0:Z

.field public final q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public q2:F

.field public final q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private rect_desloc_x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private rect_desloc_y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private rect_height:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private rect_width:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private renderDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

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

.field private resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public showInScreen:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public v0:Z

.field public final v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public v2:F

.field public final v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public v4:F

.field public y1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->N8:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$k;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$k;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$o;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$o;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O8:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$p;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$p;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P8:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$q;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$q;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q8:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    const-string v0, "Camera"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderDistance:F

    .line 3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$v;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->E:Lec/d;

    const/high16 v1, 0x42700000    # 60.0f

    .line 4
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    .line 5
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$y;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$y;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F:Lec/d;

    const v1, 0x3dcccccd    # 0.1f

    .line 6
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    .line 7
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$z;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$z;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->G:Lec/d;

    const v1, 0x3f4ccccd    # 0.8f

    .line 8
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    .line 9
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$A;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$A;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H:Lec/d;

    .line 10
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;->FreeAspectResolution:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    const/16 v1, 0x500

    .line 11
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    .line 12
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$B;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$B;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->I:Lec/d;

    const/16 v1, 0x2d0

    .line 13
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    .line 14
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$C;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$C;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->J:Lec/d;

    const/16 v1, 0x190

    .line 15
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    .line 16
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$D;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$D;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K:Lec/d;

    const/4 v1, 0x1

    .line 17
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    .line 18
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    .line 19
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$E;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$E;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L:Lec/d;

    .line 20
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Skybox:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    .line 21
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v4, 0x15

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 22
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    .line 23
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M:Lec/d;

    .line 24
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    .line 25
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$b;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->N:Lec/d;

    const/4 v4, 0x0

    .line 26
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    .line 27
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    .line 28
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    .line 29
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v5, 0x0

    .line 30
    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    .line 31
    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    .line 32
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

    .line 33
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 34
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->X:F

    const/4 v6, 0x0

    .line 35
    iput-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Y:Z

    .line 36
    iput-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    .line 37
    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b1:LJAVARuntime/CameraObjectFilter;

    .line 38
    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    .line 39
    new-instance v5, LV8/b;

    invoke-direct {v5}, LV8/b;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    .line 40
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 41
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 42
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->y1:Z

    .line 43
    new-instance v5, Lfc/b;

    invoke-direct {v5}, Lfc/b;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    .line 44
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$c;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H1:Lib/h;

    const/16 v5, 0x10

    .line 45
    new-array v6, v5, [F

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    .line 46
    new-array v6, v5, [F

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M1:[F

    .line 47
    new-array v6, v5, [F

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    .line 48
    new-array v6, v5, [F

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    .line 49
    new-array v6, v5, [F

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b2:[F

    .line 50
    new-array v6, v5, [D

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i2:[D

    .line 51
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q2:F

    .line 52
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v2:F

    .line 53
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D2:F

    const/16 v6, 0x8

    .line 54
    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F2:[Z

    .line 55
    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 56
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 57
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 58
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$d;

    invoke-direct {v6, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m3:Ljava/lang/Runnable;

    .line 59
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 60
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 61
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 62
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v7, -0x368bdc10    # -999999.0f

    invoke-direct {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 63
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 64
    new-array v5, v5, [F

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M3:[F

    .line 65
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v5, -0x40800000    # -1.0f

    .line 66
    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v4:F

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D4:F

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F4:F

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H4:F

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D5:F

    .line 67
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    const/4 v5, -0x1

    .line 68
    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H5:I

    .line 69
    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D6:I

    .line 70
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$r;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F6:Ljava/lang/ThreadLocal;

    .line 71
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$s;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H6:Ljava/lang/ThreadLocal;

    .line 72
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$t;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F7:Ljava/lang/ThreadLocal;

    .line 73
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$u;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F8:Ljava/lang/ThreadLocal;

    .line 74
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$w;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K8:Ljava/lang/ThreadLocal;

    .line 75
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderDistance(F)V

    .line 76
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    .line 77
    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    .line 78
    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    .line 79
    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosY(F)V

    .line 81
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    .line 82
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minimalDistancer"
        }
    .end annotation

    .line 166
    const-string v0, "Camera"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 167
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderDistance:F

    .line 168
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$v;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->E:Lec/d;

    const/high16 v0, 0x42700000    # 60.0f

    .line 169
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    .line 170
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$y;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$y;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F:Lec/d;

    const v0, 0x3dcccccd    # 0.1f

    .line 171
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    .line 172
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$z;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$z;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->G:Lec/d;

    const v0, 0x3f4ccccd    # 0.8f

    .line 173
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    .line 174
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$A;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$A;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H:Lec/d;

    .line 175
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;->FreeAspectResolution:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    const/16 v0, 0x500

    .line 176
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    .line 177
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$B;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$B;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->I:Lec/d;

    const/16 v0, 0x2d0

    .line 178
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    .line 179
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$C;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$C;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->J:Lec/d;

    const/16 v0, 0x190

    .line 180
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    .line 181
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$D;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$D;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K:Lec/d;

    const/4 v0, 0x1

    .line 182
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    .line 183
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    .line 184
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$E;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$E;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L:Lec/d;

    .line 185
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Skybox:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    .line 186
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0x15

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 187
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    .line 188
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M:Lec/d;

    .line 189
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    .line 190
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->N:Lec/d;

    const/4 v2, 0x0

    .line 191
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    .line 192
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    .line 193
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    .line 194
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v3, 0x0

    .line 195
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    .line 196
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    .line 197
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

    .line 198
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 199
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->X:F

    const/4 v4, 0x0

    .line 200
    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Y:Z

    .line 201
    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    .line 202
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b1:LJAVARuntime/CameraObjectFilter;

    .line 203
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    .line 204
    new-instance v3, LV8/b;

    invoke-direct {v3}, LV8/b;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    .line 205
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 206
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 207
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->y1:Z

    .line 208
    new-instance v3, Lfc/b;

    invoke-direct {v3}, Lfc/b;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    .line 209
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H1:Lib/h;

    const/16 v3, 0x10

    .line 210
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    .line 211
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M1:[F

    .line 212
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    .line 213
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    .line 214
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b2:[F

    .line 215
    new-array v4, v3, [D

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i2:[D

    .line 216
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q2:F

    .line 217
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v2:F

    .line 218
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D2:F

    const/16 v4, 0x8

    .line 219
    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F2:[Z

    .line 220
    invoke-static {v4, v0}, Ljava/util/Arrays;->fill([ZZ)V

    .line 221
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 222
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 223
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$d;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m3:Ljava/lang/Runnable;

    .line 224
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 225
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 226
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 227
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v5, -0x368bdc10    # -999999.0f

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 228
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 229
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M3:[F

    .line 230
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, -0x40800000    # -1.0f

    .line 231
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v4:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D4:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F4:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H4:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D5:F

    .line 232
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    const/4 v3, -0x1

    .line 233
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H5:I

    .line 234
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D6:I

    .line 235
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$r;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F6:Ljava/lang/ThreadLocal;

    .line 236
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$s;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H6:Ljava/lang/ThreadLocal;

    .line 237
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$t;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F7:Ljava/lang/ThreadLocal;

    .line 238
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$u;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F8:Ljava/lang/ThreadLocal;

    .line 239
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$w;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K8:Ljava/lang/ThreadLocal;

    .line 240
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setMinimalDistance(F)V

    .line 241
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    .line 242
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    .line 243
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    .line 244
    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosY(F)V

    .line 245
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    return-void
.end method

.method public constructor <init>(FFFZI)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "renderDistance",
            "fov",
            "minimalDistance",
            "showGizmo",
            "layer"
        }
    .end annotation

    .line 83
    const-string p4, "Camera"

    invoke-direct {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x43fa0000    # 500.0f

    .line 84
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderDistance:F

    .line 85
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$v;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->E:Lec/d;

    const/high16 p4, 0x42700000    # 60.0f

    .line 86
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    .line 87
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$y;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$y;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F:Lec/d;

    const p4, 0x3dcccccd    # 0.1f

    .line 88
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    .line 89
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$z;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$z;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->G:Lec/d;

    const p4, 0x3f4ccccd    # 0.8f

    .line 90
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    .line 91
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$A;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$A;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H:Lec/d;

    .line 92
    sget-object p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;->FreeAspectResolution:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    const/16 p4, 0x500

    .line 93
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    .line 94
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$B;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$B;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->I:Lec/d;

    const/16 p4, 0x2d0

    .line 95
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    .line 96
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$C;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$C;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->J:Lec/d;

    const/16 p4, 0x190

    .line 97
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    .line 98
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$D;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$D;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K:Lec/d;

    const/4 p4, 0x1

    .line 99
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    .line 100
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    .line 101
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$E;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$E;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L:Lec/d;

    .line 102
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Skybox:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    .line 103
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x15

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 104
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    .line 105
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M:Lec/d;

    .line 106
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    .line 107
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->N:Lec/d;

    const/4 v1, 0x0

    .line 108
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    .line 109
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    .line 110
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    .line 111
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    .line 113
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    .line 114
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

    .line 115
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 116
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->X:F

    const/4 v3, 0x0

    .line 117
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Y:Z

    .line 118
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    .line 119
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b1:LJAVARuntime/CameraObjectFilter;

    .line 120
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    .line 121
    new-instance v2, LV8/b;

    invoke-direct {v2}, LV8/b;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    .line 122
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 123
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 124
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->y1:Z

    .line 125
    new-instance v2, Lfc/b;

    invoke-direct {v2}, Lfc/b;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    .line 126
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H1:Lib/h;

    const/16 v2, 0x10

    .line 127
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    .line 128
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M1:[F

    .line 129
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    .line 130
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    .line 131
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b2:[F

    .line 132
    new-array v3, v2, [D

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i2:[D

    .line 133
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q2:F

    .line 134
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v2:F

    .line 135
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D2:F

    const/16 v3, 0x8

    .line 136
    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F2:[Z

    .line 137
    invoke-static {v3, p4}, Ljava/util/Arrays;->fill([ZZ)V

    .line 138
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 139
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 140
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m3:Ljava/lang/Runnable;

    .line 141
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 142
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 143
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 144
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v4, -0x368bdc10    # -999999.0f

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 145
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 146
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M3:[F

    .line 147
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v2, -0x40800000    # -1.0f

    .line 148
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v4:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D4:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F4:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H4:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D5:F

    .line 149
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    const/4 v2, -0x1

    .line 150
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H5:I

    .line 151
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D6:I

    .line 152
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$r;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F6:Ljava/lang/ThreadLocal;

    .line 153
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$s;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H6:Ljava/lang/ThreadLocal;

    .line 154
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$t;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F7:Ljava/lang/ThreadLocal;

    .line 155
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$u;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F8:Ljava/lang/ThreadLocal;

    .line 156
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$w;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$w;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K8:Ljava/lang/ThreadLocal;

    .line 157
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderDistance(F)V

    .line 158
    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFov(F)V

    .line 159
    iput p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    .line 160
    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setMinimalDistance(F)V

    .line 161
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    .line 162
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosX(F)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectPosY(F)V

    .line 165
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateMatrixes(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->recalculateFrustumOnly()V

    return-void
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    return p0
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

.method private buildLocals()V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H2:LRb/a;

    if-nez v2, :cond_0

    new-instance v2, LRb/a;

    new-instance v3, Lcom/google/android/filament/ColorGrading$a;

    invoke-direct {v3}, Lcom/google/android/filament/ColorGrading$a;-><init>()V

    new-instance v4, Lcom/google/android/filament/ToneMapper$g;

    invoke-direct {v4}, Lcom/google/android/filament/ToneMapper$g;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/android/filament/ColorGrading$a;->r(Lcom/google/android/filament/ToneMapper;)Lcom/google/android/filament/ColorGrading$a;

    move-result-object v3

    invoke-direct {v2, v3}, LRb/a;-><init>(Lcom/google/android/filament/ColorGrading$a;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H2:LRb/a;

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getSolidColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i3:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    new-instance v3, Lcom/google/android/filament/Skybox$a;

    invoke-direct {v3}, Lcom/google/android/filament/Skybox$a;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/google/android/filament/Skybox$a;->e(F)Lcom/google/android/filament/Skybox$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/google/android/filament/Skybox$a;->b(FFFF)Lcom/google/android/filament/Skybox$a;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v2

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/android/filament/Skybox$a;->b(FFFF)Lcom/google/android/filament/Skybox$a;

    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/filament/Skybox$a;->g(Z)Lcom/google/android/filament/Skybox$a;

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;-><init>(Lcom/google/android/filament/Skybox$a;)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->overrideAmbientLight()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v3, v4, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R2:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v2

    const/4 v5, 0x3

    new-array v5, v5, [F

    aput v3, v5, v1

    aput v4, v5, v0

    const/4 v1, 0x2

    aput v2, v5, v1

    new-instance v1, Lcom/google/android/filament/IndirectLight$a;

    invoke-direct {v1}, Lcom/google/android/filament/IndirectLight$a;-><init>()V

    invoke-virtual {v1, v0, v5}, Lcom/google/android/filament/IndirectLight$a;->c(I[F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object v0

    const v1, 0x47927c00    # 75000.0f

    invoke-virtual {v0, v1}, Lcom/google/android/filament/IndirectLight$a;->b(F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;-><init>(Lcom/google/android/filament/IndirectLight$a;Lwb/b;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    :cond_5
    return-void
.end method

.method private calculateFrustum()Z
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result v2

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H5:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D6:I

    if-eq v2, v3, :cond_1

    :cond_0
    iput-boolean v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H5:I

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D6:I

    :cond_1
    iget-boolean v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    const/4 v5, 0x0

    if-nez v3, :cond_2

    return v5

    :cond_2
    int-to-float v0, v0

    int-to-float v2, v2

    div-float v9, v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v0, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getMinimalDistance()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderDistance()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFov()F

    move-result v8

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v4:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_3

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D4:F

    cmpl-float v0, v0, v11

    if-nez v0, :cond_3

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F4:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_3

    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H4:F

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_6

    :cond_3
    iput v10, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v4:F

    iput v11, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D4:F

    iput v8, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F4:F

    iput v9, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H4:F

    :try_start_0
    iget-object v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    const/4 v7, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->updateFilamentFrustumMatrix()V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    invoke-static {v0, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    invoke-static {v0, v5, v2, v5}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iput-boolean v5, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v0, v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getMinimalDistance()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderDistance()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getOrtho_diameter()F

    move-result v3

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v4:F

    cmpl-float v6, v6, v0

    if-nez v6, :cond_5

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D4:F

    cmpl-float v6, v6, v2

    if-nez v6, :cond_5

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H4:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_5

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D5:F

    cmpl-float v6, v6, v3

    if-eqz v6, :cond_6

    :cond_5
    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v4:F

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D4:F

    iput v9, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H4:F

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D5:F

    :try_start_1
    iget-object v10, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    neg-float v6, v3

    mul-float v7, v6, v9

    const/high16 v8, 0x40000000    # 2.0f

    div-float v12, v7, v8

    mul-float/2addr v9, v3

    div-float v13, v9, v8

    div-float v14, v6, v8

    div-float v15, v3, v8

    const/4 v11, 0x0

    move/from16 v16, v0

    move/from16 v17, v2

    invoke-static/range {v10 .. v17}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->updateFilamentFrustumMatrix()V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    invoke-static {v0, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    invoke-static {v0, v5, v2, v5}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iput-boolean v5, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    iput-boolean v5, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    return v5
.end method

.method private calculateHierarchyCameraMatrix()V
    .locals 12

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M3:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v10

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private calculateMatrixes(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateViewMatrix()Z

    move-result v0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateFrustum()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    invoke-virtual {v0, v1, v2}, LV8/b;->a([F[F)V

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateHierarchyCameraMatrix()V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_2
    return-void
.end method

.method private calculateProjectionOnly(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateFrustum()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    invoke-virtual {p1, v0, v1}, LV8/b;->a([F[F)V

    :cond_0
    return-void
.end method

.method private calculateViewMatrix()Z
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    add-float/2addr v7, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    add-float/2addr v8, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    add-float/2addr v9, v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v10

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    const/4 v3, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M1:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M1:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    invoke-static {v1, v0, v2, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->updateFilamentCameraModelMatrix()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static deserialize(Lcom/google/gson/JsonObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Dictionary/ComponentDeserializeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private ensureRenderBuffers()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->determineImageResolutionPercentage()I

    move-result v2

    const/16 v3, 0x96

    invoke-static {v2, v3}, LNc/b;->K(II)I

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    if-nez v3, :cond_1

    new-instance v3, LTb/a;

    invoke-direct {v3, v0, v1, v2}, LTb/a;-><init>(III)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, LTb/a;->p()I

    move-result v3

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    invoke-virtual {v3}, LTb/a;->o()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    invoke-virtual {v3}, LTb/a;->q()I

    move-result v3

    if-eq v3, v2, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    invoke-virtual {v3, v0, v1, v2}, LTb/a;->v(III)Z

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    invoke-virtual {v4}, LTb/a;->i()I

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    invoke-virtual {v5}, LTb/a;->h()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->D(IIII)V

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    if-nez v3, :cond_4

    new-instance v3, LTb/a;

    invoke-direct {v3, v0, v1, v2}, LTb/a;-><init>(III)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, LTb/a;->p()I

    move-result v3

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    invoke-virtual {v3}, LTb/a;->o()I

    move-result v3

    if-ne v3, v1, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    invoke-virtual {v3}, LTb/a;->q()I

    move-result v3

    if-eq v3, v2, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    invoke-virtual {v3, v0, v1, v2}, LTb/a;->v(III)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, LTb/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    :cond_7
    :goto_1
    return-void
.end method

.method private extractMaxScale([F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    const/4 v0, 0x0

    aget v0, p1, v0

    mul-float/2addr v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x4

    aget v1, p1, v1

    mul-float/2addr v1, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v2, v2

    const/16 v3, 0x9

    aget v3, p1, v3

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    const/16 v3, 0xa

    aget p1, p1, v3

    mul-float/2addr p1, p1

    add-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private getVisibleScreenRectArea()F
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectPosX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectPosY()F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v3}, LNc/b;->E(FFF)F

    move-result v4

    invoke-static {v2, v1, v3}, LNc/b;->E(FFF)F

    move-result v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectWidth()F

    move-result v6

    add-float/2addr v0, v6

    invoke-static {v2, v0, v3}, LNc/b;->E(FFF)F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v6

    add-float/2addr v1, v6

    invoke-static {v2, v1, v3}, LNc/b;->E(FFF)F

    move-result v1

    sub-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private handleScreenshots()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D0:Ljava/io/File;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, LTb/a;->f(Ljava/io/File;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v0:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D0:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public static isAnyEditorCameraRendering()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {v1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    instance-of v4, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public static mainCamera()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {v1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v4, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-boolean v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    instance-of v6, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getVisibleScreenRectArea()F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v7, v6, v2

    if-lez v7, :cond_2

    move-object v4, v5

    move v2, v6

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    return-object v4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method public static mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {v1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v4, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-boolean v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    instance-of v6, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/AxisCubeCamera;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getVisibleScreenRectArea()F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v7, v6, v2

    if-lez v7, :cond_2

    move-object v4, v5

    move v2, v6

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    return-object v4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method private multiplyMatrixVector([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "v"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    aget v3, p1, v3

    mul-float/2addr v3, v0

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    const/16 v4, 0xc

    aget v4, p1, v4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v5, v0

    const/4 v0, 0x6

    aget v0, p1, v0

    mul-float/2addr v0, v1

    add-float/2addr v5, v0

    const/16 v0, 0xa

    aget v0, p1, v0

    mul-float/2addr v0, p2

    add-float/2addr v5, v0

    const/16 p2, 0xe

    aget p1, p1, p2

    add-float/2addr v5, p1

    invoke-direct {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v2
.end method

.method private recalculateFrustumOnly()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateFrustum()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    invoke-virtual {v0, v1, v2}, LV8/b;->a([F[F)V

    :cond_0
    return-void
.end method

.method private requestFrustumRecalculation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK8/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->recalculateFrustumOnly()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m3:Ljava/lang/Runnable;

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private updateFilamentCameraModelMatrix()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i2:[D

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M1:[F

    aget v2, v2, v1

    float-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->k([D)V

    :cond_1
    return-void
.end method

.method private updateFilamentFrustumMatrix()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i2:[D

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v2, v2, v1

    float-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getNearPlane()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFarPlane()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->j([DFF)V

    :cond_1
    return-void
.end method

.method private updateFrustumModel()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->y1:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    if-nez v0, :cond_0

    new-instance v0, LV8/a;

    invoke-direct {v0}, LV8/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-direct {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {v0, v1}, LV8/a;->p(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    invoke-virtual {v0, p0}, LV8/a;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, LV8/a;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_1
    return-void
.end method

.method private updateRenderTexture()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->T:Lub/e;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->U:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->U:Ljava/lang/String;

    invoke-static {v0}, Lyb/b;->u(Ljava/lang/String;)Lub/g;

    move-result-object v0

    check-cast v0, Lub/e;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->T:Lub/e;

    goto :goto_2

    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->T:Lub/e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->U:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->T:Lub/e;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->U:Ljava/lang/String;

    :cond_5
    :goto_2
    return-void
.end method

.method private useLocalAmbientLight()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->overrideAmbientLight()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    :cond_0
    return-void
.end method

.method private useLocalSkybox()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    return-void
.end method


# virtual methods
.method public allowPostProcessing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public calculateDistance(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "renderMatrix"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O8:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P8:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->y0([F)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    return p1
.end method

.method public clearBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LTb/a;->c()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LTb/a;->c()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    :cond_1
    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderDistance:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderDistance(F)V

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFov(F)V

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setMinimalDistance(F)V

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRenderPercentage(F)V

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    .line 9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->ortho_diameter:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setOrthoDiameter(F)V

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    .line 12
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    .line 13
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectWidth(F)V

    .line 14
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setRectHeight(F)V

    .line 15
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    .line 16
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setResolutionMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;)V

    .line 17
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFixedResolutionPixelsWidth(I)V

    .line 18
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFixedResolutionPixelsHeight(I)V

    .line 19
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->setFreeResolutionPixels(I)V

    .line 20
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionsEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    .line 21
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    .line 22
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 23
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public createGizmo()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->y1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, LW7/b;->f:LC8/a;

    iget-object v0, v0, LC8/a;->a:LD8/a;

    iget-object v0, v0, LD8/a;->f:LD8/b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    if-nez v1, :cond_2

    new-instance v1, LJAVARuntime/GizmoObject;

    invoke-direct {v1}, LJAVARuntime/GizmoObject;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    :try_start_0
    invoke-virtual {v0}, LD8/b;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v0, v0, LD8/b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lyb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lub/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lub/p;->p0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObject;->setTexture(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_1
    const-string v0, "Camera"

    const-string v1, "Failed to load gizmo texture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoElement;->setEnableLight(Z)V

    :cond_2
    return-void
.end method

.method public determineImageResolutionPercentage()I
    .locals 4
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

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
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    invoke-static {v1}, LNc/b;->D(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

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

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->removeFromGraphics()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->clearBuffers()V

    return-void
.end method

.method public getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-nez v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Skybox:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    return-object v0
.end method

.method public getCacheBuffer()LTb/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P:LTb/a;

    return-object v0
.end method

.method public getFarPlane()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderDistance()F

    move-result v0

    return v0
.end method

.method public getFilamentCamera()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    return-object v0
.end method

.method public getFixedResolutionPixelsHeight()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    return v0
.end method

.method public getFixedResolutionPixelsWidth()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    return v0
.end method

.method public getFov()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    return v0
.end method

.method public getFreeResolutionPixels()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    return v0
.end method

.method public getFrustumMatrix()[F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R1:[F

    return-object v0
.end method

.method public getHierarchyCameraMatrix()[F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M3:[F

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070268

    return v0
.end method

.method public getImageBuffer()LTb/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 4
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    invoke-static {}, LK8/c;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectWidth()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {}, LK8/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v3

    mul-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    return v0

    :cond_5
    invoke-static {}, LK8/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0
.end method

.method public getImageRatio()F
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getImageWidth()I
    .locals 4
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

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

    invoke-static {}, LK8/c;->a()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-static {}, LK8/c;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectWidth()F

    move-result v3

    mul-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    return v0

    :cond_5
    invoke-static {}, LK8/c;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectWidth()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->apkReducer(I)I

    move-result v0

    invoke-static {v1, v0}, LNc/b;->N(II)I

    move-result v0

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

    const p1, 0x7f050096

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RENDER_DISTANCE:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v5, "renderDistance"

    invoke-virtual {v1, v2, p0, v5, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MINIMAL_DISTANCE:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "minimalDistance"

    invoke-virtual {v1, v2, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    const-string v3, "Enable post processing"

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BACKGROUND:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$h;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->SolidColor:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-ne v1, v2, :cond_1

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$i;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v1, v2, v3, v4, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "solidColor"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, p1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-ne v1, p1, :cond_2

    new-instance p1, LC5/b;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ALPHA_MODE_NOT_COMPATIBLE_POST_PROCESSING:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {p1, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    sget-object v2, LC5/b$a;->InputFile:LC5/b$a;

    const-string v3, ".rte"

    const-string v4, "Render texture"

    invoke-direct {p1, v1, v4, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESOLUTION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$l;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PROJECTION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RECT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$n;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getInverseFrustumMatrix()[F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->V1:[F

    return-object v0
.end method

.method public getInverseViewMatrix()[F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->M1:[F

    return-object v0
.end method

.method public getLayer()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    return v0
.end method

.method public getMinimalDistance()F
    .locals 2

    const v0, 0x3c23d70a    # 0.01f

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    invoke-static {v0, v1}, LNc/b;->M(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    return v0
.end method

.method public getNearPlane()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getMinimalDistance()F

    move-result v0

    return v0
.end method

.method public getOrtho_diameter()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->ortho_diameter:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->ortho_diameter:F

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->ortho_diameter:F

    return v0
.end method

.method public getProjection()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-nez v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    return-object v0
.end method

.method public getRectHeight()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    return v0
.end method

.method public getRectPosX()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    return v0
.end method

.method public getRectPosY()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    return v0
.end method

.method public getRectWidth()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    return v0
.end method

.method public getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public getRenderDistance()F
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getMinimalDistance()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderDistance:F

    invoke-static {v0, v1}, LNc/b;->M(FF)F

    move-result v0

    return v0
.end method

.method public getRenderPercentage()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    return v0
.end method

.method public getRenderTextureFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    return-object v0
.end method

.method public getResolutionMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    return-object v0
.end method

.method public getScaledRectHeight()F
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    invoke-virtual {v0}, Lgb/g;->d()F

    move-result v0

    mul-float/2addr v1, v0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectHeight()F

    move-result v0

    return v0
.end method

.method public getScaledRectPosX()F
    .locals 3
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    invoke-virtual {v0}, Lgb/g;->getX()F

    move-result v0

    sget v1, LK8/c;->a:I

    int-to-float v1, v1

    invoke-static {}, LK8/c;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    invoke-virtual {v1}, Lgb/g;->e()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getScaledRectPosY()F
    .locals 3
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    invoke-virtual {v0}, Lgb/g;->getY()F

    move-result v0

    sget v1, LK8/c;->b:I

    int-to-float v1, v1

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    invoke-virtual {v1}, Lgb/g;->d()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getScaledRectWidth()F
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->m:Lgb/g;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    invoke-virtual {v0}, Lgb/g;->e()F

    move-result v0

    mul-float/2addr v1, v0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectWidth()F

    move-result v0

    return v0
.end method

.method public getSolidColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Camera"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getView()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L1:[F

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isCubeVisible(FFFF)Z
    .locals 2
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
            "z",
            "size"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D1(FFF)F

    move-result v0

    mul-float v1, p4, p4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    invoke-virtual {v0, p1, p2, p3, p4}, LV8/b;->b(FFFF)Z

    move-result p1

    return p1
.end method

.method public isCubeVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "size"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isCubeVisible(FFFF)Z

    move-result p1

    return p1
.end method

.method public isEnablePostProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

    return v0
.end method

.method public isPointVisible(FFF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    invoke-virtual {v0, p1, p2, p3}, LV8/b;->c(FFF)Z

    move-result p1

    return p1
.end method

.method public isPointVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isPointVisible(FFF)Z

    move-result p1

    return p1
.end method

.method public isShowInScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    return v0
.end method

.method public isSphereVisible(FFFF)Z
    .locals 2
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
            "z",
            "radius"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D1(FFF)F

    move-result v0

    mul-float v1, p4, p4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    invoke-virtual {v0, p1, p2, p3, p4}, LV8/b;->d(FFFF)Z

    move-result p1

    return p1
.end method

.method public isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transform",
            "radius"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result v0

    mul-float v1, p2, p2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m1:LV8/b;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v1

    .line 8
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v2

    .line 9
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->y0()F

    move-result p1

    .line 10
    invoke-virtual {v0, v1, v2, p1, p2}, LV8/b;->d(FFFF)Z

    move-result p1

    return p1
.end method

.method public isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "radius"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(FFFF)Z

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$x;->a:[I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getWorldSpace()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getBounding()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getWorldSpace()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getBounding()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w0()F

    move-result v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x0()F

    move-result v1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->y0()F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(FFFF)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aabb"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v0

    .line 35
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P8:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 36
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 37
    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aabb",
            "transform"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x10

    .line 24
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP;->acquire(I)[F

    move-result-object v0

    .line 25
    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;[F)Z

    move-result p1

    .line 27
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/FloatArrayJP;->release([F)V

    return p1
.end method

.method public isVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;[F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aabb",
            "renderMatrix"
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->multiplyMatrixVector([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result p1

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->extractMaxScale([F)F

    move-result p2

    mul-float/2addr p1, p2

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v0

    .line 19
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->P8:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 20
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "transform"
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()[F

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)Z

    move-result p1

    return p1
.end method

.method public isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;[F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "renderMatrix"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->multiplyMatrixVector([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result p1

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->extractMaxScale([F)F

    move-result p2

    mul-float/2addr p1, p2

    .line 15
    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isSphereVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H1:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateMatrixes(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H1:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->removeFromGraphics()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->y(LRb/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H2:LRb/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LRb/a;->destroyImmediate()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H2:LRb/a;

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->destroyImmediate()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->destroyImmediate()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    :cond_4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->clearBuffers()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LV8/a;->f()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->i1:LV8/a;

    :cond_5
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 1
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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v0, -0x368bdc10    # -999999.0f

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F5:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateMatrixes(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method

.method public overrideAmbientLight()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b1:LJAVARuntime/CameraObjectFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LJAVARuntime/CameraObjectFilter;->overrideAmbientLight()LJAVARuntime/Color;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 6
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    sget-object v2, Lcom/google/android/filament/View$d;->OPAQUE:Lcom/google/android/filament/View$d;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->w(Lcom/google/android/filament/View$d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F2:[Z

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderGizmos()Z

    move-result v3

    aput-boolean v3, v0, v2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F2:[Z

    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    shl-int v3, v1, v0

    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object v0

    const/16 v3, 0xff

    invoke-virtual {v0, v3, v2}, Lcom/google/android/filament/View;->G0(II)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-nez v0, :cond_4

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->x(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    :cond_4
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Y:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    :cond_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->updateFilamentFrustumMatrix()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->updateFilamentCameraModelMatrix()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Y:Z

    :cond_6
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateProjectionOnly(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->ensureRenderBuffers()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->updateRenderTexture()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Z:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v0

    invoke-virtual {v0}, LTb/a;->s()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectPosX()F

    move-result v0

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectPosY()F

    move-result v1

    invoke-static {}, LK8/c;->a()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectWidth()F

    move-result v2

    invoke-static {}, LK8/c;->b()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v3

    invoke-static {}, LK8/c;->a()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v4

    invoke-virtual {v4}, LTb/a;->k()Lub/p;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v4

    invoke-virtual {v4}, LTb/a;->k()Lub/p;

    move-result-object v4

    invoke-virtual {v4}, Lub/p;->J()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v5

    invoke-virtual {v5}, LTb/a;->k()Lub/p;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfc/b;->l(Lub/p;)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageBuffer()LTb/a;

    move-result-object v5

    invoke-virtual {v5}, LTb/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfc/b;->l(Lub/p;)V

    :goto_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    invoke-virtual {v4, v0, v1, v2, v3}, Lfc/b;->k(IIII)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    invoke-virtual {v0, v1}, Lfc/b;->j(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F1:Lfc/b;

    invoke-static {v0}, Lfc/a;->a(Lfc/b;)V

    :cond_8
    if-nez p2, :cond_9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->createGizmo()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    if-eqz p2, :cond_9

    const-class p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v1

    invoke-virtual {p1, v1}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->S:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_9
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->O:LTb/a;

    if-eqz p1, :cond_b

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->T:Lub/e;

    if-eqz p2, :cond_a

    invoke-virtual {p2, p1}, Lub/e;->H0(LTb/a;)V

    :cond_a
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->handleScreenshots()V

    :cond_b
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->buildLocals()V

    return-void
.end method

.method public recalculateMatrices()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v1, -0x368bdc10    # -999999.0f

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m4:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateViewMatrix()Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->calculateHierarchyCameraMatrix()V

    return-void
.end method

.method public receiveEvent(LLb/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    return-void
.end method

.method public removeFromGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->m2:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->f()LRb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Y:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->clearBuffers()V

    :cond_1
    return-void
.end method

.method public renderFog()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->b1:LJAVARuntime/CameraObjectFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LJAVARuntime/CameraObjectFilter;->renderFog()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public renderGizmos()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final renderPostProcessing()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->allowPostProcessing()Z

    move-result v0

    return v0
.end method

.method public requestCacheBuffer()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->R:Z

    return-void
.end method

.method public resetPostProcessingeBeforeRender()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderPostProcessing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->z(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H2:LRb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->y(LRb/a;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->useLocalAmbientLight()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->useLocalSkybox()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->Q:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Lo9/b;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    return-void
.end method

.method public screenCoordToWorldNormal(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchX",
            "touchY"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getHierarchyCameraMatrix()[F

    move-result-object v0

    .line 5
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(IILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public screenCoordToWorldNormal(IILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchX",
            "touchY",
            "out",
            "cameraMatrix"
        }
    .end annotation

    int-to-float p1, p1

    .line 6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectPosX()F

    move-result v0

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectWidth()F

    move-result v0

    invoke-static {}, LK8/c;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    int-to-float p2, p2

    .line 7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRectPosY()F

    move-result v2

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr p2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getScaledRectHeight()F

    move-result v2

    invoke-static {}, LK8/c;->a()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr p2, v2

    mul-float/2addr p2, v0

    sub-float/2addr p2, v1

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p2, v0

    .line 8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFrustumMatrix()[F

    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F7:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Matrix4f;

    .line 10
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F8:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Matrix4f;

    .line 11
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K8:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Matrix4f;

    const/4 v6, 0x0

    .line 12
    invoke-virtual {v3, p4, v6}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    .line 13
    invoke-virtual {v4, v2, v6}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    .line 14
    invoke-virtual {v4, v3, v5}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 15
    invoke-virtual {v5}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 16
    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 17
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v2, v3, :cond_0

    .line 18
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, p1, p2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v5, v0, p4}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    .line 19
    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    .line 20
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p3

    .line 21
    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v2, v1, :cond_1

    .line 22
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p1, p2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v5, v1, p4}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    .line 23
    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    :cond_1
    return-object p3
.end method

.method public screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPos"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public screenCoordToWorldNormal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPos",
            "out"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getHierarchyCameraMatrix()[F

    move-result-object v0

    .line 3
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(IILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public screenCoordToWorldNormalInRange(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rangeX",
            "rangeY"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getHierarchyCameraMatrix()[F

    move-result-object v0

    .line 2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    mul-float/2addr p2, v2

    sub-float/2addr p2, v3

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr p2, v2

    .line 3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFrustumMatrix()[F

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F7:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Matrix4f;

    .line 5
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F8:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Matrix4f;

    .line 6
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K8:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Matrix4f;

    const/4 v8, 0x0

    .line 7
    invoke-virtual {v5, v0, v8}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    .line 8
    invoke-virtual {v6, v4, v8}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    .line 9
    invoke-virtual {v6, v5, v7}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 10
    invoke-virtual {v7}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 11
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 12
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v4, v5, :cond_0

    .line 13
    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2, p1, p2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v7, v2, v0}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    .line 14
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    .line 15
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    .line 16
    :cond_0
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v4, v3, :cond_1

    .line 17
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, p1, p2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v7, v3, v0}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    .line 18
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public screenCoordToWorldNormalInRange(FF[F[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rangeX",
            "rangeY",
            "cameraMatrix",
            "frustumMatrix"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    mul-float/2addr p2, v1

    sub-float/2addr p2, v2

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p2, v1

    .line 20
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F7:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Matrix4f;

    .line 21
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F8:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Matrix4f;

    .line 22
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K8:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/math/Matrix4f;

    const/4 v6, 0x0

    .line 23
    invoke-virtual {v3, p3, v6}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    .line 24
    invoke-virtual {v4, p4, v6}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    .line 25
    invoke-virtual {v4, v3, v5}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 26
    invoke-virtual {v5}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 27
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 28
    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne p4, v3, :cond_0

    .line 29
    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4, p1, p2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v5, p4, p3}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    .line 30
    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    .line 31
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    .line 32
    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne p4, v2, :cond_1

    .line 33
    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4, p1, p2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v5, p4, p3}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    .line 34
    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public screenPointToWorldRay(II)Laa/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "coordX",
            "coordY"
        }
    .end annotation

    .line 2
    new-instance v0, Laa/d;

    invoke-direct {v0}, Laa/d;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(IILaa/d;)Laa/d;

    move-result-object p1

    return-object p1
.end method

.method public screenPointToWorldRay(IILaa/d;)Laa/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "coordX",
            "coordY",
            "rayDirection"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getHierarchyCameraMatrix()[F

    move-result-object v0

    .line 7
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(IILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 9
    iput-object p1, p3, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 10
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p3, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getHierarchyCameraMatrix()[F

    move-result-object v0

    .line 12
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenCoordToWorldNormal(IILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p3, Laa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 14
    iput-object p1, p3, Laa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_2
    :goto_1
    return-object p3
.end method

.method public screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Laa/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchPos"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v0, v0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(II)Laa/d;

    move-result-object p1

    return-object p1
.end method

.method public screenPointToWorldRay(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Laa/d;)Laa/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchPos",
            "rayDirection"
        }
    .end annotation

    .line 3
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    float-to-int v0, v0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->screenPointToWorldRay(IILaa/d;)Laa/d;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundType(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundType"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->backgroundType:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    return-void
.end method

.method public setEnablePostProcessing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enablePostProcessing"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->enablePostProcessing:Z

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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsHeight:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fixedResolutionPixelsWidth:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setFov(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fov"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->fov:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->freeResolutionPixels:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setLayer(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    invoke-static {v0, p1, v1}, LNc/b;->F(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->layer:I

    return-void
.end method

.method public setMinimalDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minimalDistance"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->minimalDistance:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setOrthoDiameter(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ortho_diameter"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->ortho_diameter:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->ortho_diameter:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setProjection(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "projection"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setRectHeight(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect_height"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_height:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setRectPosX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect_desloc_x"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_x:F

    return-void
.end method

.method public setRectPosY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect_desloc_y"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_desloc_y:F

    return-void
.end method

.method public setRectWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect_width"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->rect_width:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setRenderDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderDistance"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderDistance:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderDistance:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
    return-void
.end method

.method public setRenderPercentage(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resoPercentage"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resoPercentage:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->renderTextureFile:Ljava/lang/String;

    return-void
.end method

.method public setResolutionMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;)V
    .locals 1
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->resolutionMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$H;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->requestFrustumRecalculation()V

    :cond_0
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L8:LJAVARuntime/Component;

    return-void
.end method

.method public setShowInScreen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showInScreen"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->showInScreen:Z

    return-void
.end method

.method public setSolidColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "solidColor"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->solidColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public takeScreenShot(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFile"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->v0:Z

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->D0:Ljava/io/File;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L8:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Camera;

    invoke-direct {v0, p0}, LJAVARuntime/Camera;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->L8:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->updateFrustumModel()V

    return-void
.end method

.method public viewSpaceCoordToWorldNormal(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;[F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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
            "out",
            "cameraMatrix"
        }
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFrustumMatrix()[F

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F7:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F8:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Matrix4f;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->K8:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Matrix4f;

    const/4 v5, 0x0

    invoke-virtual {v2, p4, v5}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    invoke-virtual {v3, v1, v5}, Lcom/jme3/math/Matrix4f;->set([FZ)V

    invoke-virtual {v3, v2, v4}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    invoke-virtual {v4}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->projection:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Perspective:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v0, p4}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;->Orthographic:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$G;

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, p1, p2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v4, v1, p4}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/jme3/math/Vector3f;)V

    :cond_1
    :goto_0
    return-object p3
.end method

.method public worldToScreenCoordinates(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->F6:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getViewMatrix()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->H6:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFrustumMatrix()[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-virtual {v0, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v1, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget p1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    iget v1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    div-float/2addr v1, p1

    iput v1, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    div-float/2addr v3, p1

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    mul-float/2addr v1, v0

    add-float/2addr v1, v0

    mul-float/2addr v3, v0

    add-float/2addr v3, v0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-direct {p1, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object p1
.end method
