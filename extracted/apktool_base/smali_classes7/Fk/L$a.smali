.class public LFk/L$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Loh/y;

.field public b:Loh/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LFk/L;
    .locals 3

    new-instance v0, LFk/L;

    iget-object v1, p0, LFk/L$a;->a:Loh/y;

    iget-object v2, p0, LFk/L$a;->b:Loh/y;

    invoke-direct {v0, v1, v2}, LFk/L;-><init>(Loh/y;Loh/y;)V

    return-object v0
.end method

.method public b(Ljava/math/BigInteger;)LFk/L$a;
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, LFk/L$a;->d([B)LFk/L$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Loh/y;)LFk/L$a;
    .locals 0

    iput-object p1, p0, LFk/L$a;->a:Loh/y;

    return-object p0
.end method

.method public d([B)LFk/L$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/L$a;->a:Loh/y;

    return-object p0
.end method

.method public e(Ljava/math/BigInteger;)LFk/L$a;
    .locals 1

    const/16 v0, 0x20

    invoke-static {v0, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, LFk/L$a;->g([B)LFk/L$a;

    move-result-object p1

    return-object p1
.end method

.method public f(Loh/y;)LFk/L$a;
    .locals 0

    iput-object p1, p0, LFk/L$a;->b:Loh/y;

    return-object p0
.end method

.method public g([B)LFk/L$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/L$a;->b:Loh/y;

    return-object p0
.end method
