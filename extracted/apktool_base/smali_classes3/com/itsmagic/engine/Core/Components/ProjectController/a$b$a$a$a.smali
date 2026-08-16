.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;
.super LZ6/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;

    invoke-direct {p0}, LZ6/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/c$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-super {p0, p1}, LZ6/c$h;->a(LZ6/c$g;)V

    return-void
.end method

.method public b(LZ6/c$g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;->a:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-super {p0, p1}, LZ6/c$h;->b(LZ6/c$g;)V

    return-void
.end method
