.class public final synthetic Lorg/openjdk/tools/javac/comp/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Operators;

.field public final synthetic c:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field public final synthetic d:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

.field public final synthetic e:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/t1;->b:Lorg/openjdk/tools/javac/comp/Operators;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/t1;->c:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/t1;->d:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/t1;->e:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/t1;->b:Lorg/openjdk/tools/javac/comp/Operators;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/t1;->c:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/t1;->d:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/t1;->e:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Operators;->h(Lorg/openjdk/tools/javac/comp/Operators;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    move-result-object v0

    return-object v0
.end method
