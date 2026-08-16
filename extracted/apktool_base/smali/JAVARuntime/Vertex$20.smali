.class LJAVARuntime/Vertex$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Vertex;->setJoints(LJAVARuntime/Vector3Buffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Vertex;

.field final synthetic val$buffer:LJAVARuntime/Vector3Buffer;


# direct methods
.method public constructor <init>(LJAVARuntime/Vertex;LJAVARuntime/Vector3Buffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Vertex$20;->this$0:LJAVARuntime/Vertex;

    iput-object p2, p0, LJAVARuntime/Vertex$20;->val$buffer:LJAVARuntime/Vector3Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LJAVARuntime/Vertex$20$1;

    invoke-direct {v0, p0}, LJAVARuntime/Vertex$20$1;-><init>(LJAVARuntime/Vertex$20;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
