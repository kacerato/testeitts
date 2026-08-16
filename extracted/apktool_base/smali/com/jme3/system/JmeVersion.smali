.class public Lcom/jme3/system/JmeVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BRANCH_NAME:Ljava/lang/String;

.field public static final BUILD_DATE:Ljava/lang/String;

.field public static final FULL_NAME:Ljava/lang/String;

.field public static final GIT_HASH:Ljava/lang/String;

.field public static final GIT_SHORT_HASH:Ljava/lang/String;

.field public static final GIT_TAG:Ljava/lang/String;

.field public static final VERSION_FULL:Ljava/lang/String;

.field public static final VERSION_NUMBER:Ljava/lang/String;

.field public static final VERSION_TAG:Ljava/lang/String;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/jme3/system/JmeVersion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/jme3/system/JmeVersion;->props:Ljava/util/Properties;

    :try_start_0
    const-string v2, "version.properties"

    invoke-static {v2, v0}, Lcom/jme3/util/res/Resources;->getResourceAsStream(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    sget-object v1, Lcom/jme3/system/JmeVersion;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to read version info!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object v0, Lcom/jme3/system/JmeVersion;->props:Ljava/util/Properties;

    const-string v1, "build.date"

    const-string v2, "1900-01-01"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->BUILD_DATE:Ljava/lang/String;

    const-string v1, "git.branch"

    const-string v2, "unknown"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->BRANCH_NAME:Ljava/lang/String;

    const-string v1, "git.hash"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->GIT_HASH:Ljava/lang/String;

    const-string v1, "git.hash.short"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->GIT_SHORT_HASH:Ljava/lang/String;

    const-string v1, "git.tag"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->GIT_TAG:Ljava/lang/String;

    const-string v1, "version.number"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->VERSION_NUMBER:Ljava/lang/String;

    const-string v1, "version.tag"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->VERSION_TAG:Ljava/lang/String;

    const-string v1, "version.full"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/jme3/system/JmeVersion;->VERSION_FULL:Ljava/lang/String;

    const-string v1, "name.full"

    const-string v2, "jMonkeyEngine (unknown version)"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jme3/system/JmeVersion;->FULL_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
