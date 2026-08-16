.class final Lorg/luaj/vm2/lib/DebugLib$setlocal;
.super Lorg/luaj/vm2/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "setlocal"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$setlocal;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->isthread(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$setlocal;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v4

    add-int/2addr v1, v2

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$setlocal;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/lib/DebugLib;->callstack(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->getCallFrame(I)Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2, p1}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->setLocal(ILorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_1
    return-object p1
.end method
