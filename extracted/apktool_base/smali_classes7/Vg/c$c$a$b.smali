.class public LVg/c$c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVg/c$c$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Lq7/a;

.field public final synthetic c:LIc/N;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:LJAVARuntime/AtomicFloat;

.field public final synthetic g:LVg/c$c$a;


# direct methods
.method public constructor <init>(LVg/c$c$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lq7/a;LIc/N;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;LJAVARuntime/AtomicFloat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$finished",
            "val$loading",
            "val$message",
            "val$totalLoaded",
            "val$totalLoading",
            "val$totalStepLoaded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVg/c$c$a$b;->g:LVg/c$c$a;

    iput-object p2, p0, LVg/c$c$a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, LVg/c$c$a$b;->b:Lq7/a;

    iput-object p4, p0, LVg/c$c$a$b;->c:LIc/N;

    iput-object p5, p0, LVg/c$c$a$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, LVg/c$c$a$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, LVg/c$c$a$b;->f:LJAVARuntime/AtomicFloat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    iget-object v0, p0, LVg/c$c$a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "Ops!"

    invoke-static {v0, p1}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, LVg/c$c$a$b;->b:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObjectFile"
        }
    .end annotation

    iget-object v0, p0, LVg/c$c$a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, LVg/c$c$a$b$a;

    invoke-direct {v0, p0, p1}, LVg/c$c$a$b$a;-><init>(LVg/c$c$a$b;Ljava/io/File;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    iget-object p1, p0, LVg/c$c$a$b;->b:Lq7/a;

    invoke-virtual {p1}, Lq7/a;->p1()V

    return-void
.end method

.method public c(ILjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "percentage",
            "str",
            "executed",
            "total"
        }
    .end annotation

    iget-object v0, p0, LVg/c$c$a$b;->b:Lq7/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "% "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->f1(Ljava/lang/String;)V

    iget-object p1, p0, LVg/c$c$a$b;->c:LIc/N;

    invoke-virtual {p1, p2}, LIc/N;->e(Ljava/lang/Object;)V

    iget-object p1, p0, LVg/c$c$a$b;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, LVg/c$c$a$b;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, LVg/c$c$a$b;->f:LJAVARuntime/AtomicFloat;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, LJAVARuntime/AtomicFloat;->set(F)V

    return-void
.end method
