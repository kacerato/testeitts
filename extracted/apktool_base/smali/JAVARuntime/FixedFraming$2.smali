.class LJAVARuntime/FixedFraming$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/FixedFraming;->setFixedFrameListener(LJAVARuntime/FixedFrameListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/FixedFraming;

.field final synthetic val$fixedFrameListener:LJAVARuntime/FixedFrameListener;


# direct methods
.method public constructor <init>(LJAVARuntime/FixedFraming;LJAVARuntime/FixedFrameListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$fixedFrameListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/FixedFraming$2;->this$0:LJAVARuntime/FixedFraming;

    iput-object p2, p0, LJAVARuntime/FixedFraming$2;->val$fixedFrameListener:LJAVARuntime/FixedFrameListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public repeat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/FixedFraming$2;->val$fixedFrameListener:LJAVARuntime/FixedFrameListener;

    invoke-interface {v0, p1}, LJAVARuntime/FixedFrameListener;->repeat(F)V

    return-void
.end method
