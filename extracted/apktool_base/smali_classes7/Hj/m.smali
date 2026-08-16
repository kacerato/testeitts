.class public LHj/m;
.super LHj/l;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field public final d:[B

.field public final e:I


# direct methods
.method public constructor <init>([CZ[BI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LHj/l;-><init>([CZ)V

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LHj/m;->d:[B

    iput p4, p0, LHj/m;->e:I

    return-void
.end method

.method public constructor <init>([C[BI)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LHj/l;-><init>([C)V

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LHj/m;->d:[B

    iput p3, p0, LHj/m;->e:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    iget v0, p0, LHj/m;->e:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, LHj/m;->d:[B

    return-object v0
.end method
