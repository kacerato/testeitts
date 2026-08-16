.class public Lorg/bouncycastle/cms/D0;
.super Lorg/bouncycastle/cms/H0;
.source "SourceFile"


# static fields
.field public static h:Ljava/util/Map;

.field public static i:Ljava/util/Map;


# instance fields
.field public g:Luh/N;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/D0;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/D0;->i:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/cms/c;->b:Loh/x;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/D0;->i:Ljava/util/Map;

    sget-object v2, Lorg/bouncycastle/cms/c;->f:Loh/x;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/D0;->i:Ljava/util/Map;

    sget-object v4, Lorg/bouncycastle/cms/c;->g:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/D0;->i:Ljava/util/Map;

    sget-object v5, Lorg/bouncycastle/cms/c;->h:Loh/x;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/D0;->h:Ljava/util/Map;

    const/16 v3, 0xc0

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/D0;->h:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/D0;->h:Ljava/util/Map;

    invoke-static {v3}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/cms/D0;->h:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Luh/N;Lhi/b;Lorg/bouncycastle/cms/K;)V
    .locals 1

    invoke-virtual {p1}, Luh/N;->y()Lhi/b;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/cms/H0;-><init>(Lhi/b;Lhi/b;Lorg/bouncycastle/cms/K;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    new-instance p1, Lorg/bouncycastle/cms/B0;

    invoke-direct {p1}, Lorg/bouncycastle/cms/B0;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/H0;->a:Lorg/bouncycastle/cms/F0;

    return-void
.end method


# virtual methods
.method public j(Lorg/bouncycastle/cms/E0;)Lorg/bouncycastle/cms/J0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/cms/A0;

    iget-object v0, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    invoke-virtual {v0}, Luh/N;->y()Lhi/b;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/cms/D0;->h:Ljava/util/Map;

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1}, Lorg/bouncycastle/cms/A0;->e()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/cms/D0;->m()Lhi/b;

    move-result-object v3

    invoke-interface {p1, v2, v3, v1}, Lorg/bouncycastle/cms/A0;->c(ILhi/b;I)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/H0;->c:Lhi/b;

    iget-object v3, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    invoke-virtual {v3}, Luh/N;->u()Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-interface {p1, v0, v2, v1, v3}, Lorg/bouncycastle/cms/A0;->d(Lhi/b;Lhi/b;[B[B)Lorg/bouncycastle/cms/J0;

    move-result-object p1

    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    invoke-virtual {v0}, Luh/N;->x()Lhi/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    invoke-virtual {v0}, Luh/N;->x()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public l()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    invoke-virtual {v0}, Luh/N;->x()Lhi/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    invoke-virtual {v0}, Luh/N;->x()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public m()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/D0;->g:Luh/N;

    invoke-virtual {v0}, Luh/N;->x()Lhi/b;

    move-result-object v0

    return-object v0
.end method
