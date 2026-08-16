.class public final Lcom/google/android/gms/measurement/internal/H2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/J2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/J2;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/H2;->b:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/H2;->c:Lcom/google/android/gms/measurement/internal/J2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/H2;->c:Lcom/google/android/gms/measurement/internal/J2;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/J2;->c()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/H2;->b:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c7;->r0(Z)V

    return-void
.end method
