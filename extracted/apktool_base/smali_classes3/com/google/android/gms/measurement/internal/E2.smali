.class public final Lcom/google/android/gms/measurement/internal/E2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/measurement/internal/D2;

.field public final c:I

.field public final d:Ljava/lang/Throwable;

.field public final e:[B

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/D2;ILjava/lang/Throwable;[BLjava/util/Map;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/E2;->b:Lcom/google/android/gms/measurement/internal/D2;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/E2;->c:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/E2;->d:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/E2;->e:[B

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/E2;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/E2;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/E2;->b:Lcom/google/android/gms/measurement/internal/D2;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/E2;->f:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/E2;->c:I

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/E2;->d:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/E2;->e:[B

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/E2;->g:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/D2;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
