.class public final Lcom/android/tools/r8/internal/ZP;
.super Lcom/android/tools/r8/internal/SP;
.source "SourceFile"


# instance fields
.field public final a:S


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/SP;-><init>()V

    iput-short p1, p0, Lcom/android/tools/r8/internal/ZP;->a:S

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-short v0, p0, Lcom/android/tools/r8/internal/ZP;->a:S

    new-instance v1, Lcom/android/tools/r8/internal/Qu0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Qu0;-><init>(S)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ZP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ZP;

    iget-short v1, p0, Lcom/android/tools/r8/internal/ZP;->a:S

    iget-short p1, p1, Lcom/android/tools/r8/internal/ZP;->a:S

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-short v0, p0, Lcom/android/tools/r8/internal/ZP;->a:S

    invoke-static {v0}, Lcom/android/tools/r8/internal/Qu0;->a(S)I

    move-result v0

    return v0
.end method
