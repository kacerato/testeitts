.class public LIi/o;
.super LIi/m;
.source "SourceFile"


# static fields
.field public static final n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LIi/o;->n:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, LIi/o;->n:[B

    sget-object v1, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0, v1}, LIi/m;-><init>([BLBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 1

    .line 2
    sget-object v0, LIi/o;->n:[B

    invoke-direct {p0, v0, p1}, LIi/m;-><init>([BLBi/o;)V

    return-void
.end method

.method public constructor <init>(LIi/o;)V
    .locals 2

    .line 3
    sget-object v0, LIi/o;->n:[B

    iget-object v1, p1, LIi/m;->j:LBi/o;

    invoke-direct {p0, v0, v1}, LIi/m;-><init>([BLBi/o;)V

    invoke-virtual {p0, p1}, LIi/m;->j(Lorg/bouncycastle/util/n;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "GOST3411-2012-512"

    return-object v0
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 1

    new-instance v0, LIi/o;

    invoke-direct {v0, p0}, LIi/o;-><init>(LIi/o;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method
