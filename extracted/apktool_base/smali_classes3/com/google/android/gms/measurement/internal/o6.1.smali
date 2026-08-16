.class public final Lcom/google/android/gms/measurement/internal/o6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/x6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/x6;J)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/o6;->b:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o6;->c:Lcom/google/android/gms/measurement/internal/x6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o6;->c:Lcom/google/android/gms/measurement/internal/x6;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/o6;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/x6;->r(J)V

    return-void
.end method
