.class public Lkotlin/jvm/internal/b0;
.super Lkotlin/jvm/internal/a0;
.source "SourceFile"


# direct methods
.method public constructor <init>(LWf/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lkotlin/jvm/internal/u;

    .line 2
    invoke-interface {v0}, Lkotlin/jvm/internal/u;->f()Ljava/lang/Class;

    move-result-object v0

    instance-of p1, p1, Lkotlin/reflect/KClass;

    xor-int/lit8 p1, p1, 0x1

    .line 3
    invoke-direct {p0, v0, p2, p3, p1}, Lkotlin/jvm/internal/a0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/jvm/internal/a0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a0;->c()LWf/q$a;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LWf/c;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/a0;->a()LWf/l$a;

    move-result-object v0

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LWf/c;->call([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
