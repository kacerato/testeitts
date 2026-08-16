.class public Ljpct/ae/wrapper/JRenderHook;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctRenderHook"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Ljpct/ae/wrapper/RenderHook;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method

.method public static final EVENT_AFTER_RENDERING()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final EVENT_BEFORE_RENDERING()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final EVENT_DISPOSE()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static final EVENT_SET_OBJECT3D()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static final EVENT_SET_SHADER()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public static final EVENT_SET_TRANSPARENCY()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public Initialize(Lanywheresoftware/b4a/BA;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_RenderHook"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lanywheresoftware/b4a/BA;->cul:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lanywheresoftware/b4a/BA;->subExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljpct/ae/wrapper/RenderHook;

    invoke-direct {v0, p1, p0, p2, p3}, Ljpct/ae/wrapper/RenderHook;-><init>(Lanywheresoftware/b4a/BA;Ljpct/ae/wrapper/JRenderHook;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JRenderHook;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Sub "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_RenderHook - Doesn\'t exist!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JPCT"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public afterRendering(I)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRenderHook;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/RenderHook;

    invoke-virtual {v0, p1}, Ljpct/ae/wrapper/RenderHook;->afterRendering(I)V

    return-void
.end method

.method public beforeRendering(I)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRenderHook;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/RenderHook;

    invoke-virtual {v0, p1}, Ljpct/ae/wrapper/RenderHook;->beforeRendering(I)V

    return-void
.end method

.method public onDispose()V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRenderHook;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/RenderHook;

    invoke-virtual {v0}, Ljpct/ae/wrapper/RenderHook;->onDispose()V

    return-void
.end method

.method public repeatRendering()Z
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRenderHook;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/RenderHook;

    invoke-virtual {v0}, Ljpct/ae/wrapper/RenderHook;->repeatRendering()Z

    move-result v0

    return v0
.end method

.method public setCurrentObject3D(Lcom/threed/jpct/Object3D;)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRenderHook;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/RenderHook;

    invoke-virtual {v0, p1}, Ljpct/ae/wrapper/RenderHook;->setCurrentObject3D(Lcom/threed/jpct/Object3D;)V

    return-void
.end method

.method public setCurrentShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRenderHook;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/RenderHook;

    invoke-virtual {v0, p1}, Ljpct/ae/wrapper/RenderHook;->setCurrentShader(Lcom/threed/jpct/GLSLShader;)V

    return-void
.end method

.method public setTransparency(F)V
    .locals 1
    .annotation build Lanywheresoftware/b4a/BA$Hide;
    .end annotation

    invoke-virtual {p0}, Ljpct/ae/wrapper/JRenderHook;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpct/ae/wrapper/RenderHook;

    invoke-virtual {v0, p1}, Ljpct/ae/wrapper/RenderHook;->setTransparency(F)V

    return-void
.end method
