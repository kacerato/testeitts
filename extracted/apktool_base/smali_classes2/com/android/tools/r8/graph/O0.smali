.class public abstract Lcom/android/tools/r8/graph/O0;
.super Lcom/android/tools/r8/graph/n1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/O0$b;,
        Lcom/android/tools/r8/graph/O0$c;,
        Lcom/android/tools/r8/graph/O0$d;,
        Lcom/android/tools/r8/graph/O0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/graph/n1;",
        "Lcom/android/tools/r8/internal/Mq0<",
        "Lcom/android/tools/r8/graph/O0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:[Lcom/android/tools/r8/graph/O0;

.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/tools/r8/graph/O0;

    sput-object v0, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/graph/n1;-><init>()V

    return-void
.end method


# virtual methods
.method public E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
    .locals 2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O0;->n0()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/O0;->n0()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/tools/r8/internal/pf;->a(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lcom/android/tools/r8/internal/Mq0;Lcom/android/tools/r8/internal/pf;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/dex/X;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/android/tools/r8/dex/u;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    .line 10
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1
.end method

.method public abstract a(Lcom/android/tools/r8/graph/V0;)V
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/dex/M;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/O0;->n0()I

    move-result v0

    move-object v1, p1

    check-cast v1, Lcom/android/tools/r8/internal/tA;

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    .line 8
    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/nA;->a(I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/O0;->c(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public abstract b(Lcom/android/tools/r8/graph/O0;Lcom/android/tools/r8/internal/pf;)I
.end method

.method public abstract c(Lcom/android/tools/r8/internal/rA;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/graph/O0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/tools/r8/graph/O0;

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/Mq0;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k0()Lcom/android/tools/r8/graph/N0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l0()Lcom/android/tools/r8/graph/O0$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method

.method public m0()Lcom/android/tools/r8/graph/S0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract n0()I
.end method

.method public o0()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/graph/N0;

    return v0
.end method
