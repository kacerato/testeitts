.class LJAVARuntime/Texture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Texture;->extractGPUImageToBtm(LJAVARuntime/Texture$ExtractCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Texture;

.field final synthetic val$callback:LJAVARuntime/Texture$ExtractCallback;


# direct methods
.method public constructor <init>(LJAVARuntime/Texture;LJAVARuntime/Texture$ExtractCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Texture$3;->this$0:LJAVARuntime/Texture;

    iput-object p2, p0, LJAVARuntime/Texture$3;->val$callback:LJAVARuntime/Texture$ExtractCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public on(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Texture$3$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/Texture$3$1;-><init>(LJAVARuntime/Texture$3;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
