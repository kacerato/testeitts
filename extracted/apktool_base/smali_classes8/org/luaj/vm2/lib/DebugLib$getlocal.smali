.class final Lorg/luaj/vm2/lib/DebugLib$getlocal;
.super Lorg/luaj/vm2/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "getlocal"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$getlocal;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->isthread(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$getlocal;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result p1

    iget-object v2, p0, Lorg/luaj/vm2/lib/DebugLib$getlocal;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v2, v0}, Lorg/luaj/vm2/lib/DebugLib;->callstack(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->getCallFrame(I)Lorg/luaj/vm2/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/DebugLib$CallFrame;->getLocal(I)Lorg/luaj/vm2/Varargs;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_1
    return-object p1
.end method
