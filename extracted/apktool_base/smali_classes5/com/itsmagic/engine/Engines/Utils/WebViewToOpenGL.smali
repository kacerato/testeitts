.class public Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$j;
    }
.end annotation


# instance fields
.field public a:Landroid/webkit/WebView;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Canvas;

.field public d:I

.field public e:I

.field public f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

.field public final g:Lub/l;

.field public h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Landroid/view/View$OnFocusChangeListener;

.field public o:Z

.field public p:I

.field public q:J

.field public final r:Landroid/webkit/WebChromeClient;

.field public final s:Landroid/webkit/WebViewClient;

.field public final t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-webview-to-opengl"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "width",
            "height",
            "url"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->m:Z

    const/16 v0, 0x18

    iput v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->p:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->q:J

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$a;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->r:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$b;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->s:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$c;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->t:Ljava/lang/Runnable;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$d;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Landroid/content/Context;IILjava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    invoke-direct {p1, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    invoke-virtual {p0, p2, p3}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->y(II)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {p4, p2, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    new-instance p2, Lub/l;

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-direct {p2, p3, p1}, Lub/l;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g:Lub/l;

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a:Landroid/webkit/WebView;

    return-object p1
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebChromeClient;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->r:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebViewClient;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->s:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method public static synthetic g(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->n:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method public static synthetic h(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->o:Z

    return p1
.end method

.method public static synthetic i(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic k(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private static native nativeCopyBitmapToNativeBuffer(Landroid/graphics/Bitmap;J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "nativeByteBufferPointer"
        }
    .end annotation
.end method


# virtual methods
.method public A(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "keyCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$g;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$g;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;II)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public B(IFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;IFF)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public C(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowHibernate"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->m:Z

    return-void
.end method

.method public D(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->p:I

    return-void
.end method

.method public E(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onFocusChangeListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->n:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public F()V
    .locals 9

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->m:Z

    if-nez v0, :cond_4

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v0, 0x3e8

    iget v5, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->p:I

    div-int/2addr v0, v5

    int-to-long v5, v0

    iget-wide v7, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->q:J

    sub-long v7, v3, v7

    cmp-long v0, v7, v5

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->r()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->s()F

    move-result v7

    neg-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    :try_start_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getCriticalDirectCppPointer(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;J)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->nativeCopyBitmapToNativeBuffer(Landroid/graphics/Bitmap;J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->position(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->Z0(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    iput-wide v3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->q:J

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public final l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->m0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->Z(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->p0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->J0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$h;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$c;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$i;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g:Lub/l;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lub/l;->destroyImmediate()V

    :cond_2
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$e;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$e;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()Lub/l;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g:Lub/l;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->p:I

    return v0
.end method

.method public q()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->n:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method public final r()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final s()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public t()Lub/l;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g:Lub/l;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->m:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->o:Z

    return v0
.end method

.method public x(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$h;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$h;-><init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;Ljava/lang/String;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    return-void
.end method

.method public z(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newWidth",
            "newHeight"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    if-ne v0, p1, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iput p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p2

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget v7, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    iget v8, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    invoke-direct {v6, v7, v8, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    iget v7, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    invoke-direct {p1, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    iget v7, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    invoke-virtual {p0, p1, v7}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->y(II)V

    iput-object v6, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g:Lub/l;

    invoke-virtual {p1, v6, p2}, Lub/l;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->a:Landroid/webkit/WebView;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    iget v7, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v8, p2, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->F()V

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->destroyImmediate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p2

    :goto_0
    move-object v6, p1

    move-object p1, p2

    goto :goto_1

    :catch_3
    move-exception p2

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iput v0, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->d:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->e:I

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->c:Landroid/graphics/Canvas;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->h:Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->f:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    if-eqz v5, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->g:Lub/l;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lub/l;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    :cond_2
    if-eqz v6, :cond_3

    if-eq v6, v5, :cond_3

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->destroyImmediate()V

    :cond_3
    :goto_2
    return-void
.end method
