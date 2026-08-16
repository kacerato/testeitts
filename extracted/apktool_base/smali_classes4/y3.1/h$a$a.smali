.class public Ly3/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly3/h$a;->a(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic c:Ly3/h$a;


# direct methods
.method public constructor <init>(Ly3/h$a;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$result",
            "val$latch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly3/h$a$a;->c:Ly3/h$a;

    iput-object p2, p0, Ly3/h$a$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ly3/h$a$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ly3/h$a$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "ERROR: rename failed"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/h$a$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Ly3/h$a$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/h$a$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
