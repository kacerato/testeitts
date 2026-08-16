.class final Lorg/luaj/vm2/lib/DebugLib$sethook;
.super Lorg/luaj/vm2/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "sethook"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method public constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$sethook;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->isthread(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkthread(I)Lorg/luaj/vm2/LuaThread;

    move-result-object v1

    move v3, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/DebugLib$sethook;->this$0:Lorg/luaj/vm2/lib/DebugLib;

    iget-object v1, v1, Lorg/luaj/vm2/lib/DebugLib;->globals:Lorg/luaj/vm2/Globals;

    iget-object v1, v1, Lorg/luaj/vm2/Globals;->running:Lorg/luaj/vm2/LuaThread;

    move v3, v0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Lorg/luaj/vm2/Varargs;->optfunction(ILorg/luaj/vm2/LuaFunction;)Lorg/luaj/vm2/LuaFunction;

    move-result-object v5

    add-int/2addr v3, v2

    const-string v2, ""

    invoke-virtual {p1, v4, v2}, Lorg/luaj/vm2/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result p1

    move v3, v4

    move v6, v3

    move v7, v6

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x63

    if-eq v8, v9, :cond_3

    const/16 v9, 0x6c

    if-eq v8, v9, :cond_2

    const/16 v9, 0x72

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    move v7, v0

    goto :goto_2

    :cond_2
    move v6, v0

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    iput-object v5, v0, Lorg/luaj/vm2/LuaThread$State;->hookfunc:Lorg/luaj/vm2/LuaValue;

    iput-boolean v3, v0, Lorg/luaj/vm2/LuaThread$State;->hookcall:Z

    iput-boolean v6, v0, Lorg/luaj/vm2/LuaThread$State;->hookline:Z

    iput p1, v0, Lorg/luaj/vm2/LuaThread$State;->hookcount:I

    iput-boolean v7, v0, Lorg/luaj/vm2/LuaThread$State;->hookrtrn:Z

    sget-object p1, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object p1
.end method
