.class Lcom/threed/jpct/GLDebug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private gl:Ljavax/microedition/khronos/opengles/GL;

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    return-void
.end method

.method public static create(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "Creating dynamic proxy for gl!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lcom/threed/jpct/GLDebug;

    invoke-direct {v2, p0}, Lcom/threed/jpct/GLDebug;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/microedition/khronos/opengles/GL;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p1, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p1, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length p1, p3

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    :goto_0
    if-lt v2, p1, :cond_2

    iget-object p1, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object p1, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    const-string p3, " took "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "ns"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "return value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/threed/jpct/GLDebug;->gl:Ljavax/microedition/khronos/opengles/GL;

    check-cast p2, Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result p2

    if-eqz p2, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "!! ERROR !! - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1
    return-object p1

    :cond_2
    aget-object v4, p3, v2

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v3, p0, Lcom/threed/jpct/GLDebug;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0
.end method
