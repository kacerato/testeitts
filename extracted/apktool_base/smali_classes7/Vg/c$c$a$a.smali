.class public LVg/c$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI5/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVg/c$c$a;->a(Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LIc/N;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:LJAVARuntime/AtomicFloat;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:LVg/c$c$a;


# direct methods
.method public constructor <init>(LVg/c$c$a;LIc/N;Ljava/util/concurrent/atomic/AtomicBoolean;LJAVARuntime/AtomicFloat;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$message",
            "val$finished",
            "val$totalStepLoaded",
            "val$totalLoaded",
            "val$totalLoading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LVg/c$c$a$a;->f:LVg/c$c$a;

    iput-object p2, p0, LVg/c$c$a$a;->a:LIc/N;

    iput-object p3, p0, LVg/c$c$a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, LVg/c$c$a$a;->c:LJAVARuntime/AtomicFloat;

    iput-object p5, p0, LVg/c$c$a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, LVg/c$c$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 3

    invoke-virtual {p0}, LVg/c$c$a$a;->finished()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, LVg/c$c$a$a;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, LVg/c$c$a$a;->b()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    div-float/2addr v1, v0

    invoke-virtual {p0}, LVg/c$c$a$a;->c()F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    return v2
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LVg/c$c$a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public c()F
    .locals 1

    iget-object v0, p0, LVg/c$c$a$a;->c:LJAVARuntime/AtomicFloat;

    invoke-virtual {v0}, LJAVARuntime/AtomicFloat;->get()F

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LVg/c$c$a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public finished()Z
    .locals 1

    iget-object v0, p0, LVg/c$c$a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LVg/c$c$a$a;->a:LIc/N;

    invoke-virtual {v0}, LIc/N;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
