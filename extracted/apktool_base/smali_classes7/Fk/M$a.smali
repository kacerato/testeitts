.class public LFk/M$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFk/M;
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
.method public a()LFk/M;
    .locals 3

    new-instance v0, LFk/M;

    iget-object v1, p0, LFk/M$a;->a:Loh/y;

    iget-object v2, p0, LFk/M$a;->b:Loh/y;

    invoke-direct {v0, v1, v2}, LFk/M;-><init>(Loh/y;Loh/y;)V

    return-object v0
.end method

.method public b(Ljava/math/BigInteger;)LFk/M$a;
    .locals 2

    new-instance v0, Loh/C0;

    const/16 v1, 0x30

    invoke-static {v1, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/M$a;->a:Loh/y;

    return-object p0
.end method

.method public c(Loh/y;)LFk/M$a;
    .locals 0

    iput-object p1, p0, LFk/M$a;->a:Loh/y;

    return-object p0
.end method

.method public d([B)LFk/M$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/M$a;->a:Loh/y;

    return-object p0
.end method

.method public e(Ljava/math/BigInteger;)LFk/M$a;
    .locals 2

    new-instance v0, Loh/C0;

    const/16 v1, 0x30

    invoke-static {v1, p1}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/M$a;->b:Loh/y;

    return-object p0
.end method

.method public f(Loh/y;)LFk/M$a;
    .locals 0

    iput-object p1, p0, LFk/M$a;->b:Loh/y;

    return-object p0
.end method

.method public g([B)LFk/M$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, LFk/M$a;->b:Loh/y;

    return-object p0
.end method
