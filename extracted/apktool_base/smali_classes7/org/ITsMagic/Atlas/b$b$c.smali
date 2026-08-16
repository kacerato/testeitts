.class public Lorg/ITsMagic/Atlas/b$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lorg/ITsMagic/Atlas/b$b;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/b$b$c;->b:Lorg/ITsMagic/Atlas/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/ITsMagic/Atlas/b$b$c;->b:Lorg/ITsMagic/Atlas/b$b;

    iget-object v1, v0, Lorg/ITsMagic/Atlas/b$b;->d:Lub/p;

    iget-object v2, v0, Lorg/ITsMagic/Atlas/b$b;->b:Lorg/ITsMagic/Atlas/c$b;

    iget-object v3, v0, Lorg/ITsMagic/Atlas/b$b;->c:Lorg/ITsMagic/Atlas/b$d;

    iget-object v4, v0, Lorg/ITsMagic/Atlas/b$b;->e:Ljava/util/concurrent/CountDownLatch;

    iget-object v0, v0, Lorg/ITsMagic/Atlas/b$b;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v2, v3, v4, v0}, Lorg/ITsMagic/Atlas/b;->d(Lub/p;Lorg/ITsMagic/Atlas/c$b;Lorg/ITsMagic/Atlas/b$d;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
