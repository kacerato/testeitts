.class public Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;
.super Lorg/openjdk/tools/javac/code/Printer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RichPrinter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Printer;-><init>()V

    return-void
.end method


# virtual methods
.method public capturedVarId(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v0, p1, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public className(Lorg/openjdk/tools/javac/code/Type$ClassType;ZLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->isEnabled(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->simplify(Lorg/openjdk/tools/javac/code/Symbol;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/code/Printer;->className(Lorg/openjdk/tools/javac/code/Type$ClassType;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter;->formatter:Lorg/openjdk/tools/javac/api/DiagnosticFormatter;

    check-cast v0, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->isEnabled(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->CAPTURED:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    .line 4
    invoke-static {v0, p1, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 5
    const-string v0, "compiler.misc.captured.type"

    invoke-virtual {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitCapturedType(Lorg/openjdk/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->nameSimplifier:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->simplify(Lorg/openjdk/tools/javac/code/Symbol;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    .line 6
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->isEnabled(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 7
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitClassSymbol(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->isEnabled(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->INTERSECTION:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    .line 5
    invoke-static {v0, p1, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 6
    const-string v0, "compiler.misc.intersection.type"

    invoke-virtual {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodSymbol(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .locals 6

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/code/Printer;->visit(Lorg/openjdk/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->isStaticOrInstanceInit()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v1, :cond_4

    .line 7
    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitTypes(Lorg/openjdk/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    .line 10
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide v4, 0x400000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 12
    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->printMethodArgs(Lorg/openjdk/tools/javac/util/List;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Printer;->visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "compiler.misc.type.null"

    invoke-virtual {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$100(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type$TypeVar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->isEnabled(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->this$0:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    sget-object v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;->TYPEVAR:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;

    invoke-static {v1, p1, v2}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->access$000(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$WhereClauseKind;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 5
    const-string v0, "compiler.misc.type.var"

    invoke-virtual {p0, p2, v0, p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichPrinter;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
