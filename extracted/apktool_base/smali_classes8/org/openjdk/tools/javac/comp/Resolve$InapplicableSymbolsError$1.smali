.class Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError$1;
.super Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;

.field final synthetic val$p:Lorg/openjdk/tools/javac/util/Pair;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/Pair;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError$1;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError$1;->val$p:Lorg/openjdk/tools/javac/util/Pair;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    return-void
.end method


# virtual methods
.method public errCandidate()Lorg/openjdk/tools/javac/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError$1;->val$p:Lorg/openjdk/tools/javac/util/Pair;

    return-object v0
.end method
