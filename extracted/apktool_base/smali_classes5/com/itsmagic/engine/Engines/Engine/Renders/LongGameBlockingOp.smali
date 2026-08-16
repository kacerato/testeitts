.class public Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;
.super Ljava/lang/Error;
.source "SourceFile"


# instance fields
.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->start()V

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private start()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Renders/LongGameBlockingOp;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
