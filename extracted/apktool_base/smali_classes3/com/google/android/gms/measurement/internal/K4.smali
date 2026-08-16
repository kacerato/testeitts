.class public final Lcom/google/android/gms/measurement/internal/K4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/Z3;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b5;Lcom/google/android/gms/measurement/internal/Z3;JZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/K4;->b:Lcom/google/android/gms/measurement/internal/Z3;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/K4;->c:J

    iput-boolean p5, p0, Lcom/google/android/gms/measurement/internal/K4;->d:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/K4;->e:Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/K4;->e:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/K4;->b:Lcom/google/android/gms/measurement/internal/Z3;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b5;->o(Lcom/google/android/gms/measurement/internal/Z3;)V

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/K4;->d:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/K4;->c:J

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/b5;->X(Lcom/google/android/gms/measurement/internal/Z3;JZZ)V

    return-void
.end method
