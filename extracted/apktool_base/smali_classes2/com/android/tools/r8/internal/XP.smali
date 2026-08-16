.class public final Lcom/android/tools/r8/internal/XP;
.super Lcom/android/tools/r8/internal/SP;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/SP;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/XP;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/XP;->a:I

    new-instance v1, Lcom/android/tools/r8/internal/Nu0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Nu0;-><init>(I)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/XP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/XP;

    iget v1, p0, Lcom/android/tools/r8/internal/XP;->a:I

    iget p1, p1, Lcom/android/tools/r8/internal/XP;->a:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/XP;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/internal/Nu0;->a(I)I

    move-result v0

    return v0
.end method
