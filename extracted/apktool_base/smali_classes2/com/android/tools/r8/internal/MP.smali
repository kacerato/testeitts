.class public final Lcom/android/tools/r8/internal/MP;
.super Lcom/android/tools/r8/internal/SP;
.source "SourceFile"


# instance fields
.field public final a:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/SP;-><init>()V

    iput-char p1, p0, Lcom/android/tools/r8/internal/MP;->a:C

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/internal/MP;->a:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/MP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/MP;

    iget-char v1, p0, Lcom/android/tools/r8/internal/MP;->a:C

    iget-char p1, p1, Lcom/android/tools/r8/internal/MP;->a:C

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/internal/MP;->a:C

    invoke-static {v0}, Ljava/lang/Character;->hashCode(C)I

    move-result v0

    return v0
.end method
