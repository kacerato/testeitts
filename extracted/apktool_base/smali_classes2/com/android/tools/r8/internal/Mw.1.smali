.class public final Lcom/android/tools/r8/internal/Mw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/e80;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/e80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/yg;Lcom/android/tools/r8/internal/yg;)Lcom/android/tools/r8/internal/Q00;
    .locals 7

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 6
    sget-object v5, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    .line 7
    sget-object v6, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/yg;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Iw0;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Bo0;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/internal/ns0;Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Q00;)Lcom/android/tools/r8/internal/Q00;
    .locals 0

    if-nez p5, :cond_1

    .line 13
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Q00;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    instance-of p2, p0, Lcom/android/tools/r8/internal/zv0;

    if-eqz p2, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/android/tools/r8/internal/b2;->a()V

    :cond_0
    return-object p0

    .line 17
    :cond_1
    instance-of p4, p5, Lcom/android/tools/r8/internal/zv0;

    if-eqz p4, :cond_2

    return-object p5

    .line 18
    :cond_2
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Q00;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    instance-of p4, p0, Lcom/android/tools/r8/internal/zv0;

    if-eqz p4, :cond_3

    .line 21
    invoke-interface {p1}, Lcom/android/tools/r8/internal/b2;->a()V

    return-object p0

    .line 22
    :cond_3
    const-string p4, "Join temporary field state"

    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 23
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p4

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Iw0;->c()Lcom/android/tools/r8/internal/yg;

    move-result-object p0

    .line 25
    invoke-interface {p3, p4, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/Q00;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    instance-of p3, p0, Lcom/android/tools/r8/internal/zv0;

    if-eqz p3, :cond_4

    .line 28
    invoke-interface {p1}, Lcom/android/tools/r8/internal/b2;->a()V

    .line 29
    :cond_4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/F5;)Lcom/android/tools/r8/internal/Iw0;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    .line 31
    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 32
    sget-object v1, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 33
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 34
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/tools/r8/internal/Q00;

    if-eqz v0, :cond_0

    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/android/tools/r8/internal/Iw0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/B7;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/ns0;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Mw;->a:Lcom/android/tools/r8/internal/e80;

    new-instance v1, Lcom/android/tools/r8/internal/aN0;

    invoke-direct {v1, p2, p5, p3, p4}, Lcom/android/tools/r8/internal/aN0;-><init>(Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/internal/ns0;Ljava/util/function/BiFunction;)V

    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Pn;->a(Lcom/android/tools/r8/graph/G0;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Iw0;

    .line 11
    sget-boolean p2, Lcom/android/tools/r8/internal/Mw;->b:Z

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Iw0;->d()Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F5;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/android/tools/r8/internal/ZM0;

    invoke-direct {v4, p1, p2}, Lcom/android/tools/r8/internal/ZM0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F5;)V

    .line 2
    sget-object v5, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Mw;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/ns0;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/b2;)Lcom/android/tools/r8/internal/Q00;

    return-void
.end method
