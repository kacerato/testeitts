.class public Lcom/threed/jpct/util/AAConfigChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private depth:I

.field private view:Landroid/opengl/GLSurfaceView;

.field private withAlpha:Z


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    const/16 v0, 0x10

    .line 3
    iput v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    .line 4
    iput-object p1, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;Z)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    .line 7
    iput-object p1, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 8
    iput-boolean p2, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    return-void
.end method

.method private constructor <init>(Landroid/opengl/GLSurfaceView;ZI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    .line 11
    iput-boolean p2, p0, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    .line 12
    iput p3, p0, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/Config;->aaMode:I

    const-string v1, "Failed to choose config!"

    invoke-static {v1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

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
    .locals 34

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/threed/jpct/util/AAConfigChooser;->withAlpha:Z

    const/4 v1, 0x6

    const/4 v7, 0x5

    if-eqz v0, :cond_0

    move v2, v7

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, v6, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    const/16 v4, 0x18

    const/16 v5, 0x8

    const/4 v8, 0x0

    if-le v3, v4, :cond_2

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    move v2, v5

    move v3, v2

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_2
    move v3, v7

    goto :goto_2

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x2

    :try_start_0
    iget-object v11, v6, Lcom/threed/jpct/util/AAConfigChooser;->view:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v11, v10}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    const-string v0, "Couldn\'t initialize OpenGL ES 2.0"

    invoke-static {v0, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v9

    :catch_0
    :goto_4
    const/4 v11, 0x1

    new-array v15, v11, [I

    const/16 v12, 0x11

    new-array v14, v12, [I

    const/16 v18, 0x3024

    aput v18, v14, v8

    aput v3, v14, v11

    const/16 v19, 0x3023

    aput v19, v14, v10

    const/16 v20, 0x3

    aput v2, v14, v20

    const/16 v21, 0x4

    const/16 v22, 0x3022

    aput v22, v14, v21

    aput v4, v14, v7

    const/16 v23, 0x3021

    aput v23, v14, v1

    const/16 v24, 0x7

    aput v0, v14, v24

    const/16 v25, 0x3025

    aput v25, v14, v5

    iget v12, v6, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    const/16 v26, 0x9

    aput v12, v14, v26

    const/16 v27, 0xa

    const/16 v28, 0x3040

    aput v28, v14, v27

    const/16 v29, 0xb

    aput v21, v14, v29

    const/16 v12, 0x3032

    const/16 v30, 0xc

    aput v12, v14, v30

    const/16 v13, 0xd

    aput v11, v14, v13

    const/16 v12, 0xe

    const/16 v16, 0x3031

    aput v16, v14, v12

    const/16 v12, 0xf

    aput v10, v14, v12

    const/16 v12, 0x10

    const/16 v31, 0x3038

    aput v31, v14, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    move v9, v13

    move-object/from16 v13, p2

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v33

    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    :cond_3
    aget v12, v33, v8

    if-gtz v12, :cond_8

    const/16 v12, 0x13

    new-array v15, v12, [I

    aput v18, v15, v8

    aput v3, v15, v11

    aput v19, v15, v10

    aput v2, v15, v20

    aput v22, v15, v21

    aput v4, v15, v7

    aput v23, v15, v1

    aput v0, v15, v24

    aput v25, v15, v5

    iget v12, v6, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    aput v12, v15, v26

    aput v28, v15, v27

    aput v21, v15, v29

    const/16 v12, 0x30e2

    aput v12, v15, v30

    const/16 v12, 0x30e3

    aput v12, v15, v9

    const/16 v12, 0xe

    const/16 v13, 0x30e0

    aput v13, v15, v12

    const/16 v12, 0xf

    aput v11, v15, v12

    const/16 v12, 0x10

    const/16 v13, 0x30e1

    aput v13, v15, v12

    const/16 v12, 0x11

    aput v10, v15, v12

    const/16 v12, 0x12

    aput v31, v15, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v15

    move-object/from16 v32, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v33

    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    :cond_4
    aget v12, v33, v8

    if-gtz v12, :cond_7

    const-string v12, "No AA config found...defaulting to non-AA modes!"

    invoke-static {v12}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    new-array v9, v9, [I

    aput v18, v9, v8

    aput v3, v9, v11

    aput v19, v9, v10

    aput v2, v9, v20

    aput v22, v9, v21

    aput v4, v9, v7

    aput v23, v9, v1

    aput v0, v9, v24

    aput v25, v9, v5

    iget v0, v6, Lcom/threed/jpct/util/AAConfigChooser;->depth:I

    aput v0, v9, v26

    aput v28, v9, v27

    aput v21, v9, v29

    aput v31, v9, v30

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v9

    move-object/from16 v17, v33

    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    :cond_5
    aget v12, v33, v8

    if-gtz v12, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    :cond_6
    sput v8, Lcom/threed/jpct/Config;->aaMode:I

    const-string v0, "No AA enabled!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    move-object v14, v9

    move v9, v12

    goto :goto_6

    :cond_7
    sput v10, Lcom/threed/jpct/Config;->aaMode:I

    const-string v0, "CSAA enabled!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :goto_5
    move v9, v12

    move-object/from16 v14, v32

    goto :goto_6

    :cond_8
    sput v11, Lcom/threed/jpct/Config;->aaMode:I

    const-string v0, "MSAA enabled with 2 samples!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_5

    :goto_6
    new-array v10, v9, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v15, v10

    move/from16 v16, v9

    move-object/from16 v17, v33

    invoke-interface/range {v12 .. v17}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    :cond_9
    move v11, v8

    :goto_7
    if-lt v11, v9, :cond_a

    const/4 v11, -0x1

    goto :goto_8

    :cond_a
    aget-object v3, v10, v11

    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/util/AAConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    if-ne v0, v7, :cond_e

    :goto_8
    const/4 v0, -0x1

    if-ne v11, v0, :cond_b

    const-string v0, "Unable to find a matching config...using default!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    move v8, v11

    :goto_9
    if-lez v9, :cond_c

    aget-object v9, v10, v8

    goto :goto_a

    :cond_c
    const/4 v9, 0x0

    :goto_a
    if-nez v9, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/util/AAConfigChooser;->error()V

    :cond_d
    return-object v9

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_7
.end method
