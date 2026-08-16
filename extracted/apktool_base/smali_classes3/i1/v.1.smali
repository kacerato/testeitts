.class public final synthetic Li1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Li1/z;


# direct methods
.method public synthetic constructor <init>(Li1/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/v;->b:Li1/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Li1/v;->b:Li1/z;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const/4 v2, 0x4

    const-string v3, "Web view timed out."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Li1/z;->g(Lcom/google/android/gms/internal/consent_sdk/zzj;)V

    return-void
.end method
