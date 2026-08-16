.class public abstract Lcom/android/apksig/apk/ApkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/apk/ApkUtils$ZipSections;,
        Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;,
        Lcom/android/apksig/apk/ApkUtils$CodenamesLazyInitializer;
    }
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_ZIP_ENTRY_NAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final DEBUGGABLE_ATTR_ID:I = 0x101000f

.field private static final MANIFEST_ELEMENT_TAG:Ljava/lang/String; = "manifest"

.field private static final MIN_SDK_VERSION_ATTR_ID:I = 0x101020c

.field public static final SOURCE_STAMP_CERTIFICATE_HASH_ZIP_ENTRY_NAME:Ljava/lang/String; = "stamp-cert-sha256"

.field private static final TARGET_SANDBOX_VERSION_ATTR_ID:I = 0x101054c

.field private static final TARGET_SDK_VERSION_ATTR_ID:I = 0x1010270

.field private static final USES_SDK_ELEMENT_TAG:Ljava/lang/String; = "uses-sdk"

.field private static final VERSION_CODE_ATTR_ID:I = 0x101021b

.field private static final VERSION_CODE_MAJOR_ATTR_ID:I = 0x1010576


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSha256DigestBytes([B)[B
    .locals 0

    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtilsLite;->computeSha256DigestBytes([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static findApkSigningBlock(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p0, v0}, Lcom/android/apksig/apk/ApkUtils;->findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Malformed APK: not a ZIP archive"

    invoke-direct {v0, v1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lcom/android/apksig/apk/ApkUtilsLite;->findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/zip/ZipSections;)Lcom/android/apksig/apk/ApkUtilsLite$ApkSigningBlock;

    move-result-object p0

    .line 5
    new-instance p1, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;

    invoke-virtual {p0}, Lcom/android/apksig/apk/ApkUtilsLite$ApkSigningBlock;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/apksig/apk/ApkUtilsLite$ApkSigningBlock;->getContents()Lcom/android/apksig/util/DataSource;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;-><init>(JLcom/android/apksig/util/DataSource;)V

    return-object p1
.end method

.method public static findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/zip/ZipFormatException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtilsLite;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/zip/ZipSections;

    move-result-object p0

    new-instance v9, Lcom/android/apksig/apk/ApkUtils$ZipSections;

    invoke-virtual {p0}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectorySizeBytes()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryRecordCount()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/apksig/zip/ZipSections;->getZipEndOfCentralDirectoryOffset()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/android/apksig/zip/ZipSections;->getZipEndOfCentralDirectory()Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/apksig/apk/ApkUtils$ZipSections;-><init>(JJIJLjava/nio/ByteBuffer;)V

    return-object v9
.end method

.method public static getAndroidManifest(Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p0, v0}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v2}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-wide/16 v3, 0x0

    invoke-virtual {v0}, Lcom/android/apksig/zip/ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v0

    invoke-interface {p0, v3, v4, v0, v1}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object p0

    :try_start_1
    invoke-interface {p0}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v0

    invoke-static {p0, v2, v0, v1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_1
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Failed to read AndroidManifest.xml"

    invoke-direct {v0, v1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v0, "Missing AndroidManifest.xml"

    invoke-direct {p0, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Not a valid ZIP archive"

    invoke-direct {v0, v1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getAttributeValueFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const-string v0, " under element "

    const-string v1, "0x%08X"

    if-eqz p1, :cond_5

    :try_start_0
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v2, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v3, :cond_4

    const/4 v4, 0x3

    if-ne p0, v4, :cond_3

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v4

    if-ge p0, v4, :cond_3

    invoke-virtual {v2, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeNameResourceId(I)I

    move-result v4

    if-ne v4, p2, :cond_2

    invoke-virtual {v2, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeValueType(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    if-ne v4, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported value type, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", for attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    invoke-virtual {v2, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeIntValue(I)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I

    move-result p0

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to determine APK\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v2, Lcom/android/apksig/apk/ApkFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine value for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; malformed binary resource: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AndroidManifest.xml"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "elementName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDebuggableFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p0, v1, :cond_8

    const/4 v3, 0x3

    if-ne p0, v3, :cond_7

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getDepth()I

    move-result p0

    if-ne p0, v1, :cond_7

    const-string p0, "application"

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    move p0, v2

    :goto_1
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v4

    if-ge p0, v4, :cond_6

    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeNameResourceId(I)I

    move-result v4

    const v5, 0x101000f

    if-ne v4, v5, :cond_5

    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeValueType(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    if-eq v4, v1, :cond_2

    if-eq v4, v3, :cond_1

    const/4 v1, 0x4

    if-ne v4, v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v0, "Unable to determine whether APK is debuggable: AndroidManifest.xml\'s android:debuggable attribute uses unsupported value type. Only boolean, string and int values are supported."

    invoke-direct {p0, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    new-instance p0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v0, "Unable to determine whether APK is debuggable: AndroidManifest.xml\'s android:debuggable attribute references a resource. References are not supported for security reasons. Only constant boolean, string and int values are supported."

    invoke-direct {p0, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeStringValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TRUE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v5

    :cond_4
    return v2

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    return v2

    :cond_7
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I

    move-result p0
    :try_end_0
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_8
    return v2

    :goto_3
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Unable to determine whether APK is debuggable: malformed binary resource: AndroidManifest.xml"

    invoke-direct {v0, v1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getLongVersionCodeFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->getVersionCodeFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const-string v1, "manifest"

    const v2, 0x1010576

    invoke-static {p0, v1, v2}, Lcom/android/apksig/apk/ApkUtils;->getAttributeValueFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, p0

    goto :goto_0

    :catch_0
    const-wide/16 v1, 0x0

    :goto_0
    const/16 p0, 0x20

    shl-long/2addr v1, p0

    int-to-long v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public static getMinSdkVersionForCodename(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/CodenameMinSdkVersionException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_3

    invoke-static {}, Lcom/android/apksig/apk/ApkUtils$CodenamesLazyInitializer;->access$100()[Lcom/android/apksig/internal/util/Pair;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v1

    invoke-static {}, Lcom/android/apksig/apk/ApkUtils$CodenamesLazyInitializer;->access$200()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    if-ltz v1, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    rsub-int/lit8 v2, v1, -0x1

    if-nez v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    rsub-int/lit8 v1, v1, -0x2

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_3
    new-instance v0, Lcom/android/apksig/apk/CodenameMinSdkVersionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine APK\'s minimum supported Android platform version : Unsupported codename in AndroidManifest.xml\'s minSdkVersion: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/apksig/apk/CodenameMinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/MinSdkVersionException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result p0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v3, :cond_5

    const/4 v4, 0x3

    if-ne p0, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getDepth()I

    move-result p0

    if-ne p0, v3, :cond_4

    const-string p0, "uses-sdk"

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v4

    if-ge p0, v4, :cond_3

    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeNameResourceId(I)I

    move-result v4

    const v5, 0x101020c

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeValueType(I)I

    move-result v4

    if-eq v4, v1, :cond_1

    if-ne v4, v3, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeIntValue(I)I

    move-result p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance p0, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v0, "Unable to determine APK\'s minimum supported Android: unsupported value type in AndroidManifest.xml\'s minSdkVersion. Only integer values supported."

    invoke-direct {p0, v0}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeStringValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionForCodename(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    move p0, v1

    :goto_2
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I

    move-result p0
    :try_end_0
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return v2

    :goto_3
    new-instance v0, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v1, "Unable to determine APK\'s minimum supported Android platform version: malformed binary resource: AndroidManifest.xml"

    invoke-direct {v0, v1, p0}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getPackageNameFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result p0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getDepth()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const-string p0, "manifest"

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v1

    if-ge p0, v1, :cond_1

    const-string v1, "package"

    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeStringValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I

    move-result p0
    :try_end_0
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-object v2

    :goto_2
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Unable to determine APK package name: malformed binary resource: AndroidManifest.xml"

    invoke-direct {v0, v1, p0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getTargetSandboxVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I
    .locals 2

    :try_start_0
    const-string v0, "manifest"

    const v1, 0x101054c

    invoke-static {p0, v0, v1}, Lcom/android/apksig/apk/ApkUtils;->getAttributeValueFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getTargetSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I
    .locals 2

    :try_start_0
    const-string v0, "uses-sdk"

    const v1, 0x1010270

    invoke-static {p0, v0, v1}, Lcom/android/apksig/apk/ApkUtils;->getAttributeValueFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :try_start_1
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result p0
    :try_end_1
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getVersionCodeFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const-string v0, "manifest"

    const v1, 0x101021b

    invoke-static {p0, v0, v1}, Lcom/android/apksig/apk/ApkUtils;->getAttributeValueFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {p0, p1, p2}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method public static updateZipEocdCommentLen(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->updateZipEocdCommentLen(Ljava/nio/ByteBuffer;)V

    return-void
.end method
