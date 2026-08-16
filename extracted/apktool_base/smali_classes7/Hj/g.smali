.class public LHj/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHj/k;


# instance fields
.field public final b:[C

.field public final c:LBi/i;


# direct methods
.method public constructor <init>([CLBi/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, LHj/g;->b:[C

    iput-object p2, p0, LHj/g;->c:LBi/i;

    const/4 p2, 0x0

    array-length v1, p1

    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "PBKDF1"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, LHj/g;->c:LBi/i;

    iget-object v1, p0, LHj/g;->b:[C

    invoke-interface {v0, v1}, LBi/i;->a([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LHj/g;->c:LBi/i;

    invoke-interface {v0}, LBi/i;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, LHj/g;->b:[C

    return-object v0
.end method
