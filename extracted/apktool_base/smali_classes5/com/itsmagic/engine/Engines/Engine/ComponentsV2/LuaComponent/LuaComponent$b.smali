.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$b;
.super Lorg/luaj/vm2/lib/OneArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->overridePrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-direct {p0}, Lorg/luaj/vm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/LuaComponent/LuaComponent;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LJAVARuntime/Component;->print(Ljava/lang/String;)V

    sget-object p1, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    return-object p1
.end method
