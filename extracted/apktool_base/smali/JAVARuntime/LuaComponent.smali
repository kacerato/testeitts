.class public final LJAVARuntime/LuaComponent;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Lua",
        "Components"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/LuaComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)V

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

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, LJAVARuntime/Component;->callFunction(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;F)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "args"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, LJAVARuntime/Component;->callFunction(Ljava/lang/String;F)V

    return-void
.end method

.method public call(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "args"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, LJAVARuntime/Component;->callFunction(Ljava/lang/String;I)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "args"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2}, LJAVARuntime/Component;->callFunction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "args"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2}, LJAVARuntime/Component;->callFunction(Ljava/lang/String;Z)V

    return-void
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "args"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1, p2}, LJAVARuntime/Component;->callFunction(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/LuaComponent;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/LuaComponent;->getVar(Ljava/lang/String;)LJAVARuntime/ValueObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/ValueObject;->toBoolean()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/LuaComponent;->getVar(Ljava/lang/String;)LJAVARuntime/ValueObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/ValueObject;->toDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/LuaComponent;->getVar(Ljava/lang/String;)LJAVARuntime/ValueObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/ValueObject;->toFloat()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getInt(Ljava/lang/String;)F
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/LuaComponent;->getVar(Ljava/lang/String;)LJAVARuntime/ValueObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/ValueObject;->toInt()I

    move-result p1

    int-to-float p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/LuaComponent;->getVar(Ljava/lang/String;)LJAVARuntime/ValueObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/ValueObject;->toLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0, p1}, LJAVARuntime/LuaComponent;->getVar(Ljava/lang/String;)LJAVARuntime/ValueObject;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LJAVARuntime/ValueObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVar(Ljava/lang/String;)LJAVARuntime/ValueObject;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    new-instance v0, LJAVARuntime/ValueObject;

    iget-object v1, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/ValueObject;-><init>(Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public set(Ljava/lang/String;D)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/luaj/vm2/LuaValue;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;F)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 5
    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    float-to-double v1, p2

    invoke-static {v1, v2}, Lorg/luaj/vm2/LuaValue;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    .line 8
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 9
    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;J)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    .line 10
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 11
    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    long-to-double p2, p2

    invoke-static {p2, p3}, Lorg/luaj/vm2/LuaValue;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    .line 12
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 13
    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object p2

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p2, p1, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    :goto_0
    return-void
.end method

.method public set(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    .line 14
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 15
    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/luaj/vm2/LuaValue;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    float-to-double v1, p2

    invoke-static {v1, v2}, Lorg/luaj/vm2/LuaValue;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    long-to-double p2, p2

    invoke-static {p2, p3}, Lorg/luaj/vm2/LuaValue;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public setVar(Ljava/lang/String;LJAVARuntime/ValueObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p2, :cond_0

    iget-object v0, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    invoke-virtual {p2}, LJAVARuntime/ValueObject;->getObjectCritical()Lorg/luaj/vm2/LuaValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LJAVARuntime/LuaComponent;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->getGlobals()Lorg/luaj/vm2/Globals;

    move-result-object p2

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p2, p1, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    :goto_0
    return-void
.end method
