.class public final Lcom/google/android/gms/measurement/internal/r4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Landroid/os/Bundle;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b5;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/r4;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/r4;->d:J

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/r4;->e:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/r4;->f:Z

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Z

    iput-boolean p9, p0, Lcom/google/android/gms/measurement/internal/r4;->h:Z

    iput-object p10, p0, Lcom/google/android/gms/measurement/internal/r4;->i:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r4;->j:Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r4;->j:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/r4;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/r4;->d:J

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/r4;->e:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/r4;->f:Z

    iget-boolean v7, p0, Lcom/google/android/gms/measurement/internal/r4;->g:Z

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/r4;->h:Z

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/r4;->i:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/measurement/internal/b5;->v(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
