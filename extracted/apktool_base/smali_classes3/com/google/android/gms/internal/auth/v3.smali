.class public final Lcom/google/android/gms/internal/auth/v3;
.super Lcom/google/android/gms/internal/auth/m3;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/c;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/v3;->e:Lv1/l;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/m3;-><init>()V

    return-void
.end method


# virtual methods
.method public final s(Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/v3;->e:Lv1/l;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/auth/c;->g0(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)V

    return-void
.end method
