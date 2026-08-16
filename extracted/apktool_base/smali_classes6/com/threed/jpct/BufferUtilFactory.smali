.class Lcom/threed/jpct/BufferUtilFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static nativeSupport:Z = false

.field private static util:Lcom/threed/jpct/BufferUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Troet!"

    :try_start_0
    sget-boolean v1, Lcom/threed/jpct/Config;->disableNativeBufferCopies:Z

    if-nez v1, :cond_0

    const-string v1, "com.badlogic.gdx.utils.BufferUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/threed/jpct/BufferUtilFactory;->nativeSupport:Z

    const-class v1, Lcom/threed/jpct/BufferUtilNative;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/BufferUtil;

    sput-object v1, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    const-string v1, "gdx"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v1, Lcom/threed/jpct/FloatBufferWrapper;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/threed/jpct/FloatBufferWrapper;-><init>(I)V

    new-array v2, v2, [F

    sget-object v3, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    invoke-interface {v3, v2, v1}, Lcom/threed/jpct/BufferUtil;->copy([FLcom/threed/jpct/FloatBufferWrapper;)V

    const-string v1, "Using native buffer copies!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/threed/jpct/BufferUtilFactory;->nativeSupport:Z

    new-instance v2, Lcom/threed/jpct/BufferUtilVM;

    invoke-direct {v2}, Lcom/threed/jpct/BufferUtilVM;-><init>()V

    sput-object v2, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Using vm based buffer copies!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Native buffer copies disabled!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBufferUtil()Lcom/threed/jpct/BufferUtil;
    .locals 1

    sget-object v0, Lcom/threed/jpct/BufferUtilFactory;->util:Lcom/threed/jpct/BufferUtil;

    return-object v0
.end method

.method public static hasNativeSupport()Z
    .locals 1

    sget-boolean v0, Lcom/threed/jpct/BufferUtilFactory;->nativeSupport:Z

    return v0
.end method
