.class public LZj/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZj/v$a;,
        LZj/v$b;,
        LZj/v$c;,
        LZj/v$d;,
        LZj/v$e;,
        LZj/v$f;,
        LZj/v$g;,
        LZj/v$h;,
        LZj/v$i;,
        LZj/v$j;,
        LZj/v$k;,
        LZj/v$l;,
        LZj/v$m;,
        LZj/v$n;,
        LZj/v$o;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LZj/v;->a:Ljava/util/Map;

    sget-object v1, Lyh/a;->c:Loh/x;

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->w1:Loh/x;

    const/4 v2, 0x1

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->z1:Loh/x;

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->x1:Loh/x;

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->A1:Loh/x;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LXh/t;->B1:Loh/x;

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->p:Loh/x;

    const/16 v2, 0xb

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->o:Loh/x;

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->q:Loh/x;

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LSh/d;->r:Loh/x;

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, LFh/b;->e0:Loh/x;

    const/16 v2, 0xe

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, LZj/v;->a:Ljava/util/Map;

    return-object v0
.end method
