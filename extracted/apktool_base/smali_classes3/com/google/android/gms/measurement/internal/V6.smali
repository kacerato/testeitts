.class public final Lcom/google/android/gms/measurement/internal/V6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/X6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/X6;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/V6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/V6;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/V6;->d:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/V6;->e:Lcom/google/android/gms/measurement/internal/X6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/V6;->e:Lcom/google/android/gms/measurement/internal/X6;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/X6;->a:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->N0()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->e()LT0/g;

    move-result-object v2

    invoke-interface {v2}, LT0/g;->a()J

    move-result-wide v6

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/V6;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/V6;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/V6;->d:Landroid/os/Bundle;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v5, "auto"

    move-object v2, v10

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/m7;->R(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/I;

    invoke-virtual {v0, v1, v10}, Lcom/google/android/gms/measurement/internal/c7;->i(Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V

    return-void
.end method
