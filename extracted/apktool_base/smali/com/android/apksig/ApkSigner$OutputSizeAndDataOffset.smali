.class Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSizeAndDataOffset"
.end annotation


# instance fields
.field public dataOffsetBytes:J

.field public outputBytes:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->outputBytes:J

    iput-wide p3, p0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->dataOffsetBytes:J

    return-void
.end method
