.class public LHj/j;
.super LHj/i;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field public final d:[B

.field public final e:I


# direct methods
.method public constructor <init>([CLBi/i;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, LHj/i;-><init>([CLBi/i;)V

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LHj/j;->d:[B

    iput p4, p0, LHj/j;->e:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    iget v0, p0, LHj/j;->e:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, LHj/j;->d:[B

    return-object v0
.end method
