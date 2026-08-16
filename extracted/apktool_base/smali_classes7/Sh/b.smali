.class public LSh/b;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final d:[B

.field public static final e:I = 0x200


# instance fields
.field public final b:I

.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, LSh/b;->d:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LSh/b;->b:I

    sget-object p1, LSh/b;->d:[B

    iput-object p1, p0, LSh/b;->c:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LSh/b;->b:I

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LSh/b;->c:[B

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->O()I

    move-result v0

    iput v0, p0, LSh/b;->b:I

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LSh/b;->c:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/s;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->O()I

    move-result p1

    iput p1, p0, LSh/b;->b:I

    sget-object p1, LSh/b;->d:[B

    iput-object p1, p0, LSh/b;->c:[B

    goto :goto_0

    :cond_1
    iput v1, p0, LSh/b;->b:I

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LSh/b;->c:[B

    goto :goto_0

    :cond_2
    iput v1, p0, LSh/b;->b:I

    sget-object p1, LSh/b;->d:[B

    iput-object p1, p0, LSh/b;->c:[B

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence size greater than 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)LSh/b;
    .locals 1

    instance-of v0, p0, LSh/b;

    if-eqz v0, :cond_0

    check-cast p0, LSh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LSh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LSh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget v1, p0, LSh/b;->b:I

    const/16 v2, 0x200

    if-eq v1, v2, :cond_0

    new-instance v1, Loh/s;

    iget v2, p0, LSh/b;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LSh/b;->c:[B

    array-length v1, v1

    if-eqz v1, :cond_1

    new-instance v1, Loh/C0;

    invoke-virtual {p0}, LSh/b;->u()[B

    move-result-object v2

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, LSh/b;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, LSh/b;->b:I

    return v0
.end method
