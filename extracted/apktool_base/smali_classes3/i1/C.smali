.class public final Li1/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li1/p0<",
            "Li1/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li1/E;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li1/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/p0<",
            "Li1/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Li1/C;->a:Li1/p0;

    return-void
.end method


# virtual methods
.method public final a(Lu2/f$b;Lu2/f$a;)V
    .locals 2

    invoke-static {}, Li1/h0;->a()V

    iget-object v0, p0, Li1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li1/E;

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const/4 v0, 0x3

    const-string v1, "No available form can be built."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()Lu2/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lu2/f$a;->b(Lu2/e;)V

    return-void

    :cond_0
    iget-object v1, p0, Li1/C;->a:Li1/p0;

    invoke-interface {v1}, Li1/p0;->O1()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v1, v0}, Li1/t;->a(Li1/E;)Li1/t;

    invoke-interface {v1}, Li1/t;->O1()Li1/u;

    move-result-object v0

    invoke-interface {v0}, Li1/u;->N1()Li1/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Li1/z;->c(Lu2/f$b;Lu2/f$a;)V

    return-void
.end method

.method public final b(Li1/E;)V
    .locals 1

    iget-object v0, p0, Li1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Li1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
