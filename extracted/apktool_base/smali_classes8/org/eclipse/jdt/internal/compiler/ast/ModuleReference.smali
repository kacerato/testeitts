.class public Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;
.super Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;
.source "SourceFile"


# instance fields
.field public binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field public moduleName:[C

.field public sourcePositions:[J

.field public tokens:[[C


# direct methods
.method public constructor <init>([[C[J)V
    .locals 2

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->sourcePositions:[J

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p2, v0

    long-to-int v0, v0

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceEnd:I

    const/4 v0, 0x0

    aget-wide v0, p2, v0

    const/16 p2, 0x20

    ushr-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    const/16 p2, 0x2e

    invoke-static {p1, p2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concatWith([[CC)[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    return-void
.end method


# virtual methods
.method public print(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-object p2

    :cond_0
    if-lez p1, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->tokens:[[C

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->moduleName:[C

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getModule([C)Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/ModuleReference;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    return-object p1
.end method
