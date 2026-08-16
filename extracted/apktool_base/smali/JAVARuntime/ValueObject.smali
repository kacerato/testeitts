.class public LJAVARuntime/ValueObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private object:Lorg/luaj/vm2/LuaValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/LuaValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method private validate()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid object pointer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)LJAVARuntime/ValueObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    new-instance v0, LJAVARuntime/ValueObject;

    iget-object v1, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v1, p1}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/ValueObject;-><init>(Lorg/luaj/vm2/LuaValue;)V

    return-object v0
.end method

.method public getCriticalValue()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public getObjectCritical()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;LJAVARuntime/ValueObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    .line 2
    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    iget-object p2, p2, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    .line 4
    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-static {p2}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method

.method public toBoolean()Z
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v0

    return v0
.end method

.method public toByte()B
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tobyte()B

    move-result v0

    return v0
.end method

.method public toChar()C
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tochar()C

    move-result v0

    return v0
.end method

.method public toDouble()D
    .locals 2

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->todouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat()F
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tofloat()F

    move-result v0

    return v0
.end method

.method public toInt()I
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    return v0
.end method

.method public toJava(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-static {v0, p1}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toLong()J
    .locals 2

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tolong()J

    move-result-wide v0

    return-wide v0
.end method

.method public toShort()S
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toshort()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, LJAVARuntime/ValueObject;->validate()V

    iget-object v0, p0, LJAVARuntime/ValueObject;->object:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
