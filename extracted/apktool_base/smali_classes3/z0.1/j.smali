.class public final Lz0/j;
.super Lz0/e;
.source "SourceFile"


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field public final synthetic g:Lz0/k;


# direct methods
.method public constructor <init>(Lz0/k;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p2, p0, Lz0/j;->e:Landroid/content/Context;

    iput-object p3, p0, Lz0/j;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz0/j;->g:Lz0/k;

    invoke-direct {p0}, Lz0/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final B0(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz0/j;->e:Landroid/content/Context;

    iget-object v1, p0, Lz0/j;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0}, Lz0/r;->a(Landroid/content/Context;)Lz0/r;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lz0/r;->c(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    iget-object v0, p0, Lz0/j;->g:Lz0/k;

    new-instance v1, Ly0/d;

    invoke-direct {v1, p1, p2}, Ly0/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
