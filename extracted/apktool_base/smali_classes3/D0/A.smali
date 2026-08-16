.class public final LD0/A;
.super LD0/V;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/r;)V
    .locals 0

    iput-object p1, p0, LD0/A;->b:Lcom/google/android/gms/common/api/internal/n;

    invoke-direct {p0, p2}, LD0/V;-><init>(Lcom/google/android/gms/common/api/internal/r;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LD0/A;->b:Lcom/google/android/gms/common/api/internal/n;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/n;->i(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->s:LD0/j0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LD0/j0;->c(Landroid/os/Bundle;)V

    return-void
.end method
