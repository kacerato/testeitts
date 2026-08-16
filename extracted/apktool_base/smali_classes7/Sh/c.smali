.class public LSh/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, LSh/c;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, LSh/c;->b:Ljava/util/Hashtable;

    const-string v0, "B-571"

    sget-object v1, LZh/d;->F:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "B-409"

    sget-object v1, LZh/d;->D:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "B-283"

    sget-object v1, LZh/d;->n:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "B-233"

    sget-object v1, LZh/d;->t:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "B-163"

    sget-object v1, LZh/d;->l:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "K-571"

    sget-object v1, LZh/d;->E:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "K-409"

    sget-object v1, LZh/d;->C:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "K-283"

    sget-object v1, LZh/d;->m:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "K-233"

    sget-object v1, LZh/d;->s:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "K-163"

    sget-object v1, LZh/d;->b:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "P-521"

    sget-object v1, LZh/d;->B:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "P-384"

    sget-object v1, LZh/d;->A:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "P-256"

    sget-object v1, LZh/d;->H:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "P-224"

    sget-object v1, LZh/d;->z:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    const-string v0, "P-192"

    sget-object v1, LZh/d;->G:Loh/x;

    invoke-static {v0, v1}, LSh/c;->a(Ljava/lang/String;Loh/x;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Loh/x;)V
    .locals 1

    sget-object v0, LSh/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LSh/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/String;)Lki/l;
    .locals 0

    invoke-static {p0}, LSh/c;->h(Ljava/lang/String;)Loh/x;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LZh/c;->l(Loh/x;)Lki/l;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lki/m;
    .locals 0

    invoke-static {p0}, LSh/c;->h(Ljava/lang/String;)Loh/x;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LZh/c;->m(Loh/x;)Lki/m;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static d(Loh/x;)Lki/l;
    .locals 1

    sget-object v0, LSh/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LZh/c;->l(Loh/x;)Lki/l;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Loh/x;)Lki/m;
    .locals 1

    sget-object v0, LSh/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, LZh/c;->m(Loh/x;)Lki/m;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static f(Loh/x;)Ljava/lang/String;
    .locals 1

    sget-object v0, LSh/c;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static g()Ljava/util/Enumeration;
    .locals 1

    sget-object v0, LSh/c;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Loh/x;
    .locals 1

    sget-object v0, LSh/c;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loh/x;

    return-object p0
.end method
