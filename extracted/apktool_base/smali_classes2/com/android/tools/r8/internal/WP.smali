.class public final Lcom/android/tools/r8/internal/WP;
.super Lcom/android/tools/r8/internal/SP;
.source "SourceFile"


# instance fields
.field public final a:B


# direct methods
.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/SP;-><init>()V

    iput-byte p1, p0, Lcom/android/tools/r8/internal/WP;->a:B

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-byte v0, p0, Lcom/android/tools/r8/internal/WP;->a:B

    new-instance v1, Lcom/android/tools/r8/internal/Mu0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Mu0;-><init>(B)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/WP;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/WP;

    iget-byte v1, p0, Lcom/android/tools/r8/internal/WP;->a:B

    iget-byte p1, p1, Lcom/android/tools/r8/internal/WP;->a:B

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-byte v0, p0, Lcom/android/tools/r8/internal/WP;->a:B

    invoke-static {v0}, Lcom/android/tools/r8/internal/Mu0;->a(B)I

    move-result v0

    return v0
.end method
