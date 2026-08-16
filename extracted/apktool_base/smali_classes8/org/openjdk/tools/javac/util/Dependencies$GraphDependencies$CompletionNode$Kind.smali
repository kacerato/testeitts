.class final enum Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

.field public static final enum CLASS:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

.field public static final enum SOURCE:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;


# instance fields
.field final dotStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    const/4 v1, 0x0

    const-string v2, "solid"

    const-string v3, "SOURCE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->SOURCE:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    new-instance v1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    const/4 v2, 0x1

    const-string v3, "dotted"

    const-string v4, "CLASS"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->CLASS:Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->$VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

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

    iput-object p3, p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->dotStyle:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->$VALUES:[Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies$CompletionNode$Kind;

    return-object v0
.end method
