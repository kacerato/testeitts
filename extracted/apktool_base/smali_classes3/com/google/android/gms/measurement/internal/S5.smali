.class public final Lcom/google/android/gms/measurement/internal/S5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/Z5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/Z5;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/S5;->b:Landroid/content/ComponentName;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/S5;->c:Lcom/google/android/gms/measurement/internal/Z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S5;->c:Lcom/google/android/gms/measurement/internal/Z5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/Z5;->e:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S5;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/f6;->K(Landroid/content/ComponentName;)V

    return-void
.end method
