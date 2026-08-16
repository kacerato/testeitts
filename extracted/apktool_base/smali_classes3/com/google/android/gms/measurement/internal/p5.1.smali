.class public final Lcom/google/android/gms/measurement/internal/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/u5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u5;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p5;->b:Lcom/google/android/gms/measurement/internal/u5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p5;->b:Lcom/google/android/gms/measurement/internal/u5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u5;->D()Lcom/google/android/gms/measurement/internal/m5;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    return-void
.end method
