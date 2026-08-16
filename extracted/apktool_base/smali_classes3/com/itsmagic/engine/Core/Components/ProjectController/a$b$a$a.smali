.class public Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$shouldImport",
            "val$latch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->d:Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a$a;-><init>(Lcom/itsmagic/engine/Core/Components/ProjectController/a$b$a$a;)V

    const-string v1, "Files exist"

    const-string v2, "Do you want to replace files?"

    invoke-static {v1, v2, v0}, LZ6/c;->z1(Ljava/lang/String;Ljava/lang/String;LZ6/c$i;)V

    return-void
.end method
