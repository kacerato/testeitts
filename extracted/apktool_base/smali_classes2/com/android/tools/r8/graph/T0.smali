.class public final Lcom/android/tools/r8/graph/T0;
.super Lcom/android/tools/r8/graph/O0;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/O0;-><init>()V

    return-void
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    const/4 p2, 0x7

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/dex/u;->b(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/V0;)V
    .locals 0

    .line 3
    invoke-interface {p1, p0}, Lcom/android/tools/r8/graph/V0;->a(Lcom/android/tools/r8/graph/T0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    sget-boolean p2, Lcom/android/tools/r8/graph/T0;->d:Z

    if-nez p2, :cond_1

    instance-of p1, p1, Lcom/android/tools/r8/graph/T0;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final n0()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final o0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SET_PROLOGUE_END"

    return-object v0
.end method
