.class public final Lcom/android/tools/r8/internal/pd0;
.super Lcom/android/tools/r8/internal/od0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/PH;


# instance fields
.field public final synthetic h:Lcom/android/tools/r8/internal/qd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/qd0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/pd0;->h:Lcom/android/tools/r8/internal/qd0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/od0;-><init>(Lcom/android/tools/r8/internal/qd0;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pd0;->h:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->d:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/od0;->a()I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/pd0;->h:Lcom/android/tools/r8/internal/qd0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/qd0;->d:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/od0;->a()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
