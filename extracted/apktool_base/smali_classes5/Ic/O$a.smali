.class public LIc/O$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIc/O;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LIc/O;


# direct methods
.method public constructor <init>(LIc/O;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LIc/O$a;->b:LIc/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LIc/O$a;->b:LIc/O;

    invoke-static {v0}, LIc/O;->a(LIc/O;)LIc/O$b;

    move-result-object v0

    invoke-interface {v0}, LIc/O$b;->run()V

    iget-object v0, p0, LIc/O$a;->b:LIc/O;

    invoke-static {v0}, LIc/O;->b(LIc/O;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
