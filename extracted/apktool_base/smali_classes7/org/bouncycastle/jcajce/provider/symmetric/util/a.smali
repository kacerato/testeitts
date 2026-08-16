.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/a;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;,
        Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;,
        Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;,
        Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;
    }
.end annotation


# static fields
.field public static final B:I = 0x200

.field public static final C:[Ljava/lang/Class;


# instance fields
.field public A:Ljava/lang/String;

.field public n:LBi/f;

.field public o:Lak/f;

.field public p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

.field public q:LXi/w0;

.field public r:LXi/a;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Ljavax/crypto/spec/PBEParameterSpec;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v2, Lak/h;->a:Ljava/lang/Class;

    const-class v4, Ljavax/crypto/spec/IvParameterSpec;

    const-class v5, Ljavax/crypto/spec/PBEParameterSpec;

    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const-class v3, Lck/j;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->C:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(LBi/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    return-void
.end method

.method public constructor <init>(LBi/f;I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/f;ZI)V

    return-void
.end method

.method public constructor <init>(LBi/f;IIII)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->u:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->s:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    return-void
.end method

.method public constructor <init>(LBi/f;ZI)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    return-void
.end method

.method public constructor <init>(LBi/h;I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;-><init>(LBi/h;ZI)V

    return-void
.end method

.method public constructor <init>(LBi/h;ZI)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {p1}, LBi/h;->d()LBi/f;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    return-void
.end method

.method public constructor <init>(LTi/a;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-interface {p1}, LTi/a;->d()LBi/f;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LTi/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {v0}, LBi/f;->c()I

    move-result v0

    goto :goto_0

    :goto_1
    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    return-void
.end method

.method public constructor <init>(LTi/a;ZI)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-interface {p1}, LTi/a;->d()LBi/f;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    return-void
.end method

.method public constructor <init>(LTi/b;ZI)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    invoke-direct {p2, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    return-void
.end method

.method public constructor <init>(Lak/f;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-interface {p1}, Lak/f;->get()LBi/f;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->o:Lak/f;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    invoke-interface {p1}, Lak/f;->get()LBi/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    return-void
.end method


# virtual methods
.method public final b(Ljava/security/spec/AlgorithmParameterSpec;LBi/k;)LBi/k;
    .locals 3

    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v0

    instance-of v1, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_0

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    new-instance p2, LXi/w0;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, LXi/w0;-><init>(LBi/k;[B)V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lck/j;

    if-eqz v1, :cond_5

    check-cast p1, Lck/j;

    new-instance v1, LXi/y0;

    invoke-virtual {p1}, Lck/j;->c()[B

    move-result-object v2

    invoke-direct {v1, p2, v2}, LXi/y0;-><init>(LBi/k;[B)V

    invoke-virtual {p1}, Lck/j;->a()[B

    move-result-object p2

    if-eqz p2, :cond_1

    iget p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    if-eqz p2, :cond_1

    new-instance p2, LXi/w0;

    invoke-virtual {p1}, Lck/j;->a()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, LXi/w0;-><init>(LBi/k;[B)V

    goto :goto_0

    :cond_1
    move-object p2, v1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_4

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    new-instance v0, LXi/w0;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, p2, p1}, LXi/w0;-><init>(LBi/k;[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    :cond_3
    move-object p2, v0

    goto :goto_1

    :cond_4
    instance-of v0, p1, Lck/j;

    if-eqz v0, :cond_5

    check-cast p1, Lck/j;

    new-instance v0, LXi/y0;

    invoke-virtual {p1}, Lck/j;->c()[B

    move-result-object v1

    invoke-direct {v0, p2, v1}, LXi/y0;-><init>(LBi/k;[B)V

    invoke-virtual {p1}, Lck/j;->a()[B

    move-result-object p2

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    if-eqz p2, :cond_3

    new-instance p2, LXi/w0;

    invoke-virtual {p1}, Lck/j;->a()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, LXi/w0;-><init>(LBi/k;[B)V

    :cond_5
    :goto_1
    return-object p2
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EAX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GCM-SIV"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OCB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public engineDoFinal([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_1

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->f([BII[BI)I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    add-int/2addr p5, p1

    invoke-interface {p2, p4, p5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->c([BI)I

    move-result p2
    :try_end_0
    .catch Lorg/bouncycastle/crypto/OutputLengthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    return p1

    :goto_1
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_2
    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoFinal([BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->engineGetOutputSize(I)I

    move-result v0

    new-array v7, v0, [B

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v7

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->f([BII[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v8

    :goto_0
    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {p2, v7, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->c([BI)I

    move-result p2
    :try_end_0
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p1, p2

    if-ne p1, v0, :cond_1

    return-object v7

    :cond_1
    if-gt p1, v0, :cond_2

    new-array p2, p1, [B

    invoke-static {v7, v8, p2, v8, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_2
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    const-string p2, "internal buffer overflow"

    invoke-direct {p1, p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, LBi/f;->c()I

    move-result v0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LXi/a;->d()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LXi/w0;->a()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public engineGetOutputSize(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->h(I)I

    move-result p1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, LXh/t;->S2:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    new-instance v1, Loh/C0;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    invoke-virtual {v2}, LXi/a;->d()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_2
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    new-instance v1, Lnj/c;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    invoke-virtual {v2}, LXi/a;->d()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    invoke-virtual {v3}, LXi/a;->c()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-direct {v1, v2, v3}, Lnj/c;-><init>([BI)V

    invoke-virtual {v1}, Loh/v;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v0

    invoke-interface {v0}, LBi/f;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :try_start_3
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    invoke-virtual {v2}, LXi/w0;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->C:[Ljava/lang/Class;

    invoke-static {p3, v0}, Lak/j;->a(Ljava/security/AlgorithmParameters;[Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "can\'t handle parameter "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 3
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    iput-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    iput-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;->g:Ljava/security/AlgorithmParameters;

    iput-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    instance-of v6, v2, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_1

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key for algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not suitable for symmetric enryption."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v6, "RC5-64"

    if-nez v3, :cond_3

    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    if-eqz v7, :cond_3

    invoke-interface {v7}, LBi/f;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    const-string v8, "Algorithm requires a PBE key"

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v7, v10, :cond_f

    instance-of v12, v2, LHj/l;

    if-eqz v12, :cond_4

    goto/16 :goto_5

    :cond_4
    instance-of v12, v2, LHj/g;

    if-eqz v12, :cond_7

    move-object v5, v2

    check-cast v5, LHj/g;

    instance-of v7, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v7, :cond_5

    move-object v7, v3

    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    :cond_5
    instance-of v7, v5, LHj/h;

    if-eqz v7, :cond_6

    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v7, :cond_6

    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v8, v5

    check-cast v8, LHj/h;

    invoke-virtual {v8}, LHj/h;->getSalt()[B

    move-result-object v12

    invoke-virtual {v8}, LHj/h;->getIterationCount()I

    move-result v8

    invoke-direct {v7, v12, v8}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    :cond_6
    invoke-virtual {v5}, LHj/g;->getEncoded()[B

    move-result-object v13

    iget v15, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->u:I

    iget v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->s:I

    iget v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    mul-int/lit8 v17, v7, 0x8

    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v8, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v8}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->b()Ljava/lang/String;

    move-result-object v19

    const/4 v14, 0x0

    move/from16 v16, v5

    move-object/from16 v18, v7

    invoke-static/range {v13 .. v19}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->h([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)LBi/k;

    move-result-object v5

    instance-of v7, v5, LXi/w0;

    if-eqz v7, :cond_18

    :goto_1
    move-object v7, v5

    check-cast v7, LXi/w0;

    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    goto/16 :goto_a

    :cond_7
    instance-of v12, v2, Lak/a;

    if-eqz v12, :cond_b

    move-object v5, v2

    check-cast v5, Lak/a;

    invoke-virtual {v5}, Lak/a;->g()Loh/x;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v5}, Lak/a;->g()Loh/x;

    move-result-object v7

    invoke-virtual {v7}, Loh/x;->J()Ljava/lang/String;

    move-result-object v7

    :goto_2
    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->z:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lak/a;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :goto_3
    invoke-virtual {v5}, Lak/a;->h()LBi/k;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, Lak/a;->h()LBi/k;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->b(Ljava/security/spec/AlgorithmParameterSpec;LBi/k;)LBi/k;

    move-result-object v5

    goto :goto_4

    :cond_9
    instance-of v7, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v7, :cond_a

    move-object v7, v3

    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v7

    invoke-interface {v7}, LBi/f;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v3, v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->f(Lak/a;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)LBi/k;

    move-result-object v5

    :goto_4
    instance-of v7, v5, LXi/w0;

    if-eqz v7, :cond_18

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "PBE requires PBE parameters to be set."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    instance-of v12, v2, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v12, :cond_d

    move-object v5, v2

    check-cast v5, Ljavax/crypto/interfaces/PBEKey;

    move-object v7, v3

    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    instance-of v8, v5, LHj/m;

    if-eqz v8, :cond_c

    if-nez v7, :cond_c

    new-instance v7, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v5}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v8

    invoke-interface {v5}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v12

    invoke-direct {v7, v8, v12}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    :cond_c
    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v13

    iget v14, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->t:I

    iget v15, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->u:I

    iget v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->s:I

    iget v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    mul-int/lit8 v17, v7, 0x8

    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v8, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v8}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->b()Ljava/lang/String;

    move-result-object v19

    move/from16 v16, v5

    move-object/from16 v18, v7

    invoke-static/range {v13 .. v19}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->h([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)LBi/k;

    move-result-object v5

    instance-of v7, v5, LXi/w0;

    if-eqz v7, :cond_18

    goto/16 :goto_1

    :cond_d
    instance-of v12, v2, Lck/x;

    if-nez v12, :cond_18

    if-eqz v7, :cond_e

    if-eq v7, v9, :cond_e

    if-eq v7, v11, :cond_e

    const/4 v5, 0x5

    if-eq v7, v5, :cond_e

    new-instance v5, LXi/o0;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, LXi/o0;-><init>([B)V

    goto/16 :goto_a

    :cond_e
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_5
    :try_start_0
    move-object v5, v2

    check-cast v5, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    instance-of v7, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v7, :cond_10

    move-object v7, v3

    check-cast v7, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    :cond_10
    instance-of v7, v5, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v7, :cond_12

    iget-object v12, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v12, :cond_12

    move-object v12, v5

    check-cast v12, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v12}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v13

    if-eqz v13, :cond_11

    new-instance v13, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-interface {v12}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v14

    invoke-interface {v12}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v12

    invoke-direct {v13, v14, v12}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v13, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "PBEKey requires parameters to specify salt"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_6
    iget-object v12, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v12, :cond_14

    if-eqz v7, :cond_13

    goto :goto_7

    :cond_13
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_7
    instance-of v7, v2, Lak/a;

    if-eqz v7, :cond_17

    move-object v7, v2

    check-cast v7, Lak/a;

    invoke-virtual {v7}, Lak/a;->h()LBi/k;

    move-result-object v7

    instance-of v8, v7, LXi/w0;

    if-eqz v8, :cond_15

    goto :goto_8

    :cond_15
    if-nez v7, :cond_16

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    iget v14, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->u:I

    iget v15, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->s:I

    iget v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    mul-int/lit8 v16, v5, 0x8

    iget-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->b()Ljava/lang/String;

    move-result-object v18

    const/4 v13, 0x2

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->h([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)LBi/k;

    move-result-object v7

    :goto_8
    move-object v5, v7

    goto :goto_9

    :cond_16
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v2, "Algorithm requires a PBE key suitable for PKCS12"

    invoke-direct {v0, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    iget v14, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->u:I

    iget v15, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->s:I

    iget v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    mul-int/lit8 v16, v5, 0x8

    iget-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->y:Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v7, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->b()Ljava/lang/String;

    move-result-object v18

    const/4 v13, 0x2

    move-object/from16 v17, v5

    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->h([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)LBi/k;

    move-result-object v5

    :goto_9
    instance-of v7, v5, LXi/w0;

    if-eqz v7, :cond_18

    goto/16 :goto_1

    :cond_18
    :goto_a
    instance-of v7, v3, Lck/a;

    if-eqz v7, :cond_1c

    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    instance-of v2, v2, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    if-eqz v2, :cond_19

    goto :goto_b

    :cond_19
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "AEADParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_b
    move-object v2, v3

    check-cast v2, Lck/a;

    instance-of v3, v5, LXi/w0;

    if-eqz v3, :cond_1b

    check-cast v5, LXi/w0;

    invoke-virtual {v5}, LXi/w0;->b()LBi/k;

    move-result-object v3

    check-cast v3, LXi/o0;

    goto :goto_c

    :cond_1b
    move-object v3, v5

    check-cast v3, LXi/o0;

    :goto_c
    new-instance v5, LXi/a;

    invoke-virtual {v2}, Lck/a;->b()I

    move-result v6

    invoke-virtual {v2}, Lck/a;->c()[B

    move-result-object v7

    invoke-virtual {v2}, Lck/a;->a()[B

    move-result-object v2

    invoke-direct {v5, v3, v6, v7, v2}, LXi/a;-><init>(LXi/o0;I[B[B)V

    :goto_d
    iput-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    goto/16 :goto_15

    :cond_1c
    instance-of v7, v3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v7, :cond_22

    iget v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    if-eqz v2, :cond_20

    move-object v2, v3

    check-cast v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    array-length v3, v3

    iget v6, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    if-eq v3, v6, :cond_1e

    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    instance-of v3, v3, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    if-nez v3, :cond_1e

    iget-boolean v3, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    if-nez v3, :cond_1d

    goto :goto_e

    :cond_1d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV must be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes long."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_e
    instance-of v3, v5, LXi/w0;

    if-eqz v3, :cond_1f

    new-instance v3, LXi/w0;

    check-cast v5, LXi/w0;

    invoke-virtual {v5}, LXi/w0;->b()LBi/k;

    move-result-object v5

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v3, v5, v2}, LXi/w0;-><init>(LBi/k;[B)V

    :goto_f
    move-object v5, v3

    goto :goto_10

    :cond_1f
    new-instance v3, LXi/w0;

    invoke-virtual {v2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    invoke-direct {v3, v5, v2}, LXi/w0;-><init>(LBi/k;[B)V

    goto :goto_f

    :goto_10
    iput-object v5, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    goto/16 :goto_15

    :cond_20
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    if-eqz v2, :cond_31

    const-string v3, "ECB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_15

    :cond_21
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "ECB mode does not use an IV"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    instance-of v7, v3, Lck/j;

    if-eqz v7, :cond_23

    check-cast v3, Lck/j;

    new-instance v5, LXi/y0;

    new-instance v6, LXi/o0;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v6, v2}, LXi/o0;-><init>([B)V

    invoke-virtual {v3}, Lck/j;->c()[B

    move-result-object v2

    invoke-direct {v5, v6, v2}, LXi/y0;-><init>(LBi/k;[B)V

    invoke-virtual {v3}, Lck/j;->a()[B

    move-result-object v2

    if-eqz v2, :cond_31

    iget v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    if-eqz v2, :cond_31

    new-instance v2, LXi/w0;

    invoke-virtual {v3}, Lck/j;->a()[B

    move-result-object v3

    invoke-direct {v2, v5, v3}, LXi/w0;-><init>(LBi/k;[B)V

    :goto_11
    iput-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    move-object v5, v2

    goto/16 :goto_15

    :cond_23
    instance-of v7, v3, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v7, :cond_24

    check-cast v3, Ljavax/crypto/spec/RC2ParameterSpec;

    new-instance v5, LXi/B0;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v6

    invoke-direct {v5, v2, v6}, LXi/B0;-><init>([BI)V

    invoke-virtual {v3}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v2

    if-eqz v2, :cond_31

    iget v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    if-eqz v2, :cond_31

    new-instance v2, LXi/w0;

    invoke-virtual {v3}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v5, v3}, LXi/w0;-><init>(LBi/k;[B)V

    goto :goto_11

    :cond_24
    instance-of v7, v3, Ljavax/crypto/spec/RC5ParameterSpec;

    if-eqz v7, :cond_2a

    check-cast v3, Ljavax/crypto/spec/RC5ParameterSpec;

    new-instance v5, LXi/C0;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v7

    invoke-direct {v5, v2, v7}, LXi/C0;-><init>([BI)V

    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {v2}, LBi/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v7, "RC5"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {v2}, LBi/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v7, "RC5-32"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "."

    if-eqz v2, :cond_26

    invoke-virtual {v3}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v2

    const/16 v6, 0x20

    if-ne v2, v6, :cond_25

    goto :goto_12

    :cond_25
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RC5 already set up for a word size of 32 not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {v2}, LBi/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v3}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v2

    const/16 v6, 0x40

    if-ne v2, v6, :cond_27

    goto :goto_12

    :cond_27
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RC5 already set up for a word size of 64 not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_12
    invoke-virtual {v3}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v2

    if-eqz v2, :cond_31

    iget v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    if-eqz v2, :cond_31

    new-instance v2, LXi/w0;

    invoke-virtual {v3}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v3

    invoke-direct {v2, v5, v3}, LXi/w0;-><init>(LBi/k;[B)V

    goto/16 :goto_11

    :cond_29
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "RC5 parameters passed to a cipher that is not RC5."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    instance-of v2, v3, Lck/i;

    if-eqz v2, :cond_2b

    move-object v2, v3

    check-cast v2, Lck/i;

    new-instance v3, LXi/Z;

    check-cast v5, LXi/o0;

    invoke-virtual {v2}, Lck/i;->b()Lorg/bouncycastle/crypto/util/r;

    move-result-object v6

    invoke-virtual {v2}, Lck/i;->c()[B

    move-result-object v7

    invoke-virtual {v2}, Lck/i;->d()Z

    move-result v2

    invoke-direct {v3, v5, v6, v7, v2}, LXi/Z;-><init>(LXi/o0;Lorg/bouncycastle/crypto/util/r;[BZ)V

    move-object v5, v3

    goto :goto_15

    :cond_2b
    invoke-static/range {p3 .. p3}, Lak/h;->k(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    instance-of v2, v2, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    if-eqz v2, :cond_2c

    goto :goto_13

    :cond_2c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "GCMParameterSpec can only be used with AEAD modes."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_13
    instance-of v2, v5, LXi/w0;

    if-eqz v2, :cond_2e

    check-cast v5, LXi/w0;

    invoke-virtual {v5}, LXi/w0;->b()LBi/k;

    move-result-object v2

    check-cast v2, LXi/o0;

    goto :goto_14

    :cond_2e
    move-object v2, v5

    check-cast v2, LXi/o0;

    :goto_14
    invoke-static {v2, v3}, Lak/h;->c(LXi/o0;Ljava/security/spec/AlgorithmParameterSpec;)LXi/a;

    move-result-object v5

    goto/16 :goto_d

    :cond_2f
    if-eqz v3, :cond_31

    instance-of v2, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_30

    goto :goto_15

    :cond_30
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "unknown parameter type."

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_15
    iget v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/4 v3, 0x3

    if-eqz v2, :cond_36

    instance-of v2, v5, LXi/w0;

    if-nez v2, :cond_36

    instance-of v2, v5, LXi/a;

    if-nez v2, :cond_36

    if-nez v4, :cond_32

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v2

    goto :goto_16

    :cond_32
    move-object v2, v4

    :goto_16
    if-eq v0, v11, :cond_35

    if-ne v0, v3, :cond_33

    goto :goto_17

    :cond_33
    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v2

    invoke-interface {v2}, LBi/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v6, "PGPCFB"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_34

    goto :goto_18

    :cond_34
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "no IV set when one expected"

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_17
    iget v6, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-array v6, v6, [B

    invoke-virtual {v2, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, LXi/w0;

    invoke-direct {v2, v5, v6}, LXi/w0;-><init>(LBi/k;[B)V

    iput-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    move-object v5, v2

    :cond_36
    :goto_18
    if-eqz v4, :cond_37

    iget-boolean v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->w:Z

    if-eqz v2, :cond_37

    new-instance v2, LXi/x0;

    invoke-direct {v2, v5, v4}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    move-object v5, v2

    :cond_37
    if-eq v0, v11, :cond_3a

    if-eq v0, v10, :cond_39

    if-eq v0, v3, :cond_3a

    if-ne v0, v9, :cond_38

    goto :goto_19

    :cond_38
    :try_start_1
    new-instance v2, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown opmode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " passed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    goto :goto_1b

    :catch_1
    move-exception v0

    goto :goto_1c

    :cond_39
    :goto_19
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->a(ZLBi/k;)V

    goto :goto_1a

    :cond_3a
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0, v11, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->a(ZLBi/k;)V

    :goto_1a
    iget-object v0, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    instance-of v2, v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    if-eqz v2, :cond_3b

    iget-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;

    if-nez v2, :cond_3b

    check-cast v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;->k(Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;)LTi/b;

    move-result-object v0

    new-instance v2, LXi/a;

    iget-object v3, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    invoke-virtual {v3}, LXi/w0;->b()LBi/k;

    move-result-object v3

    check-cast v3, LXi/o0;

    invoke-interface {v0}, LTi/b;->e()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v4, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->q:LXi/w0;

    invoke-virtual {v4}, LXi/w0;->a()[B

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, LXi/a;-><init>(LXi/o0;I[B)V

    iput-object v2, v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->r:LXi/a;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3b
    return-void

    :goto_1b
    new-instance v2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher$InvalidKeyOrParametersException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1c
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v2, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v0, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "CBC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-static {v0}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "OFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v1, LTi/C;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v1, v2, p1}, LTi/C;-><init>(LBi/f;I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    goto/16 :goto_3

    :cond_2
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LTi/C;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {v1}, LBi/f;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, LTi/C;-><init>(LBi/f;I)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v3, "CFB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-static {v1, p1}, LTi/g;->q(LBi/f;I)LTi/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {v0}, LBi/f;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, LTi/g;->q(LBi/f;I)LTi/h;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "PGPCFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v0, "PGPCFBWITHIV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no mode support for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {v0}, LBi/f;->c()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v1, LTi/F;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v1, v2, p1}, LTi/F;-><init>(LBi/f;Z)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "OPENPGPCFB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LTi/E;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v0, v1}, LTi/E;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "FF1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;

    new-instance v0, LNi/b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v0, v1}, LNi/b;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;-><init>(LNi/a;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "FF3-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;

    new-instance v0, LNi/c;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v0, v1}, LNi/c;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$b;-><init>(LNi/a;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "SIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_c

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LBi/u;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-static {v1}, LTi/H;->s(LBi/f;)LTi/i;

    move-result-object v1

    invoke-direct {v0, v1}, LBi/u;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "CTR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->x:Z

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    instance-of v0, p1, LLi/x;

    if-eqz v0, :cond_e

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v1, LBi/u;

    new-instance v2, LTi/x;

    invoke-direct {v2, p1}, LTi/x;-><init>(LBi/f;)V

    invoke-direct {v1, v2}, LBi/u;-><init>(LBi/f;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v1, LBi/u;

    invoke-static {p1}, LTi/H;->s(LBi/f;)LTi/i;

    move-result-object p1

    invoke-direct {v1, p1}, LBi/u;-><init>(LBi/f;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v1, "GOFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LBi/u;

    new-instance v1, LTi/u;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v1, v2}, LTi/u;-><init>(LBi/f;)V

    invoke-direct {v0, v1}, LBi/u;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v1, "GCFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LBi/u;

    new-instance v1, LTi/q;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v1, v2}, LTi/q;-><init>(LBi/f;)V

    invoke-direct {v0, v1}, LBi/u;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v1, "CTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LTi/j;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-static {v1}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object v1

    invoke-direct {v0, v1}, LTi/j;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v1, "CCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_14

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    instance-of p1, p1, LLi/x;

    if-eqz p1, :cond_13

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    new-instance v0, LTi/w;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v0, v1}, LTi/w;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    goto/16 :goto_0

    :cond_13
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-static {v0}, LTi/e;->p(LBi/f;)LTi/f;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v2, "OCB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "can\'t support mode "

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->o:Lak/f;

    if-eqz v0, :cond_15

    const/16 p1, 0xf

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    new-instance v0, LTi/B;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->o:Lak/f;

    invoke-interface {v2}, Lak/f;->get()LBi/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LTi/B;-><init>(LBi/f;LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    goto/16 :goto_0

    :cond_15
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v3, "EAX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    new-instance v0, LTi/l;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v0, v1}, LTi/l;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v3, "GCM-SIV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    new-instance v0, LTi/t;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v0, v1}, LTi/t;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    const-string v3, "GCM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    instance-of v0, p1, LLi/x;

    if-eqz v0, :cond_19

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    new-instance v0, LTi/y;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-direct {v0, v1}, LTi/y;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    goto/16 :goto_0

    :cond_19
    iput v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->v:I

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    invoke-static {v0}, LTi/r;->u(LBi/f;)LTi/s;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$a;-><init>(LTi/b;)V

    goto/16 :goto_0

    :goto_3
    return-void

    :cond_1a
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "no mode supported for this algorithm"

    invoke-direct {p1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->n:LBi/f;

    if-eqz v0, :cond_f

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->j()Z

    move-result p1

    if-eqz p1, :cond_e

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LBi/u;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v1

    invoke-direct {v0, v1}, LBi/u;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    goto/16 :goto_6

    :cond_0
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "CTSPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "CS3PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->w:Z

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->A:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v0

    new-instance v1, LWi/h;

    invoke-direct {v1}, LWi/h;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;LWi/a;)V

    goto :goto_0

    :cond_3
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v0

    new-instance v1, LWi/f;

    invoke-direct {v1}, LWi/f;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;LWi/a;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unknown."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v0

    new-instance v1, LWi/c;

    invoke-direct {v1}, LWi/c;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;LWi/a;)V

    goto/16 :goto_0

    :cond_9
    :goto_2
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v0

    new-instance v1, LWi/g;

    invoke-direct {v1}, LWi/g;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;LWi/a;)V

    goto/16 :goto_0

    :cond_a
    :goto_3
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v0

    new-instance v1, LWi/b;

    invoke-direct {v1}, LWi/b;-><init>()V

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;LWi/a;)V

    goto/16 :goto_0

    :cond_b
    :goto_4
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/f;)V

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Only NoPadding can be used with AEAD modes."

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_5
    new-instance p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;

    new-instance v0, LTi/j;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->d()LBi/f;

    move-result-object v1

    invoke-direct {v0, v1}, LTi/j;-><init>(LBi/f;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$c;-><init>(LBi/h;)V

    goto/16 :goto_0

    :cond_e
    :goto_6
    return-void

    :cond_f
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "no padding supported for this algorithm"

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII[BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->g(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->f([BII[BI)I

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII)[B
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->g(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    new-array v8, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->f([BII[BI)I

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-eq p1, v0, :cond_1

    new-array p2, p1, [B

    const/4 p3, 0x0

    invoke-static {v8, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_1
    return-object v8

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->f([BII[BI)I

    return-object v1
.end method

.method public engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->engineUpdateAAD([BII)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    const/16 v1, 0x200

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    new-array v1, v0, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->engineUpdateAAD([BII)V

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    goto :goto_0

    :cond_2
    new-array v3, v1, [B

    :cond_3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v3, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3, v2, v4}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->engineUpdateAAD([BII)V

    sub-int/2addr v0, v4

    if-gtz v0, :cond_3

    invoke-static {v3, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    :goto_0
    return-void
.end method

.method public engineUpdateAAD([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/a;->p:Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/a$d;->e([BII)V

    return-void
.end method
