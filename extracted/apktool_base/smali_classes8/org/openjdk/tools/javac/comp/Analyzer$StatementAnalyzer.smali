.class abstract Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Analyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StatementAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/openjdk/tools/javac/tree/JCTree;",
        "T:",
        "Lorg/openjdk/tools/javac/tree/JCTree;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mode:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

.field tag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Analyzer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Analyzer;Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;Lorg/openjdk/tools/javac/tree/JCTree$Tag;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->mode:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->tag:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Analyzer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Analyzer;->analyzerModes:Ljava/util/EnumSet;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Analyzer$StatementAnalyzer;->mode:Lorg/openjdk/tools/javac/comp/Analyzer$AnalyzerMode;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract map(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;)TT;"
        }
    .end annotation
.end method

.method public abstract match(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract process(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;Z)V"
        }
    .end annotation
.end method
