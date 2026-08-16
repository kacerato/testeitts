.class public abstract LBe/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBe/Q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBe/Q<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A0(Ljava/lang/Iterable;)LBe/l;
    .locals 0
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->z0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static B0(LBe/Q;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+",
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/x;

    invoke-static {}, LHe/a;->k()LFe/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LQe/x;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static B1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "LFe/o<",
            "-TU;+",
            "LBe/Q<",
            "+TT;>;>;",
            "LFe/g<",
            "-TU;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, LBe/K;->C1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static C(LBe/O;)LBe/K;
    .locals 1
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
            "LBe/O<",
            "TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/d;

    invoke-direct {v0, p0}, LQe/d;-><init>(LBe/O;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static C0(LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->F0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static C1(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)LBe/K;
    .locals 1
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
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TU;>;",
            "LFe/o<",
            "-TU;+",
            "LBe/Q<",
            "+TT;>;>;",
            "LFe/g<",
            "-TU;>;Z)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resourceSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "singleFunction is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "disposer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/Y;

    invoke-direct {v0, p0, p1, p2, p3}, LQe/Y;-><init>(Ljava/util/concurrent/Callable;LFe/o;LFe/g;Z)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "singleSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/e;

    invoke-direct {v0, p0}, LQe/e;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static D0(LBe/Q;LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->F0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static D1(LBe/Q;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "source is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LBe/K;

    if-eqz v0, :cond_0

    check-cast p0, LBe/K;

    invoke-static {p0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LQe/F;

    invoke-direct {v0, p0}, LQe/F;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static E0(LBe/Q;LBe/Q;LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->F0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static E1(LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LFe/n;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LBe/Q<",
            "+TT3;>;",
            "LBe/Q<",
            "+TT4;>;",
            "LBe/Q<",
            "+TT5;>;",
            "LBe/Q<",
            "+TT6;>;",
            "LBe/Q<",
            "+TT7;>;",
            "LBe/Q<",
            "+TT8;>;",
            "LBe/Q<",
            "+TT9;>;",
            "LFe/n<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

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

    invoke-static {p9, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static F0(Lhn/b;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/e0;

    invoke-static {}, LQe/H;->c()LFe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LLe/e0;-><init>(Lhn/b;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static F1(LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LFe/m;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LBe/Q<",
            "+TT3;>;",
            "LBe/Q<",
            "+TT4;>;",
            "LBe/Q<",
            "+TT5;>;",
            "LBe/Q<",
            "+TT6;>;",
            "LBe/Q<",
            "+TT7;>;",
            "LBe/Q<",
            "+TT8;>;",
            "LFe/m<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

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

    invoke-static {p8, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static G0(Ljava/lang/Iterable;)LBe/l;
    .locals 0
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->F0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static G1(LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LFe/l;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LBe/Q<",
            "+TT3;>;",
            "LBe/Q<",
            "+TT4;>;",
            "LBe/Q<",
            "+TT5;>;",
            "LBe/Q<",
            "+TT6;>;",
            "LBe/Q<",
            "+TT7;>;",
            "LFe/l<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

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

    invoke-static {p7, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static H1(LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LFe/k;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LBe/Q<",
            "+TT3;>;",
            "LBe/Q<",
            "+TT4;>;",
            "LBe/Q<",
            "+TT5;>;",
            "LBe/Q<",
            "+TT6;>;",
            "LFe/k<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

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

    invoke-static {p6, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static I0()LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LQe/M;->b:LBe/K;

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public static I1(LBe/Q;LBe/Q;LBe/Q;LBe/Q;LBe/Q;LFe/j;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LBe/Q<",
            "+TT3;>;",
            "LBe/Q<",
            "+TT4;>;",
            "LBe/Q<",
            "+TT5;>;",
            "LFe/j<",
            "-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

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

    invoke-static {p5, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static J1(LBe/Q;LBe/Q;LBe/Q;LBe/Q;LFe/i;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LBe/Q<",
            "+TT3;>;",
            "LBe/Q<",
            "+TT4;>;",
            "LFe/i<",
            "-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {p4, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static K1(LBe/Q;LBe/Q;LBe/Q;LFe/h;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LBe/Q<",
            "+TT3;>;",
            "LFe/h<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {p3, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static L1(LBe/Q;LBe/Q;LFe/c;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT1;>;",
            "LBe/Q<",
            "+TT2;>;",
            "LFe/c<",
            "-TT1;-TT2;+TR;>;)",
            "LBe/K<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {p2, v0}, LBe/K;->N1(LFe/o;[LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static M1(Ljava/lang/Iterable;LFe/o;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "+TT;>;>;",
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/a0;

    invoke-direct {v0, p0, p1}, LQe/a0;-><init>(Ljava/lang/Iterable;LFe/o;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs N1(LFe/o;[LBe/Q;)LBe/K;
    .locals 1
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
            "+TR;>;[",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "zipper is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "sources is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p0}, LBe/K;->Z(Ljava/lang/Throwable;)LBe/K;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, LQe/Z;

    invoke-direct {v0, p1, p0}, LQe/Z;-><init>([LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static Y(LBe/Q;LBe/Q;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "first is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "second is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/v;

    invoke-direct {v0, p0, p1}, LQe/v;-><init>(LBe/Q;LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static Z(Ljava/lang/Throwable;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "exception is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, LHe/a;->m(Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LBe/K;->a0(Ljava/util/concurrent/Callable;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "errorSupplier is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/w;

    invoke-direct {v0, p0}, LQe/w;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LQe/a;-><init>([LBe/Q;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([LBe/Q;)LBe/K;
    .locals 2
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
            "LBe/Q<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    invoke-static {}, LQe/H;->a()Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-static {p0}, LBe/K;->a0(Ljava/util/concurrent/Callable;)LBe/K;

    move-result-object p0

    return-object p0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, LBe/K;->D1(LBe/Q;)LBe/K;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, LQe/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LQe/a;-><init>([LBe/Q;Ljava/lang/Iterable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static j0(Ljava/util/concurrent/Callable;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callable is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/D;

    invoke-direct {v0, p0}, LQe/D;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static k0(Ljava/util/concurrent/Future;)LBe/K;
    .locals 0
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->V2(Ljava/util/concurrent/Future;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LBe/K;
    .locals 0
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
            "Ljava/util/concurrent/Future<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, LBe/l;->W2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static m0(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/K;
    .locals 0
    .annotation runtime LCe/d;
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, LBe/l;->X2(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static n0(Ljava/util/concurrent/Future;LBe/J;)LBe/K;
    .locals 0
    .annotation runtime LCe/d;
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, LBe/l;->Y2(Ljava/util/concurrent/Future;LBe/J;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static o(LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->r(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static o0(LBe/G;)LBe/K;
    .locals 2
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
            "LBe/G<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "observableSource is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/f1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LOe/f1;-><init>(LBe/G;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static p(LBe/Q;LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->r(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static p0(Lhn/b;)LBe/K;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "publisher is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/E;

    invoke-direct {v0, p0}, LQe/E;-><init>(Lhn/b;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static q(LBe/Q;LBe/Q;LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->r(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static q1(JLjava/util/concurrent/TimeUnit;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, LBe/K;->r1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lhn/b;)LBe/l;
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
            "+",
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, LBe/K;->s(Lhn/b;I)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static r1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/U;

    invoke-direct {v0, p0, p1, p2, p3}, LQe/U;-><init>(JLjava/util/concurrent/TimeUnit;LBe/J;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lhn/b;I)LBe/l;
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
            "+",
            "LBe/Q<",
            "+TT;>;>;I)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "prefetch"

    invoke-static {p1, v0}, LHe/b;->h(ILjava/lang/String;)I

    new-instance v0, LLe/z;

    invoke-static {}, LQe/H;->c()LFe/o;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, p1, v2}, LLe/z;-><init>(Lhn/b;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static s0(Ljava/lang/Object;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/I;

    invoke-direct {v0, p0}, LQe/I;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Iterable;)LBe/l;
    .locals 0
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->r(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static u(LBe/G;)LBe/B;
    .locals 4
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
            "LBe/G<",
            "+",
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/B<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LOe/v;

    invoke-static {}, LQe/H;->d()LFe/o;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, v2, v3}, LOe/v;-><init>(LBe/G;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v([LBe/Q;)LBe/l;
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
            ">([",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/w;

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {}, LQe/H;->c()LFe/o;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    invoke-direct {v0, p0, v1, v2, v3}, LLe/w;-><init>(LBe/l;LFe/o;ILio/reactivex/internal/util/j;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w([LBe/Q;)LBe/l;
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
            ">([",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {}, LQe/H;->c()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->c1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static w0(LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->z0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lhn/b;)LBe/l;
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
            "+",
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->a3(Lhn/b;)LBe/l;

    move-result-object p0

    invoke-static {}, LQe/H;->c()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->c1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static x0(LBe/Q;LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->z0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Iterable;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, LBe/l;->Z2(Ljava/lang/Iterable;)LBe/l;

    move-result-object p0

    invoke-static {}, LQe/H;->c()LFe/o;

    move-result-object v0

    invoke-virtual {p0, v0}, LBe/l;->c1(LFe/o;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y0(LBe/Q;LBe/Q;LBe/Q;LBe/Q;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
            "+TT;>;",
            "LBe/Q<",
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

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    invoke-static {v0}, LBe/l;->T2([Ljava/lang/Object;)LBe/l;

    move-result-object p0

    invoke-static {p0}, LBe/K;->z0(Lhn/b;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static y1(LBe/l;)LBe/K;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/l<",
            "TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LLe/s1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LLe/s1;-><init>(LBe/l;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0
.end method

.method public static z0(Lhn/b;)LBe/l;
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "sources is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LLe/e0;

    invoke-static {}, LQe/H;->c()LFe/o;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-static {}, LBe/l;->a0()I

    move-result v6

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, LLe/e0;-><init>(Lhn/b;LFe/o;ZII)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p0

    return-object p0
.end method

.method public static z1(LBe/Q;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p0, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, LBe/K;

    if-nez v0, :cond_0

    new-instance v0, LQe/F;

    invoke-direct {v0, p0}, LQe/F;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsafeCreate(Single) should be upgraded"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
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

    invoke-static {}, LHe/b;->d()LFe/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LBe/K;->B(Ljava/lang/Object;LFe/d;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final A1(LBe/J;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/X;

    invoke-direct {v0, p0, p1}, LQe/X;-><init>(LBe/Q;LBe/J;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final B(Ljava/lang/Object;LFe/d;)LBe/K;
    .locals 1
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
            "LFe/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "LBe/K<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "value is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "comparer is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/c;

    invoke-direct {v0, p0, p1, p2}, LQe/c;-><init>(LBe/Q;Ljava/lang/Object;LFe/d;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final E(JLjava/util/concurrent/TimeUnit;)LBe/K;
    .locals 6
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/K;->G(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final F(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/K;
    .locals 6
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/K;->G(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final G(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/K;
    .locals 8
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/f;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, LQe/f;-><init>(LBe/Q;JLjava/util/concurrent/TimeUnit;LBe/J;Z)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H(JLjava/util/concurrent/TimeUnit;Z)LBe/K;
    .locals 6
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LBe/K;->G(JLjava/util/concurrent/TimeUnit;LBe/J;Z)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final H0(LBe/Q;)LBe/l;
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
            "(",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, LBe/K;->w0(LBe/Q;LBe/Q;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final I(JLjava/util/concurrent/TimeUnit;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, LBe/K;->J(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final J(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/K;
    .locals 0
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, LBe/B;->R6(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/B;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/K;->L(LBe/G;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final J0(LBe/J;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/N;

    invoke-direct {v0, p0, p1}, LQe/N;-><init>(LBe/Q;LBe/J;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K(LBe/i;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/g;

    invoke-direct {v0, p0, p1}, LQe/g;-><init>(LBe/Q;LBe/i;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final K0(LBe/K;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeSingleInCaseOfError is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/K;->L0(LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final L(LBe/G;)LBe/K;
    .locals 1
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
            "LBe/G<",
            "TU;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/h;

    invoke-direct {v0, p0, p1}, LQe/h;-><init>(LBe/Q;LBe/G;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final L0(LFe/o;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "+TT;>;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunctionInCaseOfError is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/P;

    invoke-direct {v0, p0, p1}, LQe/P;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M(LBe/Q;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "TU;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/j;

    invoke-direct {v0, p0, p1}, LQe/j;-><init>(LBe/Q;LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final M0(LFe/o;)LBe/K;
    .locals 2
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
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "resumeFunction is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LQe/O;-><init>(LBe/Q;LFe/o;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final N(Lhn/b;)LBe/K;
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/i;

    invoke-direct {v0, p0, p1}, LQe/i;-><init>(LBe/Q;Lhn/b;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final N0(Ljava/lang/Object;)LBe/K;
    .locals 2
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

    const-string v0, "value is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/O;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, LQe/O;-><init>(LBe/Q;LFe/o;Ljava/lang/Object;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final O(LFe/o;)LBe/s;
    .locals 1
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
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "selector is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/k;

    invoke-direct {v0, p0, p1}, LQe/k;-><init>(LBe/K;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final O0()LBe/K;
    .locals 1
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

    new-instance v0, LQe/l;

    invoke-direct {v0, p0}, LQe/l;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final O1(LBe/Q;LFe/c;)LBe/K;
    .locals 0
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
            "LBe/Q<",
            "TU;>;",
            "LFe/c<",
            "-TT;-TU;+TR;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LBe/K;->L1(LBe/Q;LBe/Q;LFe/c;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final P(LFe/g;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterSuccess is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/m;

    invoke-direct {v0, p0, p1}, LQe/m;-><init>(LBe/Q;LFe/g;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final P0()LBe/l;
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

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0}, LBe/l;->V4()LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final Q(LFe/a;)LBe/K;
    .locals 1
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
            "LFe/a;",
            ")",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onAfterTerminate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/n;

    invoke-direct {v0, p0, p1}, LQe/n;-><init>(LBe/Q;LFe/a;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Q0(J)LBe/l;
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

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LBe/l;->W4(J)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final R(LFe/a;)LBe/K;
    .locals 1
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
            "LFe/a;",
            ")",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onFinally is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/o;

    invoke-direct {v0, p0, p1}, LQe/o;-><init>(LBe/Q;LFe/a;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final R0(LFe/e;)LBe/l;
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
            "LFe/e;",
            ")",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->X4(LFe/e;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final S(LFe/a;)LBe/K;
    .locals 1
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
            "LFe/a;",
            ")",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onDispose is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/p;

    invoke-direct {v0, p0, p1}, LQe/p;-><init>(LBe/Q;LFe/a;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final S0(LFe/o;)LBe/l;
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

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->Y4(LFe/o;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final T(LFe/g;)LBe/K;
    .locals 1
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
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onError is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/q;

    invoke-direct {v0, p0, p1}, LQe/q;-><init>(LBe/Q;LFe/g;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final T0()LBe/K;
    .locals 1
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

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0}, LBe/l;->p5()LBe/l;

    move-result-object v0

    invoke-static {v0}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final U(LFe/b;)LBe/K;
    .locals 1
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
            "LFe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onEvent is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/r;

    invoke-direct {v0, p0, p1}, LQe/r;-><init>(LBe/Q;LFe/b;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final U0(J)LBe/K;
    .locals 1
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

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LBe/l;->q5(J)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final V(LFe/g;)LBe/K;
    .locals 1
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
            "LDe/c;",
            ">;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSubscribe is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/s;

    invoke-direct {v0, p0, p1}, LQe/s;-><init>(LBe/Q;LFe/g;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final V0(JLFe/r;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LBe/l;->r5(JLFe/r;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final W(LFe/g;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/t;

    invoke-direct {v0, p0, p1}, LQe/t;-><init>(LBe/Q;LFe/g;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final W0(LFe/d;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->s5(LFe/d;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final X(LFe/a;)LBe/K;
    .locals 1
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
            "(",
            "LFe/a;",
            ")",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onTerminate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/u;

    invoke-direct {v0, p0, p1}, LQe/u;-><init>(LBe/Q;LFe/a;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final X0(LFe/r;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->t5(LFe/r;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Y0(LFe/o;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, LBe/K;->u1()LBe/l;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/l;->v5(LFe/o;)LBe/l;

    move-result-object p1

    invoke-static {p1}, LBe/K;->y1(LBe/l;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final Z0()LDe/c;
    .locals 2
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    invoke-static {}, LHe/a;->h()LFe/g;

    move-result-object v0

    sget-object v1, LHe/a;->f:LFe/g;

    invoke-virtual {p0, v0, v1}, LBe/K;->c1(LFe/g;LFe/g;)LDe/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(LBe/N;)V
    .locals 2
    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, LYe/a;->g0(LBe/K;LBe/N;)LBe/N;

    move-result-object p1

    const-string v0, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1}, LBe/K;->d1(LBe/N;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "subscribeActual failed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :catch_0
    move-exception p1

    throw p1
.end method

.method public final a1(LFe/b;)LDe/c;
    .locals 1
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
            "LFe/b<",
            "-TT;-",
            "Ljava/lang/Throwable;",
            ">;)",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onCallback is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/d;

    invoke-direct {v0, p1}, LJe/d;-><init>(LFe/b;)V

    invoke-virtual {p0, v0}, LBe/K;->a(LBe/N;)V

    return-object v0
.end method

.method public final b0(LFe/r;)LBe/s;
    .locals 1
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
            "LBe/s<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "predicate is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LMe/z;

    invoke-direct {v0, p0, p1}, LMe/z;-><init>(LBe/Q;LFe/r;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final b1(LFe/g;)LDe/c;
    .locals 1
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

    invoke-virtual {p0, p1, v0}, LBe/K;->c1(LFe/g;LFe/g;)LDe/c;

    move-result-object p1

    return-object p1
.end method

.method public final c0(LFe/o;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/x;

    invoke-direct {v0, p0, p1}, LQe/x;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final c1(LFe/g;LFe/g;)LDe/c;
    .locals 1
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
            ">;)",
            "LDe/c;"
        }
    .end annotation

    const-string v0, "onSuccess is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    invoke-static {p2, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LJe/k;

    invoke-direct {v0, p1, p2}, LJe/k;-><init>(LFe/g;LFe/g;)V

    invoke-virtual {p0, v0}, LBe/K;->a(LBe/N;)V

    return-object v0
.end method

.method public final d0(LFe/o;)LBe/c;
    .locals 1
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

    new-instance v0, LQe/y;

    invoke-direct {v0, p0, p1}, LQe/y;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object p1

    return-object p1
.end method

.method public abstract d1(LBe/N;)V
    .param p1    # LBe/N;
        .annotation build LCe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final e0(LFe/o;)LBe/s;
    .locals 1
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
            "LBe/s<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/B;

    invoke-direct {v0, p0, p1}, LQe/B;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object p1

    return-object p1
.end method

.method public final e1(LBe/J;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/Q;

    invoke-direct {v0, p0, p1}, LQe/Q;-><init>(LBe/Q;LBe/J;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final f0(LFe/o;)LBe/B;
    .locals 1
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
            "LBe/G<",
            "+TR;>;>;)",
            "LBe/B<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LNe/s;

    invoke-direct {v0, p0, p1}, LNe/s;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final f1(LBe/N;)LBe/N;
    .locals 0
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LBe/N<",
            "-TT;>;>(TE;)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LBe/K;->a(LBe/N;)V

    return-object p1
.end method

.method public final g0(LFe/o;)LBe/l;
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
            "+TR;>;>;)",
            "LBe/l<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/C;

    invoke-direct {v0, p0, p1}, LQe/C;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final g1(LBe/i;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LKe/O;

    invoke-direct {v0, p1}, LKe/O;-><init>(LBe/i;)V

    invoke-virtual {p0, v0}, LBe/K;->i1(Lhn/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final h0(LFe/o;)LBe/l;
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
            "+TU;>;>;)",
            "LBe/l<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/z;

    invoke-direct {v0, p0, p1}, LQe/z;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object p1

    return-object p1
.end method

.method public final h1(LBe/Q;)LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/f;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LBe/Q<",
            "+TE;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/V;

    invoke-direct {v0, p1}, LQe/V;-><init>(LBe/Q;)V

    invoke-virtual {p0, v0}, LBe/K;->i1(Lhn/b;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final i(LBe/Q;)LBe/K;
    .locals 2
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [LBe/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, LBe/K;->h([LBe/Q;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final i0(LFe/o;)LBe/B;
    .locals 1
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
            "+TU;>;>;)",
            "LBe/B<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/A;

    invoke-direct {v0, p0, p1}, LQe/A;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public final i1(Lhn/b;)LBe/K;
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
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lhn/b<",
            "TE;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/S;

    invoke-direct {v0, p0, p1}, LQe/S;-><init>(LBe/Q;Lhn/b;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final j(LBe/L;)Ljava/lang/Object;
    .locals 1
    .param p1    # LBe/L;
        .annotation build LCe/f;
        .end annotation
    .end param
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
            "LBe/L<",
            "TT;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "converter is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/L;

    invoke-interface {p1, p0}, LBe/L;->a(LBe/K;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j1()LWe/n;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LWe/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    invoke-virtual {p0, v0}, LBe/K;->a(LBe/N;)V

    return-object v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1
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

    new-instance v0, LJe/h;

    invoke-direct {v0}, LJe/h;-><init>()V

    invoke-virtual {p0, v0}, LBe/K;->a(LBe/N;)V

    invoke-virtual {v0}, LJe/h;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final k1(Z)LWe/n;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LWe/n<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LWe/n;

    invoke-direct {v0}, LWe/n;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LWe/n;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, LBe/K;->a(LBe/N;)V

    return-object v0
.end method

.method public final l()LBe/K;
    .locals 1
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

    new-instance v0, LQe/b;

    invoke-direct {v0, p0}, LQe/b;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final l1(JLjava/util/concurrent/TimeUnit;)LBe/K;
    .locals 6
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LBe/K;->p1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Class;)LBe/K;
    .locals 1
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
            "+TU;>;)",
            "LBe/K<",
            "TU;>;"
        }
    .end annotation

    const-string v0, "clazz is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, LHe/a;->e(Ljava/lang/Class;)LFe/o;

    move-result-object p1

    invoke-virtual {p0, p1}, LBe/K;->u0(LFe/o;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final m1(JLjava/util/concurrent/TimeUnit;LBe/J;)LBe/K;
    .locals 6
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
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, LBe/K;->p1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n(LBe/S;)LBe/K;
    .locals 1
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
            "LBe/S<",
            "-TT;+TR;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transformer is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/S;

    invoke-interface {p1, p0}, LBe/S;->a(LBe/K;)LBe/Q;

    move-result-object p1

    invoke-static {p1}, LBe/K;->D1(LBe/Q;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final n1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)LBe/K;
    .locals 1
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
            "LBe/Q<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p5, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p5}, LBe/K;->p1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final o1(JLjava/util/concurrent/TimeUnit;LBe/Q;)LBe/K;
    .locals 7
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
            "LBe/Q<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "other is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Laf/b;->a()LBe/J;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, LBe/K;->p1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final p1(JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)LBe/K;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "LBe/J;",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/K<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "unit is null"

    invoke-static {p3, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "scheduler is null"

    invoke-static {p4, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/T;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, LQe/T;-><init>(LBe/Q;JLjava/util/concurrent/TimeUnit;LBe/J;LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final q0()LBe/K;
    .locals 1
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

    new-instance v0, LQe/G;

    invoke-direct {v0, p0}, LQe/G;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final r0()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    new-instance v0, LKe/v;

    invoke-direct {v0, p0}, LKe/v;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final s1(LFe/o;)Ljava/lang/Object;
    .locals 1
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
            "LBe/K<",
            "TT;>;TR;>;)TR;"
        }
    .end annotation

    :try_start_0
    const-string v0, "convert is null"

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

.method public final t0(LBe/P;)LBe/K;
    .locals 1
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
            "LBe/P<",
            "+TR;-TT;>;)",
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "lift is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/J;

    invoke-direct {v0, p0, p1}, LQe/J;-><init>(LBe/Q;LBe/P;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final t1()LBe/c;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, LKe/v;

    invoke-direct {v0, p0}, LKe/v;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->O(LBe/c;)LBe/c;

    move-result-object v0

    return-object v0
.end method

.method public final u0(LFe/o;)LBe/K;
    .locals 1
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
            "LBe/K<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    invoke-static {p1, v0}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LQe/K;

    invoke-direct {v0, p0, p1}, LQe/K;-><init>(LBe/Q;LFe/o;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object p1

    return-object p1
.end method

.method public final u1()LBe/l;
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

    instance-of v0, p0, LIe/b;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LIe/b;

    invoke-interface {v0}, LIe/b;->f()LBe/l;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LQe/V;

    invoke-direct {v0, p0}, LQe/V;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method

.method public final v0()LBe/K;
    .locals 1
    .annotation runtime LCe/d;
    .end annotation

    .annotation build LCe/e;
    .end annotation

    .annotation runtime LCe/h;
        value = "none"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/K<",
            "LBe/A<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, LQe/L;

    invoke-direct {v0, p0}, LQe/L;-><init>(LBe/K;)V

    invoke-static {v0}, LYe/a;->S(LBe/K;)LBe/K;

    move-result-object v0

    return-object v0
.end method

.method public final v1()Ljava/util/concurrent/Future;
    .locals 1
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

    new-instance v0, LJe/r;

    invoke-direct {v0}, LJe/r;-><init>()V

    invoke-virtual {p0, v0}, LBe/K;->f1(LBe/N;)LBe/N;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final w1()LBe/s;
    .locals 1
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

    instance-of v0, p0, LIe/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LIe/c;

    invoke-interface {v0}, LIe/c;->d()LBe/s;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LMe/N;

    invoke-direct {v0, p0}, LMe/N;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->Q(LBe/s;)LBe/s;

    move-result-object v0

    return-object v0
.end method

.method public final x1()LBe/B;
    .locals 1
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

    instance-of v0, p0, LIe/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, LIe/d;

    invoke-interface {v0}, LIe/d;->c()LBe/B;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LQe/W;

    invoke-direct {v0, p0}, LQe/W;-><init>(LBe/Q;)V

    invoke-static {v0}, LYe/a;->R(LBe/B;)LBe/B;

    move-result-object v0

    return-object v0
.end method

.method public final z(LBe/Q;)LBe/l;
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
            "(",
            "LBe/Q<",
            "+TT;>;)",
            "LBe/l<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, LBe/K;->o(LBe/Q;LBe/Q;)LBe/l;

    move-result-object p1

    return-object p1
.end method
