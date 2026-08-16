.class public final synthetic Lcom/google/android/gms/measurement/internal/M3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/R3;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/J6;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/o2;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;Lcom/google/android/gms/measurement/internal/o2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/M3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/M3;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/M3;->d:Lcom/google/android/gms/measurement/internal/J6;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/M3;->e:Lcom/google/android/gms/measurement/internal/o2;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/M3;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/M3;->d:Lcom/google/android/gms/measurement/internal/J6;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/M3;->e:Lcom/google/android/gms/measurement/internal/o2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/R3;->f1(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/J6;Lcom/google/android/gms/measurement/internal/o2;)V

    return-void
.end method
