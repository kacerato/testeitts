.class public Lck/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lck/A$b;
    }
.end annotation


# static fields
.field public static final c:I = 0x0

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0xc

.field public static final g:I = 0x10

.field public static final h:I = 0x14

.field public static final i:I = 0x30

.field public static final j:I = 0x3f


# instance fields
.field public b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lck/A;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lck/A;->b:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Lck/A$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lck/A;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lck/A;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lck/A;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public b()[B
    .locals 2

    iget-object v0, p0, Lck/A;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lck/A;->b:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 2

    iget-object v0, p0, Lck/A;->b:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lck/A;->b:Ljava/util/Map;

    return-object v0
.end method

.method public f()[B
    .locals 2

    iget-object v0, p0, Lck/A;->b:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public g()[B
    .locals 2

    iget-object v0, p0, Lck/A;->b:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/bouncycastle/util/k;->j(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
