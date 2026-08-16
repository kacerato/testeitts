.class public final synthetic Lcom/google/android/gms/measurement/internal/N3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/R3;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/N3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/N3;->c:Lcom/google/android/gms/measurement/internal/o7;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/N3;->d:Lcom/google/android/gms/measurement/internal/g;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/N3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/N3;->c:Lcom/google/android/gms/measurement/internal/o7;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/N3;->d:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/R3;->g1(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V

    return-void
.end method
