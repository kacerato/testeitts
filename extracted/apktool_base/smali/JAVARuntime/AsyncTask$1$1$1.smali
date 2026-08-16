.class LJAVARuntime/AsyncTask$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AsyncTask$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/AsyncTask$1$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJAVARuntime/AsyncTask$1$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AsyncTask$1$1$1;->this$2:LJAVARuntime/AsyncTask$1$1;

    iput-object p2, p0, LJAVARuntime/AsyncTask$1$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, LJAVARuntime/AsyncTask$1$1$1$1;

    invoke-direct {v0, p0}, LJAVARuntime/AsyncTask$1$1$1$1;-><init>(LJAVARuntime/AsyncTask$1$1$1;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
