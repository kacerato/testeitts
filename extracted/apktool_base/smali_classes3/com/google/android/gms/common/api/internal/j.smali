.class public Lcom/google/android/gms/common/api/internal/j;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation


# instance fields
.field public final e:Lcom/google/android/gms/common/api/internal/b$b;
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/b$b;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b$b<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/google/android/gms/common/api/internal/b$b;

    return-void
.end method


# virtual methods
.method public Z(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/google/android/gms/common/api/internal/b$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/b$b;->a(Ljava/lang/Object;)V

    return-void
.end method
