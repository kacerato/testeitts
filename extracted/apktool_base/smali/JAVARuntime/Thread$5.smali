.class LJAVARuntime/Thread$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Thread;-><init>(LJAVARuntime/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Thread;


# direct methods
.method public constructor <init>(LJAVARuntime/Thread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Thread$5;->this$0:LJAVARuntime/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/Thread$5;->this$0:LJAVARuntime/Thread;

    new-instance v1, LJAVARuntime/b;

    invoke-direct {v1, v0}, LJAVARuntime/b;-><init>(LJAVARuntime/Thread;)V

    invoke-static {v1}, Ld8/m;->e(Lo8/d;)Z

    return-void
.end method
