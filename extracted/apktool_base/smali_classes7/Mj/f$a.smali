.class public LMj/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LMj/f;->engineDoFinal([BII)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LMj/f;


# direct methods
.method public constructor <init>(LMj/f;)V
    .locals 0

    iput-object p1, p0, LMj/f$a;->a:LMj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LXi/c;)[B
    .locals 4

    move-object v0, p1

    check-cast v0, LXi/n;

    invoke-virtual {v0}, LXi/n;->d()LXi/q;

    move-result-object v0

    invoke-virtual {v0}, LXi/q;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    check-cast p1, LXi/s;

    invoke-virtual {p1}, LXi/s;->e()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p1

    array-length v2, p1

    if-gt v2, v0, :cond_0

    array-length v2, p1

    sub-int/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Senders\'s public key longer than expected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
