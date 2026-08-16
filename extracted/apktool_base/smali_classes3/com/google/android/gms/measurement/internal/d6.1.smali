.class public final synthetic Lcom/google/android/gms/measurement/internal/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/f6;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/f6;Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d6;->b:Lcom/google/android/gms/measurement/internal/f6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/d6;->c:Lcom/google/android/gms/measurement/internal/o7;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/d6;->d:Lcom/google/android/gms/measurement/internal/g;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d6;->b:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d6;->c:Lcom/google/android/gms/measurement/internal/o7;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d6;->d:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f6;->I(Lcom/google/android/gms/measurement/internal/o7;Lcom/google/android/gms/measurement/internal/g;)V

    return-void
.end method
