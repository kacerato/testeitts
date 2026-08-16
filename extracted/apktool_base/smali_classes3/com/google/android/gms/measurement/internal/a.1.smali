.class public final Lcom/google/android/gms/measurement/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/E0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/E0;Ljava/lang/String;J)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/a;->c:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->d:Lcom/google/android/gms/measurement/internal/E0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->d:Lcom/google/android/gms/measurement/internal/E0;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/E0;->l(Ljava/lang/String;J)V

    return-void
.end method
