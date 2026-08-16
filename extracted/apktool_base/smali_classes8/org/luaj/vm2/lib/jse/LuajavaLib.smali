.class public Lorg/luaj/vm2/lib/jse/LuajavaLib;
.super Lorg/luaj/vm2/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/luaj/vm2/lib/jse/LuajavaLib$ProxyInvocationHandler;
    }
.end annotation


# static fields
.field static final BINDCLASS:I = 0x1

.field static final CREATEPROXY:I = 0x4

.field static final INIT:I = 0x0

.field static final LOADLIB:I = 0x5

.field static final METHOD_MODIFIERS_VARARGS:I = 0x80

.field static final NAMES:[Ljava/lang/String;

.field static final NEW:I = 0x3

.field static final NEWINSTANCE:I = 0x2

.field static synthetic class$java$lang$Class:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "createProxy"

    const-string v1, "loadLib"

    const-string v2, "bindClass"

    const-string v3, "newInstance"

    const-string v4, "new"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/jse/LuajavaLib;->NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public classForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 7

    const-string v0, "luajava"

    :try_start_0
    iget v1, p0, Lorg/luaj/vm2/lib/LibFunction;->opcode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_5

    const/4 v0, 0x4

    const/4 v4, 0x0

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/luaj/vm2/LuaValue;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/luaj/vm2/LuaValue;

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :cond_0
    sget-object p1, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    return-object p1

    :cond_1
    new-instance p1, Lorg/luaj/vm2/LuaError;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "not yet supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-lez v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checktable(I)Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/luaj/vm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v2, v3

    move v3, v5

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/luaj/vm2/lib/jse/LuajavaLib$ProxyInvocationHandler;

    invoke-direct {p1, v0, v4}, Lorg/luaj/vm2/lib/jse/LuajavaLib$ProxyInvocationHandler;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/lib/jse/LuajavaLib$1;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, v2, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/luaj/vm2/LuaValue;->userdataOf(Ljava/lang/Object;)Lorg/luaj/vm2/LuaUserdata;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lorg/luaj/vm2/LuaError;

    const-string v0, "no interfaces"

    invoke-direct {p1, v0}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkvalue(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iget v1, p0, Lorg/luaj/vm2/lib/LibFunction;->opcode:I

    if-ne v1, v2, :cond_6

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v1, Lorg/luaj/vm2/lib/jse/LuajavaLib;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lorg/luaj/vm2/lib/jse/LuajavaLib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/luaj/vm2/lib/jse/LuajavaLib;->class$java$lang$Class:Ljava/lang/Class;

    :cond_7
    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :goto_1
    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->subargs(I)Lorg/luaj/vm2/Varargs;

    move-result-object p1

    invoke-static {v0}, Lorg/luaj/vm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/JavaClass;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/jse/JavaClass;->getConstructor()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/luaj/vm2/LuaValue;->invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/lib/jse/LuajavaLib;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/luaj/vm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lorg/luaj/vm2/lib/jse/JavaClass;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Lorg/luaj/vm2/lib/jse/LuajavaLib;->NAMES:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v4, v3}, Lorg/luaj/vm2/lib/LibFunction;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string v2, "package"

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    const-string v2, "loaded"

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    new-instance v0, Lorg/luaj/vm2/LuaError;

    invoke-direct {v0, p1}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_3
    new-instance v0, Lorg/luaj/vm2/LuaError;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/luaj/vm2/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_4
    throw p1
.end method
