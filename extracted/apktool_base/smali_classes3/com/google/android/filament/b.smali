.class public final Lcom/google/android/filament/b;
.super Lcom/google/android/filament/o;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "Filament"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/filament/o;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)J
    .locals 2

    invoke-static {p1}, Lcom/google/android/filament/a;->a(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Filament"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Landroid/opengl/EGLContext;

    return p1
.end method

.method public i(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Landroid/graphics/SurfaceTexture;

    return p1
.end method

.method public j(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Landroid/view/Surface;

    return p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Filament"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
