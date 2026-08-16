.class public final Lcom/google/android/gms/internal/auth/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/b$a;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;

.field public c:Lx0/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/X;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Lx0/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/X;->c:Lx0/e;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/X;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/X;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final l()Lx0/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/X;->c:Lx0/e;

    return-object v0
.end method
