.class public Lorg/eclipse/jdt/internal/codeassist/select/SelectionOnNameOfMemberValuePair;
.super Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;
.source "SourceFile"


# direct methods
.method public constructor <init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;-><init>([CIILorg/eclipse/jdt/internal/compiler/ast/Expression;)V

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const-string p1, "<SelectOnName:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->name:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->resolveTypeExpecting(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/MemberValuePair;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/codeassist/select/SelectionNodeFound;-><init>()V

    throw p1
.end method
