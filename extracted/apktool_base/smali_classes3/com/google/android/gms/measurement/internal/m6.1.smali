.class public final synthetic Lcom/google/android/gms/measurement/internal/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/n6;

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/B2;

.field public final synthetic e:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/n6;ILcom/google/android/gms/measurement/internal/B2;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m6;->b:Lcom/google/android/gms/measurement/internal/n6;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/m6;->c:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/m6;->d:Lcom/google/android/gms/measurement/internal/B2;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/m6;->e:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m6;->b:Lcom/google/android/gms/measurement/internal/n6;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/m6;->c:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/m6;->d:Lcom/google/android/gms/measurement/internal/B2;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/m6;->e:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/n6;->f(ILcom/google/android/gms/measurement/internal/B2;Landroid/content/Intent;)V

    return-void
.end method
