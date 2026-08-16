.class public LZi/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZi/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LBi/f;

.field public final b:I

.field public final c:[B

.field public final d:[B

.field public final e:I


# direct methods
.method public constructor <init>(LBi/f;I[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZi/k$a;->a:LBi/f;

    iput p2, p0, LZi/k$a;->b:I

    iput-object p3, p0, LZi/k$a;->c:[B

    iput-object p4, p0, LZi/k$a;->d:[B

    iput p5, p0, LZi/k$a;->e:I

    return-void
.end method


# virtual methods
.method public a(LZi/d;)Laj/f;
    .locals 8

    new-instance v7, Laj/a;

    iget-object v1, p0, LZi/k$a;->a:LBi/f;

    iget v2, p0, LZi/k$a;->b:I

    iget v3, p0, LZi/k$a;->e:I

    iget-object v5, p0, LZi/k$a;->d:[B

    iget-object v6, p0, LZi/k$a;->c:[B

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Laj/a;-><init>(LBi/f;IILZi/d;[B[B)V

    return-object v7
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LZi/k$a;->a:LBi/f;

    instance-of v0, v0, LLi/v;

    if-eqz v0, :cond_0

    const-string v0, "CTR-DRBG-3KEY-TDES"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTR-DRBG-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LZi/k$a;->a:LBi/f;

    invoke-interface {v1}, LBi/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LZi/k$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
