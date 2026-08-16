.class public final LD0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o;)V
    .locals 0

    iput-object p1, p0, LD0/B;->b:Lcom/google/android/gms/common/api/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LD0/B;->b:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->t(Lcom/google/android/gms/common/api/internal/o;)LB0/i;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->s(Lcom/google/android/gms/common/api/internal/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, LB0/i;->a(Landroid/content/Context;)V

    return-void
.end method
