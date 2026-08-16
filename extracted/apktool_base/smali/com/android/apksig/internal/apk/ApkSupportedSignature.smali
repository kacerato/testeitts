.class public Lcom/android/apksig/internal/apk/ApkSupportedSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

.field public final signature:[B


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/apk/SignatureAlgorithm;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->algorithm:Lcom/android/apksig/internal/apk/SignatureAlgorithm;

    iput-object p2, p0, Lcom/android/apksig/internal/apk/ApkSupportedSignature;->signature:[B

    return-void
.end method
