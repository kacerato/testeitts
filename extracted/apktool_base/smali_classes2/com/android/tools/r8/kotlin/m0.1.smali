.class public final Lcom/android/tools/r8/kotlin/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/kl0;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/kl0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kl0;-><init>(Z)V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/m0;->a:Lcom/android/tools/r8/internal/kl0;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/m0;->b:Ljava/util/HashMap;

    return-void
.end method
