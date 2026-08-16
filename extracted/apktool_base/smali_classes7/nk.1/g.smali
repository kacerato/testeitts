.class public Lnk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk/d;


# instance fields
.field public final a:Lnk/h;

.field public final b:Ljk/j;


# direct methods
.method public constructor <init>(Ljk/e;Lnk/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnk/g;->a:Lnk/h;

    new-instance v0, Ljk/s;

    invoke-virtual {p2}, Lnk/h;->a()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object p1

    invoke-direct {v0, p1}, Ljk/s;-><init>(Ljk/f;)V

    iput-object v0, p0, Lnk/g;->b:Ljk/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lnk/g;->a:Lnk/h;

    invoke-virtual {v0}, Lnk/h;->c()Lnk/i;

    move-result-object v0

    invoke-static {v0, p1}, Lnk/c;->b(Lnk/i;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljk/j;
    .locals 1

    iget-object v0, p0, Lnk/g;->b:Ljk/j;

    return-object v0
.end method
