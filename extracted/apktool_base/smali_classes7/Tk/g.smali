.class public LTk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;

.field public static b:Ljava/util/Set;

.field public static c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LTk/g;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LTk/g;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LTk/g;->c:Ljava/util/Set;

    sget-object v0, LTk/g;->a:Ljava/util/Map;

    sget-object v1, LXh/t;->e4:Loh/x;

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LTk/g;->a:Ljava/util/Map;

    sget-object v3, LXh/t;->f4:Loh/x;

    const/16 v4, 0x28

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LTk/g;->a:Ljava/util/Map;

    sget-object v5, LXh/t;->g4:Loh/x;

    const/16 v6, 0xc0

    invoke-static {v6}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LTk/g;->a:Ljava/util/Map;

    sget-object v6, LXh/t;->h4:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LTk/g;->a:Ljava/util/Map;

    sget-object v7, LXh/t;->i4:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LTk/g;->a:Ljava/util/Map;

    sget-object v2, LXh/t;->j4:Loh/x;

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LTk/g;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LTk/g;->b:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LTk/g;->c:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, LTk/g;->c:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;LBi/D;ILXh/s;[C)LBi/k;
    .locals 1

    new-instance v0, LOi/H;

    invoke-direct {v0, p1}, LOi/H;-><init>(LBi/y;)V

    invoke-static {p4}, LBi/L;->a([C)[B

    move-result-object p1

    invoke-virtual {p3}, LXh/s;->u()[B

    move-result-object p4

    invoke-virtual {p3}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p4, p3}, LBi/L;->j([B[BI)V

    invoke-static {p0}, LTk/g;->e(Loh/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, LTk/g;->d(Loh/x;)I

    move-result p0

    invoke-virtual {v0, p0}, LOi/H;->e(I)LBi/k;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LTk/g;->d(Loh/x;)I

    move-result p1

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {v0, p1, p2}, LOi/H;->f(II)LBi/k;

    move-result-object p1

    invoke-static {p0}, LTk/g;->f(Loh/x;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object p0, p1

    check-cast p0, LXi/w0;

    invoke-virtual {p0}, LXi/w0;->b()LBi/k;

    move-result-object p0

    check-cast p0, LXi/o0;

    invoke-virtual {p0}, LXi/o0;->b()[B

    move-result-object p0

    invoke-static {p0}, LXi/k;->f([B)V

    :cond_1
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static b(Loh/x;LBi/D;LXh/s;[C)LQk/A;
    .locals 4

    new-instance v0, LOi/H;

    invoke-direct {v0, p1}, LOi/H;-><init>(LBi/y;)V

    invoke-static {p3}, LBi/L;->a([C)[B

    move-result-object v1

    invoke-virtual {p2}, LXh/s;->u()[B

    move-result-object v2

    invoke-virtual {p2}, LXh/s;->x()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, LBi/L;->j([B[BI)V

    invoke-interface {p1}, LBi/y;->f()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, LOi/H;->d(I)LBi/k;

    move-result-object v0

    check-cast v0, LXi/o0;

    new-instance v1, LSi/k;

    invoke-direct {v1, p1}, LSi/k;-><init>(LBi/y;)V

    invoke-virtual {v1, v0}, LSi/k;->a(LBi/k;)V

    new-instance p1, LTk/g$a;

    invoke-direct {p1, p0, p2, v1, p3}, LTk/g$a;-><init>(Loh/x;LXh/s;LSi/k;[C)V

    return-object p1
.end method

.method public static c(Loh/x;)LWi/e;
    .locals 2

    sget-object v0, LXh/t;->g4:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LXh/t;->h4:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, LXh/t;->i4:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, LXh/t;->j4:Loh/x;

    invoke-virtual {p0, v0}, Loh/B;->A(Loh/B;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unknown algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, LLi/V;

    invoke-direct {p0}, LLi/V;-><init>()V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance p0, LLi/v;

    invoke-direct {p0}, LLi/v;-><init>()V

    :goto_2
    new-instance v0, LWi/e;

    new-instance v1, LTi/c;

    invoke-direct {v1, p0}, LTi/c;-><init>(LBi/f;)V

    new-instance p0, LWi/d;

    invoke-direct {p0}, LWi/d;-><init>()V

    invoke-direct {v0, v1, p0}, LWi/e;-><init>(LBi/f;LWi/a;)V

    return-object v0
.end method

.method public static d(Loh/x;)I
    .locals 1

    sget-object v0, LTk/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static e(Loh/x;)Z
    .locals 1

    sget-object v0, LTk/g;->b:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f(Loh/x;)Z
    .locals 1

    sget-object v0, LTk/g;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
