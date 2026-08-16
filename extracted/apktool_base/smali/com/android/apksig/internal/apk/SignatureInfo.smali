.class public Lcom/android/apksig/internal/apk/SignatureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final apkSigningBlockOffset:J

.field public final centralDirOffset:J

.field public final eocd:Ljava/nio/ByteBuffer;

.field public final eocdOffset:J

.field public final signatureBlock:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->apkSigningBlockOffset:J

    iput-wide p4, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->centralDirOffset:J

    iput-wide p6, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->eocdOffset:J

    iput-object p8, p0, Lcom/android/apksig/internal/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-void
.end method
