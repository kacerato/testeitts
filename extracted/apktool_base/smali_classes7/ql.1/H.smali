.class public final Lql/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lql/H;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lql/G;

.field public final b:I

.field public final c:I

.field public final d:Loh/x;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Lql/m;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    sget-object v3, LSh/d;->c:Loh/x;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    const/16 v5, 0x10

    invoke-direct {v2, v5, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    sget-object v3, LSh/d;->e:Loh/x;

    invoke-direct {v2, v4, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    invoke-direct {v2, v5, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    invoke-direct {v2, v6, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    sget-object v3, LSh/d;->m:Loh/x;

    invoke-direct {v2, v4, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    invoke-direct {v2, v5, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    invoke-direct {v2, v6, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    sget-object v3, LSh/d;->n:Loh/x;

    invoke-direct {v2, v4, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    invoke-direct {v2, v5, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lql/H;

    invoke-direct {v2, v6, v3}, Lql/H;-><init>(ILoh/x;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lql/H;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILBi/y;)V
    .locals 0

    .line 1
    invoke-interface {p2}, LBi/y;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lql/f;->c(Ljava/lang/String;)Loh/x;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lql/H;-><init>(ILoh/x;)V

    return-void
.end method

.method public constructor <init>(ILoh/x;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    iput p1, p0, Lql/H;->b:I

    invoke-virtual {p0}, Lql/H;->a()I

    move-result v0

    iput v0, p0, Lql/H;->c:I

    invoke-static {p2}, Lql/f;->b(Loh/x;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lql/H;->f:Ljava/lang/String;

    iput-object p2, p0, Lql/H;->d:Loh/x;

    new-instance v1, Lql/m;

    invoke-direct {v1, p2}, Lql/m;-><init>(Loh/x;)V

    iput-object v1, p0, Lql/H;->h:Lql/m;

    invoke-virtual {v1}, Lql/m;->f()I

    move-result p2

    iput p2, p0, Lql/H;->g:I

    invoke-virtual {v1}, Lql/m;->g()I

    move-result v2

    iput v2, p0, Lql/H;->e:I

    invoke-virtual {v1}, Lql/m;->a()I

    move-result v1

    invoke-static {v0, p2, v2, v1, p1}, Lql/e;->c(Ljava/lang/String;IIII)Lql/e;

    move-result-object p1

    iput-object p1, p0, Lql/H;->a:Lql/G;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "digest == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "height must be >= 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static k(I)Lql/H;
    .locals 1

    sget-object v0, Lql/H;->i:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lql/H;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x2

    move v1, v0

    :goto_0
    iget v2, p0, Lql/H;->b:I

    if-gt v1, v2, :cond_1

    sub-int/2addr v2, v1

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should never happen..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lql/H;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lql/H;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lql/H;->h:Lql/m;

    invoke-virtual {v0}, Lql/m;->a()I

    move-result v0

    return v0
.end method

.method public e()Lql/G;
    .locals 1

    iget-object v0, p0, Lql/H;->a:Lql/G;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lql/H;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Loh/x;
    .locals 1

    iget-object v0, p0, Lql/H;->d:Loh/x;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lql/H;->g:I

    return v0
.end method

.method public i()Lql/k;
    .locals 2

    new-instance v0, Lql/k;

    iget-object v1, p0, Lql/H;->h:Lql/m;

    invoke-direct {v0, v1}, Lql/k;-><init>(Lql/m;)V

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lql/H;->e:I

    return v0
.end method
