.class public final Lcom/android/tools/r8/internal/E4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/xt;

.field public b:Lcom/android/tools/r8/internal/F1;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/E4;->a:Lcom/android/tools/r8/internal/xt;

    sget v0, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v0, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/E4;->b:Lcom/android/tools/r8/internal/F1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/E4;->c:Z

    return-void
.end method
