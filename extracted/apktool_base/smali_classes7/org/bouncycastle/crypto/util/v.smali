.class public Lorg/bouncycastle/crypto/util/v;
.super Lorg/bouncycastle/crypto/util/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/v$b;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/util/v$b;)V
    .locals 1

    .line 1
    sget-object v0, Lyj/c;->O:Loh/x;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/m;-><init>(Loh/x;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/v$b;->a(Lorg/bouncycastle/crypto/util/v$b;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/v;->b:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/v$b;->b(Lorg/bouncycastle/crypto/util/v$b;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/v;->c:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/v$b;->c(Lorg/bouncycastle/crypto/util/v$b;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/util/v;->d:I

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/v$b;->d(Lorg/bouncycastle/crypto/util/v$b;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/util/v;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/v$b;Lorg/bouncycastle/crypto/util/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/v;-><init>(Lorg/bouncycastle/crypto/util/v$b;)V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/v;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/v;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/v;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/v;->e:I

    return v0
.end method
