.class public final Lcom/google/android/gms/common/api/internal/v;
.super LD0/z;
.source "SourceFile"


# instance fields
.field public final f:Lcom/google/android/gms/common/api/k;
    .annotation runtime Lsm/c;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/k;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, LD0/z;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/v;->f:Lcom/google/android/gms/common/api/k;

    return-void
.end method


# virtual methods
.method public final H(LD0/J0;)V
    .locals 0

    return-void
.end method

.method public final I(LD0/J0;)V
    .locals 0

    return-void
.end method

.method public final l(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "R::",
            "Lcom/google/android/gms/common/api/u;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->f:Lcom/google/android/gms/common/api/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/k;->M(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "+",
            "Lcom/google/android/gms/common/api/u;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->f:Lcom/google/android/gms/common/api/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/k;->S(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final q()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->f:Lcom/google/android/gms/common/api/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->W()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final r()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->f:Lcom/google/android/gms/common/api/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->Z()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
