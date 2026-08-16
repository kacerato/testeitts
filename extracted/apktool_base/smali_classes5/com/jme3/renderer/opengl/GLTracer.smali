.class public final Lcom/jme3/renderer/opengl/GLTracer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final ANSI_BLUE:Ljava/lang/String; = "\u001b[34m"

.field private static final ANSI_BRIGHT:Ljava/lang/String; = "\u001b[1m"

.field private static final ANSI_CYAN:Ljava/lang/String; = "\u001b[36m"

.field private static final ANSI_GREEN:Ljava/lang/String; = "\u001b[32m"

.field private static final ANSI_MAGENTA:Ljava/lang/String; = "\u001b[35m"

.field private static final ANSI_RED:Ljava/lang/String; = "\u001b[31m"

.field private static final ANSI_RESET:Ljava/lang/String; = "\u001b[0m"

.field private static final ANSI_YELLOW:Ljava/lang/String; = "\u001b[33m"

.field private static final nonEnumArgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final constMap:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jme3/renderer/opengl/GLTracer;->nonEnumArgMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    const-string v5, "glViewport"

    invoke-static {v5, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v4, "glScissor"

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v4, "glClear"

    filled-new-array {v0}, [I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v4, "glGetInteger"

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v4, "glGetString"

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v4, "glBindTexture"

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v4, "glPixelStorei"

    filled-new-array {v1}, [I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const/4 v4, 0x4

    const/4 v5, 0x5

    filled-new-array {v1, v3, v4, v5}, [I

    move-result-object v6

    const-string v7, "glTexImage2D"

    invoke-static {v7, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const/4 v6, 0x6

    filled-new-array {v1, v3, v4, v5, v6}, [I

    move-result-object v6

    const-string v7, "glTexImage3D"

    invoke-static {v7, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glTexSubImage2D"

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const/4 v6, 0x7

    new-array v7, v6, [I

    fill-array-data v7, :array_0

    const-string v8, "glTexSubImage3D"

    invoke-static {v8, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v7, "glCompressedTexImage2D"

    filled-new-array {v1, v3, v4, v5}, [I

    move-result-object v8

    invoke-static {v7, v8}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    const-string v7, "glCompressedTexSubImage3D"

    invoke-static {v7, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glDeleteTextures"

    filled-new-array {v0}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glReadPixels"

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glBindBuffer"

    filled-new-array {v1}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glEnableVertexAttribArray"

    filled-new-array {v0}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glDisableVertexAttribArray"

    filled-new-array {v0}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glVertexAttribPointer"

    filled-new-array {v0, v1, v4, v5}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glVertexAttribDivisorARB"

    filled-new-array {v0, v1}, [I

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v6, "glDrawRangeElements"

    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v5

    invoke-static {v6, v5}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glDrawArrays"

    filled-new-array {v1, v2}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glDeleteBuffers"

    filled-new-array {v0}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glBindVertexArray"

    filled-new-array {v0}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glGenVertexArrays"

    filled-new-array {v0}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glBindFramebufferEXT"

    filled-new-array {v1}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glBindRenderbufferEXT"

    filled-new-array {v1}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glRenderbufferStorageEXT"

    filled-new-array {v2, v3}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glRenderbufferStorageMultisampleEXT"

    filled-new-array {v1, v3, v4}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glFramebufferRenderbufferEXT"

    filled-new-array {v3}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glFramebufferTexture2DEXT"

    filled-new-array {v3, v4}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v5, "glFramebufferTextureLayerEXT"

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    invoke-static {v5, v2}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    const-string v3, "glBlitFramebufferEXT"

    invoke-static {v3, v2}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const/4 v2, -0x1

    filled-new-array {v2}, [I

    move-result-object v3

    const-string v4, "glCreateProgram"

    invoke-static {v4, v3}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glCreateShader"

    filled-new-array {v2}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glShaderSource"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glCompileShader"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glGetShader"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glAttachShader"

    filled-new-array {v0, v1}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glLinkProgram"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glGetProgram"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUseProgram"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glGetUniformLocation"

    filled-new-array {v0, v2}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniformMatrix3"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniformMatrix4"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniform1i"

    filled-new-array {v0, v1}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniform1f"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniform2f"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniform3f"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniform4"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glUniform4f"

    filled-new-array {v0}, [I

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v3, "glGetAttribLocation"

    filled-new-array {v0, v2}, [I

    move-result-object v2

    invoke-static {v3, v2}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v2, "glDetachShader"

    filled-new-array {v0, v1}, [I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v2, "glDeleteShader"

    filled-new-array {v0}, [I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v2, "glDeleteProgram"

    filled-new-array {v0}, [I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    const-string v2, "glBindFragDataLocation"

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v2, v0}, Lcom/jme3/renderer/opengl/GLTracer;->noEnumArgs(Ljava/lang/String;[I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/jme3/util/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/renderer/opengl/GLTracer;->obj:Ljava/lang/Object;

    iput-object p2, p0, Lcom/jme3/renderer/opengl/GLTracer;->constMap:Lcom/jme3/util/IntMap;

    return-void
.end method

.method public static varargs createDesktopGlTracer(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/jme3/renderer/opengl/GLFbo;

    const-class v1, Lcom/jme3/renderer/opengl/GLExt;

    const-class v2, Lcom/jme3/renderer/opengl/GL2;

    const-class v3, Lcom/jme3/renderer/opengl/GL3;

    const-class v4, Lcom/jme3/renderer/opengl/GL4;

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLTracer;->generateConstantMap([Ljava/lang/Class;)Lcom/jme3/util/IntMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/jme3/renderer/opengl/GLTracer;

    invoke-direct {v2, p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;-><init>(Ljava/lang/Object;Lcom/jme3/util/IntMap;)V

    invoke-static {v1, p1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createGlesTracer(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/jme3/renderer/opengl/GLFbo;

    const-class v1, Lcom/jme3/renderer/opengl/GLExt;

    const-class v2, Lcom/jme3/renderer/opengl/GL;

    const-class v3, Lcom/jme3/renderer/opengl/GL2;

    const-class v4, Lcom/jme3/renderer/opengl/GL3;

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLTracer;->generateConstantMap([Ljava/lang/Class;)Lcom/jme3/util/IntMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/jme3/renderer/opengl/GLTracer;

    invoke-direct {v2, p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;-><init>(Ljava/lang/Object;Lcom/jme3/util/IntMap;)V

    invoke-static {v1, p1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs generateConstantMap([Ljava/lang/Class;)Lcom/jme3/util/IntMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8, v7}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "GL_ONE"

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static varargs noEnumArgs(Ljava/lang/String;[I)V
    .locals 5

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/renderer/opengl/GLTracer;->nonEnumArgMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private print(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printArgs(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "glClear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printArgsClear(I)V

    return-void

    :cond_0
    const-string v0, "glTexParameteri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLTracer;->printArgsTexParameter([Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "glGetInteger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLTracer;->printArgsGetInteger([Ljava/lang/Object;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "()"

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "("

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_12

    aget-object v2, p3, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_4

    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2, v0}, Lcom/jme3/renderer/opengl/GLTracer;->printIntOrEnum(Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_5

    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printBoolean(Z)V

    goto/16 :goto_2

    :cond_5
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_6

    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printString(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-class v3, [Ljava/lang/String;

    if-ne v2, v3, :cond_8

    aget-object v2, p2, v0

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    if-ne v3, v4, :cond_7

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printString(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "string["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    aget-object v2, p2, v0

    instance-of v3, v2, Ljava/nio/IntBuffer;

    if-eqz v3, :cond_b

    check-cast v2, Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_9

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printOut()V

    invoke-direct {p0, p1, v2, v0}, Lcom/jme3/renderer/opengl/GLTracer;->printIntOrEnum(Ljava/lang/String;II)V

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-ne v3, v4, :cond_a

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printOut()V

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printBuffer(Ljava/nio/Buffer;)V

    goto :goto_2

    :cond_b
    instance-of v3, v2, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_e

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    const/16 v5, 0xfa

    if-ne v3, v5, :cond_d

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printOut()V

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_c

    move v2, v4

    goto :goto_1

    :cond_c
    move v2, v1

    :goto_1
    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printBoolean(Z)V

    goto :goto_2

    :cond_d
    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printBuffer(Ljava/nio/Buffer;)V

    goto :goto_2

    :cond_e
    instance-of v3, v2, Ljava/nio/Buffer;

    if-eqz v3, :cond_f

    check-cast v2, Ljava/nio/Buffer;

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printBuffer(Ljava/nio/Buffer;)V

    goto :goto_2

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printNull()V

    :goto_2
    array-length v2, p2

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_11

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_12
    const-string p1, ")"

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printArgsClear(I)V
    .locals 4

    const-string v0, "("

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    and-int/lit16 v0, p1, 0x4000

    const-string v1, "\u001b[32m"

    if-eqz v0, :cond_0

    const-string v0, "COLOR_BUFFER_BIT"

    invoke-direct {p0, v1, v0}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit16 v2, p1, 0x100

    const-string v3, " | "

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    :cond_1
    const-string v2, "DEPTH_BUFFER_BIT"

    invoke-direct {p0, v1, v2}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    :cond_3
    const-string p1, "STENCIL_BUFFER_BIT"

    invoke-direct {p0, v1, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p1, ")"

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printArgsGetInteger([Ljava/lang/Object;)V
    .locals 3

    const-string v0, "("

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    check-cast p1, Ljava/nio/IntBuffer;

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLTracer;->printEnum(I)V

    const-string v2, ", "

    invoke-direct {p0, v2}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printOut()V

    const/16 v2, 0xc01

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc02

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printInt(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printEnum(I)V

    :goto_1
    const-string p1, ")"

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printArgsTexParameter([Ljava/lang/Object;)V
    .locals 3

    const-string v0, "("

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->printEnum(I)V

    const-string v0, ", "

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/jme3/renderer/opengl/GLTracer;->printEnum(I)V

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    const v0, 0x813c

    if-eq v1, v0, :cond_1

    const v0, 0x813d

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printEnum(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printInt(I)V

    :goto_1
    const-string p1, ")"

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printBoolean(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v0, "\u001b[34m"

    invoke-direct {p0, v0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printBuffer(Ljava/nio/Buffer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u001b[35m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_2

    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_3

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    instance-of v1, p1, Ljava/nio/IntBuffer;

    if-eqz v1, :cond_4

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    instance-of v1, p1, Ljava/nio/LongBuffer;

    if-eqz v1, :cond_5

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    instance-of v1, p1, Ljava/nio/DoubleBuffer;

    if-eqz v1, :cond_7

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\u001b[0m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_6

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, "pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method private printEnum(I)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLTracer;->constMap:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u001b[32m"

    if-eqz v0, :cond_3

    const-string p1, "GL_"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p1, "_EXT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "_ARB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENUM_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private printInt(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printIntOrEnum(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Lcom/jme3/renderer/opengl/GLTracer;->nonEnumArgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/IntMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLTracer;->printInt(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLTracer;->printEnum(I)V

    :goto_0
    return-void
.end method

.method private printMethodName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "gl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DrawRangeElements"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DrawElementsInstancedARB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "EXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "\u001b[1m"

    invoke-direct {p0, v0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "resetStats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u001b[31m"

    const-string v0, "-- frame boundary --"

    invoke-direct {p0, p1, v0}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private printNewLine()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method private printNull()V
    .locals 2

    const-string v0, "\u001b[34m"

    const-string v1, "null"

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printOut()V
    .locals 2

    const-string v0, "\u001b[36m"

    const-string v1, "out="

    invoke-direct {p0, v0, v1}, Lcom/jme3/renderer/opengl/GLTracer;->printStyle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printResult(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_3

    const-string v0, " = "

    invoke-direct {p0, v0}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/jme3/renderer/opengl/GLTracer;->printString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/renderer/opengl/GLTracer;->printIntOrEnum(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printBoolean(Z)V

    goto :goto_0

    :cond_2
    const-string p1, " = ???"

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private printString(Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x96

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u001b[33m"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u001b[0m"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v6, p1

    :goto_0
    if-ge v1, v6, :cond_1

    aget-object v7, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u0000"

    const-string v9, "\\\\0"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u001b[0m"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/renderer/opengl/GLTracer;->printMethodName(Ljava/lang/String;)V

    const-string v0, "gl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLTracer;->obj:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, p3, v1}, Lcom/jme3/renderer/opengl/GLTracer;->printArgs(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/renderer/opengl/GLTracer;->printResult(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printNewLine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/jme3/renderer/opengl/GLTracer;->printArgs(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printNewLine()V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "\tException occurred!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/jme3/renderer/opengl/GLTracer;->printNewLine()V

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLTracer;->obj:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
