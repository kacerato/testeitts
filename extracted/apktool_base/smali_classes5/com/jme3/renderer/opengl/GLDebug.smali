.class public Lcom/jme3/renderer/opengl/GLDebug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field protected gl:Lcom/jme3/renderer/opengl/GL;

.field protected methodGlGetError:Ljava/lang/reflect/Method;

.field protected obj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/jme3/renderer/opengl/GL;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/renderer/opengl/GLDebug;->gl:Lcom/jme3/renderer/opengl/GL;

    iput-object p2, p0, Lcom/jme3/renderer/opengl/GLDebug;->obj:Ljava/lang/Object;

    const-string p1, "glGetError"

    const/4 p2, 0x0

    const-class v0, Lcom/jme3/renderer/opengl/GL;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/renderer/opengl/GLDebug;->methodGlGetError:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static varargs createProxy(Lcom/jme3/renderer/opengl/GL;Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/opengl/GL;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/jme3/renderer/opengl/GLDebug;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/jme3/renderer/opengl/GLDebug;

    invoke-direct {v1, p0, p1}, Lcom/jme3/renderer/opengl/GLDebug;-><init>(Lcom/jme3/renderer/opengl/GL;Ljava/lang/Object;)V

    invoke-static {v0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Could not initialize the proxy because the glGetError method wasn\'t found!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public checkError()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLDebug;->gl:Lcom/jme3/renderer/opengl/GL;

    invoke-interface {v0}, Lcom/jme3/renderer/opengl/GL;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/jme3/renderer/RendererException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An OpenGL error occurred - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/opengl/GLDebug;->decodeError(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jme3/renderer/RendererException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decodeError(I)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "Framebuffer is not complete"

    goto :goto_0

    :pswitch_1
    const-string v0, "Out of memory"

    goto :goto_0

    :pswitch_2
    const-string v0, "Internal stack underflow"

    goto :goto_0

    :pswitch_3
    const-string v0, "Internal stack overflow"

    goto :goto_0

    :pswitch_4
    const-string v0, "Invalid operation"

    goto :goto_0

    :pswitch_5
    const-string v0, "Invalid numeric argument"

    goto :goto_0

    :pswitch_6
    const-string v0, "Invalid enum argument"

    goto :goto_0

    :cond_0
    const-string v0, "No Error"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (Error Code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/jme3/renderer/opengl/GLDebug;->obj:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lcom/jme3/renderer/opengl/GLDebug;->methodGlGetError:Ljava/lang/reflect/Method;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/renderer/opengl/GLDebug;->checkError()V

    return-object p1
.end method
