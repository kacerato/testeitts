.class public Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerityTreeAndDigest"
.end annotation


# instance fields
.field public final contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

.field public final rootHash:[B

.field public final tree:[B


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->contentDigestAlgorithm:Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    iput-object p2, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->rootHash:[B

    iput-object p3, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$VerityTreeAndDigest;->tree:[B

    return-void
.end method
