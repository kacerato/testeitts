.class public Ljk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljk/e;)I
    .locals 1

    invoke-virtual {p0}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljk/e;->w()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static b(Ljk/q;)Ljk/l;
    .locals 1

    instance-of v0, p0, Ljk/l;

    if-eqz v0, :cond_0

    check-cast p0, Ljk/l;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Ljk/i;)Ljk/l;
    .locals 3

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    new-instance v1, Ljk/m$a;

    invoke-direct {v1, v0, p0}, Ljk/m$a;-><init>(Ljk/e;Ljk/i;)V

    const-string v2, "bc_fixed_point"

    invoke-virtual {v0, p0, v2, v1}, Ljk/e;->G(Ljk/i;Ljava/lang/String;Ljk/p;)Ljk/q;

    move-result-object p0

    check-cast p0, Ljk/l;

    return-object p0
.end method
