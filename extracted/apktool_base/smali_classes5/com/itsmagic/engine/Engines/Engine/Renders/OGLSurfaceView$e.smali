.class public Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "filament-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/itsmagic/engine/Engines/Engine/Renders/OGLSurfaceView$e;->a:Z

    :cond_0
    return-void
.end method
