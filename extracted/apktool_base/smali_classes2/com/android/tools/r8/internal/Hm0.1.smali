.class public final Lcom/android/tools/r8/internal/Hm0;
.super Lcom/android/tools/r8/internal/Bm0;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Hm0;

.field public static final synthetic d:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Hm0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Hm0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Hm0;->c:Lcom/android/tools/r8/internal/Hm0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Bm0;-><init>()V

    return-void
.end method


# virtual methods
.method public final O()Lcom/android/tools/r8/internal/Hm0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final bridge synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/SD;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Hm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)Lcom/android/tools/r8/internal/qh;
    .locals 3

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/Hm0;->d:Z

    if-nez v0, :cond_1

    invoke-interface {p3}, Lcom/android/tools/r8/internal/DV;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-interface {p3}, Lcom/android/tools/r8/internal/DV;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/tools/r8/internal/qh;->m:Z

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/ph;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ph;-><init>()V

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v1

    invoke-interface {p3}, Lcom/android/tools/r8/internal/DV;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    .line 11
    invoke-interface {p2, v1, v2}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 12
    iput-object p2, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 13
    invoke-interface {p3}, Lcom/android/tools/r8/internal/DV;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/ph;

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ph;->c()Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/internal/Hm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)Lcom/android/tools/r8/internal/qh;

    move-result-object p1

    const/4 p2, 0x1

    .line 6
    new-array p2, p2, [Lcom/android/tools/r8/internal/zE;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    return-object p2
.end method

.method public final bridge synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/F1;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Hm0;->c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/Pm0;
    .locals 0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->L0()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->t:Lcom/android/tools/r8/internal/G1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/G1;->a()Lcom/android/tools/r8/internal/Im0;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SingleNullValue"

    return-object v0
.end method
