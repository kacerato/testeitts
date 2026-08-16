.class public final Lcom/android/tools/r8/ir/optimize/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Sz;


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 6
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/y;->a:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    const/16 v1, 0x14

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x47

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    return p1

    .line 10
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    mul-int/lit8 p1, p1, 0xd

    add-int/2addr p1, v0

    return p1

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F0()Lcom/android/tools/r8/internal/Pf0;

    move-result-object p1

    .line 14
    iget p1, p1, Lcom/android/tools/r8/internal/Pf0;->l:I

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->hashCode(I)I

    move-result p1

    return p1

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R()Lcom/android/tools/r8/internal/ew;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/ew;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    return p1

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    return p1

    .line 20
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E;->hashCode()I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, p1, Lcom/android/tools/r8/internal/bE;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->W0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method
