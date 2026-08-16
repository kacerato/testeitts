.class public Lph/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lki/m;

.field public static final b:Ljava/util/Hashtable;

.field public static final c:Ljava/util/Hashtable;

.field public static final d:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lph/a$a;

    invoke-direct {v0}, Lph/a$a;-><init>()V

    sput-object v0, Lph/a;->a:Lki/m;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lph/a;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lph/a;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lph/a;->d:Ljava/util/Hashtable;

    sget-object v0, Lph/b;->a:Loh/x;

    sget-object v1, Lph/a;->a:Lki/m;

    const-string v2, "FRP256v1"

    invoke-static {v2, v0, v1}, Lph/a;->f(Ljava/lang/String;Loh/x;Lki/m;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p0}, Lph/a;->g(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljk/e;)Ljk/e;
    .locals 0

    invoke-static {p0}, Lph/a;->e(Ljk/e;)Ljk/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljk/e;Ljava/lang/String;)Lki/n;
    .locals 0

    invoke-static {p0, p1}, Lph/a;->d(Ljk/e;Ljava/lang/String;)Lki/n;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljk/e;Ljava/lang/String;)Lki/n;
    .locals 1

    new-instance v0, Lki/n;

    invoke-static {p1}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lki/n;-><init>(Ljk/e;[B)V

    invoke-virtual {v0}, Lki/n;->u()Ljk/i;

    move-result-object p0

    invoke-static {p0}, Ljk/B;->c(Ljk/i;)V

    return-object v0
.end method

.method public static e(Ljk/e;)Ljk/e;
    .locals 0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Loh/x;Lki/m;)V
    .locals 2

    sget-object v0, Lph/a;->b:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lph/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lph/a;->c:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Lki/l;
    .locals 0

    invoke-static {p0}, Lph/a;->n(Ljava/lang/String;)Loh/x;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lph/a;->j(Loh/x;)Lki/l;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Lki/m;
    .locals 0

    invoke-static {p0}, Lph/a;->n(Ljava/lang/String;)Loh/x;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lph/a;->k(Loh/x;)Lki/m;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static j(Loh/x;)Lki/l;
    .locals 0

    invoke-static {p0}, Lph/a;->k(Loh/x;)Lki/m;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lki/m;->d()Lki/l;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static k(Loh/x;)Lki/m;
    .locals 1

    sget-object v0, Lph/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lki/m;

    return-object p0
.end method

.method public static l(Loh/x;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lph/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static m()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, Lph/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;)Loh/x;
    .locals 1

    sget-object v0, Lph/a;->b:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loh/x;

    return-object p0
.end method
