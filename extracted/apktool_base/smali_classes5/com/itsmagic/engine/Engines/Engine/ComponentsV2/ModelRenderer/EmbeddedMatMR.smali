.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$x;
    }
.end annotation


# static fields
.field public static D0:I = 0x0

.field public static final Z:I = 0x1000

.field public static final q0:Ljava/lang/String; = "EmbeddedMatMR"

.field public static final v0:Ljava/lang/Class;


# instance fields
.field public E:Ld9/a;

.field public F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public final J:[F

.field public K:I

.field public final L:LJAVARuntime/GizmoObjectMatrix;

.field public M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public volatile N:Z

.field public volatile O:Z

.field public P:F

.field public Q:LRb/c;

.field public R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public S:Z

.field public T:Z

.field public final U:Lda/d;

.field public final V:LCb/a;

.field public final W:Lib/h;

.field public X:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public Y:LJAVARuntime/Component;

.field public billboard:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private castShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enableOutline:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private meshFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private outlineColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private outlineScale:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public priority:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private receiveShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public version:C
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public zAlign:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->v0:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$k;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$k;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    const/4 v0, 0x0

    sput v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->D0:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const-string v0, "EmbeddedMatMR"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-char v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->version:C

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    .line 6
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->billboard:Z

    .line 8
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->zAlign:Z

    .line 9
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->priority:I

    .line 11
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v3, 0xff

    invoke-direct {v2, v3, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 12
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->enableOutline:Z

    const v2, 0x3d4ccccd    # 0.05f

    .line 13
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineScale:F

    .line 14
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->I:Ljava/lang/String;

    const/16 v1, 0x10

    .line 15
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->K:I

    .line 17
    new-instance v1, LJAVARuntime/GizmoObjectMatrix;

    invoke-direct {v1}, LJAVARuntime/GizmoObjectMatrix;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->P:F

    .line 21
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    .line 22
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->V:LCb/a;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->W:Lib/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meshFile"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "meshFile",
            "material"
        }
    .end annotation

    .line 27
    const-string v0, "EmbeddedMatMR"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    iput-char v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->version:C

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    .line 30
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v2, 0x1

    .line 31
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    .line 32
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    .line 33
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->billboard:Z

    .line 34
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->zAlign:Z

    .line 35
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    .line 36
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->priority:I

    .line 37
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v3, 0xff

    invoke-direct {v2, v3, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 38
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->enableOutline:Z

    const v2, 0x3d4ccccd    # 0.05f

    .line 39
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineScale:F

    .line 40
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->I:Ljava/lang/String;

    const/16 v1, 0x10

    .line 41
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    const/4 v1, -0x1

    .line 42
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->K:I

    .line 43
    new-instance v1, LJAVARuntime/GizmoObjectMatrix;

    invoke-direct {v1}, LJAVARuntime/GizmoObjectMatrix;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    .line 44
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    .line 45
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->P:F

    .line 47
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    .line 48
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    .line 49
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    .line 50
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->V:LCb/a;

    .line 51
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->W:Lib/h;

    .line 52
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 53
    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "meshFile",
            "meshFileFromAssets",
            "material"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    const-string v0, "EmbeddedMatMR"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    iput-char v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->version:C

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    .line 57
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v2, 0x1

    .line 58
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    .line 59
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    .line 60
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->billboard:Z

    .line 61
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->zAlign:Z

    .line 62
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    .line 63
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->priority:I

    .line 64
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v3, 0xff

    invoke-direct {v2, v3, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 65
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->enableOutline:Z

    const v2, 0x3d4ccccd    # 0.05f

    .line 66
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineScale:F

    .line 67
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->I:Ljava/lang/String;

    const/16 v1, 0x10

    .line 68
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    const/4 v1, -0x1

    .line 69
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->K:I

    .line 70
    new-instance v1, LJAVARuntime/GizmoObjectMatrix;

    invoke-direct {v1}, LJAVARuntime/GizmoObjectMatrix;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    .line 71
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    .line 72
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    const/4 v1, 0x0

    .line 73
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->P:F

    .line 74
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    .line 75
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    .line 76
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    .line 77
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->V:LCb/a;

    .line 78
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->W:Lib/h;

    .line 79
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setMeshFile(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object p2

    const-string v0, "@@ASSET@@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setMeshFile(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 82
    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/itsmagic/engine/Engines/Engine/Material/Material;ZZ)V
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
            "meshFile",
            "meshFileFromAssets",
            "material",
            "allowRender",
            "castShadow"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    const-string p4, "EmbeddedMatMR"

    invoke-direct {p0, p4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 84
    iput-char p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->version:C

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    .line 88
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    .line 89
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->billboard:Z

    .line 90
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->zAlign:Z

    .line 91
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    .line 92
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->priority:I

    .line 93
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-direct {v1, v2, p4, p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 94
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->enableOutline:Z

    const v1, 0x3d4ccccd    # 0.05f

    .line 95
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineScale:F

    .line 96
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->I:Ljava/lang/String;

    const/16 v0, 0x10

    .line 97
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->K:I

    .line 99
    new-instance v0, LJAVARuntime/GizmoObjectMatrix;

    invoke-direct {v0}, LJAVARuntime/GizmoObjectMatrix;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    .line 100
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    .line 101
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->P:F

    .line 103
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    .line 104
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    .line 105
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    .line 106
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->V:LCb/a;

    .line 107
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;

    invoke-direct {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->W:Lib/h;

    .line 108
    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "@@ASSET@@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 110
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setMeshFile(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setMeshFile(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_1

    .line 112
    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->onMaterialChanged()V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)LRb/c;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    return-void
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)[F
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->applyTransparentBlendOrderPolicy(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    return-void
.end method

.method private addToGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    :cond_0
    return-void
.end method

.method private applyTransparentBlendOrderPolicy(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceMaterial"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->isTransparentBlend(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/16 v1, 0x1000

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {p1, v0, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    :goto_0
    return-void
.end method

.method private buildRenderable()V
    .locals 14

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lp6/d;->E1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v2, "build renderable"

    invoke-static {v2}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    new-instance v4, LRb/c;

    invoke-direct {v4}, LRb/c;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v12

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    :cond_2
    move-object v7, v4

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v5, Lcom/google/android/filament/RenderableManager$a;

    const/4 v13, 0x1

    invoke-direct {v5, v13}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    invoke-virtual {v5, v6}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v5

    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    invoke-virtual {v5, v6}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v6

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v9

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v10

    sget-object v11, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->isDrawInFront()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    move v0, v13

    :goto_1
    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_4
    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->applyTransparentBlendOrderPolicy(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iput-boolean v13, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    invoke-virtual {v0, v1, v4}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->K:I

    invoke-virtual {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x4([FI)I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->K:I

    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    :cond_5
    return-void
.end method

.method private static createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->serialize(Landroid/content/Context;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->n(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmbeddedMatMR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFile(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r:Z

    return-object p0
.end method

.method private destroyRenderable()V
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    return-void
.end method

.method private destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scene",
            "destroyIfCan"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    .line 4
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->l(LRb/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->m(LRb/c;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {p1}, LRb/c;->f()V

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {p1}, LRb/c;->destroyImmediate()V

    .line 10
    :goto_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    :cond_4
    return-void
.end method

.method private ensureEmbeddedMat()Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmbeddedMatMR_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->setFile(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r:Z

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    return-object v0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/Box;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->lambda$loadWireframeVertexForGizmoLowTask$0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/Box;)V

    return-void
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->loadWireframeVertexForGizmoLowTask()V

    return-void
.end method

.method private isTransparentBlend(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceMaterial"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "blendingMode"

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lec/a;->valueOf(Ljava/lang/String;)Lec/a;

    move-result-object p1

    sget-object v1, Lec/a;->TRANSPARENT:Lec/a;

    if-eq p1, v1, :cond_2

    sget-object v1, Lec/a;->FADE:Lec/a;

    if-eq p1, v1, :cond_2

    sget-object v1, Lec/a;->ADD:Lec/a;

    if-eq p1, v1, :cond_2

    sget-object v1, Lec/a;->MULTIPLY:Lec/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method private synthetic lambda$loadWireframeVertexForGizmoLowTask$0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/Box;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->a2(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/Box;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->shouldAcceptBuiltWireframe()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    return-void

    :goto_0
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    throw p1
.end method

.method private loadWireframeVertexForGizmoLowTask()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_2
    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v1

    iget-boolean v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->selectionWireframeGizmo:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_4

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_4
    return-void

    :cond_5
    :try_start_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_6

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_6
    return-void

    :cond_7
    :try_start_4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_8

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_8
    return-void

    :cond_9
    :try_start_5
    sget v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->D0:I

    invoke-static {}, LK8/a;->k()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v1, v2, :cond_b

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_a

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_a
    return-void

    :cond_b
    :try_start_6
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_c

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_c
    return-void

    :cond_d
    :try_start_7
    invoke-static {}, LK8/a;->k()I

    move-result v2

    sput v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->D0:I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v2

    const-string v4, "@@ASSET@@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, LJb/e;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->V0()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, LJb/e;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    new-instance v1, Lc9/a;

    invoke-direct {v1, p0}, Lc9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-virtual {v2, v1}, LJb/e;->b(LJb/e$a;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_e

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_e
    return-void

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_f
    :try_start_8
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_wf"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mwf"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {v2, v0, v0, v3}, LFb/c;->p(Ljava/lang/String;ZZLFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-static {v1}, LIb/k;->j(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->m(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->o(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_0
    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_11

    :goto_1
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    goto :goto_3

    :goto_2
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v1, :cond_11

    goto :goto_1

    :cond_11
    :goto_3
    return-void

    :goto_4
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-nez v2, :cond_12

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    :cond_12
    throw v1
.end method

.method private onMaterialChanged()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_5

    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->z()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setMaterialInstanceAt(ILcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->isDrawInFront()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :goto_1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->applyTransparentBlendOrderPolicy(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private requestWireframeVertexLoadTask()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    new-instance v0, Lc9/b;

    invoke-direct {v0, p0}, Lc9/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-static {v0}, Lca/c;->D(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setModelInternal(Ld9/a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "model",
            "dispatchMeshFileIfNull"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->V:LCb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ld9/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->V:LCb/a;

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v(LCb/a;)V

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p2

    invoke-static {p2}, LFb/c;->g(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    invoke-static {p2, p1}, LFb/c;->d(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    :cond_3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_8

    invoke-static {}, LK8/a;->r()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->onVertexChangedRenderables()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    goto :goto_1

    :cond_7
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$j;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_8
    return-void
.end method

.method private shouldAcceptBuiltWireframe()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->selectionWireframeGizmo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateMaterial(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preventMaterialLoad"
        }
    .end annotation

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "update material"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->ensureEmbeddedMat()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v2

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->W(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->X(Lda/d;)V

    :cond_1
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-boolean p1, v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->c:Z

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->j(Lda/d;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->I:Ljava/lang/String;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-boolean v2, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r:Z

    if-nez v2, :cond_2

    invoke-static {p1}, Lda/h;->d(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->I()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->S()V

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eq v1, p1, :cond_4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->onMaterialChanged()V

    :cond_4
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method private updateMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$x;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "update mesh"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    if-eqz p1, :cond_2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$e;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$x;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object p1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    const-string v5, "@@ASSET@@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    const-string v6, ".mesh"

    invoke-static {v4, v6}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    invoke-static {v4, v5, p1, v3, v2}, LFb/c;->n(Ljava/lang/String;ZLandroid/content/Context;ZLFb/c$g;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    new-instance v1, Ld9/a;

    invoke-direct {v1, p1}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-direct {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setModelInternal(Ld9/a;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_4
    if-eqz v5, :cond_5

    const-string p1, ".obj"

    invoke-static {v4, p1}, LIc/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_1
    invoke-static {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B1(Ljava/lang/String;LFb/a;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    new-instance v1, Ld9/a;

    invoke-direct {v1, p1}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-direct {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setModelInternal(Ld9/a;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_5
    invoke-direct {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setModelInternal(Ld9/a;Z)V

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-direct {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setModelInternal(Ld9/a;Z)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    :cond_7
    :goto_5
    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method


# virtual methods
.method public animEntriesCount()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e()I

    move-result v0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->animEntriesCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->animEntriesCount()I

    move-result v0

    return v0
.end method

.method public animEntryAt(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e()I

    move-result v1

    if-le v1, p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    sub-int/2addr p1, v1

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->animEntryAt(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public animEntryTypeAt(I)Lcom/itsmagic/engine/Engines/Engine/Animation/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->e()I

    move-result v1

    if-le v1, p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g(I)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    sub-int/2addr p1, v1

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->animEntryTypeAt(I)Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;-><init>()V

    .line 3
    iget-char v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->version:C

    iput-char v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->version:C

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setMeshFile(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->ensureEmbeddedMat()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    .line 6
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    .line 7
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->zAlign:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->zAlign:Z

    .line 9
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->billboard:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->billboard:Z

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->priority:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->priority:I

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public drawGizmo()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings;->a()Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Settings/Base/EditorSettings$Settings;->selectionWireframeGizmo:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->P:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-virtual {v1}, LJAVARuntime/GizmoObjectMatrix;->getVertex()LJAVARuntime/Vertex;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->requestWireframeVertexLoadTask()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v0

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObjectMatrix;->setVertex(LJAVARuntime/Vertex;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getRenderMatrix()[F

    move-result-object v1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoMatrix;->setMatrix([F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-virtual {v0}, LJAVARuntime/GizmoObjectMatrix;->getColor()LJAVARuntime/Color;

    move-result-object v0

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0}, Ll/a;->a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    sget-object v1, LJAVARuntime/GizmoElement$RenderMode;->WireFrame:LJAVARuntime/GizmoElement$RenderMode;

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObjectMatrix;->setRenderMode(LJAVARuntime/GizmoElement$RenderMode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoObjectMatrix;->setWireFrameWidth(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_2
    return-void
.end method

.method public exposeAnimationEntries(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/List<",
            "LC5/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;Ljava/util/List;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->exposeAnimationEntries(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    return-void
.end method

.method public getColorFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->B(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getColorFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public getDataEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CAST_SHADOWS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    const-string v2, "Receive shadows"

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    const-string v2, "Priority"

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v0, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "priority"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance v0, LIc/k;

    invoke-direct {v0}, LIc/k;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, LIc/k;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->ensureEmbeddedMat()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->getDependencyFiles(LIc/h;)LIc/k;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, LIc/k;->a:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object v1, v0, LIc/k;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Embedded Mat MR"

    return-object v0
.end method

.method public getFloatFromAnimation(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->E(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getFloatFromAnimation(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07026d

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

    const p1, 0x7f05009d

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    if-nez v1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    :cond_0
    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;Landroid/content/Context;)V

    const v3, 0x7f0c00f9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->tab:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$w;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getDataEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMaterialEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getModelEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method

.method public getIntFromAnimation(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->I(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getIntFromAnimation(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getLongTapMenu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldd/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    return-object v0
.end method

.method public getMaterial()Lcom/itsmagic/engine/Engines/Engine/Material/Material;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->ensureEmbeddedMat()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMaterialEntries(Landroid/content/Context;)Ljava/util/List;
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->ensureEmbeddedMat()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$v;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$v;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->A(Landroid/content/Context;Lda/g;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getMaterialFile()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaterialsForAsyncLoad()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMeshFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ld9/a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    if-nez v0, :cond_0

    new-instance v0, Ld9/a;

    invoke-direct {v0}, Ld9/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    return-object v0
.end method

.method public getModelEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0c00ff

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@@ASSET@@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$s;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-direct {v0, v3, v1, v2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$t;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-direct {v0, v3, v1, v2}, LC5/b;-><init>(LD5/e;ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$u;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v4, ".mesh"

    invoke-direct {v0, v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getOutlineColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getOutlineScale()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineScale:F

    return v0
.end method

.method public getQuatFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->L(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getQuatFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getRenderBounding()F
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getRenderCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getRenderMatrix()[F
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    return-object v0
.end method

.method public getRenderMatrix(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;[F)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "editableMatrix"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->billboard:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->zAlign:Z

    invoke-static {v0, p2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/a;->d([F[FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Z)[F

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "Embedded Mat MR"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getVec2FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->N(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getVec2FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public getVec3FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getVec3FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getModel()Ld9/a;

    move-result-object v0

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getModel()Ld9/a;

    move-result-object v0

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasMaterialForAsyncLoad()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasModel()Z
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getModel()Ld9/a;

    move-result-object v0

    invoke-virtual {v0}, Ld9/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasRenderBounding()Z
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCastShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    return v0
.end method

.method public isEnableOutline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->enableOutline:Z

    return v0
.end method

.method public isReceiveShadow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    return v0
.end method

.method public isSuppressRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    return v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "),(EmbeddedMatMR),(Loading),("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getMeshFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$l;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;LLb/a;)V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->updateMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$x;)V

    :cond_0
    invoke-interface {p1}, LLb/a;->e()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "),(EmbeddedMatMR),(Loading),(embedded material)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LLb/a;->d(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->updateMaterial(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, LLb/a;->d(F)V

    invoke-interface {p1}, LLb/a;->e()V

    return-void
.end method

.method public mousePick(Laa/c;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-interface/range {p2 .. p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->b()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->getConfig()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$h;

    move-result-object v7

    iget-object v8, v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v10, v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->c:[F

    iget-object v6, v6, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$g;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-boolean v7, v7, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$h;->a:Z

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-interface/range {p2 .. p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->getCamera()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    move-result-object v12

    invoke-virtual {v12, v3, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()[F

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->o()F

    move-result v12

    invoke-virtual {v8, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->p()F

    move-result v12

    invoke-virtual {v8, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->q()F

    move-result v12

    invoke-virtual {v8, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->j()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    invoke-virtual {v9, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->k()F

    move-result v12

    mul-float/2addr v12, v13

    invoke-virtual {v9, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->l()F

    move-result v11

    mul-float/2addr v11, v13

    invoke-virtual {v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    invoke-virtual/range {p1 .. p1}, Laa/c;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v12

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v14

    sub-float/2addr v13, v14

    cmpl-float v12, v12, v13

    const v14, 0x3dcccccd    # 0.1f

    const v15, 0x3f666666    # 0.9f

    const/16 v16, 0x0

    const/4 v13, 0x0

    if-ltz v12, :cond_2

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v12

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v17

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v18

    add-float v17, v17, v18

    cmpg-float v12, v12, v17

    if-gtz v12, :cond_2

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v12

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v17

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v18

    sub-float v17, v17, v18

    cmpl-float v12, v12, v17

    if-ltz v12, :cond_2

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v12

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v17

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v18

    add-float v17, v17, v18

    cmpg-float v12, v12, v17

    if-gtz v12, :cond_2

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v17

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v18

    sub-float v17, v17, v18

    cmpl-float v12, v12, v17

    if-ltz v12, :cond_2

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v11

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v17

    add-float v12, v12, v17

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_2

    if-eqz v7, :cond_0

    new-instance v8, LJAVARuntime/GizmoObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v6

    invoke-direct {v8, v6}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const-class v9, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v9}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v10

    invoke-virtual {v8, v10}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {v5, v9}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->N0()LJAVARuntime/Quaternion;

    move-result-object v10

    invoke-virtual {v8, v10}, LJAVARuntime/GizmoTransform;->setRotation(LJAVARuntime/Quaternion;)V

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v10

    invoke-virtual {v8, v10}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v9}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    new-instance v6, LJAVARuntime/Color;

    invoke-static {v13, v15}, LJAVARuntime/Random;->range(FF)F

    move-result v9

    invoke-static {v13, v14}, LJAVARuntime/Random;->range(FF)F

    move-result v10

    invoke-direct {v6, v9, v13, v10}, LJAVARuntime/Color;-><init>(FFF)V

    invoke-virtual {v8, v6}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_0
    move-object/from16 v8, v16

    :goto_0
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object v5

    sget-object v6, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    const/4 v9, 0x1

    invoke-virtual {v3, v5, v1, v6, v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G2(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Laa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Laa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;

    invoke-direct {v3, v1, v8, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;-><init>(Laa/a;LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-interface {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;)V

    :cond_1
    if-eqz v7, :cond_5

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$h;

    invoke-direct {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-direct {v1, v8, v3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;-><init>(LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;)V

    invoke-interface {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;)V

    invoke-static {v1}, LK8/a;->J(Lob/b;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    invoke-static {v10, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    invoke-static {v10, v3, v5, v11, v12}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {v10, v9}, LNc/c;->q([FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    if-eqz v7, :cond_3

    new-instance v3, LJAVARuntime/GizmoObject;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object v5

    invoke-direct {v3, v5}, LJAVARuntime/GizmoObject;-><init>(LJAVARuntime/Vertex;)V

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v5

    invoke-virtual {v5}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v5

    invoke-virtual {v5}, LJAVARuntime/Vector3;->copy()LJAVARuntime/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, LJAVARuntime/GizmoTransform;->setScale(LJAVARuntime/Vector3;)V

    new-instance v5, LJAVARuntime/Color;

    invoke-static {v13, v15}, LJAVARuntime/Random;->range(FF)F

    move-result v8

    invoke-static {v13, v14}, LJAVARuntime/Random;->range(FF)F

    move-result v9

    invoke-direct {v5, v8, v13, v9}, LJAVARuntime/Color;-><init>(FFF)V

    invoke-virtual {v3, v5}, LJAVARuntime/GizmoObject;->setColor(LJAVARuntime/Color;)V

    goto :goto_1

    :cond_3
    move-object/from16 v3, v16

    :goto_1
    sget-object v5, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    const/4 v8, 0x1

    invoke-virtual {v6, v10, v1, v5, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I2([FLaa/c;LJAVARuntime/Vertex$RayMode;Z)Laa/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v4}, Laa/a;->setGameObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v4, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;

    invoke-direct {v4, v1, v3, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;-><init>(Laa/a;LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-interface {v2, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$j;)V

    :cond_4
    if-eqz v7, :cond_5

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$i;

    invoke-direct {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-direct {v1, v3, v4}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;-><init>(LJAVARuntime/GizmoObject;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l$b;)V

    invoke-interface {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$k;->a(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$l;)V

    invoke-static {v1}, LK8/a;->J(Lob/b;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->W:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->updateMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$x;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->updateMaterial(Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    invoke-virtual {v0}, Ld9/a;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->V:LCb/a;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->W(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->X(Lda/d;)V

    :cond_2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->I:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObjectMatrix;->setVertex(LJAVARuntime/Vertex;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->W:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_3
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->addToGraphics()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->removeFromGraphics()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-virtual {v0, p1}, LJAVARuntime/GizmoObjectMatrix;->setVertex(LJAVARuntime/Vertex;)V

    :goto_0
    return-void
.end method

.method public onSceneChanged(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldScene"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onSceneChanged(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    :cond_1
    return-void
.end method

.method public onVertexChangedRenderables()V
    .locals 6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    return-void

    :cond_0
    invoke-static {}, LK8/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x1()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k0()Lcom/google/android/filament/Box;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    sget-object v3, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f1()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->l0()LRb/d;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGeometryAt(ILcom/google/android/filament/RenderableManager$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->R:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBounding(Lcom/google/android/filament/Box;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
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

    invoke-static {}, Lcom/itsmagic/engine/Activities/App;->a()Lcom/itsmagic/engine/Activities/App$c;

    sget-object p1, Lcom/itsmagic/engine/Activities/App$c;->Engine:Lcom/itsmagic/engine/Activities/App$c;

    return-void
.end method

.method public receiveEvent(LLb/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->receiveEvent(LLb/c;)V

    instance-of v0, p1, LIc/J;

    if-eqz v0, :cond_0

    check-cast p1, LIc/J;

    iget-object p1, p1, LIc/J;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->G:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->onMaterialChanged()V

    :cond_0
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MeshRenderer: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->ensureEmbeddedMat()Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V

    return-void
.end method

.method public removeFromGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Q:LRb/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->T:Z

    :cond_1
    return-void
.end method

.method public setCastShadow(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "castShadow"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$m;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->castShadow:Z

    return-void
.end method

.method public setColorFromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->f0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setColorFromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public setEnableOutline(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableOutline"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->enableOutline:Z

    return-void
.end method

.method public setFloatFromAnimation(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j0(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setFloatFromAnimation(Ljava/lang/String;F)V

    return-void
.end method

.method public setIntFromAnimation(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setIntFromAnimation(Ljava/lang/String;I)V

    return-void
.end method

.method public setMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "material"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->W(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->U:Lda/d;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->X(Lda/d;)V

    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->createOwnedMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->embeddedMat:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->I:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->updateMaterial(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    return-void
.end method

.method public setMaterialFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialFile"
        }
    .end annotation

    return-void
.end method

.method public setMaterialFileButDontLoad(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialFile"
        }
    .end annotation

    return-void
.end method

.method public setMeshFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meshFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->updateMesh(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$x;)V

    return-void
.end method

.method public setMeshFileButDontLoad(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "meshFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->meshFile:Ljava/lang/String;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->H:Ljava/lang/String;

    return-void
.end method

.method public setModel(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    .line 1
    new-instance v0, Ld9/a;

    invoke-direct {v0, p1}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setModel(Ld9/a;)V

    return-void
.end method

.method public setModel(Ld9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->setModelInternal(Ld9/a;Z)V

    return-void
.end method

.method public setModelCritical(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertex"
        }
    .end annotation

    new-instance v0, Ld9/a;

    invoke-direct {v0, p1}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->E:Ld9/a;

    return-void
.end method

.method public setOutlineColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineColor"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public setOutlineScale(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outlineScale"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->outlineScale:F

    return-void
.end method

.method public setQuatFromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setQuatFromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public setReceiveShadow(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveShadow"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$n;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->receiveShadow:Z

    return-void
.end method

.method public setRenderMatrix([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->J:[F

    invoke-static {p1, v0}, LNc/c;->b([F[F)V

    const p1, -0xf423f

    const v0, 0xf423f

    invoke-static {p1, v0}, LNc/d;->j(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->K:I

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Y:LJAVARuntime/Component;

    return-void
.end method

.method public setSuppressRender(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppressRender"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->S:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVec2FromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->u0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setVec2FromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public setVec3FromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entryName",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->y()Ldc/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ldc/k;->k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setVec3FromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Y:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/EmbeddedMatMR;

    invoke-direct {v0, p0}, LJAVARuntime/EmbeddedMatMR;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->Y:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateForThumb(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LE7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "sceneData"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateForThumb(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LE7/e;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->destroyRenderable()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->buildRenderable()V

    return-void
.end method

.method public updateOnSelectedHierarchy()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "drawGizmo"

    invoke-static {v0}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->drawGizmo()V

    invoke-static {v0}, Lp6/d;->J1(Lp6/g;)V

    return-void
.end method

.method public updateOnUnselectedHierarchy()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnUnselectedHierarchy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->M:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->L:LJAVARuntime/GizmoObjectMatrix;

    invoke-virtual {v1, v0}, LJAVARuntime/GizmoObjectMatrix;->setVertex(LJAVARuntime/Vertex;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->N:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/EmbeddedMatMR;->O:Z

    return-void
.end method
