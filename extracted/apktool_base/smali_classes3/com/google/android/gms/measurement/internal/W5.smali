.class public final synthetic Lcom/google/android/gms/measurement/internal/W5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/Y5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/Y5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/W5;->b:Lcom/google/android/gms/measurement/internal/Y5;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/W5;->b:Lcom/google/android/gms/measurement/internal/Y5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/Y5;->c:Lcom/google/android/gms/measurement/internal/Z5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/Z5;->e:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/X5;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/X5;-><init>(Lcom/google/android/gms/measurement/internal/f6;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method
