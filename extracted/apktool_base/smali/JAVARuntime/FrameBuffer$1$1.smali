.class LJAVARuntime/FrameBuffer$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/FrameBuffer$1;->on(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:LJAVARuntime/FrameBuffer$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(LJAVARuntime/FrameBuffer$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bitmap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/FrameBuffer$1$1;->this$1:LJAVARuntime/FrameBuffer$1;

    iput-object p2, p0, LJAVARuntime/FrameBuffer$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/FrameBuffer$1$1;->this$1:LJAVARuntime/FrameBuffer$1;

    iget-object v0, v0, LJAVARuntime/FrameBuffer$1;->val$callback:LJAVARuntime/FrameBuffer$ExtractCallback;

    iget-object v1, p0, LJAVARuntime/FrameBuffer$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, LJAVARuntime/FrameBuffer$ExtractCallback;->on(Landroid/graphics/Bitmap;)V

    return-void
.end method
