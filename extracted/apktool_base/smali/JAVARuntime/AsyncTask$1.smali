.class LJAVARuntime/AsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AsyncTask;->execute(LJAVARuntime/AsyncRunnable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AsyncTask;

.field final synthetic val$asyncRunnable:LJAVARuntime/AsyncRunnable;

.field final synthetic val$userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJAVARuntime/AsyncTask;LJAVARuntime/AsyncRunnable;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$asyncRunnable",
            "val$userData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AsyncTask$1;->this$0:LJAVARuntime/AsyncTask;

    iput-object p2, p0, LJAVARuntime/AsyncTask$1;->val$asyncRunnable:LJAVARuntime/AsyncRunnable;

    iput-object p3, p0, LJAVARuntime/AsyncTask$1;->val$userData:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LJAVARuntime/AsyncTask$1$1;

    invoke-direct {v0, p0}, LJAVARuntime/AsyncTask$1$1;-><init>(LJAVARuntime/AsyncTask$1;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
