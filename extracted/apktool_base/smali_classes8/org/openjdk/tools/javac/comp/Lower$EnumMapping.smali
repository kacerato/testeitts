.class Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Lower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnumMapping"
.end annotation


# instance fields
.field final forEnum:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

.field final mapVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

.field next:I

.field pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Lower;

.field final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V
    .locals 7

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    const/4 v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->next:I

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->forEnum:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$100(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "SwitchMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$100(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$200(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/jvm/ClassWriter;

    move-result-object v2

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, p3}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->xClassName(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$100(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Target;->syntheticNameChar()C

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$300(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p3

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    new-instance v5, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v1, v2}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    const-wide/16 v2, 0x1018

    move-object v1, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->mapVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lorg/openjdk/tools/javac/comp/Lower;->access$500(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)V

    return-void
.end method


# virtual methods
.method public forConstant(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->next:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->next:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object p1

    return-object p1
.end method

.method public translate()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->mapVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/Lower;->classDef(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->values:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->forEnum:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/openjdk/tools/javac/comp/Lower;->access$700(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v2

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->lengthVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v5

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Type(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v6

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v3, v4, v6}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v7

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Names;->ordinal:Lorg/openjdk/tools/javac/util/Name;

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->forEnum:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    invoke-static {v4, v6, v7, v8, v9}, Lorg/openjdk/tools/javac/comp/Lower;->access$700(Lorg/openjdk/tools/javac/comp/Lower;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v7

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v8

    new-instance v15, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Lower;->access$000(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v9

    iget-object v12, v9, Lorg/openjdk/tools/javac/util/Names;->ex:Lorg/openjdk/tools/javac/util/Name;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v9

    iget-object v13, v9, Lorg/openjdk/tools/javac/code/Symtab;->noSuchFieldErrorType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v9

    iget-object v14, v9, Lorg/openjdk/tools/javac/code/Symtab;->noSymbol:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide v10, 0x200000000L

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {v8, v15, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v8

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v9

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v11, v12, v10}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->values:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v10}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v10

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v13}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v13

    iget-object v14, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->mapVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v15, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v15}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v15

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v11}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v11

    invoke-virtual {v11, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v9

    invoke-virtual {v5, v9, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v15, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->App(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v5

    invoke-virtual {v13, v14, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Indexed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v5

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v8

    invoke-virtual {v10, v5, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v5

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Lower;->access$400(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v8

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {v5, v8}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v5

    iget-object v8, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v8

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v9

    invoke-static {v5}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v6, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-object v5, v9

    move-wide v11, v10

    goto/16 :goto_0

    :cond_0
    iget-object v4, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    const-wide/16 v6, 0x8

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v5, v6, v7, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->this$0:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Lower;->access$600(Lorg/openjdk/tools/javac/comp/Lower;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Lower$EnumMapping;->mapVar:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v4, v5, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method
