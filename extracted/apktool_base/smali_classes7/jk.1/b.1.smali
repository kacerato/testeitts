.class public abstract Ljk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljk/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;
    .locals 2

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljk/b;->c(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljk/i;->A()Ljk/i;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Ljk/b;->b(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljk/i;->i()Ljk/e;

    move-result-object p1

    invoke-virtual {p1}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljk/i;)Ljk/i;
    .locals 0

    invoke-static {p1}, Ljk/c;->b(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Ljk/i;Ljava/math/BigInteger;)Ljk/i;
.end method
