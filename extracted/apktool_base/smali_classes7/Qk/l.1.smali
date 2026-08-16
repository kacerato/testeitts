.class public LQk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/I;


# static fields
.field public static final a:LQk/I;

.field public static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LQk/l;

    invoke-direct {v0}, LQk/l;-><init>()V

    sput-object v0, LQk/l;->a:LQk/I;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Loh/x;

    const-string v2, "1.2.840.113533.7.66.10"

    invoke-direct {v1, v2}, Loh/x;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->n1:Loh/x;

    const/16 v3, 0xc0

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->I2:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->f1:Loh/x;

    const/16 v4, 0x40

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->d1:Loh/x;

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->y:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->H:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->Q:Loh/x;

    const/16 v5, 0x100

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->C:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->L:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->U:Loh/x;

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->D:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->M:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->V:Loh/x;

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->B:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->K:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->T:Loh/x;

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->E:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->N:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->W:Loh/x;

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LUh/a;->a:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LUh/a;->b:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LUh/a;->c:Loh/x;

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LUh/a;->d:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LUh/a;->e:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LUh/a;->f:Loh/x;

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LOh/a;->a:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LWh/b;->e:Loh/x;

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lyh/a;->f:Loh/x;

    invoke-static {v5}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LQk/l;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;)I
    .locals 0

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-virtual {p0, p1}, LQk/l;->b(Loh/x;)I

    move-result p1

    if-lez p1, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(Loh/x;)I
    .locals 1

    sget-object v0, LQk/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
