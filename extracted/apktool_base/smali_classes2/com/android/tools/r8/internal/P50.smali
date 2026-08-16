.class public final Lcom/android/tools/r8/internal/P50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/E1;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/tj;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/tj;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/tj;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Sw;Lcom/android/tools/r8/internal/bX;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/P50;->a:Lcom/android/tools/r8/internal/tj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 13
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/O50;

    .line 14
    new-instance p1, Lcom/android/tools/r8/internal/rg;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/rg;-><init>()V

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;Ljava/lang/Object;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/D1;
    .locals 0

    .line 11
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p4, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/zE;

    check-cast p3, Lcom/android/tools/r8/internal/O50;

    .line 12
    sget-object p1, Lcom/android/tools/r8/internal/xv0;->b:Lcom/android/tools/r8/internal/xv0;

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/D1;
    .locals 2

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/W5;

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    check-cast p3, Lcom/android/tools/r8/internal/O50;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p3, Lcom/android/tools/r8/internal/xv0;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/P50;->a:Lcom/android/tools/r8/internal/tj;

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Pf;->a(Lcom/android/tools/r8/internal/GE;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ZC;->isUnknown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/O50;->a(Lcom/android/tools/r8/internal/Vf;Z)Lcom/android/tools/r8/internal/O50;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    return-object p3
.end method

.method public final a(Lcom/android/tools/r8/internal/I;Lcom/android/tools/r8/internal/D1;)Lcom/android/tools/r8/internal/Os0;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/zE;

    check-cast p2, Lcom/android/tools/r8/internal/O50;

    return-object p2
.end method
