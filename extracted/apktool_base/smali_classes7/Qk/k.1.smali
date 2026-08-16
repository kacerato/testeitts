.class public LQk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/z;


# static fields
.field public static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LWh/b;->i:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "HMACSHA1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->x1:Loh/x;

    sget-object v3, Loh/A0;->c:Loh/A0;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMACSHA224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->z1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMACSHA256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->A1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMACSHA384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->B1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMACSHA512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->C1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMACSHA512-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LXh/t;->D1:Loh/x;

    invoke-direct {v1, v2, v3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    const-string v2, "HMACSHA512-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->o:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "HMACSHA3-224"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->p:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "HMACSHA3-256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->q:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "HMACSHA3-384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    new-instance v1, Lhi/b;

    sget-object v2, LSh/d;->r:Loh/x;

    invoke-direct {v1, v2}, Lhi/b;-><init>(Loh/x;)V

    const-string v2, "HMACSHA3-512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lhi/b;
    .locals 1

    sget-object v0, LQk/k;->a:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhi/b;

    return-object p1
.end method
