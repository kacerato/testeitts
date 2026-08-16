.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/BaseLightComponent;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M:Ljava/lang/String; = "SpotLight"

.field public static final N:Ljava/lang/Class;


# instance fields
.field public E:Z

.field public F:Z

.field public G:La9/b;

.field public final H:LJAVARuntime/GizmoObject;

.field public I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

.field public J:Z

.field public final K:Lib/h;

.field public L:LJAVARuntime/Component;

.field private allowShadow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final color_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private falloffRadius:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final falloffRadius_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private innerConeAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final innerConeAngle_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private lumens:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final lumens_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private outerConeAngle:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final outerConeAngle_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowBiasV3:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final shadowBias_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowFarDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final shadowFarDistance_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowNormalBias:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final shadowNormalBias_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private shadowResolutionID:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final shadowResolutionID_OFCBRL:Lec/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->N:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$i;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$i;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "SpotLight"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/BaseLightComponent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens_OFCBRL:Lec/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color_OFCBRL:Lec/d;

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$l;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius_OFCBRL:Lec/d;

    const/high16 v1, 0x41b40000    # 22.5f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$m;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle_OFCBRL:Lec/d;

    const/high16 v1, 0x42340000    # 45.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$n;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle_OFCBRL:Lec/d;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    const v1, 0x3a83126f    # 0.001f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBiasV3:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$o;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBias_OFCBRL:Lec/d;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$p;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias_OFCBRL:Lec/d;

    const/16 v0, 0xa

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$q;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID_OFCBRL:Lec/d;

    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance_OFCBRL:Lec/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->F:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->H:LJAVARuntime/GizmoObject;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->K:Lib/h;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)F
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getFinalIntensity()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    return p0
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    return p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    return p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    return p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

    return p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    return p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    return p0
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

    return p0
.end method

.method private getFinalIntensity()F
    .locals 5

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v3, v1

    double-to-float v1, v3

    div-float/2addr v0, v1

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canDrawShadows()Z
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    return v0
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    .line 8
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBiasV3:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBiasV3:F

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

    .line 12
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    .line 13
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->F:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->F:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->removeFromGraphics()V

    return-void
.end method

.method public getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getFalloffRadius()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07026b

    return v0
.end method

.method public getInnerConeAngle()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

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

    const p1, 0x7f05009a

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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LUMENS:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "lumens"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$e;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v2, v4, v6, v7, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    const-string p1, "color"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, p1, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FALLOFF_RADIUS:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v2, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    const-string v2, "falloffRadius"

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$g;

    invoke-direct {v3, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->y()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHADOW:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$h;

    invoke-direct {v3, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {p1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getLumens()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    return v0
.end method

.method public getOuterConeAngle()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    return v0
.end method

.method public getShadowBias()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBiasV3:F

    return v0
.end method

.method public getShadowFarDistance()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    return v0
.end method

.method public getShadowNormalBias()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    return v0
.end method

.method public getShadowResolutionID()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SpotLight"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isAllowShadow()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    return v0
.end method

.method public isSuppressRender()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->F:Z

    return v0
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->K:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->K:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->removeFromGraphics()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 8
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

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->F:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->removeFromGraphics()V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p2, :cond_2

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->destroyImmediate()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->E:Z

    :cond_3
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    new-instance v3, Lcom/google/android/filament/LightManager$c;

    invoke-direct {v3}, Lcom/google/android/filament/LightManager$c;-><init>()V

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBiasV3:F

    iput v4, v3, Lcom/google/android/filament/LightManager$c;->d:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    iput v4, v3, Lcom/google/android/filament/LightManager$c;->e:F

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

    aget v4, v4, v5

    iput v4, v3, Lcom/google/android/filament/LightManager$c;->a:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    iput v4, v3, Lcom/google/android/filament/LightManager$c;->f:F

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    new-instance v5, Lcom/google/android/filament/LightManager$a;

    sget-object v6, Lcom/google/android/filament/LightManager$d;->SPOT:Lcom/google/android/filament/LightManager$d;

    invoke-direct {v5, v6}, Lcom/google/android/filament/LightManager$a;-><init>(Lcom/google/android/filament/LightManager$d;)V

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {v5, v6, v7, v2}, Lcom/google/android/filament/LightManager$a;->k(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v2, v5, v6, p1}, Lcom/google/android/filament/LightManager$a;->e(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getFinalIntensity()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/filament/LightManager$a;->g(F)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v2

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v6

    invoke-virtual {p1, v2, v5, v6}, Lcom/google/android/filament/LightManager$a;->d(FFF)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    invoke-virtual {p1, v2}, Lcom/google/android/filament/LightManager$a;->f(F)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v2, v5

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {p1, v2, v5}, Lcom/google/android/filament/LightManager$a;->m(FF)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->canDrawShadows()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/filament/LightManager$a;->c(Z)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/filament/LightManager$a;->l(Lcom/google/android/filament/LightManager$c;)Lcom/google/android/filament/LightManager$a;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;-><init>(Lcom/google/android/filament/LightManager$a;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    :cond_4
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->E:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    :cond_5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->E:Z

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f1()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->G:La9/b;

    if-nez p1, :cond_7

    new-instance p1, La9/b;

    invoke-direct {p1}, La9/b;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->G:La9/b;

    invoke-virtual {p1, p0}, La9/b;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    :cond_7
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->G:La9/b;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p0, p2}, La9/b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;LJAVARuntime/GizmoObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->G:La9/b;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, La9/b;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->H:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->H:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_8
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

    instance-of p1, p1, LIc/C;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    return-void
.end method

.method public removeFromGraphics()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->E:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->e()LRb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->E:Z

    :cond_1
    return-void
.end method

.method public setAllowShadow(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowShadow"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->allowShadow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->j(Z)V

    :cond_1
    return-void
.end method

.method public setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    return-void
.end method

.method public setFalloffRadius(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "falloffRadius"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->falloffRadius:F

    return-void
.end method

.method public setInnerConeAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "innerConeAngle"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->innerConeAngle:F

    return-void
.end method

.method public setLumens(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lumens"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->lumens:F

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->I:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->getFinalIntensity()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->setIntensity(F)V

    :cond_1
    return-void
.end method

.method public setOuterConeAngle(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outerConeAngle"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->outerConeAngle:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->L:LJAVARuntime/Component;

    return-void
.end method

.method public setShadowBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowBias"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBiasV3:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowBiasV3:F

    return-void
.end method

.method public setShadowFarDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowFarDistance"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowFarDistance:F

    return-void
.end method

.method public setShadowNormalBias(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowNormalBias"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowNormalBias:F

    return-void
.end method

.method public setShadowResolutionID(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shadowResolutionID"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->shadowResolutionID:I

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

    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->F:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->F:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->removeFromGraphics()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->J:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->L:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/SpotLight;

    invoke-direct {v0, p0}, LJAVARuntime/SpotLight;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SpotLight;->L:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
