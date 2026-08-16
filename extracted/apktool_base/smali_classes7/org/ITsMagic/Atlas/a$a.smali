.class public Lorg/ITsMagic/Atlas/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/ITsMagic/Atlas/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/Atlas/a;->G(LBb/b;Ljava/util/List;Ljava/util/List;Lorg/ITsMagic/Atlas/a$b;ILjava/util/concurrent/atomic/AtomicInteger;ILorg/ITsMagic/Atlas/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/ITsMagic/Atlas/a$c;

.field public final synthetic b:I

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Lorg/ITsMagic/Atlas/a;


# direct methods
.method public constructor <init>(Lorg/ITsMagic/Atlas/a;Lorg/ITsMagic/Atlas/a$c;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$totalPlanned",
            "val$localExecuted",
            "val$executedRaycasts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/Atlas/a$a;->e:Lorg/ITsMagic/Atlas/a;

    iput-object p2, p0, Lorg/ITsMagic/Atlas/a$a;->a:Lorg/ITsMagic/Atlas/a$c;

    iput p3, p0, Lorg/ITsMagic/Atlas/a$a;->b:I

    iput-object p4, p0, Lorg/ITsMagic/Atlas/a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lorg/ITsMagic/Atlas/a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIFLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executed",
            "total",
            "progress",
            "tda"
        }
    .end annotation

    iget-object p2, p0, Lorg/ITsMagic/Atlas/a$a;->a:Lorg/ITsMagic/Atlas/a$c;

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/ITsMagic/Atlas/a$a;->b:I

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/ITsMagic/Atlas/a$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p2

    const/4 p3, 0x0

    sub-int/2addr p1, p2

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lorg/ITsMagic/Atlas/a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    iget-object p2, p0, Lorg/ITsMagic/Atlas/a$a;->a:Lorg/ITsMagic/Atlas/a$c;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lorg/ITsMagic/Atlas/a$a;->a:Lorg/ITsMagic/Atlas/a$c;

    iget v0, p0, Lorg/ITsMagic/Atlas/a$a;->b:I

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-interface {p3, p1, v0, v1, p4}, Lorg/ITsMagic/Atlas/a$c;->a(IIFLjava/lang/String;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
