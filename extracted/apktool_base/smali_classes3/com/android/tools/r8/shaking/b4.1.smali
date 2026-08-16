.class public final Lcom/android/tools/r8/shaking/b4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/b4;->a:Z

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    return-void
.end method
