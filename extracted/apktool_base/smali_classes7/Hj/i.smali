.class public LHj/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHj/k;


# instance fields
.field public final b:[C

.field public final c:LBi/i;


# direct methods
.method public constructor <init>([CLBi/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->r([C)[C

    move-result-object p1

    iput-object p1, p0, LHj/i;->b:[C

    iput-object p2, p0, LHj/i;->c:LBi/i;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "PBKDF2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, LHj/i;->c:LBi/i;

    iget-object v1, p0, LHj/i;->b:[C

    invoke-interface {v0, v1}, LBi/i;->a([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LHj/i;->c:LBi/i;

    invoke-interface {v0}, LBi/i;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, LHj/i;->b:[C

    return-object v0
.end method
