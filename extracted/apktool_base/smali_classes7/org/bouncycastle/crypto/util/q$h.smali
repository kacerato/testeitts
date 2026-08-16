.class public Lorg/bouncycastle/crypto/util/q$h;
.super Lorg/bouncycastle/crypto/util/q$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/q$m;-><init>(Lorg/bouncycastle/crypto/util/q$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/q$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 1

    new-instance v0, LXi/T;

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/util/q;->a(Lhi/h0;Ljava/lang/Object;)[B

    move-result-object p1

    invoke-direct {v0, p1}, LXi/T;-><init>([B)V

    return-object v0
.end method
