.class public final Lcom/android/tools/r8/internal/U9;
.super Lcom/android/tools/r8/internal/F9;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/F9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xb5

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/U9;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/U9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/gY0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/gY0;-><init>(Lcom/android/tools/r8/internal/U9;)V

    .line 11
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/android/tools/r8/internal/H9;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/O8;Ljava/util/function/BiFunction;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 12
    invoke-interface {p2}, Lcom/android/tools/r8/internal/jy;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/U9;->a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/hv;
    .locals 3

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/hv;->a(ILcom/android/tools/r8/internal/jy;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not assignable to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/hv;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hv;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->c(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 8
    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {p1, p3, p2, v0}, Lcom/android/tools/r8/internal/aB;->b(IILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final h()Lcom/android/tools/r8/internal/U9;
    .locals 0

    return-object p0
.end method
