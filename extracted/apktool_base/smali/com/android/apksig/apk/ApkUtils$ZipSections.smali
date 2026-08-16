.class public Lcom/android/apksig/apk/ApkUtils$ZipSections;
.super Lcom/android/apksig/zip/ZipSections;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/apk/ApkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZipSections"
.end annotation


# direct methods
.method public constructor <init>(JJIJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/apksig/zip/ZipSections;-><init>(JJIJLjava/nio/ByteBuffer;)V

    return-void
.end method
