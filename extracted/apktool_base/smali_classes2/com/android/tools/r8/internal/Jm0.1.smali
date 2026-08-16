.class public abstract Lcom/android/tools/r8/internal/Jm0;
.super Lcom/android/tools/r8/internal/Qm0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/z70;
.implements Lcom/android/tools/r8/internal/Gm0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public I()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/Z6;

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Gm0;)Lcom/android/tools/r8/internal/Gm0;
    .locals 0

    if-ne p0, p2, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Jm0;->I()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->l()Lcom/android/tools/r8/internal/Jm0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Jm0;->I()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    return-object p1

    :cond_1
    sget-object p1, Lcom/android/tools/r8/internal/e40;->c:Lcom/android/tools/r8/internal/e40;

    return-object p1
.end method

.method public final asPrimitive()Lcom/android/tools/r8/internal/z70;
    .locals 0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isPrimitive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()Lcom/android/tools/r8/internal/S60;
    .locals 0

    return-object p0
.end method

.method public final l()Lcom/android/tools/r8/internal/Jm0;
    .locals 0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/z70;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/android/tools/r8/internal/Gm0;
    .locals 0

    return-object p0
.end method
