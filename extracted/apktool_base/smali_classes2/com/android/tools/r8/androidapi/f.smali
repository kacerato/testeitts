.class public interface abstract Lcom/android/tools/r8/androidapi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ev;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/androidapi/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/tools/r8/internal/ev<",
        "Lcom/android/tools/r8/androidapi/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/androidapi/e;->a:Z

    return-void
.end method


# virtual methods
.method public F()Lcom/android/tools/r8/androidapi/f$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lcom/android/tools/r8/androidapi/f;->d(Lcom/android/tools/r8/androidapi/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public abstract a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;
.end method

.method public abstract b(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/internal/t40;
.end method

.method public b(Lcom/android/tools/r8/androidapi/f;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/androidapi/e;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot compute relationship for not set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_2
    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->U()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    if-nez v0, :cond_5

    .line 4
    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_5
    :goto_1
    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->F()Lcom/android/tools/r8/androidapi/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/androidapi/f$a;->a()Lcom/android/tools/r8/internal/C2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/android/tools/r8/androidapi/f;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/android/tools/r8/androidapi/f;)Z
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/androidapi/e;->a:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot compute relationship for not set"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0, p1}, Lcom/android/tools/r8/androidapi/f;->b(Lcom/android/tools/r8/androidapi/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract e(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/internal/t40;
.end method

.method public bridge synthetic isEqualTo(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/tools/r8/androidapi/f;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/androidapi/f;->c(Lcom/android/tools/r8/androidapi/f;)Z

    move-result p1

    return p1
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
