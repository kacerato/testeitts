.class public final LM0/x;
.super LM0/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Lv1/l;

.field public final synthetic g:LL0/a;

.field public final synthetic h:LM0/B;


# direct methods
.method public constructor <init>(LM0/B;Ljava/util/concurrent/atomic/AtomicReference;Lv1/l;LL0/a;)V
    .locals 0

    iput-object p1, p0, LM0/x;->h:LM0/B;

    iput-object p2, p0, LM0/x;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, LM0/x;->f:Lv1/l;

    iput-object p4, p0, LM0/x;->g:LL0/a;

    invoke-direct {p0}, LM0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final K0(Lcom/google/android/gms/common/api/Status;LL0/g;)V
    .locals 2
    .param p2    # LL0/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object v0, p0, LM0/x;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, LM0/x;->f:Lv1/l;

    invoke-static {p1, v0, v1}, LD0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, LL0/g;->b0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, LM0/x;->h:LM0/B;

    iget-object p2, p0, LM0/x;->g:LL0/a;

    const-class v0, LL0/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object p2

    const/16 v0, 0x6aaa

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/api/k;->R(Lcom/google/android/gms/common/api/internal/f$a;I)Lv1/k;

    return-void
.end method
