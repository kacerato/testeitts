.class public Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$j;
.super LYj/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;

    new-instance v2, Ldk/c;

    invoke-direct {v2}, Ldk/c;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;-><init>(Ldk/f;)V

    invoke-direct {p0, v0, v1}, LYj/a;-><init>(Ldk/f;Ljava/security/KeyStoreSpi;)V

    return-void
.end method
