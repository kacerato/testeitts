.class public final Lcom/google/android/gms/internal/measurement/N1;
.super Lcom/google/android/gms/internal/measurement/m5;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/X5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/O1;->O()Lcom/google/android/gms/internal/measurement/O1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/m5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/N1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/m5;->m()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/O1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/O1;->N(Ljava/lang/String;)V

    return-object p0
.end method
