.class Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/LambdaToMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KlassInfo"
.end annotation


# instance fields
.field private appendedMethodList:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field

.field private final clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field private final deserMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field private final deserParamSym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

.field private final deserializeCases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 13

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->this$0:Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->appendedMethodList:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->deserializeCases:Ljava/util/Map;

    .line 6
    new-instance v5, Lorg/openjdk/tools/javac/code/Type$MethodType;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->serializedLambdaType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    .line 7
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    .line 8
    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Names;->deserializeLambda:Lorg/openjdk/tools/javac/util/Name;

    iget-object v6, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    const-wide/16 v2, 0x8

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$200(Lorg/openjdk/tools/javac/comp/LambdaToMethod;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v12

    iput-object v12, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->deserMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    .line 9
    new-instance p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$100(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    const-string v1, "lambda"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v10

    .line 10
    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->access$000(Lorg/openjdk/tools/javac/comp/LambdaToMethod;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iget-object v11, p1, Lorg/openjdk/tools/javac/code/Symtab;->serializedLambdaType:Lorg/openjdk/tools/javac/code/Type;

    const-wide/16 v8, 0x10

    move-object v7, p2

    invoke-direct/range {v7 .. v12}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->deserParamSym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/LambdaToMethod$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;-><init>(Lorg/openjdk/tools/javac/comp/LambdaToMethod;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    return-void
.end method

.method public static synthetic access$1400(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->deserMethodSym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->deserParamSym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-object p0
.end method

.method public static synthetic access$2000(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->deserializeCases:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->addMethod(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->appendedMethodList:Lorg/openjdk/tools/javac/util/ListBuffer;

    return-object p0
.end method

.method private addMethod(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->appendedMethodList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/LambdaToMethod$KlassInfo;->appendedMethodList:Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method
