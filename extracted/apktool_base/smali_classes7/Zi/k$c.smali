.class public LZi/k$c;
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
    name = "c"
.end annotation


# instance fields
.field public final a:LBi/y;

.field public final b:[B

.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>(LBi/y;[B[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZi/k$c;->a:LBi/y;

    iput-object p2, p0, LZi/k$c;->b:[B

    iput-object p3, p0, LZi/k$c;->c:[B

    iput p4, p0, LZi/k$c;->d:I

    return-void
.end method


# virtual methods
.method public a(LZi/d;)Laj/f;
    .locals 7

    new-instance v6, Laj/e;

    iget-object v1, p0, LZi/k$c;->a:LBi/y;

    iget v2, p0, LZi/k$c;->d:I

    iget-object v4, p0, LZi/k$c;->c:[B

    iget-object v5, p0, LZi/k$c;->b:[B

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Laj/e;-><init>(LBi/y;ILZi/d;[B[B)V

    return-object v6
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HASH-DRBG-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LZi/k$c;->a:LBi/y;

    invoke-static {v1}, LZi/k;->a(LBi/y;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
