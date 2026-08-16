.class LJAVARuntime/Thread$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Thread;->setUncaughtExceptionHandler(LJAVARuntime/Thread$UncaughtExceptionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/Thread;

.field final synthetic val$eh:LJAVARuntime/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(LJAVARuntime/Thread;LJAVARuntime/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$eh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Thread$12;->this$0:LJAVARuntime/Thread;

    iput-object p2, p0, LJAVARuntime/Thread$12;->val$eh:LJAVARuntime/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "e"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Thread$12;->val$eh:LJAVARuntime/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, LJAVARuntime/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
