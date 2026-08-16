.class public Lorg/bouncycastle/crypto/util/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/util/v$b;->d:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/v$b;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/bouncycastle/crypto/util/v$b;->a:I

    iput p2, p0, Lorg/bouncycastle/crypto/util/v$b;->b:I

    iput p3, p0, Lorg/bouncycastle/crypto/util/v$b;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cost parameter N must be > 1 and a power of 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lorg/bouncycastle/crypto/util/v$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/v$b;->a:I

    return p0
.end method

.method public static synthetic b(Lorg/bouncycastle/crypto/util/v$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/v$b;->b:I

    return p0
.end method

.method public static synthetic c(Lorg/bouncycastle/crypto/util/v$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/v$b;->c:I

    return p0
.end method

.method public static synthetic d(Lorg/bouncycastle/crypto/util/v$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/v$b;->d:I

    return p0
.end method

.method public static f(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public e()Lorg/bouncycastle/crypto/util/v;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/util/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/util/v;-><init>(Lorg/bouncycastle/crypto/util/v$b;Lorg/bouncycastle/crypto/util/v$a;)V

    return-object v0
.end method

.method public g(I)Lorg/bouncycastle/crypto/util/v$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/util/v$b;->d:I

    return-object p0
.end method
