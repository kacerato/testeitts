.class public final Lcom/android/tools/r8/internal/bF;
.super Lcom/android/tools/r8/internal/fF;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/PH;


# instance fields
.field public final synthetic h:Lcom/android/tools/r8/internal/hF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/bF;->h:Lcom/android/tools/r8/internal/hF;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/fF;-><init>(Lcom/android/tools/r8/internal/hF;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bF;->h:Lcom/android/tools/r8/internal/hF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fF;->a()I

    move-result v1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final r()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/bF;->h:Lcom/android/tools/r8/internal/hF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/hF;->c:[I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fF;->a()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
