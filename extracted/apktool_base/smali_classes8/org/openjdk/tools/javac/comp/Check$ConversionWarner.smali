.class Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;
.super Lorg/openjdk/tools/javac/util/Warner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConversionWarner"
.end annotation


# instance fields
.field final expected:Lorg/openjdk/tools/javac/code/Type;

.field final found:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Check;

.field final uncheckedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/util/Warner;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->uncheckedKey:Ljava/lang/String;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->found:Lorg/openjdk/tools/javac/code/Type;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->expected:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/util/Warner;->warned:Z

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/comp/Check$5;->$SwitchMap$com$sun$tools$javac$code$Lint$LintCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->access$1000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->access$1000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$1100(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->trustMeType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->attribute(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Attribute$Compound;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->access$1000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->access$1200(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->access$100(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$1000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Warner;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Check;->access$1000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "varargs.unsafe.use.varargs.param"

    invoke-virtual {p1, v0, v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->warnUnsafeVararg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Warner;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Check;->access$900(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->uncheckedKey:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->found:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Check$ConversionWarner;->expected:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "prob.found.req"

    invoke-virtual {p1, v0, v2, v1}, Lorg/openjdk/tools/javac/comp/Check;->warnUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
