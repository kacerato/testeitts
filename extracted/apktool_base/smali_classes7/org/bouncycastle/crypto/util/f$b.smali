.class public final Lorg/bouncycastle/crypto/util/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lhi/b;

.field public final b:Loh/y;

.field public final c:Loh/y;

.field public d:Loh/M;

.field public e:Loh/M;


# direct methods
.method public constructor <init>(Lhi/b;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/f$b;->a:Lhi/b;

    invoke-static {p2}, Lorg/bouncycastle/crypto/util/DerUtil;->a([B)Loh/y;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/f$b;->b:Loh/y;

    invoke-static {p3}, Lorg/bouncycastle/crypto/util/DerUtil;->a([B)Loh/y;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/f$b;->c:Loh/y;

    return-void
.end method


# virtual methods
.method public a()Lorg/bouncycastle/crypto/util/f;
    .locals 3

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/f$b;->a:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/f$b;->b:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/f$b;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/util/f$b;->d:Loh/M;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/f$b;->e:Loh/M;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/util/f;

    new-instance v2, Loh/G0;

    invoke-direct {v2, v0}, Loh/G0;-><init>(Loh/h;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/util/f;-><init>(Loh/G0;Lorg/bouncycastle/crypto/util/f$a;)V

    return-object v1
.end method

.method public b([B)Lorg/bouncycastle/crypto/util/f$b;
    .locals 3

    new-instance v0, Loh/K0;

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/DerUtil;->a([B)Loh/y;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/f$b;->e:Loh/M;

    return-object p0
.end method

.method public c([B)Lorg/bouncycastle/crypto/util/f$b;
    .locals 2

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/DerUtil;->a([B)Loh/y;

    move-result-object p1

    invoke-direct {v0, v1, v1, p1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/f$b;->d:Loh/M;

    return-object p0
.end method
