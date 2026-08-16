.class Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;
.super Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArrayConstructorReferenceLookupHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupHelper;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    return-void
.end method


# virtual methods
.method public lookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 12
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

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v7

    new-instance v6, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-wide/16 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Resolve;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, v6, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v6}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ArrayConstructorReferenceLookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1400(Lorg/openjdk/tools/javac/comp/Resolve;)Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    move-result-object v8

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v9

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result v10

    const/4 v11, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lorg/openjdk/tools/javac/comp/Resolve;->findMethodInScope(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;ZZZ)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public referenceKind(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;
    .locals 0

    sget-object p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;->ARRAY_CTOR:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$ReferenceKind;

    return-object p1
.end method
