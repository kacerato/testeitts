.class public Lhk/k;
.super Lhk/i;
.source "SourceFile"


# instance fields
.field public c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lhk/j;)V
    .locals 0

    invoke-direct {p0, p2}, Lhk/i;-><init>(Lhk/j;)V

    iput-object p1, p0, Lhk/k;->c:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public b()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhk/k;->c:Ljava/math/BigInteger;

    return-object v0
.end method
