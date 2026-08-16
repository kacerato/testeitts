.class Lorg/luaj/vm2/compiler/LuaC$CompileState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/compiler/LuaC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompileState"
.end annotation


# instance fields
.field nCcalls:I

.field private strings:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/luaj/vm2/compiler/LuaC$CompileState;->nCcalls:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/compiler/LuaC$CompileState;->strings:Ljava/util/Hashtable;

    return-void
.end method

.method public static synthetic access$000(Lorg/luaj/vm2/compiler/LuaC$CompileState;Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/luaj/vm2/compiler/LuaC$CompileState;->luaY_parser(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;

    move-result-object p0

    return-object p0
.end method

.method private luaY_parser(Ljava/io/InputStream;Ljava/lang/String;)Lorg/luaj/vm2/Prototype;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/luaj/vm2/compiler/LexState;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/compiler/LexState;-><init>(Lorg/luaj/vm2/compiler/LuaC$CompileState;Ljava/io/InputStream;)V

    new-instance v1, Lorg/luaj/vm2/compiler/FuncState;

    invoke-direct {v1}, Lorg/luaj/vm2/compiler/FuncState;-><init>()V

    iput-object v1, v0, Lorg/luaj/vm2/compiler/LexState;->fs:Lorg/luaj/vm2/compiler/FuncState;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v3

    invoke-virtual {v0, p0, v2, p1, v3}, Lorg/luaj/vm2/compiler/LexState;->setinput(Lorg/luaj/vm2/compiler/LuaC$CompileState;ILjava/io/InputStream;Lorg/luaj/vm2/LuaString;)V

    new-instance p1, Lorg/luaj/vm2/Prototype;

    invoke-direct {p1}, Lorg/luaj/vm2/Prototype;-><init>()V

    iput-object p1, v1, Lorg/luaj/vm2/compiler/FuncState;->f:Lorg/luaj/vm2/Prototype;

    invoke-static {p2}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p2

    iput-object p2, p1, Lorg/luaj/vm2/Prototype;->source:Lorg/luaj/vm2/LuaString;

    invoke-virtual {v0, v1}, Lorg/luaj/vm2/compiler/LexState;->mainfunc(Lorg/luaj/vm2/compiler/FuncState;)V

    iget-object p1, v1, Lorg/luaj/vm2/compiler/FuncState;->prev:Lorg/luaj/vm2/compiler/FuncState;

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p1}, Lorg/luaj/vm2/compiler/Constants;->_assert(Z)V

    iget-object p1, v0, Lorg/luaj/vm2/compiler/LexState;->dyd:Lorg/luaj/vm2/compiler/LexState$Dyndata;

    if-eqz p1, :cond_1

    iget v0, p1, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_actvar:I

    if-nez v0, :cond_2

    iget v0, p1, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_gt:I

    if-nez v0, :cond_2

    iget p1, p1, Lorg/luaj/vm2/compiler/LexState$Dyndata;->n_label:I

    if-nez p1, :cond_2

    :cond_1
    move p2, v2

    :cond_2
    invoke-static {p2}, Lorg/luaj/vm2/compiler/Constants;->_assert(Z)V

    iget-object p1, v1, Lorg/luaj/vm2/compiler/FuncState;->f:Lorg/luaj/vm2/Prototype;

    return-object p1
.end method


# virtual methods
.method public cachedLuaString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/compiler/LuaC$CompileState;->strings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/LuaString;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/compiler/LuaC$CompileState;->strings:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public newTString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/compiler/LuaC$CompileState;->cachedLuaString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public newTString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/compiler/LuaC$CompileState;->cachedLuaString(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public pushfstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
