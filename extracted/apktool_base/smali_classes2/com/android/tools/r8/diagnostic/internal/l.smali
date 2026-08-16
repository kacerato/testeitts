.class public final Lcom/android/tools/r8/diagnostic/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/eC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/l;->a:Lcom/android/tools/r8/internal/eC;

    return-void
.end method
