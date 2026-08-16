.class public abstract Lcom/android/tools/r8/graph/J2;
.super Lcom/android/tools/r8/graph/d4;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/YS;


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/d4;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/J2;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p0, Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-interface {p3, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-interface {p4, p0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0
.end method


# virtual methods
.method public abstract S()Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract a(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V
.end method

.method public abstract a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
.end method

.method public abstract b(Lcom/android/tools/r8/graph/J2;)I
.end method

.method public l0()Lcom/android/tools/r8/graph/l1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m0()Lcom/android/tools/r8/graph/v2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n0()Lcom/android/tools/r8/graph/A2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o0()Lcom/android/tools/r8/graph/M2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
