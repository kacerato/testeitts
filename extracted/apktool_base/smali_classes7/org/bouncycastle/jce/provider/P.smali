.class public Lorg/bouncycastle/jce/provider/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lorg/bouncycastle/jce/provider/P;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jce/provider/P;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/P;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/jce/provider/P;->b:Lorg/bouncycastle/jce/provider/P;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/P;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    return-void
.end method

.method public constructor <init>(Lhi/c0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Loh/c;->L()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    return-void
.end method


# virtual methods
.method public a(Lorg/bouncycastle/jce/provider/P;)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/P;->b()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    return v0
.end method

.method public c(Lorg/bouncycastle/jce/provider/P;)Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/P;->b()I

    move-result p1

    iget v1, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    xor-int/2addr p1, v1

    or-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lorg/bouncycastle/jce/provider/P;)Lorg/bouncycastle/jce/provider/P;
    .locals 3

    new-instance v0, Lorg/bouncycastle/jce/provider/P;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/P;-><init>()V

    new-instance v1, Lorg/bouncycastle/jce/provider/P;

    iget v2, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/P;->b()I

    move-result p1

    and-int/2addr p1, v2

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/provider/P;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/P;->a(Lorg/bouncycastle/jce/provider/P;)V

    return-object v0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/jce/provider/P;->a:I

    sget-object v1, Lorg/bouncycastle/jce/provider/P;->b:Lorg/bouncycastle/jce/provider/P;

    iget v1, v1, Lorg/bouncycastle/jce/provider/P;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
