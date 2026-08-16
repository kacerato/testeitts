.class final Lorg/luaj/vm2/lib/DebugLib$traceback;
.super Lorg/luaj/vm2/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "traceback"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$traceback;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->isthread(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v1

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$traceback;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v0}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result p1

    iget-object v0, p0, Lorg/luaj/vm2/lib/DebugLib$traceback;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/lib/DebugLib;->callstack(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/lib/DebugLib$CallStack;->traceback(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p1

    return-object p1
.end method
