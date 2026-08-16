.class Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;
.super Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;->visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->typePreprocessor:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->addUsage(Lorg/openjdk/tools/javac/code/Symbol;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;->visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lorg/openjdk/tools/javac/code/Types$DefaultSymbolVisitor;->visit(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->typePreprocessor:Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types$UnaryVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$2;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method
