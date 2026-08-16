.class Ljpct/ae/wrapper/RenderHook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/threed/jpct/IRenderHook;


# annotations
.annotation build Lanywheresoftware/b4a/BA$Hide;
.end annotation


# static fields
.field public static final EVENT_AFTER_RENDERING:I = 0x2

.field public static final EVENT_BEFORE_RENDERING:I = 0x1

.field public static final EVENT_DISPOSE:I = 0x3

.field public static final EVENT_SET_OBJECT3D:I = 0x4

.field public static final EVENT_SET_SHADER:I = 0x6

.field public static final EVENT_SET_TRANSPARENCY:I = 0x5


# instance fields
.field private final ba:Lanywheresoftware/b4a/BA;

.field private final eventName:Ljava/lang/String;

.field private final repeatRendering:Z

.field private final sender:Ljpct/ae/wrapper/JRenderHook;


# direct methods
.method public constructor <init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JRenderHook;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ljpct/ae/wrapper/RenderHook;->eventName:Ljava/lang/String;

    iput-object p1, p0, Ljpct/ae/wrapper/RenderHook;->ba:Lanywheresoftware/b4a/BA;

    iput-boolean p4, p0, Ljpct/ae/wrapper/RenderHook;->repeatRendering:Z

    iput-object p2, p0, Ljpct/ae/wrapper/RenderHook;->sender:Ljpct/ae/wrapper/JRenderHook;

    return-void
.end method

.method private callBack(IILcom/threed/jpct/Object3D;FLcom/threed/jpct/GLSLShader;)V
    .locals 4

    iget-object v0, p0, Ljpct/ae/wrapper/RenderHook;->ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Ljpct/ae/wrapper/RenderHook;->sender:Ljpct/ae/wrapper/JRenderHook;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljpct/ae/wrapper/RenderHook;->eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_RenderHook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public afterRendering(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Ljpct/ae/wrapper/RenderHook;->callBack(IILcom/threed/jpct/Object3D;FLcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public beforeRendering(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Ljpct/ae/wrapper/RenderHook;->callBack(IILcom/threed/jpct/Object3D;FLcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public onDispose()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljpct/ae/wrapper/RenderHook;->callBack(IILcom/threed/jpct/Object3D;FLcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public repeatRendering()Z
    .locals 1

    iget-boolean v0, p0, Ljpct/ae/wrapper/RenderHook;->repeatRendering:Z

    return v0
.end method

.method public setCurrentObject3D(Lcom/threed/jpct/Object3D;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljpct/ae/wrapper/RenderHook;->callBack(IILcom/threed/jpct/Object3D;FLcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public setCurrentShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v1, 0x6

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljpct/ae/wrapper/RenderHook;->callBack(IILcom/threed/jpct/Object3D;FLcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public setTransparency(F)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x5

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Ljpct/ae/wrapper/RenderHook;->callBack(IILcom/threed/jpct/Object3D;FLcom/threed/jpct/GLSLShader;)V

    return-void
.end method
