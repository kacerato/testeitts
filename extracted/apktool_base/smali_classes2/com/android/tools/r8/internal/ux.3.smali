.class public final Lcom/android/tools/r8/internal/ux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/ux;->a:I

    iput p2, p0, Lcom/android/tools/r8/internal/ux;->b:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/ux;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/xx;I)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p1, Lcom/android/tools/r8/internal/xx;->a:I

    iget p1, p1, Lcom/android/tools/r8/internal/xx;->b:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/tools/r8/internal/ux;->a:I

    iput p1, p0, Lcom/android/tools/r8/internal/ux;->b:I

    iput p2, p0, Lcom/android/tools/r8/internal/ux;->c:I

    return-void
.end method
