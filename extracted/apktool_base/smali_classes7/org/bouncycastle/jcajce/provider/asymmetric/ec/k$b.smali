.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$b;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ECDH"

    sget-object v1, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/k$a;-><init>(Ljava/lang/String;LTj/c;)V

    return-void
.end method
