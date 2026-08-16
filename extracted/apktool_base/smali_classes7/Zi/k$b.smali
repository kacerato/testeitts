.class public LZi/k$b;
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
    name = "b"
.end annotation


# instance fields
.field public final a:LBi/I;

.field public final b:[B

.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>(LBi/I;[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZi/k$b;->a:LBi/I;

    iput-object p2, p0, LZi/k$b;->b:[B

    iput-object p3, p0, LZi/k$b;->c:[B

    iput p4, p0, LZi/k$b;->d:I

    return-void
.end method


# virtual methods
.method public a(LZi/d;)Laj/f;
    .locals 7

    new-instance v6, Laj/d;

    iget-object v1, p0, LZi/k$b;->a:LBi/I;

    iget v2, p0, LZi/k$b;->d:I

    iget-object v4, p0, LZi/k$b;->c:[B

    iget-object v5, p0, LZi/k$b;->b:[B

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Laj/d;-><init>(LBi/I;ILZi/d;[B[B)V

    return-object v6
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LZi/k$b;->a:LBi/I;

    instance-of v0, v0, LSi/k;

    const-string v1, "HMAC-DRBG-"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LZi/k$b;->a:LBi/I;

    check-cast v1, LSi/k;

    invoke-virtual {v1}, LSi/k;->f()LBi/y;

    move-result-object v1

    invoke-static {v1}, LZi/k;->a(LBi/y;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LZi/k$b;->a:LBi/I;

    invoke-interface {v1}, LBi/I;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
