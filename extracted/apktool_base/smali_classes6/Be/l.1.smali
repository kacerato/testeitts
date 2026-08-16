.class public abstract LBe/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhn/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lhn/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, LBe/l;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A0(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LBe/l;->B0(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static A3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static A8(Lhn/b;Lhn/b;Lhn/b;LFe/h;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "LFe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LHe/a;->y(LFe/h;)LFe/o;

    move-result-object p3

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {p3, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B0(Lhn/b;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/l;->U0(LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B8(Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/i;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "LFe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LHe/a;->z(LFe/i;)LFe/o;

    move-result-object p4

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {p4, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C0(Lhn/b;Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/l;->G0([Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C6(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->r6(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C8(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/j;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "LFe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LHe/a;->A(LFe/j;)LFe/o;

    move-result-object p5

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-static {p5, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D0(Lhn/b;Lhn/b;Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/l;->G0([Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D1(Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/I;

    invoke-direct {v0, p0}, LLe/I;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D6(Lhn/b;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/l;->s6(LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D8(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/k;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "LFe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p6}, LHe/a;->B(LFe/k;)LFe/o;

    move-result-object p6

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    invoke-static {p6, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Lhn/b;Lhn/b;Lhn/b;Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/l;->G0([Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E6(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LBe/l;->F6(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E8(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/l;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "Lhn/b<",
            "+TT7;>;",
            "LFe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p7}, LHe/a;->C(LFe/l;)LFe/o;

    move-result-object p7

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x7

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    invoke-static {p7, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Ljava/lang/Iterable;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LBe/l;->b1(LFe/o;IZ)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F6(Lhn/b;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/l;->x6(LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F8(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/m;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "Lhn/b<",
            "+TT7;>;",
            "Lhn/b<",
            "+TT8;>;",
            "LFe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p8}, LHe/a;->D(LFe/m;)LFe/o;

    move-result-object p8

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    invoke-static {p8, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs G0([Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget-object p0, p0, v2

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LLe/v;

    invoke-direct {v0, p0, v2}, LLe/v;-><init>([Lhn/b;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item10 is null"

    invoke-static {p9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array/range {p0 .. p9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G5(Lhn/b;Lhn/b;)LBe/K;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, LBe/l;->J5(Lhn/b;Lhn/b;LFe/d;I)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static G8(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/n;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "Lhn/b<",
            "+TT7;>;",
            "Lhn/b<",
            "+TT8;>;",
            "Lhn/b<",
            "+TT9;>;",
            "LFe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p9}, LHe/a;->E(LFe/n;)LFe/o;

    move-result-object p9

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/16 v1, 0x9

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    const/4 p0, 0x5

    aput-object p5, v1, p0

    const/4 p0, 0x6

    aput-object p6, v1, p0

    const/4 p0, 0x7

    aput-object p7, v1, p0

    const/16 p0, 0x8

    aput-object p8, v1, p0

    invoke-static {p9, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs H0([Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LLe/v;

    invoke-direct {v0, p0, v1}, LLe/v;-><init>([Lhn/b;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static H5(Lhn/b;Lhn/b;I)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;I)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, LBe/l;->J5(Lhn/b;Lhn/b;LFe/d;I)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static H8(Ljava/lang/Iterable;LFe/o;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/a2;

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, LLe/a2;-><init>([Lhn/b;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs I0(II[Lhn/b;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p0, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/x;

    new-instance v2, LLe/h0;

    invoke-direct {v2, p2}, LLe/h0;-><init>([Ljava/lang/Object;)V

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move v4, p0

    move v5, p1

    invoke-direct/range {v1 .. v6}, LLe/x;-><init>(LBe/l;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static I5(Lhn/b;Lhn/b;LFe/d;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, LBe/l;->J5(Lhn/b;Lhn/b;LFe/d;I)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs I8(LFe/o;ZI[Lhn/b;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    array-length v0, p3

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/a2;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v4, p0

    move v5, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, LLe/a2;-><init>([Lhn/b;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs J0([Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-static {v0, v1, p0}, LBe/l;->I0(II[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static J5(Lhn/b;Lhn/b;LFe/d;I)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;I)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "isEqual is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/o1;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/o1;-><init>(Lhn/b;Lhn/b;LFe/d;I)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static J8(Ljava/lang/Iterable;LFe/o;ZI)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/a2;

    const/4 v2, 0x0

    move-object v1, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move v6, p2

    invoke-direct/range {v1 .. v6}, LLe/a2;-><init>([Lhn/b;Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs K0(II[Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p2

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, p1, v1}, LBe/l;->e1(LFe/o;IIZ)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs L0([Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-static {v0, v1, p0}, LBe/l;->K0(II[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static M0(Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, LBe/l;->N0(Lhn/b;IZ)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static N0(Lhn/b;IZ)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;IZ)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, LBe/l;->b1(LFe/o;IZ)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Ljava/lang/Iterable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->a1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static O3(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LBe/l;->P3(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P0(Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-static {p0, v0, v1}, LBe/l;->Q0(Lhn/b;II)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P3(Lhn/b;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/l;->u2(LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static P4(II)LBe/l;
    .locals 4
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LBe/l<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-ltz p1, :cond_3

    if-nez p1, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, LBe/l;->x3(Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v0, p0

    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    new-instance v0, LLe/U0;

    invoke-direct {v0, p0, p1}, LLe/U0;-><init>(II)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Integer overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Q0(Lhn/b;II)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;II)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/y;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, LLe/y;-><init>(Lhn/b;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Q3(Lhn/b;Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Q4(JJ)LBe/l;
    .locals 5
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_4

    if-nez v2, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v4, p2, v2

    if-nez v4, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, LBe/l;->x3(Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    sub-long v2, p2, v2

    add-long/2addr v2, p0

    cmp-long v4, p0, v0

    if-lez v4, :cond_3

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    new-instance v0, LLe/V0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/V0;-><init>(JJ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "count >= 0 required but it was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static R0(Ljava/lang/Iterable;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-static {p0, v0, v1}, LBe/l;->S0(Ljava/lang/Iterable;II)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static R3(Lhn/b;Lhn/b;Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    invoke-static {v1}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static S0(Ljava/lang/Iterable;II)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;II)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/x;

    new-instance v2, LLe/k0;

    invoke-direct {v2, p0}, LLe/k0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v3

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, LLe/x;-><init>(LBe/l;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static S3(Lhn/b;Lhn/b;Lhn/b;Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    invoke-static {v1}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs T2([Ljava/lang/Object;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "items is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/l;->x3(Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LLe/h0;

    invoke-direct {v0, p0}, LLe/h0;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static T3(Ljava/lang/Iterable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->t2(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static T7(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->NONE:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LBe/l;

    if-nez v0, :cond_0

    new-instance v0, LLe/m0;

    invoke-direct {v0, p0}, LLe/m0;-><init>(Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Flowable) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static U2(Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/i0;

    invoke-direct {v0, p0}, LLe/i0;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static U3(Ljava/lang/Iterable;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/l;->u2(LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static V2(Ljava/util/concurrent/Future;)LBe/l;
    .locals 4
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/j0;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, LLe/j0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static V3(Ljava/lang/Iterable;II)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;II)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static V7(Ljava/util/concurrent/Callable;LFe/o;LFe/g;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LFe/o<",
            "-TD;+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/g<",
            "-TD;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LBe/l;->W7(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static W2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/j0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/j0;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs W3(II[Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p2

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0, p1}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static W7(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TD;>;",
            "LFe/o<",
            "-TD;+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/g<",
            "-TD;>;Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sourceSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resourceDisposer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/S1;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/S1;-><init>(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static X2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, LBe/l;->W2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LBe/l;

    move-result-object p0

    invoke-virtual {p0, p4}, LBe/l;->n6(LBe/J;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs X3([Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object v0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    array-length p0, p0

    invoke-virtual {v0, v1, p0}, LBe/l;->u2(LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Y2(Ljava/util/concurrent/Future;LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "+TT;>;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/l;->V2(Ljava/util/concurrent/Future;)LBe/l;

    move-result-object p0

    invoke-virtual {p0, p1}, LBe/l;->n6(LBe/J;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Y3(II[Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p2}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p2

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, p0, p1}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static Z2(Ljava/lang/Iterable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/k0;

    invoke-direct {v0, p0}, LLe/k0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs Z3([Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object v0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    const/4 v2, 0x1

    array-length p0, p0

    invoke-virtual {v0, v1, v2, p0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static a0()I
    .locals 1

    sget v0, LBe/l;->b:I

    return v0
.end method

.method public static a3(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LBe/l;

    if-eqz v0, :cond_0

    check-cast p0, LBe/l;

    invoke-static {p0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/m0;

    invoke-direct {v0, p0}, LLe/m0;-><init>(Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static a4(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, v0}, LBe/l;->b4(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static b3(LFe/g;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/g<",
            "LBe/k<",
            "TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, LHe/a;->u()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p0}, LLe/t0;->j(LFe/g;)LFe/c;

    move-result-object p0

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    invoke-static {v0, p0, v1}, LBe/l;->f3(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static b4(Lhn/b;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static c3(Ljava/util/concurrent/Callable;LFe/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/b<",
            "TS;",
            "LBe/k<",
            "TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LLe/t0;->i(LFe/b;)LFe/c;

    move-result-object p1

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LBe/l;->f3(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static c4(Lhn/b;Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static d3(Ljava/util/concurrent/Callable;LFe/b;LFe/g;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/b<",
            "TS;",
            "LBe/k<",
            "TT;>;>;",
            "LFe/g<",
            "-TS;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LLe/t0;->i(LFe/b;)LFe/c;

    move-result-object p1

    invoke-static {p0, p1, p2}, LBe/l;->f3(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static d4(Lhn/b;Lhn/b;Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v1, v0, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-static {v1}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Iterable;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LLe/h;-><init>([Lhn/b;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static e3(Ljava/util/concurrent/Callable;LFe/c;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/c<",
            "TS;",
            "LBe/k<",
            "TT;>;TS;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {p0, p1, v0}, LBe/l;->f3(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static e4(Lhn/b;Lhn/b;Lhn/b;Lhn/b;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v1, v0, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-static {v1}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object p2

    invoke-virtual {p1, p2, p0, v0}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs f([Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LLe/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LLe/h;-><init>([Lhn/b;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static f3(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TS;>;",
            "LFe/c<",
            "TS;",
            "LBe/k<",
            "TT;>;TS;>;",
            "LFe/g<",
            "-TS;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialState is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "generator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposeState is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/n0;

    invoke-direct {v0, p0, p1, p2}, LLe/n0;-><init>(Ljava/util/concurrent/Callable;LFe/c;LFe/g;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static f4(Ljava/lang/Iterable;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LBe/l;->C2(LFe/o;Z)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs g0(LFe/o;[Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p1, p0, v0}, LBe/l;->s0([Lhn/b;LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static g4(Ljava/lang/Iterable;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LBe/l;->D2(LFe/o;ZI)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static h0(Lhn/b;Lhn/b;LFe/c;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static h4(Ljava/lang/Iterable;II)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;II)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static i0(Lhn/b;Lhn/b;Lhn/b;LFe/h;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "LFe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LHe/a;->y(LFe/h;)LFe/o;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/i;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "LFe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LHe/a;->z(LFe/i;)LFe/o;

    move-result-object p4

    const/4 v0, 0x4

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/j;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "LFe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LHe/a;->A(LFe/j;)LFe/o;

    move-result-object p5

    const/4 v0, 0x5

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    invoke-static {p5, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/k;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "LFe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p6}, LHe/a;->B(LFe/k;)LFe/o;

    move-result-object p6

    const/4 v0, 0x6

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    invoke-static {p6, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/l;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "Lhn/b<",
            "+TT7;>;",
            "LFe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p7}, LHe/a;->C(LFe/l;)LFe/o;

    move-result-object p7

    const/4 v0, 0x7

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    invoke-static {p7, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static m2()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LLe/X;->c:LBe/l;

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public static m4()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LLe/J0;->c:LBe/l;

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public static n0(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/m;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "Lhn/b<",
            "+TT7;>;",
            "Lhn/b<",
            "+TT8;>;",
            "LFe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p8}, LHe/a;->D(LFe/m;)LFe/o;

    move-result-object p8

    const/16 v0, 0x8

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    invoke-static {p8, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static n2(Ljava/lang/Throwable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "throwable is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LHe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LBe/l;->o2(Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/n;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "Lhn/b<",
            "+TT3;>;",
            "Lhn/b<",
            "+TT4;>;",
            "Lhn/b<",
            "+TT5;>;",
            "Lhn/b<",
            "+TT6;>;",
            "Lhn/b<",
            "+TT7;>;",
            "Lhn/b<",
            "+TT8;>;",
            "Lhn/b<",
            "+TT9;>;",
            "LFe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source5 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source6 is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source7 is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source8 is null"

    invoke-static {p7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source9 is null"

    invoke-static {p8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p9}, LHe/a;->E(LFe/n;)LFe/o;

    move-result-object p9

    const/16 v0, 0x9

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    const/4 p0, 0x6

    aput-object p6, v0, p0

    const/4 p0, 0x7

    aput-object p7, v0, p0

    const/16 p0, 0x8

    aput-object p8, v0, p0

    invoke-static {p9, v0}, LBe/l;->g0(LFe/o;[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static o2(Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "supplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Y;

    invoke-direct {v0, p0}, LLe/Y;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Ljava/lang/Iterable;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/l;->q0(Ljava/lang/Iterable;LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p3(JJLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, LBe/l;->q3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q0(Ljava/lang/Iterable;LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LLe/u;-><init>(Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/u0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object v1, v0

    move-wide v2, p0

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LLe/u0;-><init>(JJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r0([Lhn/b;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/l;->s0([Lhn/b;LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r3(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, LBe/l;->q3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s0([Lhn/b;LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LLe/u;-><init>([Lhn/b;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s3(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, LBe/l;->q3(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs t0(LFe/o;I[Lhn/b;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p2, p0, p1}, LBe/l;->y0([Lhn/b;LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static t3(JJJJLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 10
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v9

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, LBe/l;->u3(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public static varargs u0(LFe/o;[Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;[",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p1, p0, v0}, LBe/l;->y0([Lhn/b;LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static u3(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 16
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v9, v10}, LBe/l;->F1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    add-long v6, p0, v0

    cmp-long v0, p0, v4

    if-lez v0, :cond_2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Overflow! start + count is bigger than Long.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const-string v0, "unit is null"

    invoke-static {v9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {v10, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v11, LLe/v0;

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-wide/from16 v0, p6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object v0, v11

    move-wide/from16 v1, p0

    move-wide v3, v6

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, LLe/v0;-><init>(JJJJLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v11}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static v0(Ljava/lang/Iterable;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/l;->w0(Ljava/lang/Iterable;LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w0(Ljava/lang/Iterable;LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LLe/u;-><init>(Ljava/lang/Iterable;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w7(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LBe/l;->x7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w8(Lhn/b;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+",
            "Lhn/b<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-virtual {p0}, LBe/l;->E7()LBe/K;

    move-result-object p0

    invoke-static {p1}, LLe/t0;->n(LFe/o;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/K;->g0(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x0([Lhn/b;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {p0, p1, v0}, LBe/l;->y0([Lhn/b;LFe/o;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x3(Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/x0;

    invoke-direct {v0, p0}, LLe/x0;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/O1;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1, p2, p3}, LLe/O1;-><init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x8(Lhn/b;Lhn/b;LFe/c;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, v2, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y0([Lhn/b;LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "+TT;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LLe/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LLe/u;-><init>([Lhn/b;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y1(LBe/o;LBe/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/o<",
            "TT;>;",
            "LBe/b;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mode is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/F;

    invoke-direct {v0, p0, p1}, LLe/F;-><init>(LBe/o;LBe/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y3(Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y8(Lhn/b;Lhn/b;LFe/c;Z)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;Z)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Lhn/b;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {p2, p3, v0, v1}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "item3 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z8(Lhn/b;Lhn/b;LFe/c;ZI)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT1;>;",
            "Lhn/b<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, LHe/a;->x(LFe/c;)LFe/o;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, p3, p4, v0}, LBe/l;->I8(LFe/o;ZI[Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(LFe/g;)V
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-static {p0, p1, v0, v1}, LLe/l;->b(Lhn/b;LFe/g;LFe/g;LFe/a;)V

    return-void
.end method

.method public final A1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/H;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LLe/H;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A2(LFe/o;LFe/o;Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lhn/b<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/D0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/D0;-><init>(LBe/l;LFe/o;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LBe/l;->O3(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A4(LFe/g;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onDrop is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/N0;

    invoke-direct {v0, p0, p1}, LLe/N0;-><init>(LBe/l;LFe/g;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A5(JLjava/util/concurrent/TimeUnit;Z)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->z5(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A6(LFe/o;)LBe/l;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LNe/h;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final A7(Ljava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/l;->B7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B(LFe/g;I)V
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;I)V"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-static {p0, p1, v0, v1, p2}, LLe/l;->c(Lhn/b;LFe/g;LFe/g;LFe/a;I)V

    return-void
.end method

.method public final B1(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TU;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "debounceIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/G;

    invoke-direct {v0, p0, p1}, LLe/G;-><init>(LBe/l;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B2(LFe/o;LFe/o;Ljava/util/concurrent/Callable;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;",
            "LFe/o<",
            "Ljava/lang/Throwable;",
            "+",
            "Lhn/b<",
            "+TR;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "onNextMapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onErrorMapper is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCompleteSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/D0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/D0;-><init>(LBe/l;LFe/o;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0, p4}, LBe/l;->P3(Lhn/b;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B4()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/P0;

    invoke-direct {v0, p0}, LLe/P0;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final B5(Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/i1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LLe/i1;-><init>(Lhn/b;Lhn/b;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B6(LFe/o;)LBe/l;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LNe/h;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final B7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LHe/a;->w(Ljava/util/concurrent/TimeUnit;LBe/J;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->M3(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C(LFe/g;LFe/g;)V
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-static {p0, p1, p2, v0}, LLe/l;->b(Lhn/b;LFe/g;LFe/g;LFe/a;)V

    return-void
.end method

.method public final C1(Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LBe/l;->x3(Ljava/lang/Object;)LBe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->q6(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C2(LFe/o;Z)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;Z)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C4(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lhn/b<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Q0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LLe/Q0;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C5(Lhn/b;Z)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sampler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/i1;

    invoke-direct {v0, p0, p1, p2}, LLe/i1;-><init>(Lhn/b;Lhn/b;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final C7(LFe/o;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFe/o;

    invoke-interface {p1, p0}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final D(LFe/g;LFe/g;I)V
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-static {p0, p1, p2, v0, p3}, LLe/l;->c(Lhn/b;LFe/g;LFe/g;LFe/a;I)V

    return-void
.end method

.method public final D2(LFe/o;ZI)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D4(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->C4(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D5(LFe/c;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/c<",
            "TT;TT;TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "accumulator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/l1;

    invoke-direct {v0, p0, p1}, LLe/l1;-><init>(LBe/l;LFe/c;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final D7()Ljava/util/concurrent/Future;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LTe/j;

    invoke-direct {v0}, LTe/j;-><init>()V

    invoke-virtual {p0, v0}, LBe/l;->p6(Lhn/c;)Lhn/c;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final E(LFe/g;LFe/g;LFe/a;)V
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LLe/l;->b(Lhn/b;LFe/g;LFe/g;LFe/a;)V

    return-void
.end method

.method public final E1(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/l;->G1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E2(LFe/o;ZII)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;ZII)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LLe/k1;->a(Ljava/lang/Object;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v6, LLe/a0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LLe/a0;-><init>(LBe/l;LFe/o;ZII)V

    invoke-static {v6}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E4(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "valueSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/R0;

    invoke-direct {v0, p0, p1}, LLe/R0;-><init>(LBe/l;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E5(Ljava/lang/Object;LFe/c;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "initialValue is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LBe/l;->F5(Ljava/util/concurrent/Callable;LFe/c;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final E7()LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LLe/Q1;

    invoke-direct {v0, p0}, LLe/Q1;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final F(LFe/g;LFe/g;LFe/a;I)V
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "I)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, LLe/l;->c(Lhn/b;LFe/g;LFe/g;LFe/a;I)V

    return-void
.end method

.method public final F1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->G1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final F2(LFe/o;)LBe/c;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->G2(LFe/o;ZI)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final F4(Ljava/lang/Object;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->E4(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final F5(Ljava/util/concurrent/Callable;LFe/c;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "accumulator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/m1;

    invoke-direct {v0, p0, p1, p2}, LLe/m1;-><init>(LBe/l;Ljava/util/concurrent/Callable;LFe/c;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final F7(I)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "capacityHint"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/Q1;

    invoke-static {p1}, LHe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LLe/Q1;-><init>(LBe/l;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final G(Lhn/c;)V
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, LLe/l;->d(Lhn/b;Lhn/c;)V

    return-void
.end method

.method public final G1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/J;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LLe/J;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final G2(LFe/o;ZI)LBe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;ZI)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/c0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/c0;-><init>(LBe/l;LFe/o;ZI)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final G4(Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "next is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Q0;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LLe/Q0;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final G6(J)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, LLe/B1;

    invoke-direct {v0, p0, p1, p2}, LLe/B1;-><init>(LBe/l;J)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final G7(Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "collectionSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Q1;

    invoke-direct {v0, p0, p1}, LLe/Q1;-><init>(LBe/l;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H(I)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LBe/l;->I(II)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H1(JLjava/util/concurrent/TimeUnit;Z)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->G1(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H2(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/l;->I2(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H3(Ljava/lang/Object;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/z0;

    invoke-direct {v0, p0, p1}, LLe/z0;-><init>(Lhn/b;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H4()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/M;

    invoke-direct {v0, p0}, LLe/M;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final H6(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LBe/l;->w7(JLjava/util/concurrent/TimeUnit;)LBe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->T6(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final H7(LFe/o;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;TT;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1}, LHe/a;->F(LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LBe/l;->e0(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final I(II)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->J(IILjava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I1(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TU;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemDelayIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LLe/t0;->c(LFe/o;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->t2(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I2(LFe/o;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/g0;

    invoke-direct {v0, p0, p1, p2}, LLe/g0;-><init>(LBe/l;LFe/o;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I3()LBe/s;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/y0;

    invoke-direct {v0, p0}, LLe/y0;-><init>(Lhn/b;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final I4()LXe/b;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LXe/b;->y(Lhn/b;)LXe/b;

    move-result-object v0

    return-object v0
.end method

.method public final I6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/l;->x7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->T6(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I7(LFe/o;LFe/o;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, LHe/a;->G(LFe/o;LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LBe/l;->e0(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final J(IILjava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "count"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "skip"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/m;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/m;-><init>(LBe/l;IILjava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final J1(Lhn/b;LFe/o;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/l;->M1(Lhn/b;)LBe/l;

    move-result-object p1

    invoke-virtual {p1, p2}, LBe/l;->I1(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final J2(LFe/o;LFe/c;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TV;>;)",
            "LBe/l<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LLe/t0;->a(LFe/o;)LFe/o;

    move-result-object v2

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, LBe/l;->z2(LFe/o;LFe/c;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final J3()LBe/K;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LLe/z0;-><init>(Lhn/b;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final J4(I)LXe/b;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "parallelism"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, LXe/b;->z(Lhn/b;I)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final J6(I)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_2

    if-nez p1, :cond_0

    new-instance p1, LLe/r0;

    invoke-direct {p1, p0}, LLe/r0;-><init>(LBe/l;)V

    invoke-static {p1}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, LLe/D1;

    invoke-direct {p1, p0}, LLe/D1;-><init>(LBe/l;)V

    invoke-static {p1}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LLe/C1;

    invoke-direct {v0, p0, p1}, LLe/C1;-><init>(LBe/l;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, LHe/a;->G(LFe/o;LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LBe/l;->e0(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K(ILjava/util/concurrent/Callable;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, LBe/l;->J(IILjava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K1(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->L1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K2(LFe/o;LFe/c;I)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TV;>;I)",
            "LBe/l<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LLe/t0;->a(LFe/o;)LFe/o;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    move-object v1, p0

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, LBe/l;->z2(LFe/o;LFe/c;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K3(LBe/p;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/p<",
            "+TR;-TT;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lifter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/A0;

    invoke-direct {v0, p0, p1}, LLe/A0;-><init>(LBe/l;LBe/p;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K4(II)LXe/b;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "LXe/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "parallelism"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1, p2}, LXe/b;->A(Lhn/b;II)LXe/b;

    move-result-object p1

    return-object p1
.end method

.method public final K5()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/p1;

    invoke-direct {v0, p0}, LLe/p1;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final K6(JJLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 9
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, LBe/l;->M6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final K7(LFe/o;)LBe/K;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LFe/o;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LBe/l;->N7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K8(Lhn/b;LFe/c;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2}, LBe/l;->x8(Lhn/b;Lhn/b;LFe/c;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L(JJLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/l;->N(JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/l;->x7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->M1(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L2(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->M2(LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L3(J)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, LLe/B0;

    invoke-direct {v0, p0, p1, p2}, LLe/B0;-><init>(LBe/l;J)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L4(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/l;->M4(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L5()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/l;->N4()LEe/a;

    move-result-object v0

    invoke-virtual {v0}, LEe/a;->T8()LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final L6(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 9
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v8}, LBe/l;->M6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final L7(LFe/o;LFe/o;)LBe/K;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/l;->a()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LFe/o;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, LBe/l;->N7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final L8(Lhn/b;LFe/c;Z)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LBe/l;->y8(Lhn/b;Lhn/b;LFe/c;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, LBe/l;->N(JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M1(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriptionIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/K;

    invoke-direct {v0, p0, p1}, LLe/K;-><init>(Lhn/b;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M2(LFe/o;ZI)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/d0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/d0;-><init>(LBe/l;LFe/o;ZI)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M3(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/C0;

    invoke-direct {v0, p0, p1}, LLe/C0;-><init>(LBe/l;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M4(LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/T0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LLe/T0;-><init>(LBe/l;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final M5(Ljava/lang/Object;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "defaultItem is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/s1;

    invoke-direct {v0, p0, p1}, LLe/s1;-><init>(LBe/l;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;
    .locals 11
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "ZI)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    move-wide v2, p1

    const-string v0, "unit is null"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    move/from16 v8, p8

    invoke-static {v8, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    new-instance v10, LLe/E1;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, LLe/E1;-><init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-static {v10}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count >= 0 required but it was "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final M7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->c()LFe/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->N7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M8(Lhn/b;LFe/c;ZI)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, LBe/l;->z8(Lhn/b;Lhn/b;LFe/c;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final N(JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;)LBe/l;
    .locals 12
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p7

    invoke-static {v9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/q;

    const v10, 0x7fffffff

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v11}, LLe/q;-><init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N1()LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "LBe/l<",
            "TT2;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LLe/L;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LLe/L;-><init>(LBe/l;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N2(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->O2(LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final N3()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "LBe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LLe/F0;

    invoke-direct {v0, p0}, LLe/F0;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final N4()LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, LBe/l;->O4(I)LEe/a;

    move-result-object v0

    return-object v0
.end method

.method public final N5()LBe/s;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/r1;

    invoke-direct {v0, p0}, LLe/r1;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final N6(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LBe/l;->Q6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final N7(LFe/o;LFe/o;Ljava/util/concurrent/Callable;LFe/o;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;",
            "LFe/o<",
            "-TK;+",
            "Ljava/util/Collection<",
            "-TV;>;>;)",
            "LBe/K<",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mapSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionFactory is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2, p4}, LHe/a;->H(LFe/o;LFe/o;LFe/o;)LFe/b;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, LBe/l;->e0(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final N8(Ljava/lang/Iterable;LFe/c;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zipper is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/b2;

    invoke-direct {v0, p0, p1, p2}, LLe/b2;-><init>(LBe/l;Ljava/lang/Iterable;LFe/c;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/l;->R(JLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O1(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/e;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;",
            "LBe/A<",
            "TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/L;

    invoke-direct {v0, p0, p1}, LLe/L;-><init>(LBe/l;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O2(LFe/o;ZI)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/f0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/f0;-><init>(LBe/l;LFe/o;ZI)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O4(I)LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, LLe/S0;->Z8(LBe/l;I)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public final O5()LBe/K;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/s1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LLe/s1;-><init>(LBe/l;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final O6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LBe/l;->Q6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final O7()LBe/B;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LOe/h0;

    invoke-direct {v0, p0}, LOe/h0;-><init>(Lhn/b;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final P(JLjava/util/concurrent/TimeUnit;I)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->R(JLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P1()LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-static {}, LHe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LBe/l;->R1(LFe/o;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final P2(LFe/g;)LDe/c;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->NONE:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LDe/c;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/l;->h6(LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final P5(J)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LLe/t1;

    invoke-direct {v0, p0, p1, p2}, LLe/t1;-><init>(LBe/l;J)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P6(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LBe/l;->Q6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final P7()LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->p()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->R7(Ljava/util/Comparator;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final Q(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, LBe/l;->S(JLjava/util/concurrent/TimeUnit;LBe/J;ILjava/util/concurrent/Callable;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q1(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;TK;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->g()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/l;->R1(LFe/o;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q2(LFe/r;)LDe/c;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->NONE:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->S2(LFe/r;LFe/g;LFe/a;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Q5(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, LBe/l;->w7(JLjava/util/concurrent/TimeUnit;)LBe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->Y5(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;
    .locals 9
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "ZI)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide v1, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, LBe/l;->M6(JJLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Q7(I)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->p()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LBe/l;->S7(Ljava/util/Comparator;I)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final R(JLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/l;->S(JLjava/util/concurrent/TimeUnit;LBe/J;ILjava/util/concurrent/Callable;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R1(LFe/o;Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;TK;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ljava/util/Collection<",
            "-TK;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collectionSupplier is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/N;

    invoke-direct {v0, p0, p1, p2}, LLe/N;-><init>(LBe/l;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R2(LFe/r;LFe/g;)LDe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->NONE:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->S2(LFe/r;LFe/g;LFe/a;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final R4(I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LSe/e;->c:LBe/J;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, LBe/l;->p4(LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R5(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/l;->x7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->Y5(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R6(JLjava/util/concurrent/TimeUnit;Z)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LBe/l;->Q6(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R7(Ljava/util/Comparator;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/l;->E7()LBe/K;

    move-result-object v0

    invoke-static {p1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LBe/K;->u0(LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final S(JLjava/util/concurrent/TimeUnit;LBe/J;ILjava/util/concurrent/Callable;Z)LBe/l;
    .locals 12
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Ljava/util/Collection<",
            "-TT;>;>(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I",
            "Ljava/util/concurrent/Callable<",
            "TU;>;Z)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    move-object v7, p3

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move/from16 v10, p5

    invoke-static {v10, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/q;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v11, p7

    invoke-direct/range {v1 .. v11}, LLe/q;-><init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;Ljava/util/concurrent/Callable;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final S1()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->U1(LFe/o;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final S2(LFe/r;LFe/g;LFe/a;)LDe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->NONE:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LTe/i;

    invoke-direct {v0, p1, p2, p3}, LTe/i;-><init>(LFe/r;LFe/g;LFe/a;)V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    return-object v0
.end method

.method public final S4(LFe/c;)LBe/s;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/c<",
            "TT;TT;TT;>;)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reducer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/X0;

    invoke-direct {v0, p0, p1}, LLe/X0;-><init>(LBe/l;LFe/c;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final S5(I)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    invoke-static {p0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LLe/u1;

    invoke-direct {v0, p0, p1}, LLe/u1;-><init>(LBe/l;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S6(LFe/r;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stopPredicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/H1;

    invoke-direct {v0, p0, p1}, LLe/H1;-><init>(LBe/l;LFe/r;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final S7(Ljava/util/Comparator;I)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;I)",
            "LBe/K<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "comparator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, LBe/l;->F7(I)LBe/K;

    move-result-object p2

    invoke-static {p1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object p1

    invoke-virtual {p2, p1}, LBe/K;->u0(LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final T(LBe/l;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "+TTOpening;>;",
            "LFe/o<",
            "-TTOpening;+",
            "Lhn/b<",
            "+TTClosing;>;>;)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->U(LBe/l;LFe/o;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T0(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/l;->U0(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T1(LFe/d;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/d<",
            "-TT;-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "comparer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/O;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LLe/O;-><init>(LBe/l;LFe/o;LFe/d;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T4(Ljava/lang/Object;LFe/c;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seed is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Y0;

    invoke-direct {v0, p0, p1, p2}, LLe/Y0;-><init>(Lhn/b;Ljava/lang/Object;LFe/c;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final T5(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, LBe/l;->W5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T6(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/G1;

    invoke-direct {v0, p0, p1}, LLe/G1;-><init>(LBe/l;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U(LBe/l;LFe/o;Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "LBe/l<",
            "+TTOpening;>;",
            "LFe/o<",
            "-TTOpening;+",
            "Lhn/b<",
            "+TTClosing;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/n;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/n;-><init>(LBe/l;Lhn/b;LFe/o;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U0(LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LLe/k1;->a(Ljava/lang/Object;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LLe/w;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, p2, v1}, LLe/w;-><init>(LBe/l;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U1(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;TK;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/O;

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, LLe/O;-><init>(LBe/l;LFe/o;LFe/d;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U4(Ljava/util/concurrent/Callable;LFe/c;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "LFe/c<",
            "TR;-TT;TR;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "seedSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "reducer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Z0;

    invoke-direct {v0, p0, p1, p2}, LLe/Z0;-><init>(Lhn/b;Ljava/util/concurrent/Callable;LFe/c;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final U5(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, LBe/l;->W5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U6(LFe/r;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/I1;

    invoke-direct {v0, p0, p1}, LLe/I1;-><init>(LBe/l;LFe/r;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final U7(LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/R1;

    invoke-direct {v0, p0, p1}, LLe/R1;-><init>(LBe/l;LBe/J;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TB;>;)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/l;->X(Lhn/b;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V0(LFe/o;)LBe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/l;->W0(LFe/o;I)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final V1(LFe/g;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/P;

    invoke-direct {v0, p0, p1}, LLe/P;-><init>(LBe/l;LFe/g;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V4()LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, LBe/l;->W4(J)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final V5(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, LBe/l;->W5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final V6()Lcf/f;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcf/f;

    invoke-direct {v0}, Lcf/f;-><init>()V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    return-object v0
.end method

.method public final W(Lhn/b;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TB;>;I)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p2}, LHe/a;->f(I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LBe/l;->X(Lhn/b;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W0(LFe/o;I)LBe/c;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;I)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/c;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, LNe/c;-><init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final W1(LFe/a;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, v2, p1}, LBe/l;->b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W4(J)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LLe/b1;

    invoke-direct {v0, p0, p1, p2}, LLe/b1;-><init>(LBe/l;J)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "times >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;
    .locals 9
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "ZI)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p6, v0}, LHe/b;->h(ILjava/lang/String;)I

    shl-int/lit8 v7, p6, 0x1

    new-instance p6, LLe/v1;

    move-object v1, p6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, LLe/v1;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;IZ)V

    invoke-static {p6}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final W6(J)Lcf/f;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcf/f;

    invoke-direct {v0, p1, p2}, Lcf/f;-><init>(J)V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    return-object v0
.end method

.method public final X(Lhn/b;Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Lhn/b<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/p;

    invoke-direct {v0, p0, p1, p2}, LLe/p;-><init>(LBe/l;Lhn/b;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LFe/o;)LBe/c;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->Z0(LFe/o;ZI)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final X1(LFe/a;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Q;

    invoke-direct {v0, p0, p1}, LLe/Q;-><init>(LBe/l;LFe/a;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X4(LFe/e;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/e;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/c1;

    invoke-direct {v0, p0, p1}, LLe/c1;-><init>(LBe/l;LFe/e;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X5(JLjava/util/concurrent/TimeUnit;Z)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, LBe/l;->W5(JLjava/util/concurrent/TimeUnit;LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final X6(JZ)Lcf/f;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lcf/f<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcf/f;

    invoke-direct {v0, p1, p2}, Lcf/f;-><init>(J)V

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcf/f;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    return-object v0
.end method

.method public final X7(J)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, LBe/l;->Z7(JJI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y(Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;)",
            "LBe/l<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/internal/util/b;->b()Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/l;->Z(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LFe/o;Z)LBe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;Z)",
            "LBe/c;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->Z0(LFe/o;ZI)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Y1(LFe/a;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->g:LFe/q;

    invoke-virtual {p0, v0, v1, p1}, LBe/l;->e2(LFe/g;LFe/q;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y4(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "Ljava/lang/Object;",
            ">;+",
            "Lhn/b<",
            "*>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/d1;

    invoke-direct {v0, p0, p1}, LLe/d1;-><init>(LBe/l;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y5(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/w1;

    invoke-direct {v0, p0, p1}, LLe/w1;-><init>(LBe/l;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y6(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->Z6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Y7(JJ)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/l;->Z7(JJI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/util/Collection<",
            "-TT;>;>(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicatorSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSupplier is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/o;

    invoke-direct {v0, p0, p1, p2}, LLe/o;-><init>(LBe/l;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z0(LFe/o;ZI)LBe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;ZI)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/c;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LNe/c;-><init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final Z1(LFe/a;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/l;->b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z4(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LLe/t0;->d(LBe/l;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0, p1}, LLe/e1;->e9(Ljava/util/concurrent/Callable;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z5(LFe/r;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/x1;

    invoke-direct {v0, p0, p1}, LLe/x1;-><init>(LBe/l;LFe/r;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/J1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LLe/J1;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final Z7(JJI)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "skip"

    invoke-static {p3, p4, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "count"

    invoke-static {p1, p2, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "bufferSize"

    invoke-static {p5, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/T1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, LLe/T1;-><init>(LBe/l;JJI)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a1(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->b1(LFe/o;IZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a2(LFe/g;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LBe/A<",
            "TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNotification is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->t(LFe/g;)LFe/g;

    move-result-object v0

    invoke-static {p1}, LHe/a;->s(LFe/g;)LFe/g;

    move-result-object v1

    invoke-static {p1}, LHe/a;->r(LFe/g;)LFe/a;

    move-result-object p1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/l;->b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a5(LFe/o;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, LLe/t0;->e(LBe/l;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, LLe/e1;->e9(Ljava/util/concurrent/Callable;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a6()LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/l;->E7()LBe/K;

    move-result-object v0

    invoke-virtual {v0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-static {}, LHe/a;->p()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LBe/l;->M3(LFe/o;)LBe/l;

    move-result-object v0

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LBe/l;->H2(LFe/o;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final a7(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LBe/l;->x5(JLjava/util/concurrent/TimeUnit;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final a8(JJLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    invoke-static {}, LBe/l;->a0()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/l;->c8(JJLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b0()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LBe/l;->c0(I)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final b1(LFe/o;IZ)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;IZ)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LLe/k1;->a(Ljava/lang/Object;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LLe/w;

    if-eqz p3, :cond_2

    sget-object p3, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_2
    sget-object p3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LLe/w;-><init>(LBe/l;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onAfterTerminate is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/S;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LLe/S;-><init>(LBe/l;LFe/g;LFe/g;LFe/a;LFe/a;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b5(LFe/o;IJLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, LBe/l;->c5(LFe/o;IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b6(Ljava/util/Comparator;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sortFunction"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/l;->E7()LBe/K;

    move-result-object v0

    invoke-virtual {v0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-static {p1}, LHe/a;->o(Ljava/util/Comparator;)LFe/o;

    move-result-object p1

    invoke-virtual {v0, p1}, LBe/l;->M3(LFe/o;)LBe/l;

    move-result-object p1

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-virtual {p1, v0}, LBe/l;->H2(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LBe/l;->y5(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final b8(JJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, LBe/l;->c8(JJLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c(LFe/r;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/g;

    invoke-direct {v0, p0, p1}, LLe/g;-><init>(LBe/l;LFe/r;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final c0(I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/r;

    invoke-direct {v0, p0, p1}, LLe/r;-><init>(LBe/l;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c1(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->d1(LFe/o;II)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c2(Lhn/c;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "subscriber is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LLe/t0;->m(Lhn/c;)LFe/g;

    move-result-object v0

    invoke-static {p1}, LLe/t0;->l(Lhn/c;)LFe/g;

    move-result-object v1

    invoke-static {p1}, LLe/t0;->k(Lhn/c;)LFe/a;

    move-result-object p1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/l;->b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c5(LFe/o;IJLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    invoke-static {p6, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, LLe/t0;->f(LBe/l;IJLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, LLe/e1;->e9(Ljava/util/concurrent/Callable;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c6(Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/l;->G0([Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c7(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/l;->e7(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final c8(JJLjava/util/concurrent/TimeUnit;LBe/J;I)LBe/l;
    .locals 13
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "I)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p7

    invoke-static {v11, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "timespan"

    move-wide v3, p1

    invoke-static {p1, p2, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "timeskip"

    move-wide/from16 v5, p3

    invoke-static {v5, v6, v0}, LHe/b;->i(JLjava/lang/String;)J

    const-string v0, "scheduler is null"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/X1;

    const-wide v9, 0x7fffffffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, LLe/X1;-><init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;JIZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final d0(Ljava/lang/Class;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->e(Ljava/lang/Class;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->M3(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d1(LFe/o;II)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;II)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/x;

    sget-object v6, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, LLe/x;-><init>(LBe/l;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d2(LFe/g;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, p1, v1, v1}, LBe/l;->b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d5(LFe/o;ILBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;I",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p2}, LLe/t0;->e(LBe/l;I)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p1, p3}, LLe/t0;->h(LFe/o;LBe/J;)LFe/o;

    move-result-object p1

    invoke-static {p2, p1}, LLe/e1;->e9(Ljava/util/concurrent/Callable;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d6(Ljava/lang/Iterable;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/l;->G0([Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->e7(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final d8(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, LBe/l;->i8(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e0(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+TU;>;",
            "LFe/b<",
            "-TU;-TT;>;)",
            "LBe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialItemSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "collector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/t;

    invoke-direct {v0, p0, p1, p2}, LLe/t;-><init>(LBe/l;Ljava/util/concurrent/Callable;LFe/b;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LFe/o;IIZ)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;IIZ)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/x;

    if-eqz p4, :cond_0

    sget-object p4, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    :goto_0
    move-object v6, p4

    goto :goto_1

    :cond_0
    sget-object p4, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    goto :goto_0

    :goto_1
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, LLe/x;-><init>(LBe/l;LFe/o;IILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e2(LFe/g;LFe/q;LFe/a;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;",
            "LFe/q;",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onRequest is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onCancel is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/T;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/T;-><init>(LBe/l;LFe/g;LFe/q;LFe/a;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e5(LFe/o;JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->f5(LFe/o;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e6(Ljava/lang/Object;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "value is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LBe/l;->x3(Ljava/lang/Object;)LBe/l;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/l;->G0([Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e7(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/K1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LLe/K1;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final e8(JLjava/util/concurrent/TimeUnit;J)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "J)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, LBe/l;->i8(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f0(Ljava/lang/Object;LFe/b;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "LFe/b<",
            "-TU;-TT;>;)",
            "LBe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "initialItem is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LBe/l;->e0(Ljava/util/concurrent/Callable;LFe/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LFe/o;Z)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;Z)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, LBe/l;->e1(LFe/o;IIZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f2(LFe/g;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, v0, v1, v1}, LBe/l;->b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f5(LFe/o;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p2, p3, p4, p5}, LLe/t0;->g(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)Ljava/util/concurrent/Callable;

    move-result-object p2

    invoke-static {p2, p1}, LLe/e1;->e9(Ljava/util/concurrent/Callable;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final varargs f6([Ljava/lang/Object;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p1

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {v0}, LBe/l;->G0([Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f7(JLjava/util/concurrent/TimeUnit;Z)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->e7(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final f8(JLjava/util/concurrent/TimeUnit;JZ)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "JZ)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, LBe/l;->i8(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lhn/b;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LBe/l;->f([Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g1(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/l;->h1(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g2(LFe/q;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/q;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, p1, v1}, LBe/l;->e2(LFe/g;LFe/q;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g3(LFe/o;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;)",
            "LBe/l<",
            "LEe/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, LBe/l;->j3(LFe/o;LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g5(LFe/o;LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "TT;>;+",
            "Lhn/b<",
            "TR;>;>;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LLe/t0;->d(LBe/l;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {p1, p2}, LLe/t0;->h(LFe/o;LBe/J;)LFe/o;

    move-result-object p1

    invoke-static {v0, p1}, LLe/e1;->e9(Ljava/util/concurrent/Callable;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g6()LDe/c;
    .locals 4
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->f:LFe/g;

    sget-object v2, LHe/a;->c:LFe/a;

    sget-object v3, LLe/t0$i;->INSTANCE:LLe/t0$i;

    invoke-virtual {p0, v0, v1, v2, v3}, LBe/l;->k6(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object v0

    return-object v0
.end method

.method public final g7(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LBe/l;->z1(JLjava/util/concurrent/TimeUnit;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g8(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, LBe/l;->i8(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h1(LFe/o;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TU;>;>;I)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/g0;

    invoke-direct {v0, p0, p1, p2}, LLe/g0;-><init>(LBe/l;LFe/o;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h2(LFe/g;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LHe/a;->g:LFe/q;

    sget-object v1, LHe/a;->c:LFe/a;

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->e2(LFe/g;LFe/q;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h3(LFe/o;LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;)",
            "LBe/l<",
            "LEe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, LBe/l;->j3(LFe/o;LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h5()LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LLe/e1;->d9(LBe/l;)LEe/a;

    move-result-object v0

    return-object v0
.end method

.method public final h6(LFe/g;)LDe/c;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->f:LFe/g;

    sget-object v1, LHe/a;->c:LFe/a;

    sget-object v2, LLe/t0$i;->INSTANCE:LLe/t0$i;

    invoke-virtual {p0, p1, v0, v1, v2}, LBe/l;->k6(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final h7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LBe/l;->A1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h8(JLjava/util/concurrent/TimeUnit;LBe/J;J)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "J)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, LBe/l;->i8(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i(LFe/r;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/j;

    invoke-direct {v0, p0, p1}, LLe/j;-><init>(LBe/l;LFe/r;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final i1(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/l;->j1(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i2(LFe/a;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    invoke-static {p1}, LHe/a;->a(LFe/a;)LFe/g;

    move-result-object v1

    sget-object v2, LHe/a;->c:LFe/a;

    invoke-virtual {p0, v0, v1, p1, v2}, LBe/l;->b2(LFe/g;LFe/g;LFe/a;LFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i3(LFe/o;LFe/o;Z)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;Z)",
            "LBe/l<",
            "LEe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->j3(LFe/o;LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i4(LBe/i;)LBe/l;
    .locals 1
    .param p1    # LBe/i;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/G0;

    invoke-direct {v0, p0, p1}, LLe/G0;-><init>(LBe/l;LBe/i;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final i5(I)LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p0, p1}, LLe/e1;->Z8(LBe/l;I)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public final i6(LFe/g;LFe/g;)LDe/c;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LHe/a;->c:LFe/a;

    sget-object v1, LLe/t0$i;->INSTANCE:LLe/t0$i;

    invoke-virtual {p0, p1, p2, v0, v1}, LBe/l;->k6(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final i7()LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LBe/l;->l7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final i8(JLjava/util/concurrent/TimeUnit;LBe/J;JZ)LBe/l;
    .locals 9
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "JZ)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v8

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, LBe/l;->j8(JLjava/util/concurrent/TimeUnit;LBe/J;JZI)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final j1(LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/d;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, LNe/d;-><init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j2(J)LBe/s;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, LLe/V;

    invoke-direct {v0, p0, p1, p2}, LLe/V;-><init>(LBe/l;J)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j3(LFe/o;LFe/o;ZI)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;ZI)",
            "LBe/l<",
            "LEe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/o0;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    invoke-direct/range {v1 .. v7}, LLe/o0;-><init>(LBe/l;LFe/o;LFe/o;IZLFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j4(LBe/y;)LBe/l;
    .locals 1
    .param p1    # LBe/y;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/H0;

    invoke-direct {v0, p0, p1}, LLe/H0;-><init>(LBe/l;LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j5(IJLjava/util/concurrent/TimeUnit;)LEe/a;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->k5(IJLjava/util/concurrent/TimeUnit;LBe/J;)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public final j6(LFe/g;LFe/g;LFe/a;)LDe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            ")",
            "LDe/c;"
        }
    .end annotation

    sget-object v0, LLe/t0$i;->INSTANCE:LLe/t0$i;

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->k6(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final j7(LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LBe/l;->l7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final j8(JLjava/util/concurrent/TimeUnit;LBe/J;JZI)LBe/l;
    .locals 13
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "JZI)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    move/from16 v11, p8

    invoke-static {v11, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "scheduler is null"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "unit is null"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "count"

    move-wide/from16 v9, p5

    invoke-static {v9, v10, v0}, LHe/b;->i(JLjava/lang/String;)J

    new-instance v0, LLe/X1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p1

    move/from16 v12, p7

    invoke-direct/range {v1 .. v12}, LLe/X1;-><init>(LBe/l;JJLjava/util/concurrent/TimeUnit;LBe/J;JIZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final k(LBe/m;)Ljava/lang/Object;
    .locals 1
    .param p1    # LBe/m;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/m<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/m;

    invoke-interface {p1, p0}, LBe/m;->a(LBe/l;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k1(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->m1(LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k2(JLjava/lang/Object;)LBe/K;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "defaultItem is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/W;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/W;-><init>(LBe/l;JLjava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final k3(LFe/o;LFe/o;ZILFe/o;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;",
            "LFe/o<",
            "-TT;+TV;>;ZI",
            "LFe/o<",
            "-",
            "LFe/g<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)",
            "LBe/l<",
            "LEe/b<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "valueSelector is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "evictingMapFactory is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/o0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LLe/o0;-><init>(LBe/l;LFe/o;LFe/o;IZLFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k4(LBe/Q;)LBe/l;
    .locals 1
    .param p1    # LBe/Q;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/I0;

    invoke-direct {v0, p0, p1}, LLe/I0;-><init>(LBe/l;LBe/Q;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k5(IJLjava/util/concurrent/TimeUnit;LBe/J;)LEe/a;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v1, "unit is null"

    invoke-static {p4, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "scheduler is null"

    invoke-static {p5, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    invoke-static/range {v0 .. v5}, LLe/e1;->b9(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;I)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public final k6(LFe/g;LFe/g;LFe/a;LFe/g;)LDe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onNext is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onSubscribe is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LTe/m;

    invoke-direct {v0, p1, p2, p3, p4}, LTe/m;-><init>(LFe/g;LFe/g;LFe/a;LFe/g;)V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    return-object v0
.end method

.method public final k7(Ljava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/l;->l7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final k8(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TB;>;)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/l;->l8(Lhn/b;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lhn/c;)V
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, LBe/q;

    if-eqz v0, :cond_0

    check-cast p1, LBe/q;

    invoke-virtual {p0, p1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LTe/u;

    invoke-direct {v0, p1}, LTe/u;-><init>(Lhn/c;)V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method

.method public final l1(LFe/o;Z)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;Z)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->m1(LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l2(J)LBe/K;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, LLe/W;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LLe/W;-><init>(LBe/l;JLjava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l3(LFe/o;Z)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+TK;>;Z)",
            "LBe/l<",
            "LEe/b<",
            "TK;TT;>;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LBe/l;->j3(LFe/o;LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l4(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LBe/l;->Q3(Lhn/b;Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l5(ILBe/J;)LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LBe/J;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LBe/l;->i5(I)LEe/a;

    move-result-object p1

    invoke-static {p1, p2}, LLe/e1;->f9(LEe/a;LBe/J;)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public final l6(LBe/q;)V
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/q<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, p1}, LYe/a;->h0(LBe/l;Lhn/c;)Lhn/c;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LBe/l;->m6(Lhn/c;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, LYe/a;->Y(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    throw p1
.end method

.method public final l7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/L1;

    invoke-direct {v0, p0, p1, p2}, LLe/L1;-><init>(LBe/l;Ljava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final l8(Lhn/b;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TB;>;I)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/U1;

    invoke-direct {v0, p0, p1, p2}, LLe/U1;-><init>(LBe/l;Lhn/b;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m()Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, LTe/d;

    invoke-direct {v0}, LTe/d;-><init>()V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    invoke-virtual {v0}, LTe/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final m1(LFe/o;ZI)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/d;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LNe/d;-><init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m3(Lhn/b;LFe/o;LFe/o;LFe/c;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TTRight;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LFe/o<",
            "-TTRight;+",
            "Lhn/b<",
            "TTRightEnd;>;>;",
            "LFe/c<",
            "-TT;-",
            "LBe/l<",
            "TTRight;>;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/p0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LLe/p0;-><init>(LBe/l;Lhn/b;LFe/o;LFe/o;LFe/c;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m5(JLjava/util/concurrent/TimeUnit;)LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->n5(JLjava/util/concurrent/TimeUnit;LBe/J;)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public abstract m6(Lhn/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final m7(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/l;->u7(JLjava/util/concurrent/TimeUnit;Lhn/b;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final m8(Lhn/b;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;",
            "LFe/o<",
            "-TU;+",
            "Lhn/b<",
            "TV;>;>;)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->n8(Lhn/b;LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    new-instance v0, LTe/d;

    invoke-direct {v0}, LTe/d;-><init>()V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    invoke-virtual {v0}, LTe/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final n1(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LBe/l;->o1(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n3()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/q0;

    invoke-direct {v0, p0}, LLe/q0;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final n4(LBe/J;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->p4(LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n5(JLjava/util/concurrent/TimeUnit;LBe/J;)LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3, p4}, LLe/e1;->a9(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public final n6(LBe/J;)LBe/l;
    .locals 1
    .param p1    # LBe/J;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LLe/F;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, LBe/l;->o6(LBe/J;Z)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n7(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->u7(JLjava/util/concurrent/TimeUnit;Lhn/b;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final n8(Lhn/b;LFe/o;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;",
            "LFe/o<",
            "-TU;+",
            "Lhn/b<",
            "TV;>;>;I)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "openingIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "closingIndicator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/V1;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/V1;-><init>(LBe/l;Lhn/b;LFe/o;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o(LFe/g;)V
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, LBe/l;->p()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, LFe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    check-cast v0, LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_0
    return-void
.end method

.method public final o1(LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/e;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, p1, v1, p2}, LNe/e;-><init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o3()LBe/c;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LLe/s0;

    invoke-direct {v0, p0}, LLe/s0;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final o4(LBe/J;Z)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->p4(LBe/J;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o5(LBe/J;)LEe/a;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LEe/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, LBe/l;->h5()LEe/a;

    move-result-object v0

    invoke-static {v0, p1}, LLe/e1;->f9(LEe/a;LBe/J;)LEe/a;

    move-result-object p1

    return-object p1
.end method

.method public final o6(LBe/J;Z)LBe/l;
    .locals 1
    .param p1    # LBe/J;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/y1;

    invoke-direct {v0, p0, p1, p2}, LLe/y1;-><init>(LBe/l;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o7(JLjava/util/concurrent/TimeUnit;LBe/J;Lhn/b;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->u7(JLjava/util/concurrent/TimeUnit;Lhn/b;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final o8(Ljava/util/concurrent/Callable;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/l;->p8(Ljava/util/concurrent/Callable;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, v0}, LBe/l;->q(I)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final p1(LFe/o;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, LBe/l;->r1(LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p2(LFe/r;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Z;

    invoke-direct {v0, p0, p1}, LLe/Z;-><init>(LBe/l;LFe/r;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p4(LBe/J;ZI)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            "ZI)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/K0;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/K0;-><init>(LBe/l;LBe/J;ZI)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p5()LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, LBe/l;->r5(JLFe/r;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final p6(Lhn/c;)Lhn/c;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lhn/c<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/l;->l(Lhn/c;)V

    return-object p1
.end method

.method public final p7(JLjava/util/concurrent/TimeUnit;Lhn/b;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, LBe/l;->u7(JLjava/util/concurrent/TimeUnit;Lhn/b;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final p8(Ljava/util/concurrent/Callable;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;I)",
            "LBe/l<",
            "LBe/l<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "boundaryIndicatorSupplier is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/W1;

    invoke-direct {v0, p0, p1, p2}, LLe/W1;-><init>(LBe/l;Ljava/util/concurrent/Callable;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q(I)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/b;

    invoke-direct {v0, p0, p1}, LLe/b;-><init>(LBe/l;I)V

    return-object v0
.end method

.method public final q1(LFe/o;Z)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;Z)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->r1(LFe/o;ZI)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q2(Ljava/lang/Object;)LBe/K;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, LBe/l;->k2(JLjava/lang/Object;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final q4(Ljava/lang/Class;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->l(Ljava/lang/Class;)LFe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->p2(LFe/r;)LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->d0(Ljava/lang/Class;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q5(J)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LHe/a;->c()LFe/r;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->r5(JLFe/r;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q6(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/z1;

    invoke-direct {v0, p0, p1}, LLe/z1;-><init>(LBe/l;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q7(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, LBe/l;->v7(Lhn/b;LFe/o;Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final q8(Lhn/b;LFe/c;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Y1;

    invoke-direct {v0, p0, p2, p1}, LLe/Y1;-><init>(LBe/l;LFe/c;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r()Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, LTe/e;

    invoke-direct {v0}, LTe/e;-><init>()V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    invoke-virtual {v0}, LTe/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final r1(LFe/o;ZI)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/Q<",
            "+TR;>;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p3, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LNe/e;

    if-eqz p2, :cond_0

    sget-object p2, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, LNe/e;-><init>(LBe/l;LFe/o;Lio/reactivex/internal/util/j;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r2()LBe/s;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LBe/l;->j2(J)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final r4()LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, LBe/l;->v4(IZZ)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final r5(JLFe/r;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "predicate is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/g1;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/g1;-><init>(LBe/l;JLFe/r;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "times >= 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public final r6(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/l;->s6(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r7(LFe/o;LBe/l;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;",
            "LBe/l<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, LBe/l;->v7(Lhn/b;LFe/o;Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final r8(Lhn/b;Lhn/b;LFe/h;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TT1;>;",
            "Lhn/b<",
            "TT2;>;",
            "LFe/h<",
            "-TT;-TT1;-TT2;TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, LHe/a;->y(LFe/h;)LFe/o;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0, p3}, LBe/l;->v8([Lhn/b;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    new-instance v0, LTe/e;

    invoke-direct {v0}, LTe/e;-><init>()V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    invoke-virtual {v0}, LTe/c;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public final s1(LBe/i;)LBe/l;
    .locals 1
    .param p1    # LBe/i;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/A;

    invoke-direct {v0, p0, p1}, LLe/A;-><init>(LBe/l;LBe/i;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s2()LBe/K;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LBe/l;->l2(J)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final s4(I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, LBe/l;->v4(IZZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s5(LFe/d;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/d<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/f1;

    invoke-direct {v0, p0, p1}, LLe/f1;-><init>(LBe/l;LFe/d;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s6(LFe/o;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->t6(LFe/o;IZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s7(Lhn/b;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutIndicator is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->v7(Lhn/b;LFe/o;Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final s8(Lhn/b;Lhn/b;Lhn/b;LFe/i;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TT1;>;",
            "Lhn/b<",
            "TT2;>;",
            "Lhn/b<",
            "TT3;>;",
            "LFe/i<",
            "-TT;-TT1;-TT2;-TT3;TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p4}, LHe/a;->z(LFe/i;)LFe/o;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-virtual {p0, v0, p4}, LBe/l;->v8([Lhn/b;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/c;

    invoke-direct {v0, p0}, LLe/c;-><init>(Lhn/b;)V

    return-object v0
.end method

.method public final t1(LBe/y;)LBe/l;
    .locals 1
    .param p1    # LBe/y;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/y<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/B;

    invoke-direct {v0, p0, p1}, LLe/B;-><init>(LBe/l;LBe/y;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t2(LFe/o;)LBe/l;
    .locals 3
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t4(ILFe/a;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, LBe/l;->w4(IZZLFe/a;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t5(LFe/r;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, p1}, LBe/l;->r5(JLFe/r;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public t6(LFe/o;IZ)LBe/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;IZ)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bufferSize"

    invoke-static {p2, v0}, LHe/b;->h(ILjava/lang/String;)I

    instance-of v0, p0, LIe/m;

    if-eqz v0, :cond_1

    move-object p2, p0

    check-cast p2, LIe/m;

    invoke-interface {p2}, LIe/m;->call()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, LBe/l;->m2()LBe/l;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, LLe/k1;->a(Ljava/lang/Object;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, LLe/A1;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/A1;-><init>(LBe/l;LFe/o;IZ)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t7(Lhn/b;LFe/o;Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "firstTimeoutSelector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "other is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, LBe/l;->v7(Lhn/b;LFe/o;Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final t8(Lhn/b;Lhn/b;Lhn/b;Lhn/b;LFe/j;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TT1;>;",
            "Lhn/b<",
            "TT2;>;",
            "Lhn/b<",
            "TT3;>;",
            "Lhn/b<",
            "TT4;>;",
            "LFe/j<",
            "-TT;-TT1;-TT2;-TT3;-TT4;TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "source1 is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source2 is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source3 is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "source4 is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p5}, LHe/a;->A(LFe/j;)LFe/o;

    move-result-object p5

    const/4 v0, 0x4

    new-array v0, v0, [Lhn/b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    invoke-virtual {p0, v0, p5}, LBe/l;->v8([Lhn/b;LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u1(LBe/Q;)LBe/l;
    .locals 1
    .param p1    # LBe/Q;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/C;

    invoke-direct {v0, p0, p1}, LLe/C;-><init>(LBe/l;LBe/Q;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u2(LFe/o;I)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u4(IZ)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->v4(IZZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u5(LFe/e;)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/e;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "stop is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p1}, LHe/a;->v(LFe/e;)LFe/r;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, LBe/l;->r5(JLFe/r;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u6(LFe/o;)LBe/c;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LNe/f;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final u7(JLjava/util/concurrent/TimeUnit;Lhn/b;LBe/J;)LBe/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lhn/b<",
            "+TT;>;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "timeUnit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/N1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, LLe/N1;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final u8(Ljava/lang/Iterable;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lhn/b<",
            "*>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Z1;

    invoke-direct {v0, p0, p1, p2}, LLe/Z1;-><init>(LBe/l;Ljava/lang/Iterable;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/d;

    invoke-direct {v0, p0, p1}, LLe/d;-><init>(LBe/l;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final v1(Lhn/b;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LBe/l;->C0(Lhn/b;Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v2(LFe/o;LFe/c;)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v4

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, LBe/l;->z2(LFe/o;LFe/c;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v3()LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, LHe/a;->b()LFe/r;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->c(LFe/r;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final v4(IZZ)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "capacity"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/L0;

    sget-object v6, LHe/a;->c:LFe/a;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v6}, LLe/L0;-><init>(LBe/l;IZZLFe/a;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v5(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-",
            "LBe/l<",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lhn/b<",
            "*>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "handler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/h1;

    invoke-direct {v0, p0, p1}, LLe/h1;-><init>(LBe/l;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v6(LFe/o;)LBe/c;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/i;",
            ">;)",
            "LBe/c;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LNe/f;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public final v7(Lhn/b;LFe/o;Lhn/b;)LBe/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "itemTimeoutIndicator is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/M1;

    invoke-direct {v0, p0, p1, p2, p3}, LLe/M1;-><init>(LBe/l;Lhn/b;LFe/o;Lhn/b;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final v8([Lhn/b;LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lhn/b<",
            "*>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "others is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/Z1;

    invoke-direct {v0, p0, p1, p2}, LLe/Z1;-><init>(LBe/l;[Lhn/b;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w()Ljava/lang/Iterable;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/e;

    invoke-direct {v0, p0}, LLe/e;-><init>(Lhn/b;)V

    return-object v0
.end method

.method public final w1(Ljava/lang/Object;)LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->i(Ljava/lang/Object;)LFe/r;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/l;->i(LFe/r;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final w2(LFe/o;LFe/c;I)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, LBe/l;->z2(LFe/o;LFe/c;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w3(Lhn/b;LFe/o;LFe/o;LFe/c;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftEnd:Ljava/lang/Object;",
            "TRightEnd:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TTRight;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LFe/o<",
            "-TTRight;+",
            "Lhn/b<",
            "TTRightEnd;>;>;",
            "LFe/c<",
            "-TT;-TTRight;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "leftEnd is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rightEnd is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "resultSelector is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/w0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LLe/w0;-><init>(LBe/l;Lhn/b;LFe/o;LFe/o;LFe/c;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w4(IZZLFe/a;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "LFe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onOverflow is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacity"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/L0;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LLe/L0;-><init>(LBe/l;IZZLFe/a;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final w5(Lhn/c;)V
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lcf/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcf/d;

    invoke-virtual {p0, p1}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcf/d;

    invoke-direct {v0, p1}, Lcf/d;-><init>(Lhn/c;)V

    invoke-virtual {p0, v0}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method

.method public final w6(LFe/o;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LBe/l;->x6(LFe/o;I)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x()Ljava/lang/Object;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/l;->O5()LBe/K;

    move-result-object v0

    invoke-virtual {v0}, LBe/K;->k()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final x1()LBe/K;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, LLe/E;

    invoke-direct {v0, p0}, LLe/E;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final x2(LFe/o;LFe/c;Z)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;Z)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v4

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/l;->z2(LFe/o;LFe/c;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x4(JLFe/a;LBe/a;)LBe/l;
    .locals 7
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LFe/a;",
            "LBe/a;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "overflowStrategy is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "capacity"

    invoke-static {p1, p2, v0}, LHe/b;->i(JLjava/lang/String;)J

    new-instance v0, LLe/M0;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, LLe/M0;-><init>(LBe/l;JLFe/a;LBe/a;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x5(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->y5(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final x6(LFe/o;I)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->SPECIAL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TR;>;>;I)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LBe/l;->t6(LFe/o;IZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/l;->M5(Ljava/lang/Object;)LBe/K;

    move-result-object p1

    invoke-virtual {p1}, LBe/K;->k()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final y2(LFe/o;LFe/c;ZI)LBe/l;
    .locals 6
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;ZI)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/l;->z2(LFe/o;LFe/c;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y4(Z)LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, LBe/l;->a0()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, LBe/l;->v4(IZZ)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y5(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/j1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, LLe/j1;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y6(LFe/o;)LBe/l;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LNe/g;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final y7()LBe/l;
    .locals 2
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LBe/l;->B7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final z()V
    .locals 0
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {p0}, LLe/l;->a(Lhn/b;)V

    return-void
.end method

.method public final z0(LBe/r;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/r<",
            "-TT;+TR;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "composer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/r;

    invoke-interface {p1, p0}, LBe/r;->a(LBe/l;)Lhn/b;

    move-result-object p1

    invoke-static {p1}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z1(JLjava/util/concurrent/TimeUnit;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "io.reactivex:computation"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/l;->A1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z2(LFe/o;LFe/c;ZII)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->FULL:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "+TU;>;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;ZII)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "combiner is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "maxConcurrency"

    invoke-static {p4, v0}, LHe/b;->h(ILjava/lang/String;)I

    const-string v0, "bufferSize"

    invoke-static {p5, v0}, LHe/b;->h(ILjava/lang/String;)I

    invoke-static {p1, p2}, LLe/t0;->b(LFe/o;LFe/c;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, LBe/l;->E2(LFe/o;ZII)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z4()LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/N0;

    invoke-direct {v0, p0}, LLe/N0;-><init>(LBe/l;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final z5(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/l;
    .locals 8
    .annotation runtime LCe/b;
        value = .enum LCe/a;->ERROR:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "Z)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/j1;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LLe/j1;-><init>(LBe/l;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z6(LFe/o;)LBe/l;
    .locals 2
    .param p1    # LFe/o;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation runtime LCe/b;
        value = .enum LCe/a;->UNBOUNDED_IN:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LFe/o<",
            "-TT;+",
            "LBe/y<",
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LNe/g;-><init>(LBe/l;LFe/o;Z)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final z7(LBe/J;)LBe/l;
    .locals 1
    .annotation runtime LCe/b;
        value = .enum LCe/a;->PASS_THROUGH:LCe/a;
    .end annotation

    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/J;",
            ")",
            "LBe/l<",
            "Laf/d<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, p1}, LBe/l;->B7(Ljava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p1

    return-object p1
.end method
