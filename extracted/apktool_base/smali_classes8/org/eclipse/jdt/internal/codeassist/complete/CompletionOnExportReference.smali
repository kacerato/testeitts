.class public Lorg/eclipse/jdt/internal/codeassist/complete/CompletionOnExportReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/ExportsStatement;-><init>(Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;[Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;)V

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->printIndent(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "<CompleteOnExport:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/PackageVisibilityStatement;->pkgName:[C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p2
.end method
