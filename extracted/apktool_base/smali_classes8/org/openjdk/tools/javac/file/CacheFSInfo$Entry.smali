.class Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/CacheFSInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field canonicalFile:Ljava/nio/file/Path;

.field exists:Z

.field isDirectory:Z

.field isFile:Z

.field jarClassPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/CacheFSInfo$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/file/CacheFSInfo$Entry;-><init>()V

    return-void
.end method
