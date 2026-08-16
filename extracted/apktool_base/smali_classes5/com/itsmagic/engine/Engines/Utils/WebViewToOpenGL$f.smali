.class public Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->B(IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$action",
            "val$x",
            "val$y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->e:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->c:F

    iput p4, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->b:I

    iget v5, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->c:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->d:F

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL$f;->e:Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;->b(Lcom/itsmagic/engine/Engines/Utils/WebViewToOpenGL;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
