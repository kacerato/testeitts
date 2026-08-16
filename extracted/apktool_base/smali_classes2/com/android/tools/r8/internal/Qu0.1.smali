.class public final Lcom/android/tools/r8/internal/Qu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:S


# direct methods
.method public synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/android/tools/r8/internal/Qu0;->b:S

    return-void
.end method

.method public static a(S)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/Qu0;

    iget-short p1, p1, Lcom/android/tools/r8/internal/Qu0;->b:S

    iget-short v0, p0, Lcom/android/tools/r8/internal/Qu0;->b:S

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/GJ;->a(II)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    iget-short v0, p0, Lcom/android/tools/r8/internal/Qu0;->b:S

    instance-of v1, p1, Lcom/android/tools/r8/internal/Qu0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/Qu0;

    iget-short p1, p1, Lcom/android/tools/r8/internal/Qu0;->b:S

    if-eq v0, p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-short v0, p0, Lcom/android/tools/r8/internal/Qu0;->b:S

    invoke-static {v0}, Ljava/lang/Short;->hashCode(S)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-short v0, p0, Lcom/android/tools/r8/internal/Qu0;->b:S

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
