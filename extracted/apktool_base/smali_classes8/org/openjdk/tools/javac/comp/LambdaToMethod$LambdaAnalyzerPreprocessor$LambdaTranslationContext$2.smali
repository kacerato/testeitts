.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$2;
.super Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;->translate(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaSymbolKind;)Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

.field final synthetic val$sym:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$2;->this$2:Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext;

    iput-object p7, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$2;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method


# virtual methods
.method public baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$LambdaAnalyzerPreprocessor$LambdaTranslationContext$2;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object v0
.end method
