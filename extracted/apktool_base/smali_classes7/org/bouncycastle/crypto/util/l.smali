.class public Lorg/bouncycastle/crypto/util/l;
.super Lorg/bouncycastle/crypto/util/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/l$b;
    }
.end annotation


# static fields
.field public static final e:Lhi/b;

.field public static final f:Lhi/b;

.field public static final g:Lhi/b;

.field public static final h:Lhi/b;

.field public static final i:Lhi/b;

.field public static final j:Ljava/util/Map;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lhi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lhi/b;

    sget-object v1, LXh/t;->w1:Loh/x;

    sget-object v2, Loh/A0;->c:Loh/A0;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/l;->e:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v3, LXh/t;->z1:Loh/x;

    invoke-direct {v0, v3, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/l;->f:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v4, LXh/t;->B1:Loh/x;

    invoke-direct {v0, v4, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/l;->g:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v5, LSh/d;->p:Loh/x;

    invoke-direct {v0, v5, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/l;->h:Lhi/b;

    new-instance v0, Lhi/b;

    sget-object v6, LSh/d;->r:Loh/x;

    invoke-direct {v0, v6, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/l;->i:Lhi/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/util/l;->j:Ljava/util/Map;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x20

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LXh/t;->x1:Loh/x;

    const/16 v4, 0x1c

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LXh/t;->A1:Loh/x;

    const/16 v7, 0x30

    invoke-static {v7}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LSh/d;->o:Loh/x;

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LSh/d;->q:Loh/x;

    invoke-static {v7}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lyh/a;->c:Loh/x;

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LCj/a;->e:Loh/x;

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LCj/a;->f:Loh/x;

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LFh/b;->e0:Loh/x;

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/util/l$b;)V
    .locals 2

    .line 1
    sget-object v0, LXh/t;->h1:Loh/x;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/m;-><init>(Loh/x;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/l$b;->a(Lorg/bouncycastle/crypto/util/l$b;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/l;->b:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/l$b;->b(Lorg/bouncycastle/crypto/util/l$b;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/l;->d:Lhi/b;

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/l$b;->c(Lorg/bouncycastle/crypto/util/l$b;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/l;->e(Loh/x;)I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/util/l;->c:I

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/crypto/util/l$b;->c(Lorg/bouncycastle/crypto/util/l$b;)I

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/l$b;Lorg/bouncycastle/crypto/util/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/l;-><init>(Lorg/bouncycastle/crypto/util/l$b;)V

    return-void
.end method

.method public static e(Loh/x;)I
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/util/l;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no salt size for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/l;->b:I

    return v0
.end method

.method public c()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/l;->d:Lhi/b;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/l;->c:I

    return v0
.end method
