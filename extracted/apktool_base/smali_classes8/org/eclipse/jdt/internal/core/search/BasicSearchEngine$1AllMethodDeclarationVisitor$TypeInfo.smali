.class Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor$TypeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeInfo"
.end annotation


# instance fields
.field public enclosingTypeName:[C

.field final synthetic this$1:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor;

.field public type:Lorg/eclipse/jdt/core/IType;

.field public typeDecl:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

.field public visitMethods:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor;Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;Z[CLorg/eclipse/jdt/core/ICompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor$TypeInfo;->this$1:Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor$TypeInfo;->typeDecl:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    new-instance p1, Ljava/lang/String;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->name:[C

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p5, p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor$TypeInfo;->type:Lorg/eclipse/jdt/core/IType;

    iput-boolean p3, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor$TypeInfo;->visitMethods:Z

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/search/BasicSearchEngine$1AllMethodDeclarationVisitor$TypeInfo;->enclosingTypeName:[C

    return-void
.end method
