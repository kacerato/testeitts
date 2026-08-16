.class public Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/v4/V4SchemeSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignerConfig"
.end annotation


# instance fields
.field public final v41Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

.field public final v4Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Only accepting one signer config for V4.1 Signature."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    iput-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;->v4Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/android/apksig/internal/apk/v4/V4SchemeSigner$SignerConfig;->v41Config:Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;

    return-void

    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "Only accepting one signer config for V4 Signature."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
