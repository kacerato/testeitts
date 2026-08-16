.class public Lkotlin/jvm/internal/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/jvm/internal/o0;

.field public static final b:Ljava/lang/String; = " (Kotlin reflection is not available)"

.field public static final c:[Lkotlin/reflect/KClass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/internal/o0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/jvm/internal/o0;

    invoke-direct {v0}, Lkotlin/jvm/internal/o0;-><init>()V

    :goto_0
    sput-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlin/reflect/KClass;

    sput-object v0, Lkotlin/jvm/internal/n0;->c:[Lkotlin/reflect/KClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(LWf/f;)LWf/r;
    .locals 3
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Class;)LWf/r;
    .locals 3
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/Class;LWf/t;)LWf/r;
    .locals 2
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/Class;LWf/t;LWf/t;)LWf/r;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    filled-new-array {p1, p2}, [LWf/t;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static varargs E(Ljava/lang/Class;[LWf/t;)LWf/r;
    .locals 2
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Lpf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/lang/Object;Ljava/lang/String;LWf/u;Z)LWf/s;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1, p2, p3}, Lkotlin/jvm/internal/o0;->t(Ljava/lang/Object;Ljava/lang/String;LWf/u;Z)LWf/s;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->b(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lkotlin/jvm/internal/H;)LWf/h;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->c(Lkotlin/jvm/internal/H;)LWf/h;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->e(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static f([Ljava/lang/Class;)[Lkotlin/reflect/KClass;
    .locals 4

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/jvm/internal/n0;->c:[Lkotlin/reflect/KClass;

    return-object p0

    :cond_0
    new-array v1, v0, [Lkotlin/reflect/KClass;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static g(Ljava/lang/Class;)LWf/g;
    .locals 2
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lkotlin/jvm/internal/o0;->f(Ljava/lang/Class;Ljava/lang/String;)LWf/g;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;Ljava/lang/String;)LWf/g;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->f(Ljava/lang/Class;Ljava/lang/String;)LWf/g;

    move-result-object p0

    return-object p0
.end method

.method public static i(LWf/r;)LWf/r;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->g(LWf/r;)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lkotlin/jvm/internal/W;)LWf/j;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->h(Lkotlin/jvm/internal/W;)LWf/j;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lkotlin/jvm/internal/Y;)LWf/k;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->i(Lkotlin/jvm/internal/Y;)LWf/k;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lkotlin/jvm/internal/a0;)LWf/l;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->j(Lkotlin/jvm/internal/a0;)LWf/l;

    move-result-object p0

    return-object p0
.end method

.method public static m(LWf/r;)LWf/r;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->k(LWf/r;)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static n(LWf/f;)LWf/r;
    .locals 3
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Class;)LWf/r;
    .locals 3
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Class;LWf/t;)LWf/r;
    .locals 2
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Class;LWf/t;LWf/t;)LWf/r;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    filled-new-array {p1, p2}, [LWf/t;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static varargs r(Ljava/lang/Class;[LWf/t;)LWf/r;
    .locals 2
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p0}, Lkotlin/jvm/internal/n0;->d(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p1}, Lpf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lkotlin/jvm/internal/o0;->s(LWf/f;Ljava/util/List;Z)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static s(LWf/r;LWf/r;)LWf/r;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.6"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->l(LWf/r;LWf/r;)LWf/r;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lkotlin/jvm/internal/f0;)LWf/o;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->m(Lkotlin/jvm/internal/f0;)LWf/o;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lkotlin/jvm/internal/h0;)LWf/p;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->n(Lkotlin/jvm/internal/h0;)LWf/p;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lkotlin/jvm/internal/j0;)LWf/q;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->o(Lkotlin/jvm/internal/j0;)LWf/q;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lkotlin/jvm/internal/F;)Ljava/lang/String;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.3"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->p(Lkotlin/jvm/internal/F;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lkotlin/jvm/internal/O;)Ljava/lang/String;
    .locals 1
    .annotation build Lnf/l0;
        version = "1.1"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/o0;->q(Lkotlin/jvm/internal/O;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(LWf/s;LWf/r;)V
    .locals 1
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->r(LWf/s;Ljava/util/List;)V

    return-void
.end method

.method public static varargs z(LWf/s;[LWf/r;)V
    .locals 1
    .annotation build Lnf/l0;
        version = "1.4"
    .end annotation

    sget-object v0, Lkotlin/jvm/internal/n0;->a:Lkotlin/jvm/internal/o0;

    invoke-static {p1}, Lpf/A;->cz([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lkotlin/jvm/internal/o0;->r(LWf/s;Ljava/util/List;)V

    return-void
.end method
