.class Lorg/openjdk/tools/javac/comp/Attr$8;
.super Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Attr;->checkMethod(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;

.field final synthetic val$diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

.field final synthetic val$sym:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$8;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Attr$8;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Attr$8;->val$diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    return-void
.end method


# virtual methods
.method public errCandidate()Lorg/openjdk/tools/javac/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$8;->val$sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Attr$8;->val$diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
