.class public Lcom/threed/jpct/util/NVDepthConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private view:Landroid/opengl/GLSurfaceView;

.field private withAlpha:Z


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    .line 3
    iput-object p1, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 6
    iput-boolean p2, p0, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    return-void
.end method

.method private error()V
    .locals 2

    const-string v0, "Failed to choose config!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1

    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 32

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/threed/jpct/util/NVDepthConfigChooser;->withAlpha:Z

    const/4 v1, 0x6

    const/4 v7, 0x5

    if-eqz v0, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v8, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x0

    :try_start_0
    iget-object v4, v6, Lcom/threed/jpct/util/NVDepthConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string v0, "Couldn\'t initialize OpenGL ES 2.0"

    invoke-static {v0, v9}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v8

    :catch_0
    :goto_1
    const/4 v4, 0x1

    new-array v5, v4, [I

    const/16 v10, 0xf

    new-array v15, v10, [I

    const/16 v16, 0x3024

    aput v16, v15, v9

    aput v7, v15, v4

    const/16 v17, 0x3023

    aput v17, v15, v3

    const/16 v18, 0x3

    aput v2, v15, v18

    const/16 v19, 0x4

    const/16 v20, 0x3022

    aput v20, v15, v19

    aput v7, v15, v7

    const/16 v21, 0x3021

    aput v21, v15, v1

    const/16 v22, 0x7

    aput v0, v15, v22

    const/16 v23, 0x8

    const/16 v24, 0x3025

    aput v24, v15, v23

    const/16 v25, 0x9

    const/16 v26, 0x10

    aput v26, v15, v25

    const/16 v27, 0xa

    const/16 v28, 0x3040

    aput v28, v15, v27

    const/16 v29, 0xb

    aput v19, v15, v29

    const/16 v10, 0x30e2

    const/16 v30, 0xc

    aput v10, v15, v30

    const/16 v10, 0x30e3

    const/16 v14, 0xd

    aput v10, v15, v14

    const/16 v10, 0xe

    const/16 v11, 0x3038

    aput v11, v15, v10

    const/4 v13, 0x0

    const/16 v31, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v15

    move v8, v14

    move/from16 v14, v31

    move-object/from16 v31, v15

    move-object v15, v5

    invoke-interface/range {v10 .. v15}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v10

    if-eqz v10, :cond_1

    aget v10, v5, v9

    goto :goto_2

    :cond_1
    move v10, v9

    :goto_2
    if-gtz v10, :cond_4

    const-string v10, "No nonlinear depth buffer config found...using default mode!"

    invoke-static {v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    new-array v8, v8, [I

    aput v16, v8, v9

    aput v7, v8, v4

    aput v17, v8, v3

    aput v2, v8, v18

    aput v20, v8, v19

    aput v7, v8, v7

    aput v21, v8, v1

    aput v0, v8, v22

    aput v24, v8, v23

    aput v26, v8, v25

    aput v28, v8, v27

    aput v19, v8, v29

    const/16 v0, 0x3038

    aput v0, v8, v30

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v8

    move-object v15, v5

    invoke-interface/range {v10 .. v15}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    :cond_2
    aget v10, v5, v9

    if-gtz v10, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    :cond_3
    move-object v12, v8

    move v8, v10

    goto :goto_3

    :cond_4
    const-string v0, "Nonlinear depth buffer enabled!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    move v8, v10

    move-object/from16 v12, v31

    :goto_3
    new-array v4, v8, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v13, v4

    move v14, v8

    move-object v15, v5

    invoke-interface/range {v10 .. v15}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    :cond_5
    move v10, v9

    :goto_4
    if-lt v10, v8, :cond_6

    const/4 v10, -0x1

    move-object v12, v4

    goto :goto_5

    :cond_6
    aget-object v3, v4, v10

    const/16 v5, 0x3024

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v12, v4

    move v4, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/util/NVDepthConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    if-ne v0, v7, :cond_a

    :goto_5
    const/4 v0, -0x1

    if-ne v10, v0, :cond_7

    const-string v0, "Unable to find a matching config...using default!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move v9, v10

    :goto_6
    if-lez v8, :cond_8

    aget-object v8, v12, v9

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/NVDepthConfigChooser;->error()V

    :cond_9
    return-object v8

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move-object v4, v12

    goto :goto_4
.end method
