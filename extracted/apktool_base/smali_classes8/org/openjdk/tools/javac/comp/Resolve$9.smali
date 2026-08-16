.class Lorg/openjdk/tools/javac/comp/Resolve$9;
.super Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Resolve;->resolveMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$9;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Resolve$BasicLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method public doLookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$9;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v5

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->findFun(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;ZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method
