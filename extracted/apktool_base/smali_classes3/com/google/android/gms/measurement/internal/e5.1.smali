.class public final synthetic Lcom/google/android/gms/measurement/internal/e5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/f5;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Exception;

.field public final synthetic e:[B

.field public final synthetic f:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/f5;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e5;->b:Lcom/google/android/gms/measurement/internal/f5;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/e5;->c:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/e5;->d:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/e5;->e:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/e5;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e5;->b:Lcom/google/android/gms/measurement/internal/f5;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/e5;->c:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/e5;->d:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/e5;->e:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/e5;->f:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/f5;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
