.class public Lnk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/math/BigInteger;

.field public final b:Ljava/math/BigInteger;

.field public final c:Lnk/i;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lnk/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk/h;->a:Ljava/math/BigInteger;

    iput-object p2, p0, Lnk/h;->b:Ljava/math/BigInteger;

    iput-object p3, p0, Lnk/h;->c:Lnk/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lnk/h;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public b()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lnk/h;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public c()Lnk/i;
    .locals 1

    iget-object v0, p0, Lnk/h;->c:Lnk/i;

    return-object v0
.end method
