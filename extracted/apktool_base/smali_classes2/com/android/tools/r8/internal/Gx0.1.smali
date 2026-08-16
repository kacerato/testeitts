.class public abstract Lcom/android/tools/r8/internal/Gx0;
.super Lcom/android/tools/r8/internal/Qm0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/z70;
.implements Lcom/android/tools/r8/internal/Fx0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract I()Lcom/android/tools/r8/internal/Gx0;
.end method

.method public abstract J()Lcom/android/tools/r8/internal/Gx0;
.end method

.method public final a(Lcom/android/tools/r8/internal/Fx0;)Lcom/android/tools/r8/internal/Fx0;
    .locals 0

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/qt0;->c:Lcom/android/tools/r8/internal/qt0;

    return-object p1
.end method

.method public final asPrimitive()Lcom/android/tools/r8/internal/z70;
    .locals 0

    return-object p0
.end method

.method public final e()Lcom/android/tools/r8/internal/Gx0;
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

.method public final n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/z70;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/android/tools/r8/internal/Fx0;
    .locals 0

    return-object p0
.end method

.method public final v()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
