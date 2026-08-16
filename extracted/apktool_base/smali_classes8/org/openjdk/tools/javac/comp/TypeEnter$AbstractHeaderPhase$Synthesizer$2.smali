.class Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer$2;
.super Lorg/openjdk/tools/javac/code/Type$ErrorType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;->synthesizeClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer$2;->this$2:Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Type$ErrorType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getTypeArguments()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase$Synthesizer$2;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method
