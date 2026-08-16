.class public Lbk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbk/e;->a:Ljava/util/Map;

    sget-object v1, LXh/t;->n1:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc0

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbk/e;->a:Ljava/util/Map;

    sget-object v1, LSh/d;->y:Loh/x;

    const/16 v3, 0x80

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbk/e;->a:Ljava/util/Map;

    sget-object v1, LSh/d;->H:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbk/e;->a:Ljava/util/Map;

    sget-object v1, LSh/d;->Q:Loh/x;

    const/16 v4, 0x100

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbk/e;->a:Ljava/util/Map;

    sget-object v1, LAj/a;->a:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbk/e;->a:Ljava/util/Map;

    sget-object v1, LAj/a;->b:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lbk/e;->a:Ljava/util/Map;

    sget-object v1, LAj/a;->c:Loh/x;

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Loh/x;)I
    .locals 1

    sget-object v0, Lbk/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
