.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final I:Ljava/lang/String; = "DayNightCycle"

.field public static final J:Ljava/lang/Class;


# instance fields
.field public transient E:F

.field public transient F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public transient G:Z

.field public H:LJAVARuntime/Component;

.field private longitude:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private speed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->J:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DayNightCycle"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->speed:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->speed:F

    return p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    return p0
.end method

.method private ensureInitialized(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sunLight"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->G:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    :goto_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-static {p1, v0, v1}, LZ8/a;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    invoke-static {p1, v1, v0}, LZ8/a;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->G:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->speed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->speed:F

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public findSunLight()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    return-object v0
.end method

.method public getCurrentTimeOfDay()F
    .locals 3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->findSunLight()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->ensureInitialized(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, v1, v2}, LZ8/a;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    return v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f07026b

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
    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;)V

    const-string v2, "Speed"

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;)V

    const-string v2, "Longitude"

    sget-object v3, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLongitude()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    return v0
.end method

.method public getOrientationOffset()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->j()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->speed:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "DayNightCycle"

    return-object v0
.end method

.method public onAttach()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->G:Z

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 2
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->findSunLight()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc8/b;->k()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->ensureInitialized(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    invoke-static {}, LK8/d;->b()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->speed:F

    invoke-static {v1}, LZ8/a;->f(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-static {p2}, LZ8/a;->h(F)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p1, p2, v0, v1}, LZ8/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;FFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    :cond_1
    return-void
.end method

.method public setCurrentTimeOfDay(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hourOfDay"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->findSunLight()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, LZ8/a;->h(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->ensureInitialized(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    invoke-static {p1}, LZ8/a;->h(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p1, v1, v2}, LZ8/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;FFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

    return-void
.end method

.method public setLongitude(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "longitude"
        }
    .end annotation

    invoke-static {p1}, LZ8/a;->d(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->findSunLight()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->ensureInitialized(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->E:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->longitude:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p1, v0, v1, v2}, LZ8/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;FFLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->H:LJAVARuntime/Component;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "speed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->speed:F

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->H:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/DayNightCycle;

    invoke-direct {v0, p0}, LJAVARuntime/DayNightCycle;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->H:LJAVARuntime/Component;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/DayNightCycle;->H:LJAVARuntime/Component;

    return-object v0
.end method
