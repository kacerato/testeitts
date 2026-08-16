.class Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;
.super Lorg/openjdk/tools/javac/code/Printer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Printer;-><init>()V

    return-void
.end method


# virtual methods
.method public capturedVarId(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$1;->this$0:Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->access$002(Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
