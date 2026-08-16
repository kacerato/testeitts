.class Ljpct/ae/wrapper/JGLSurfaceView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljpct/ae/wrapper/JGLSurfaceView;->Initialize2(Lanywheresoftware/b4a/BA;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljpct/ae/wrapper/JGLSurfaceView;


# direct methods
.method public constructor <init>(Ljpct/ae/wrapper/JGLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Ljpct/ae/wrapper/JGLSurfaceView$1;->this$0:Ljpct/ae/wrapper/JGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/16 v0, 0x10

    const/16 v1, 0x3038

    const/16 v2, 0x3025

    filled-new-array {v2, v0, v1}, [I

    move-result-object v5

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v8, v0, [I

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v6, v1

    invoke-interface/range {v3 .. v8}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 p1, 0x0

    aget-object p1, v1, p1

    return-object p1
.end method
