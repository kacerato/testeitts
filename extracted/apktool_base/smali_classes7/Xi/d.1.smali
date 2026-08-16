.class public LXi/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# static fields
.field public static final d:I = 0x20


# instance fields
.field public b:[B

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([B)LXi/d;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, LXi/d;

    invoke-direct {v0}, LXi/d;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    iput-object p0, v0, LXi/d;->c:[B

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e([B)LXi/d;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    new-instance v0, LXi/d;

    invoke-direct {v0}, LXi/d;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p0

    iput-object p0, v0, LXi/d;->b:[B

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid keyLength"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LXi/d;->b:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, LXi/d;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, LXi/d;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
