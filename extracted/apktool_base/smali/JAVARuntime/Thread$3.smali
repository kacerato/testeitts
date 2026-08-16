.class LJAVARuntime/Thread$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Thread;->runOnUIThread(LJAVARuntime/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:LJAVARuntime/Runnable;


# direct methods
.method public constructor <init>(LJAVARuntime/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$runnable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Thread$3;->val$runnable:LJAVARuntime/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LJAVARuntime/Thread$3$1;

    invoke-direct {v0, p0}, LJAVARuntime/Thread$3$1;-><init>(LJAVARuntime/Thread$3;)V

    invoke-static {v0}, Ld8/m;->e(Lo8/d;)Z

    return-void
.end method
