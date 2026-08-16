.class Lorg/openjdk/tools/javac/file/JRTIndex$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/JRTIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field final ctSym:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

.field final files:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final subdirs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/file/JRTIndex;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/file/JRTIndex;Ljava/util/Map;Ljava/util/Set;Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;",
            "Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->this$0:Lorg/openjdk/tools/javac/file/JRTIndex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->files:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->subdirs:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;->ctSym:Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/file/JRTIndex;Ljava/util/Map;Ljava/util/Set;Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;Lorg/openjdk/tools/javac/file/JRTIndex$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/file/JRTIndex$Entry;-><init>(Lorg/openjdk/tools/javac/file/JRTIndex;Ljava/util/Map;Ljava/util/Set;Lorg/openjdk/tools/javac/file/JRTIndex$CtSym;)V

    return-void
.end method
