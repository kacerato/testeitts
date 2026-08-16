.class public Lorg/openjdk/tools/javac/util/ModuleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final javacInternalPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v11, "org.openjdk.tools.javac.util"

    const-string v12, "org.openjdk.tools.doclint"

    const-string v0, "org.openjdk.tools.javac.api"

    const-string v1, "org.openjdk.tools.javac.code"

    const-string v2, "org.openjdk.tools.javac.comp"

    const-string v3, "org.openjdk.tools.javac.file"

    const-string v4, "org.openjdk.tools.javac.jvm"

    const-string v5, "org.openjdk.tools.javac.main"

    const-string v6, "org.openjdk.tools.javac.model"

    const-string v7, "org.openjdk.tools.javac.parser"

    const-string v8, "org.openjdk.tools.javac.platform"

    const-string v9, "org.openjdk.tools.javac.processing"

    const-string v10, "org.openjdk.tools.javac.tree"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/ModuleHelper;->javacInternalPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExports(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;)V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/util/ModuleHelper;->javacInternalPackages:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v3, p1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->addExports(Ljava/lang/String;Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
