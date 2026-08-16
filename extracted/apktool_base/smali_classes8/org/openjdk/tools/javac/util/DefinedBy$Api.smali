.class public final enum Lorg/openjdk/tools/javac/util/DefinedBy$Api;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/DefinedBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Api"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/DefinedBy$Api;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/DefinedBy$Api;

.field public static final enum ANNOTATION_PROCESSING:Lorg/openjdk/tools/javac/util/DefinedBy$Api;

.field public static final enum COMPILER:Lorg/openjdk/tools/javac/util/DefinedBy$Api;

.field public static final enum COMPILER_TREE:Lorg/openjdk/tools/javac/util/DefinedBy$Api;

.field public static final enum LANGUAGE_MODEL:Lorg/openjdk/tools/javac/util/DefinedBy$Api;


# instance fields
.field public final packageRoot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    const/4 v1, 0x0

    const-string v2, "org.openjdk.javax.annotation.processing"

    const-string v3, "ANNOTATION_PROCESSING"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/DefinedBy$Api;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/DefinedBy$Api;->ANNOTATION_PROCESSING:Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    new-instance v1, Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    const/4 v2, 0x1

    const-string v3, "org.openjdk.javax.tools"

    const-string v4, "COMPILER"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/DefinedBy$Api;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/util/DefinedBy$Api;->COMPILER:Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    new-instance v2, Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    const/4 v3, 0x2

    const-string v4, "org.openjdk.source"

    const-string v5, "COMPILER_TREE"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/util/DefinedBy$Api;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/tools/javac/util/DefinedBy$Api;->COMPILER_TREE:Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    new-instance v3, Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    const/4 v4, 0x3

    const-string v5, "org.openjdk.javax.lang.model"

    const-string v6, "LANGUAGE_MODEL"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/util/DefinedBy$Api;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/tools/javac/util/DefinedBy$Api;->LANGUAGE_MODEL:Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/DefinedBy$Api;->$VALUES:[Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/DefinedBy$Api;->packageRoot:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/DefinedBy$Api;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/DefinedBy$Api;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/DefinedBy$Api;->$VALUES:[Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/DefinedBy$Api;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/DefinedBy$Api;

    return-object v0
.end method
