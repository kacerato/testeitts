.class public Ldi/d;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public b:Loh/x;

.field public c:Ldi/b;

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ldi/d;->e:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Ldi/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Ldi/d;->e:[B

    iput-object v0, p0, Ldi/d;->d:[B

    iput-object p1, p0, Ldi/d;->c:Ldi/b;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Ldi/d;->e:[B

    iput-object v0, p0, Ldi/d;->d:[B

    iput-object p1, p0, Ldi/d;->b:Loh/x;

    return-void
.end method

.method public constructor <init>(Loh/x;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    sget-object v0, Ldi/d;->e:[B

    iput-object v0, p0, Ldi/d;->d:[B

    iput-object p1, p0, Ldi/d;->b:Loh/x;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Ldi/d;->d:[B

    return-void
.end method

.method public static v()[B
    .locals 1

    sget-object v0, Ldi/d;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)Ldi/d;
    .locals 4

    instance-of v0, p0, Ldi/d;

    if-eqz v0, :cond_0

    check-cast p0, Ldi/d;

    return-object p0

    :cond_0
    const-string v0, "object parse error"

    if-eqz p0, :cond_4

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/x;

    if-eqz v2, :cond_1

    new-instance v2, Ldi/d;

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v1

    invoke-direct {v2, v1}, Ldi/d;-><init>(Loh/x;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ldi/d;

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Ldi/b;->z(Ljava/lang/Object;)Ldi/b;

    move-result-object v1

    invoke-direct {v2, v1}, Ldi/d;-><init>(Ldi/b;)V

    :goto_0
    invoke-virtual {p0}, Loh/E;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    iput-object p0, v2, Ldi/d;->d:[B

    array-length p0, p0

    sget-object v1, Ldi/d;->e:[B

    array-length v1, v1

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Ldi/d;->b:Loh/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Ldi/d;->b:Loh/x;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ldi/d;->c:Ldi/b;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Ldi/d;->d:[B

    sget-object v2, Ldi/d;->e:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Loh/C0;

    iget-object v2, p0, Ldi/d;->d:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, Ldi/d;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()Ldi/b;
    .locals 1

    iget-object v0, p0, Ldi/d;->c:Ldi/b;

    return-object v0
.end method

.method public z()Loh/x;
    .locals 1

    iget-object v0, p0, Ldi/d;->b:Loh/x;

    return-object v0
.end method
