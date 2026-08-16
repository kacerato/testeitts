.class public Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/OpensStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    return-void
.end method


# virtual methods
.method public computeSeverity(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, "opens "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    invoke-super {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2
.end method
