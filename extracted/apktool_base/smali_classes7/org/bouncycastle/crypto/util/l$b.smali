.class public Lorg/bouncycastle/crypto/util/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lhi/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/crypto/util/l$b;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/util/l$b;->b:I

    sget-object v0, Lorg/bouncycastle/crypto/util/l;->e:Lhi/b;

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/l$b;->c:Lhi/b;

    return-void
.end method

.method public static synthetic a(Lorg/bouncycastle/crypto/util/l$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/l$b;->a:I

    return p0
.end method

.method public static synthetic b(Lorg/bouncycastle/crypto/util/l$b;)Lhi/b;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/util/l$b;->c:Lhi/b;

    return-object p0
.end method

.method public static synthetic c(Lorg/bouncycastle/crypto/util/l$b;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/util/l$b;->b:I

    return p0
.end method


# virtual methods
.method public d()Lorg/bouncycastle/crypto/util/l;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/util/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/util/l;-><init>(Lorg/bouncycastle/crypto/util/l$b;Lorg/bouncycastle/crypto/util/l$a;)V

    return-object v0
.end method

.method public e(I)Lorg/bouncycastle/crypto/util/l$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/util/l$b;->a:I

    return-object p0
.end method

.method public f(Lhi/b;)Lorg/bouncycastle/crypto/util/l$b;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/l$b;->c:Lhi/b;

    return-object p0
.end method

.method public g(I)Lorg/bouncycastle/crypto/util/l$b;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/util/l$b;->b:I

    return-object p0
.end method
