.class public LA3/a;
.super Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA3/a$e;,
        LA3/a$d;
    }
.end annotation

.annotation build Lk0/i;
.end annotation


# static fields
.field public static final k:Lcom/google/gson/Gson;

.field public static final l:J = 0x3a98L

.field public static final m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, LA3/a;->k:Lcom/google/gson/Gson;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, LA3/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    new-instance v0, LA3/a$a;

    invoke-direct {v0}, LA3/a$a;-><init>()V

    const-string v1, "lua.exec"

    const-string v2, "Executes Lua code inside the live engine context to inspect or modify scenes, game objects, and components. In practice, it can be used to change almost any runtime game, scene, object, or component state that the engine exposes. The API available to Lua is built from the JavaRuntime classes and can be explored with the jr.classes, jr.methods, jr.fields, and jr.doc tools. Verify the exposed API first; do not guess names, signatures, or behavior."

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/u;)V

    const-string v0, "Lua source code to execute inside the live engine context for inspection or broad runtime modifications."

    const/4 v1, 0x1

    const-string v2, "code"

    invoke-virtual {p0, v2, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->LUA_CODING:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    filled-new-array {v0}, [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;->A([Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    return-void
.end method

.method public static synthetic C(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LA3/a;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, LA3/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lorg/luaj/vm2/Globals;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-static {p0, p1}, LA3/a;->M(Lorg/luaj/vm2/Globals;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic F(Lorg/luaj/vm2/Globals;)V
    .locals 0

    invoke-static {p0}, LA3/a;->L(Lorg/luaj/vm2/Globals;)V

    return-void
.end method

.method public static synthetic G(Lorg/luaj/vm2/Varargs;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, LA3/a;->K(Lorg/luaj/vm2/Varargs;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v0, LA3/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LA3/a;->I(Ljava/lang/String;)LA3/a$d;

    move-result-object p0

    invoke-static {p0}, LA3/a$d;->a(LA3/a$d;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, LA3/a;->I(Ljava/lang/String;)LA3/a$d;

    move-result-object p0

    invoke-static {p0}, LA3/a$d;->b(LA3/a$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LA3/a$d;->a(LA3/a$d;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, LA3/a$d;->a(LA3/a$d;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I(Ljava/lang/String;)LA3/a$d;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "ERROR: execution failed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Z

    aput-boolean v1, v3, v1

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, LA3/a$b;

    invoke-direct {v2, p0, v0, v3, v4}, LA3/a$b;-><init>(Ljava/lang/String;[Ljava/lang/String;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-static {v2}, LK8/a;->I(Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x3a98

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance p0, LA3/a$d;

    const-string v0, "ERROR: lua execution timed out"

    invoke-direct {p0, v1, v0, v2}, LA3/a$d;-><init>(ZLjava/lang/String;LA3/a$a;)V

    return-object p0

    :cond_0
    new-instance p0, LA3/a$d;

    aget-boolean v3, v3, v1

    aget-object v0, v0, v1

    invoke-direct {p0, v3, v0, v2}, LA3/a$d;-><init>(ZLjava/lang/String;LA3/a$a;)V

    return-object p0
.end method

.method public static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, LA3/a;->k:Lcom/google/gson/Gson;

    const-class v2, LA3/a$e;

    invoke-virtual {p0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA3/a$e;

    if-eqz p0, :cond_1

    iget-object v0, p0, LA3/a$e;->a:Ljava/lang/String;

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method

.method public static K(Lorg/luaj/vm2/Varargs;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "returned",
            "printBuffer"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const-string v1, "\n"

    if-lez p1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object p0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v3

    if-gt p1, v3, :cond_4

    if-le p1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0, p1}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "OK"

    return-object p0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static L(Lorg/luaj/vm2/Globals;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globals"
        }
    .end annotation

    return-void
.end method

.method public static M(Lorg/luaj/vm2/Globals;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "globals",
            "printBuffer"
        }
    .end annotation

    new-instance v0, LA3/a$c;

    invoke-direct {v0, p1}, LA3/a$c;-><init>(Ljava/lang/StringBuilder;)V

    const-string p1, "print"

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method
