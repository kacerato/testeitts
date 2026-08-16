.class public Ljpct/ae/wrapper/JAAConfigChooser;
.super Lanywheresoftware/b4a/AbsObjectWrapper;
.source "SourceFile"


# annotations
.annotation runtime Lanywheresoftware/b4a/BA$ShortName;
    value = "JpctAAConfigChooser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanywheresoftware/b4a/AbsObjectWrapper<",
        "Lcom/threed/jpct/util/AAConfigChooser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lanywheresoftware/b4a/AbsObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public Initialize(Landroid/opengl/GLSurfaceView;)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/util/AAConfigChooser;

    invoke-direct {v0, p1}, Lcom/threed/jpct/util/AAConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JAAConfigChooser;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public Initialize2(Landroid/opengl/GLSurfaceView;Z)V
    .locals 1

    new-instance v0, Lcom/threed/jpct/util/AAConfigChooser;

    invoke-direct {v0, p1, p2}, Lcom/threed/jpct/util/AAConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Ljpct/ae/wrapper/JAAConfigChooser;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    invoke-virtual {p0}, Ljpct/ae/wrapper/JAAConfigChooser;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/util/AAConfigChooser;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/util/AAConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1
.end method
