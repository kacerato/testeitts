.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ModifierRewriter;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;
    }
.end annotation


# static fields
.field private static final INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_CIC_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_FIELD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_INITIALIZER_MODIFIERS_PROPERTY3:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_METHOD_MODIFIERS_PROPERTY2:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_METHOD_RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final INTERNAL_SWITCH_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_TDS_TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final INTERNAL_TYPE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_TYPE_SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field private static final INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_VARIABLE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_VDE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final INTERNAL_VDS_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

.field private static final JLS12_INTERNAL:I = 0xc

.field private static final JLS2_INTERNAL:I = 0x2

.field private static final JLS3_INTERNAL:I = 0x3

.field private static final JLS4_INTERNAL:I = 0x4

.field private static final JLS8_INTERNAL:I = 0x8

.field private static final JLS9_INTERNAL:I = 0x9


# instance fields
.field private beforeRequiredSpaceIndex:I

.field private final content:[C

.field currentEdit:Lorg/eclipse/text/edits/TextEdit;

.field final eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

.field private final extendedSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

.field private final formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

.field private final lineCommentEndOffsets:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

.field private final lineInfo:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

.field private final nodeInfos:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

.field options:Ljava/util/Map;

.field private recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

.field private final sourceCopyEndNodes:Ljava/util/Stack;

.field private final sourceCopyInfoToEdit:Ljava/util/Map;

.field private tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayType;->COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_FIELD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_INITIALIZER_MODIFIERS_PROPERTY3:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_MODIFIERS_PROPERTY2:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TYPE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TYPE_SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_CIC_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TDS_TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VARIABLE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VDE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VDS_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/TryStatement;->RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SwitchCase;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_SWITCH_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-void
.end method

.method public constructor <init>([CLorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;Ljava/util/List;Ljava/util/Map;Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->content:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->lineInfo:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->nodeInfos:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->sourceCopyInfoToEdit:Ljava/util/Map;

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->sourceCopyEndNodes:Ljava/util/Stack;

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-direct {p1, p6, p5, p8, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;Ljava/util/Map;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iput-object p9, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->extendedSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    new-instance p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

    invoke-direct {p1, p7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->lineCommentEndOffsets:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->options:Ljava/util/Map;

    iput-object p10, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    return-void
.end method

.method private changeNotSupported(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Change not supported in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lorg/eclipse/core/runtime/Assert;->isTrue(ZLjava/lang/String;)Z

    return-void
.end method

.method private final doTextCopy(Lorg/eclipse/text/edits/TextEdit;IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method private final doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 1

    if-gtz p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Lorg/eclipse/text/edits/ReplaceEdit;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/text/edits/ReplaceEdit;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEdit(Lorg/eclipse/text/edits/TextEdit;)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p4, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEditGroup(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/text/edits/TextEdit;)V

    :cond_1
    return-void
.end method

.method private final doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitList(Ljava/util/List;I)I

    move-result p1

    return p1

    :cond_1
    return p3
.end method

.method private doVisitList(Ljava/util/List;I)I
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p2

    goto :goto_0
.end method

.method private final doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 4

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->structuralPropertiesForType()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return v1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private ensureSpaceAfterReplace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private ensureSpaceBeforeReplace(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getChangedPropertieEvents(Lorg/eclipse/jdt/core/dom/ASTNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    if-ge v0, p1, :cond_2

    iput v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    if-ne v3, v4, :cond_1

    iget p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    iput v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    return-void
.end method

.method private findTagNameEnd(Lorg/eclipse/jdt/core/dom/TagElement;)I
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/TagElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getContent()[C

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    :goto_0
    if-ge p1, v1, :cond_1

    aget-char v2, v0, p1

    invoke-static {v2}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isIndentChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    return p1
.end method

.method private final getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getCurrentLineStart(Ljava/lang/String;I)I
    .locals 1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-gez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isLineDelimiterChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private getDimensions(Lorg/eclipse/jdt/core/dom/ArrayType;)I
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayType;->DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Type;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Type;

    goto :goto_0
.end method

.method private final getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getElementType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;
    .locals 2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayType;->ELEMENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Type;

    return-object p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Type;

    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Type;

    goto :goto_0
.end method

.method private final getIndentOfLine(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOfOffset(I)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getContent()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;->getLineOffset(I)I

    move-result p1

    move v1, p1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->content:[C

    aget-char v2, v2, v1

    invoke-static {v2}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isIndentChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, p1

    invoke-direct {v2, v0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    return-object p1
.end method

.method private final getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getPosAfterLeftBrace(I)I
    .locals 1

    const/16 v0, 0x31

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterToken(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method private getPosAfterToken(II)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    return p1
.end method

.method private getPosAfterTry(I)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    return p1
.end method

.method private getPreviousNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLocationInParent()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStructuralProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne p1, v4, :cond_2

    :goto_1
    if-ge v3, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    goto :goto_0
.end method

.method private getPreviousTokenEndOffset(Lorg/eclipse/jdt/core/dom/ASTNode;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPreviousNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getPreviousTokenEndOffset(II)I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private final hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->hasChangedProperties(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method private insertAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/ArrayType;IILorg/eclipse/text/edits/TextEditGroup;Z)V
    .locals 3

    if-eqz p5, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const-string p5, " "

    invoke-virtual {p0, p3, p5, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Annotation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p3, v1, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eq v2, p2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method private final isCollapsed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->nodeInfos:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;->isCollapsed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method private needsNewLineForLineComment(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->lineCommentEndOffsets:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->content:[C

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->isEndOfLineComment(I[C)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p3, p1, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isLineDelimiterChar(C)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private replaceOperation(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentLength()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private rewriteAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/core/dom/ArrayType;IIZLorg/eclipse/text/edits/TextEditGroup;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-ge p3, p5, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Dimension;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Dimension;->annotations()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPreviousNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Annotation;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    :goto_1
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/Annotation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p5

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr p5, p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    sub-int/2addr p1, v1

    invoke-virtual {p0, v1, p1, p6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    :cond_2
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p6

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->insertAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/ArrayType;IILorg/eclipse/text/edits/TextEditGroup;Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/dom/Dimension;

    sget-object v2, Lorg/eclipse/jdt/core/dom/Dimension;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 p1, 0x20

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private rewriteArrayTypeDimensions(Lorg/eclipse/jdt/core/dom/ArrayType;I)I
    .locals 6

    sget-object v2, Lorg/eclipse/jdt/core/dom/ArrayType;->DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I
    .locals 13

    move-object v6, p0

    move/from16 v7, p3

    move/from16 v0, p4

    move/from16 v3, p5

    move-object/from16 v1, p6

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v2

    const/4 v4, -0x1

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v9, :cond_7

    const/4 v10, 0x2

    if-eq v5, v10, :cond_5

    const/4 v10, 0x4

    if-eq v5, v10, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne v0, v4, :cond_2

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    if-eq v4, v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v10

    invoke-virtual {v10, v0, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x4e21

    :goto_0
    const/16 v10, 0x3e9

    if-ne v0, v10, :cond_1

    move v10, v4

    move v0, v9

    goto :goto_2

    :cond_1
    move v10, v4

    :goto_1
    move v0, v8

    goto :goto_2

    :cond_2
    move v10, v0

    goto :goto_1

    :goto_2
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v11

    sub-int v4, v10, v7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    iget-object v12, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-interface {v1, v3, v2, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;->getPrefixAndSuffix(ILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v7, v4, v5, v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    aget-object v1, v12, v8

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v4, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->createIndentString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    invoke-virtual {p0, v7, v0, v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getCurrentLineStart(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v3, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->computeIndentUnits(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    :cond_4
    const/4 v4, 0x1

    move-object v0, p0

    move/from16 v1, p3

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    aget-object v0, v12, v9

    invoke-virtual {p0, v7, v0, v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    return v10

    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne v0, v4, :cond_6

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v0

    :cond_6
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v2

    sub-int v3, v0, v7

    invoke-virtual {p0, v7, v3, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    return v0

    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v10

    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-interface {v1, v3, v4, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;->getPrefixAndSuffix(ILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)[Ljava/lang/String;

    move-result-object v11

    aget-object v0, v11, v8

    invoke-virtual {p0, v7, v0, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 v5, 0x1

    move-object v0, p0

    move/from16 v1, p3

    move-object v2, v4

    move/from16 v3, p5

    move v4, v5

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    aget-object v0, v11, v9

    invoke-virtual {p0, v7, v0, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    return v7

    :cond_8
    :goto_4
    invoke-direct/range {p0 .. p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v1

    if-eq v0, v4, :cond_9

    return v0

    :cond_9
    return v1
.end method

.method private rewriteExpressionOptionalQualifier(Lorg/eclipse/jdt/core/dom/SwitchCase;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I
    .locals 11

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    const/16 v1, 0x3e

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v8

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v9

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v10

    invoke-virtual {p0, v9, v10, v2, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p0

    move v4, v9

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    add-int/2addr v9, v10

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v3

    sub-int v4, v3, p3

    invoke-virtual {p0, p3, v4, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    const-string p2, "."

    invoke-virtual {p0, p3, p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    return p3

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    return p3

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result p1
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    move-exception p2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    return p1
.end method

.method private rewriteExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExtraDimensions(IIILorg/eclipse/text/edits/TextEditGroup;)V

    :cond_1
    return p1

    .line 7
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private rewriteExtraDimensions(IIILorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    if-ge p1, p2, :cond_1

    :goto_0
    if-lt p1, p2, :cond_0

    goto :goto_3

    .line 8
    :cond_0
    const-string v0, "[]"

    invoke-virtual {p0, p3, v0, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-ge p2, p1, :cond_3

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->setOffset(I)V

    :goto_1
    if-lt p2, p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {p0, p3, p1, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readToToken(I)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 12
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I
    .locals 3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndentAtOffset(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private rewriteMethodBody(Lorg/eclipse/jdt/core/dom/MethodDeclaration;I)V
    .locals 9

    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 p2, 0x4

    if-eq v2, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    invoke-virtual {p0, p2, v0, p1, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-virtual {p0, p2, v2, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    const-string p1, ";"

    invoke-virtual {p0, p2, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v7

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    sub-int/2addr v0, p2

    invoke-virtual {p0, p2, v0, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v5

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->METHOD_BODY:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-interface {p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 v6, 0x1

    move-object v2, p0

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    return-void
.end method

.method private rewriteMethodReceiver(Lorg/eclipse/jdt/core/dom/MethodDeclaration;I)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x17

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    return v7

    :cond_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v6, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->parameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {v6, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RECEIVER_QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {v6, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    move-object v11, v3

    move-object v12, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v11, v4

    move-object v12, v11

    :goto_0
    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v13

    const-string v5, ", "

    const-string v4, "."

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v3, v16

    move-object v14, v4

    move/from16 v4, v17

    move-object v15, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    const-string v0, " "

    invoke-virtual {v6, v7, v0, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    if-eqz v11, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v6, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v11

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v6, v7, v14, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_2
    const-string v0, "this"

    invoke-virtual {v6, v7, v0, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    if-lez v8, :cond_3

    invoke-virtual {v6, v7, v15, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_3
    move-object/from16 v17, v13

    goto/16 :goto_3

    :cond_4
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v6, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v3

    add-int v5, v4, v3

    move-object/from16 v17, v13

    const/4 v13, 0x2

    if-ne v0, v13, :cond_6

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    if-nez v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v2

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v2

    :goto_1
    sub-int v3, v2, v7

    invoke-virtual {v6, v7, v3, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    return v2

    :cond_6
    const/4 v5, 0x4

    if-ne v0, v5, :cond_8

    invoke-virtual {v6, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v13

    invoke-virtual {v6, v4, v3, v1, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move v4, v5

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    :goto_2
    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    move-object v14, v4

    move-object v15, v5

    move-object/from16 v17, v13

    invoke-direct {v6, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->getReceiverType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object/from16 v13, v17

    goto :goto_2

    :cond_8
    :goto_3
    const/4 v3, 0x0

    move-object/from16 v13, v17

    :goto_4
    if-eqz v3, :cond_d

    const/16 v5, 0x23

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v0

    invoke-virtual {v6, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v11

    invoke-virtual {v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move-object v12, v4

    move v4, v10

    move v10, v5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v6, v11, v14, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_5

    :cond_9
    move v10, v5

    const/4 v2, 0x2

    move-object v5, v4

    if-ne v0, v2, :cond_a

    invoke-virtual {v12}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v6, v0, v1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    goto :goto_5

    :cond_a
    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    invoke-virtual {v6, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v0

    invoke-virtual {v6, v1, v0, v12, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v11

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_5

    :cond_b
    move v10, v5

    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, v10, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v7

    if-lez v8, :cond_d

    if-nez v9, :cond_d

    invoke-virtual {v6, v7, v15, v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_d
    return v7
.end method

.method private rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V
    .locals 7

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result p3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result v3

    move v4, v3

    :goto_0
    invoke-static {p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->isComment(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(Z)I

    move-result p3

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    :goto_1
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    not-int p2, p2

    and-int/2addr p2, v0

    if-eqz p2, :cond_4

    if-eq v3, v4, :cond_2

    and-int/lit8 p3, p2, 0x7

    if-eqz p3, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    not-int p3, p3

    and-int/2addr p2, p3

    :cond_2
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->printModifiers(ILjava/lang/StringBuffer;)V

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_4

    :pswitch_1
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isVolatile(I)Z

    move-result p3

    goto :goto_2

    :pswitch_2
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isTransient(I)Z

    move-result p3

    goto :goto_2

    :pswitch_3
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isStrictfp(I)Z

    move-result p3

    goto :goto_2

    :pswitch_4
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isPublic(I)Z

    move-result p3

    goto :goto_2

    :pswitch_5
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isProtected(I)Z

    move-result p3

    goto :goto_2

    :pswitch_6
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isPrivate(I)Z

    move-result p3

    goto :goto_2

    :pswitch_7
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isNative(I)Z

    move-result p3

    goto :goto_2

    :pswitch_8
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isFinal(I)Z

    move-result p3

    goto :goto_2

    :pswitch_9
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isAbstract(I)Z

    move-result p3

    goto :goto_2

    :pswitch_a
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isSynchronized(I)Z

    move-result p3

    goto :goto_2

    :pswitch_b
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/Modifier;->isStatic(I)Z

    move-result p3

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(Z)I

    move-result v5

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result v6

    if-nez p3, :cond_3

    sub-int p3, v6, v4

    invoke-virtual {p0, v4, p3, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move p3, v5

    move v4, v6

    goto/16 :goto_0

    :goto_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I
    .locals 15

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move/from16 v5, p3

    goto/16 :goto_e

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v10

    const/4 v0, 0x2

    invoke-direct {p0, v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v11

    sget-object v2, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v12, 0x0

    if-ne v4, v0, :cond_2

    move v13, v9

    goto :goto_0

    :cond_2
    move v13, v12

    :goto_0
    if-eqz v13, :cond_3

    const-string v0, " "

    move-object v6, v0

    move/from16 v0, p3

    goto :goto_4

    :cond_3
    if-nez v10, :cond_5

    if-eqz v11, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v5, p3

    goto :goto_3

    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v5, p3

    :try_start_1
    invoke-virtual {v0, v5, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result v0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v5, p3

    :goto_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_3
    move-object v6, v2

    move v0, v5

    :goto_4
    if-nez v13, :cond_7

    instance-of v2, v3, Lorg/eclipse/jdt/core/dom/AnnotatableType;

    if-eqz v2, :cond_6

    move-object v2, v3

    check-cast v2, Lorg/eclipse/jdt/core/dom/AnnotatableType;

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->getAnnotationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v2

    if-eq v4, v2, :cond_7

    :cond_6
    move v2, v12

    goto :goto_5

    :cond_7
    move v2, v9

    :goto_5
    sget-object v5, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-eq v4, v5, :cond_9

    sget-object v5, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-eq v4, v5, :cond_9

    sget-object v5, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-eq v4, v5, :cond_9

    sget-object v5, Lorg/eclipse/jdt/core/dom/TypeParameter;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    if-eq v4, v5, :cond_9

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    :goto_6
    move-object v14, v2

    goto :goto_9

    :cond_9
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    instance-of v5, v2, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    if-eqz v5, :cond_a

    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->PARAM_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    goto :goto_6

    :cond_a
    instance-of v5, v2, Lorg/eclipse/jdt/core/dom/Block;

    if-nez v5, :cond_c

    instance-of v5, v2, Lorg/eclipse/jdt/core/dom/TryStatement;

    if-nez v5, :cond_c

    instance-of v2, v2, Lorg/eclipse/jdt/core/dom/ForStatement;

    if-eqz v2, :cond_b

    goto :goto_8

    :cond_b
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->TYPE_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    goto :goto_6

    :cond_c
    :goto_8
    iget-object v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->LOCAL_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    goto :goto_6

    :goto_9
    new-instance v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ModifierRewriter;

    invoke-direct {v2, p0, v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ModifierRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)V

    const-string v7, " "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result v3

    array-length v4, v8

    sub-int/2addr v4, v9

    aget-object v4, v8, v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    move v9, v12

    :goto_a
    if-eqz v11, :cond_e

    sub-int v0, v3, v2

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v4

    invoke-virtual {p0, v2, v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    return v3

    :catch_2
    move-exception v0

    goto :goto_c

    :cond_e
    if-nez v10, :cond_f

    if-ne v3, v2, :cond_11

    if-eqz v9, :cond_11

    :cond_f
    if-nez v13, :cond_11

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/jdt/core/dom/Annotation;

    if-eqz v3, :cond_10

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v0

    invoke-interface {v14, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_10
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :goto_c
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_11
    :goto_d
    return v2

    :goto_e
    invoke-direct/range {p0 .. p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    return v0
.end method

.method private rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 p4, 0x2

    if-eq v1, p4, :cond_1

    const/4 p4, 0x4

    if-eq v1, p4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result p4

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result p2

    invoke-virtual {p0, p4, p2, p1, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p4

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    add-int/2addr p4, p2

    return p4

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p2

    if-nez p3, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result p4

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result p3

    add-int v0, p4, p3

    move v7, p4

    move p4, p3

    move p3, v7

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v0

    sub-int p4, v0, p3

    :goto_0
    invoke-virtual {p0, p3, p4, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    return v0

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v4

    invoke-interface {p4, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p3

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    return p3

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result p1

    return p1
.end method

.method private rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result p1

    return p1
.end method

.method private rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result p1

    return p1
.end method

.method private rewriteOperation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p3

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result p3

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentLength()I

    move-result v0

    invoke-direct {p0, p3, v0, p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I
    .locals 11

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v8

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v9

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v10

    invoke-virtual {p0, v9, v10, v2, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p0

    move v4, v9

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    add-int/2addr v9, v10

    invoke-virtual {v0, v1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v3

    sub-int v4, v3, p3

    invoke-virtual {p0, p3, v4, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    const-string p2, "."

    invoke-virtual {p0, p3, p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    return p3

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    return p3

    :cond_4
    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result p1
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    return p1

    :catch_2
    move-exception p2

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    return p1
.end method

.method private rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    const/16 v3, 0xf

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {v1, v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result v7
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v7, v2

    goto/16 :goto_5

    :cond_0
    move v7, v2

    :goto_0
    if-nez v5, :cond_1

    const/4 v8, 0x2

    :try_start_1
    invoke-direct {v1, v0, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_1
    move v8, v6

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v9
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v9, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move/from16 v7, p6

    :goto_2
    move v15, v9

    goto :goto_3

    :cond_3
    move v15, v7

    move/from16 v7, p6

    :goto_3
    :try_start_2
    new-instance v9, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;

    invoke-direct {v9, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;)V

    const/16 v10, 0x3c

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    const-string v14, ", "

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move v12, v15

    invoke-virtual/range {v9 .. v14}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v9
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v8, :cond_5

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v5

    invoke-virtual {v5, v3, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result v5

    if-eqz v7, :cond_4

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :catch_2
    move-exception v0

    move v7, v9

    goto :goto_5

    :cond_4
    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    sub-int v7, v5, v9

    array-length v8, v0

    sub-int/2addr v8, v4

    aget-object v0, v0, v8

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-direct {v1, v9, v7, v6, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    return v5

    :cond_5
    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x3e

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    array-length v6, v0

    sub-int/2addr v6, v4

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {v1, v9, v5, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_3
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_3 .. :try_end_3} :catch_2

    return v9

    :catch_3
    move-exception v0

    move v7, v15

    :goto_5
    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    move v9, v7

    goto :goto_6

    :cond_6
    invoke-direct/range {p0 .. p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v9

    :cond_7
    :goto_6
    if-eq v9, v2, :cond_8

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, v3, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0
    :try_end_4
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_4 .. :try_end_4} :catch_4

    return v0

    :catch_4
    move-exception v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_8
    return v9
.end method

.method private rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;

    invoke-direct {v1, p0, p4, p5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ParagraphListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;II)V

    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p6, :cond_1

    invoke-virtual {p0, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->createIndentString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result p1

    return p1
.end method

.method private rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I
    .locals 8

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v7

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result p2

    invoke-virtual {p0, v7, p2, p1, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v4

    const/4 v5, 0x1

    move-object v1, p0

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    add-int/2addr v7, p2

    return v7

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result p1

    return p1
.end method

.method private rewriteReturnType(Lorg/eclipse/jdt/core/dom/MethodDeclaration;ZZ)V
    .locals 10

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_RETURN_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->RETURN_TYPE2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez p3, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceAfterReplace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez p3, :cond_3

    if-nez v2, :cond_6

    if-eq v6, v1, :cond_6

    :cond_3
    sget-object p3, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p3

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    if-nez p2, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p2

    sub-int/2addr p3, p2

    invoke-virtual {p0, p2, p3, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v7

    const/4 v8, 0x1

    move-object v4, p0

    move v5, p3

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    const-string p2, " "

    invoke-virtual {p0, p3, p2, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private rewriteTypeAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    move-result p1

    return p1
.end method

.method private rewriteVarargsAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    move-result p1

    return p1
.end method

.method private visitReferenceTypeArguments(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V
    .locals 9

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v5

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private final voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisitList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private voidVisitList(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    goto :goto_0
.end method


# virtual methods
.method public final addEdit(Lorg/eclipse/text/edits/TextEdit;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v0, p1}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    return-void
.end method

.method public final addEditGroup(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/text/edits/TextEdit;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/eclipse/text/edits/TextEditGroup;->addTextEdit(Lorg/eclipse/text/edits/TextEdit;)V

    return-void
.end method

.method public final createIndentString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->createIndentString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final doCopySourcePostVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/Stack;)V
    .locals 1

    :goto_0
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v0}, Lorg/eclipse/text/edits/TextEdit;->getParent()Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final doCopySourcePreVisit([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;Ljava/util/Stack;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getCopySourceEdit(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEdit(Lorg/eclipse/text/edits/TextEdit;)V

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->lineCommentEndOffsets:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->content:[C

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->isEndOfLineComment(I[C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lorg/eclipse/text/edits/InsertEdit;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEdit(Lorg/eclipse/text/edits/TextEdit;)V

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p0, p3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEditGroup(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/text/edits/TextEdit;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->lineCommentEndOffsets:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->remove(I)Z

    .line 8
    :cond_1
    new-instance v0, Lorg/eclipse/text/edits/InsertEdit;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEdit(Lorg/eclipse/text/edits/TextEdit;)V

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p0, p3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEditGroup(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/text/edits/TextEdit;)V

    :cond_2
    return-void
.end method

.method public final doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p5

    .line 11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v0, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getFormattedResult(Lorg/eclipse/jdt/core/dom/ASTNode;ILjava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move v0, v12

    if-eqz p4, :cond_1

    .line 13
    :goto_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v13, v12

    .line 14
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v13, v1, :cond_3

    .line 15
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 16
    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v6, v7, v0, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_2
    return-void

    .line 18
    :cond_3
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    .line 19
    iget v15, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->offset:I

    if-lt v15, v0, :cond_a

    .line 20
    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v6, v7, v1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 22
    iget-object v1, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->data:Ljava/lang/Object;

    .line 23
    instance-of v2, v1, Lorg/eclipse/text/edits/TextEditGroup;

    if-eqz v2, :cond_7

    .line 24
    new-instance v0, Lorg/eclipse/text/edits/RangeMarker;

    invoke-direct {v0, v7, v12}, Lorg/eclipse/text/edits/RangeMarker;-><init>(II)V

    .line 25
    check-cast v1, Lorg/eclipse/text/edits/TextEditGroup;

    invoke-virtual {v6, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEditGroup(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/text/edits/TextEdit;)V

    .line 26
    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEdit(Lorg/eclipse/text/edits/TextEdit;)V

    .line 27
    iget v0, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->length:I

    if-eqz v0, :cond_6

    .line 28
    iget v0, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->length:I

    add-int/2addr v0, v15

    add-int/lit8 v1, v13, 0x1

    .line 29
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    iget v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->offset:I

    if-lt v2, v0, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 30
    :cond_5
    :goto_4
    iput v0, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->offset:I

    .line 31
    iput v12, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->length:I

    .line 32
    invoke-virtual {v10, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_6
    :goto_5
    move v0, v15

    goto :goto_8

    .line 33
    :cond_7
    invoke-direct {v6, v11, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getCurrentLineStart(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_8

    .line 34
    iget-object v2, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v2, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->createIndentString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object v4, v2

    goto :goto_7

    .line 35
    :cond_8
    iget-object v3, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v11, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getIndentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 36
    :goto_7
    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$CopyPlaceholderData;

    if-eqz v2, :cond_9

    .line 37
    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$CopyPlaceholderData;

    iget-object v5, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$CopyPlaceholderData;->copySource:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    .line 38
    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {v6, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v3

    .line 39
    invoke-virtual {v6, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getCopySourceEdit(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object v1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    .line 40
    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextCopy(Lorg/eclipse/text/edits/TextEdit;IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    .line 41
    iget v0, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->length:I

    add-int/2addr v15, v0

    .line 42
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;->getNode()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-direct {v6, v0, v11, v15}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->needsNewLineForLineComment(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_5

    .line 44
    :cond_9
    instance-of v2, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$StringPlaceholderData;

    if-eqz v2, :cond_a

    .line 45
    check-cast v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$StringPlaceholderData;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore$StringPlaceholderData;->code:Ljava/lang/String;

    .line 46
    iget-object v1, v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v1, v0, v12, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->changeIndent(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v6, v7, v0, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 48
    iget v0, v14, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;->length:I

    add-int/2addr v15, v0

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method public final doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lorg/eclipse/text/edits/DeleteEdit;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/text/edits/DeleteEdit;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEdit(Lorg/eclipse/text/edits/TextEdit;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEditGroup(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/text/edits/TextEdit;)V

    :cond_1
    return-object v0
.end method

.method public final doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    invoke-virtual {p1}, Lorg/eclipse/text/edits/TextEdit;->getParent()Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    :goto_0
    return-void
.end method

.method public final doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    return p1
.end method

.method public final getContent()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->content:[C

    return-object v0
.end method

.method public final getCopySourceEdit(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;)Lorg/eclipse/text/edits/TextEdit;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getEventEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    return-object p1
.end method

.method public final getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    return-object p1
.end method

.method public final getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result p1

    return p1
.end method

.method public final getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isRangeCopyPlaceholder(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;-><init>(II)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->extendedSourceRangeComputer:Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer;->computeSourceRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object p1

    return-object p1
.end method

.method public final getIndent(I)I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndentOfLine(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->computeIndentUnits(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final getIndentAtOffset(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndentOfLine(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getIndentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLineCommentEndOffsets()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->lineCommentEndOffsets:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;

    return-object v0
.end method

.method public final getLineDelimiter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->getLineDelimiter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLineInformation()Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->lineInfo:Lorg/eclipse/jdt/internal/core/dom/rewrite/LineInformation;

    return-object v0
.end method

.method public final getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    if-nez v1, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->options:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    iget-object v2, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    if-nez v2, :cond_0

    new-instance v2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-wide v7, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-wide v9, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    iget-wide v5, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const/16 v23, 0x1

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->recoveryScannerData:Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v14, v2

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-object/from16 v24, v1

    invoke-direct/range {v14 .. v24}, Lorg/eclipse/jdt/internal/compiler/parser/RecoveryScanner;-><init>(ZZJJ[[C[[CZLorg/eclipse/jdt/internal/compiler/parser/RecoveryScannerData;)V

    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->content:[C

    invoke-virtual {v2, v1}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->setSource([C)V

    new-instance v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;-><init>(Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    :cond_1
    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    return-object v1
.end method

.method public final handleException(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Document does not match the AST"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final isInsertBoundToPrevious(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->isInsertBoundToPrevious(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1
.end method

.method public postVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    invoke-virtual {v0}, Lorg/eclipse/text/edits/TextEdit;->getParent()Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->sourceCopyEndNodes:Ljava/util/Stack;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doCopySourcePostVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/util/Stack;)V

    return-void
.end method

.method public preVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getNodeCopySources(Lorg/eclipse/jdt/core/dom/ASTNode;)[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->sourceCopyEndNodes:Ljava/util/Stack;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doCopySourcePreVisit([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$CopySourceInfo;Ljava/util/Stack;)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;->getTrackedNodeData(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v2

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v1

    new-instance v3, Lorg/eclipse/text/edits/RangeMarker;

    invoke-direct {v3, v2, v1}, Lorg/eclipse/text/edits/RangeMarker;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEditGroup(Lorg/eclipse/text/edits/TextEditGroup;Lorg/eclipse/text/edits/TextEdit;)V

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->addEdit(Lorg/eclipse/text/edits/TextEdit;)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->currentEdit:Lorg/eclipse/text/edits/TextEdit;

    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceBeforeReplace(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    return-void
.end method

.method public retrieveRightBracketEndPosition(IIZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->setOffset(I)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(Z)I

    move-result p1

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_3

    const/16 v1, 0x42

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_0

    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result p1

    return p1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_0
.end method

.method public rewriteExtraDimensionsInfo(Lorg/eclipse/jdt/core/dom/ASTNode;ILorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)I
    .locals 6

    const-string v4, " "

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;)Z
    .locals 9

    .line 791
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 793
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 794
    sget-object v1, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 795
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 796
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    .line 797
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterLeftBrace(I)I

    move-result v5

    .line 798
    sget-object v4, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v7, -0x1

    const/4 v8, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;)Z
    .locals 4

    .line 799
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 801
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 802
    sget-object v1, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 803
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 804
    sget-object v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 805
    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;->DEFAULT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 806
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 807
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ANNOT_MEMBER_DEFAULT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 808
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;)Z
    .locals 8

    .line 147
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 149
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterLeftBrace(I)I

    move-result v4

    .line 150
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 151
    sget-object v3, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v6, -0x1

    const/4 v7, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayAccess;)Z
    .locals 1

    .line 152
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 154
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayAccess;->ARRAY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 155
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayAccess;->INDEX_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayCreation;)Z
    .locals 26

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 156
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    return v0

    .line 158
    :cond_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/ArrayCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {v8, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 159
    invoke-direct {v8, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getDimensions(Lorg/eclipse/jdt/core/dom/ArrayType;)I

    move-result v10

    .line 160
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v2

    const/16 v3, 0x8

    const/4 v12, 0x1

    if-lt v2, v3, :cond_1

    move v13, v12

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 161
    :goto_0
    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    const/4 v14, 0x4

    if-eqz v1, :cond_3

    .line 162
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-ne v2, v14, :cond_3

    .line 163
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 164
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    .line 165
    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    .line 166
    invoke-direct {v8, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getElementType(Lorg/eclipse/jdt/core/dom/ArrayType;)Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    .line 167
    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 168
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v2

    .line 170
    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v1

    .line 171
    invoke-virtual {v8, v2, v1, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    .line 172
    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    :cond_2
    move-object v15, v7

    move/from16 v16, v12

    goto :goto_1

    :cond_3
    move-object v15, v9

    const/16 v16, 0x0

    .line 173
    :goto_1
    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/ArrayCreation;->DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v17, v12

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_11

    :cond_4
    const/16 v17, 0x0

    :goto_2
    const/4 v2, 0x0

    if-eqz v17, :cond_5

    .line 175
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    move-object v7, v1

    goto :goto_3

    :cond_5
    move-object v7, v2

    :goto_3
    if-eqz v13, :cond_6

    move-object v1, v2

    goto :goto_4

    .line 176
    :cond_6
    invoke-virtual {v15}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ArrayType;

    .line 177
    :goto_4
    invoke-virtual {v15}, Lorg/eclipse/jdt/core/dom/ArrayType;->getDimensions()I

    move-result v6

    if-nez v7, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    .line 178
    :cond_7
    array-length v3, v7

    move v5, v3

    .line 179
    :goto_5
    invoke-virtual {v9}, Lorg/eclipse/jdt/core/dom/ArrayType;->getElementType()Lorg/eclipse/jdt/core/dom/Type;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v4, v3

    move-object v3, v2

    move v2, v4

    move-object v4, v1

    const/4 v1, 0x0

    :goto_6
    const/4 v11, 0x2

    if-nez v4, :cond_8

    if-nez v13, :cond_8

    goto/16 :goto_e

    :cond_8
    if-ge v1, v5, :cond_e

    if-eqz v13, :cond_9

    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v19, v2

    move-object v2, v9

    move-object/from16 v20, v3

    move-object v3, v15

    move-object/from16 v21, v4

    move/from16 v4, v18

    move/from16 v22, v5

    move/from16 v5, v19

    move/from16 v23, v6

    move/from16 v6, v16

    move-object/from16 v24, v7

    move-object/from16 v7, v20

    .line 181
    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/core/dom/ArrayType;IIZLorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_7

    :cond_9
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    .line 182
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v2, 0x6

    move/from16 v7, v19

    invoke-virtual {v1, v2, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v7

    if-eqz v17, :cond_d

    move/from16 v6, v18

    .line 183
    aget-object v1, v24, v6

    .line 184
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v12, :cond_a

    .line 185
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v5

    .line 186
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    invoke-virtual {v2, v3, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v2

    sub-int/2addr v2, v7

    .line 187
    invoke-virtual {v8, v7, v2, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    .line 188
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v4, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move v2, v7

    move-object/from16 v19, v5

    move/from16 v5, v18

    move/from16 v25, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    move-object/from16 v3, v19

    goto :goto_8

    :cond_a
    move/from16 v25, v6

    .line 189
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 190
    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v6

    add-int/2addr v5, v6

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v3

    if-ne v2, v11, :cond_b

    .line 192
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    sub-int/2addr v3, v7

    .line 193
    invoke-virtual {v8, v7, v3, v4, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    move-object v3, v1

    goto :goto_8

    :cond_b
    if-ne v2, v14, :cond_c

    .line 194
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    .line 195
    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v3

    .line 197
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v2

    .line 198
    invoke-virtual {v8, v3, v2, v4, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 199
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v5, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move v2, v3

    move-object v3, v4

    move v4, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    move-object/from16 v3, v18

    goto :goto_8

    .line 200
    :cond_c
    invoke-virtual {v8, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    move-object/from16 v3, v20

    .line 201
    :goto_8
    invoke-virtual {v8, v7, v12, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->retrieveRightBracketEndPosition(IIZ)I

    move-result v1

    move v2, v1

    move/from16 v18, v25

    goto/16 :goto_c

    :cond_d
    move/from16 v25, v18

    .line 202
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ArrayCreation;->dimensions()Ljava/util/List;

    move-result-object v1

    move/from16 v6, v25

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 203
    invoke-virtual {v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 204
    invoke-virtual {v8, v7, v12, v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->retrieveRightBracketEndPosition(IIZ)I

    move-result v1

    move v2, v1

    move/from16 v18, v6

    :goto_9
    move-object/from16 v3, v20

    goto :goto_c

    :cond_e
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move v6, v1

    move v7, v2

    if-ge v6, v10, :cond_10

    if-eqz v13, :cond_f

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v15

    move v4, v6

    move v5, v7

    move/from16 v18, v6

    move/from16 v6, v16

    move v14, v7

    move-object/from16 v7, v20

    .line 205
    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/core/dom/ArrayType;IIZLorg/eclipse/text/edits/TextEditGroup;)V

    :goto_a
    const/4 v1, 0x0

    goto :goto_b

    :cond_f
    move/from16 v18, v6

    move v14, v7

    goto :goto_a

    .line 206
    :goto_b
    invoke-virtual {v8, v14, v12, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->retrieveRightBracketEndPosition(IIZ)I

    move-result v2

    goto :goto_9

    :cond_10
    move/from16 v18, v6

    move v14, v7

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v3, v18

    move v4, v14

    move-object/from16 v5, v20

    move v6, v13

    .line 207
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->insertAnnotationsOnDimension(Lorg/eclipse/jdt/core/dom/ArrayType;IILorg/eclipse/text/edits/TextEditGroup;Z)V

    .line 208
    const-string v1, "[]"

    move-object/from16 v2, v20

    invoke-virtual {v8, v14, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    move-object v3, v2

    move v2, v14

    :goto_c
    add-int/lit8 v1, v18, 0x1

    if-eqz v13, :cond_12

    move/from16 v4, v23

    if-ne v1, v4, :cond_11

    goto :goto_e

    :cond_11
    move v6, v4

    move-object/from16 v4, v21

    :goto_d
    move/from16 v5, v22

    move-object/from16 v7, v24

    const/4 v14, 0x4

    goto/16 :goto_6

    :cond_12
    move-object/from16 v5, v21

    move/from16 v4, v23

    if-ne v5, v15, :cond_15

    :goto_e
    if-ge v1, v10, :cond_13

    sub-int/2addr v10, v1

    const/4 v1, 0x0

    .line 209
    invoke-virtual {v8, v2, v10, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->retrieveRightBracketEndPosition(IIZ)I

    move-result v4

    sub-int/2addr v4, v2

    .line 210
    invoke-virtual {v8, v2, v4, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    .line 211
    :cond_13
    sget-object v1, Lorg/eclipse/jdt/core/dom/ArrayCreation;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {v8, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v3

    if-ne v3, v11, :cond_14

    .line 212
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    const/16 v4, 0x31

    invoke-virtual {v3, v4, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getPreviousTokenEndOffset(II)I

    move-result v2

    goto :goto_f

    .line 213
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 214
    :goto_f
    sget-object v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {v8, v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    :goto_10
    const/4 v1, 0x0

    goto :goto_12

    .line 215
    :cond_15
    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/ArrayType;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v4

    move-object v4, v5

    goto :goto_d

    .line 216
    :goto_11
    invoke-virtual {v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_10

    :goto_12
    return v1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayInitializer;)Z
    .locals 7

    .line 217
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 219
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterLeftBrace(I)I

    move-result v4

    .line 220
    sget-object v3, Lorg/eclipse/jdt/core/dom/ArrayInitializer;->EXPRESSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ArrayType;)Z
    .locals 2

    .line 221
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 223
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 224
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_ARRAY_COMPONENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    goto :goto_0

    .line 225
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/ArrayType;->ELEMENT_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 226
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteArrayTypeDimensions(Lorg/eclipse/jdt/core/dom/ArrayType;I)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/AssertStatement;)Z
    .locals 3

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    .line 228
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceBeforeReplace(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 231
    sget-object v0, Lorg/eclipse/jdt/core/dom/AssertStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 232
    sget-object v1, Lorg/eclipse/jdt/core/dom/AssertStatement;->MESSAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ASSERT_COMMENT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 233
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Assignment;)Z
    .locals 2

    .line 234
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 236
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/Assignment;->LEFT_HAND_SIDE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 237
    sget-object v1, Lorg/eclipse/jdt/core/dom/Assignment;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOperation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    .line 238
    sget-object v0, Lorg/eclipse/jdt/core/dom/Assignment;->RIGHT_HAND_SIDE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 8

    .line 129
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isCollapsed(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterLeftBrace(I)I

    move-result v0

    goto :goto_0

    .line 134
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 135
    sget-object v3, Lorg/eclipse/jdt/core/dom/Block;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BooleanLiteral;)Z
    .locals 3

    .line 239
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 241
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->BOOLEAN_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 242
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/BreakStatement;)Z
    .locals 4

    .line 244
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 247
    sget-object v1, Lorg/eclipse/jdt/core/dom/BreakStatement;->LABEL_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    .line 248
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v3, 0xc

    if-lt v1, v3, :cond_1

    .line 249
    sget-object v1, Lorg/eclipse/jdt/core/dom/BreakStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 250
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CastExpression;)Z
    .locals 1

    .line 251
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 253
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/CastExpression;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 254
    sget-object v0, Lorg/eclipse/jdt/core/dom/CastExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CatchClause;)Z
    .locals 1

    .line 255
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 257
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/CatchClause;->EXCEPTION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 258
    sget-object v0, Lorg/eclipse/jdt/core/dom/CatchClause;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CharacterLiteral;)Z
    .locals 3

    .line 259
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 261
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;)Z
    .locals 10

    .line 264
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 266
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 267
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 268
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_CIC_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    goto :goto_1

    .line 269
    :cond_1
    sget-object v5, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v3, 0x24

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v6

    .line 271
    const-string v7, " "

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    .line 274
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 275
    :goto_1
    sget-object v5, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v3, 0x17

    invoke-virtual {v1, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v6

    .line 277
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v8, ", "

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 278
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 279
    :cond_3
    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    .line 280
    :goto_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 281
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getPreviousTokenEndOffset(II)I

    move-result v0
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 282
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 283
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :goto_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v7, 0x0

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->getModule()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    move-result-object v0

    if-eqz v0, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    if-nez v8, :cond_3

    .line 4
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->PACKAGE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v0, v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    move-result v1

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {p0, v7, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v7

    .line 7
    :goto_1
    sget-object v2, Lorg/eclipse/jdt/core/dom/CompilationUnit;->IMPORTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    move-result v3

    if-eqz v8, :cond_4

    .line 8
    sget-object v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;->MODULE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v0, v3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    goto :goto_2

    .line 9
    :cond_4
    sget-object v2, Lorg/eclipse/jdt/core/dom/CompilationUnit;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    :goto_2
    return v7
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConditionalExpression;)Z
    .locals 1

    .line 285
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 287
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 288
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->THEN_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 289
    sget-object v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;->ELSE_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ConstructorInvocation;)Z
    .locals 10

    .line 290
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 292
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    .line 293
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 294
    sget-object v2, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I

    move-result v3

    .line 295
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v7

    .line 296
    sget-object v6, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v8, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v9, ", "

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ContinueStatement;)Z
    .locals 3

    .line 298
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 300
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 301
    sget-object v1, Lorg/eclipse/jdt/core/dom/ContinueStatement;->LABEL_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CreationReference;)Z
    .locals 2

    .line 303
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 305
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/CreationReference;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 306
    sget-object v1, Lorg/eclipse/jdt/core/dom/CreationReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->visitReferenceTypeArguments(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Dimension;)Z
    .locals 11

    .line 65
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 69
    sget-object v0, Lorg/eclipse/jdt/core/dom/Dimension;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 70
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v4, :cond_2

    if-nez v0, :cond_2

    const/16 v0, 0x25

    .line 73
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPreviousTokenEndOffset(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v0

    .line 74
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v5}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    const/4 v6, 0x0

    if-ltz v0, :cond_1

    if-le v5, v0, :cond_1

    sub-int/2addr v5, v0

    .line 75
    invoke-virtual {p0, v0, v5, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    :cond_1
    sub-int/2addr v4, v2

    .line 76
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 77
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextStartOffset(IZ)I

    move-result v0

    sub-int/2addr v0, v1

    .line 79
    invoke-virtual {p0, v1, v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Lorg/eclipse/core/runtime/CoreException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    if-lez v0, :cond_3

    .line 81
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->content:[C

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sub-int/2addr v1, v2

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/eclipse/jdt/internal/compiler/parser/ScannerHelper;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    .line 82
    :cond_3
    :goto_0
    sget-object v6, Lorg/eclipse/jdt/core/dom/Dimension;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v7

    const/16 v0, 0x20

    if-eqz v2, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/DoStatement;)Z
    .locals 8

    .line 307
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 309
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 310
    :try_start_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/DoStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1

    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/16 v4, 0x4f

    invoke-virtual {v2, v4, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 313
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 314
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v1, v0

    .line 315
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v5

    .line 316
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->DO_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 317
    :cond_1
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 319
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/DoStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EmptyStatement;)Z
    .locals 1

    .line 320
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 322
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->changeNotSupported(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnhancedForStatement;)Z
    .locals 8

    .line 809
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 811
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->PARAMETER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 812
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 813
    sget-object v3, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 814
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 815
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 816
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FOR_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 817
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 818
    :cond_1
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 13

    .line 819
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 821
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 822
    sget-object v1, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 823
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 824
    sget-object v3, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v1, :cond_6

    .line 825
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eqz v2, :cond_6

    .line 826
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v9

    .line 827
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v10, 0x1

    invoke-virtual {v1, v0, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    move v11, v10

    goto :goto_0

    :cond_1
    move v11, v8

    :goto_0
    if-eqz v11, :cond_2

    .line 828
    invoke-direct {p0, v9, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v12, v10

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_2
    move v12, v8

    .line 829
    :goto_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 830
    const-string v1, "("

    :cond_3
    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_4
    if-nez v12, :cond_3

    .line 831
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result v0

    goto :goto_2

    .line 832
    :goto_3
    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v11, :cond_5

    .line 833
    const-string v1, ")"

    array-length v2, v9

    sub-int/2addr v2, v10

    aget-object v2, v9, v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_5

    :cond_5
    if-eqz v12, :cond_7

    .line 834
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v1

    sub-int v2, v1, v0

    .line 835
    array-length v3, v9

    sub-int/2addr v3, v10

    aget-object v3, v9, v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_5

    .line 836
    :goto_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 837
    :cond_6
    invoke-direct {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 838
    :cond_7
    :goto_5
    sget-object v1, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 839
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 840
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x31

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getPreviousTokenEndOffset(II)I

    move-result v0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    .line 841
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 842
    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 843
    :goto_6
    sget-object v1, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;->ANONYMOUS_CLASS_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    :cond_9
    return v8
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/EnumDeclaration;)Z
    .locals 12

    .line 844
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 846
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 847
    sget-object v1, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 848
    sget-object v0, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 849
    sget-object v3, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v5, " implements "

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 850
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterLeftBrace(I)I

    move-result v4

    .line 851
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    .line 852
    sget-object v7, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->ENUM_CONSTANTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    .line 853
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eqz v2, :cond_1

    .line 854
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    .line 855
    invoke-direct {p0, v1, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 856
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FIRST_ENUM_CONST:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 857
    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 858
    sget-object v1, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 859
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    if-eqz v3, :cond_b

    .line 860
    invoke-direct {p0, p1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 861
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    if-nez v3, :cond_2

    .line 862
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v1

    move v4, v2

    goto/16 :goto_6

    .line 863
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v4
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v8

    .line 864
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v5

    invoke-virtual {v5, v0, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v5

    const/16 v6, 0x1a

    if-ne v5, v6, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    const/4 v9, 0x2

    if-nez v7, :cond_9

    .line 865
    invoke-direct {p0, v1, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v3, :cond_4

    .line 866
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FIRST_ENUM_CONST:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v3, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v3

    .line 867
    aget-object v7, v1, v2

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v7

    invoke-virtual {p0, v0, v3, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_6

    :cond_4
    :goto_2
    const/16 v3, 0x20

    .line 868
    const-string v7, ";"

    if-ne v5, v3, :cond_8

    .line 869
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result v3

    .line 870
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v5

    if-eq v5, v6, :cond_6

    .line 871
    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v3, v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_5
    :goto_3
    move v0, v3

    goto :goto_4

    .line 872
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result v3

    .line 873
    invoke-direct {p0, v1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v5

    if-eqz v5, :cond_5

    sub-int v5, v3, v0

    .line 874
    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    goto :goto_3

    :cond_7
    :goto_4
    move v8, v0

    :goto_5
    move v9, v4

    goto :goto_7

    .line 875
    :cond_8
    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_7

    .line 876
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result v3

    .line 877
    invoke-direct {p0, v1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isAllOfKind([Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;I)Z

    move-result v5

    if-eqz v5, :cond_a

    sub-int v5, v3, v0

    .line 878
    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_a
    move v8, v3

    goto :goto_5

    .line 879
    :goto_6
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    move v8, v0

    move v9, v2

    .line 880
    :goto_7
    sget-object v7, Lorg/eclipse/jdt/core/dom/EnumDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v10, -0x1

    const/4 v11, 0x2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExportsDirective;)Z
    .locals 7

    .line 323
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 325
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 326
    sget-object v3, Lorg/eclipse/jdt/core/dom/ExportsDirective;->MODULES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v5, "to "

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;)Z
    .locals 2

    .line 881
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 883
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 884
    sget-object v1, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->visitReferenceTypeArguments(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    .line 885
    sget-object v0, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ExpressionStatement;)Z
    .locals 1

    .line 327
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 329
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldAccess;)Z
    .locals 1

    .line 330
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 332
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldAccess;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 333
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldAccess;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/FieldDeclaration;)Z
    .locals 7

    .line 334
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 336
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 337
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 338
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_FIELD_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    goto :goto_0

    .line 339
    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 340
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 341
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceAfterReplace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    .line 342
    sget-object v3, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ForStatement;)Z
    .locals 9

    .line 343
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 345
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 346
    sget-object v3, Lorg/eclipse/jdt/core/dom/ForStatement;->INITIALIZERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 348
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 349
    :cond_1
    invoke-direct {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 350
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 351
    sget-object v1, Lorg/eclipse/jdt/core/dom/ForStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    move-result v0

    .line 352
    sget-object v5, Lorg/eclipse/jdt/core/dom/ForStatement;->UPDATERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v6

    .line 354
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v8, ", "

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 355
    :cond_2
    invoke-direct {p0, p1, v5, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 356
    :goto_1
    sget-object v3, Lorg/eclipse/jdt/core/dom/ForStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 357
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 359
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FOR_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I

    goto :goto_3

    .line 360
    :cond_3
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 361
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IfStatement;)Z
    .locals 9

    .line 362
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 364
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/IfStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 365
    sget-object v3, Lorg/eclipse/jdt/core/dom/IfStatement;->THEN_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    .line 366
    sget-object v2, Lorg/eclipse/jdt/core/dom/IfStatement;->ELSE_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v8

    if-eqz v1, :cond_5

    .line 367
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v4

    if-eqz v4, :cond_5

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readNext(IZ)I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_1

    .line 369
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result v0

    .line 370
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    .line 371
    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 373
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v5, v1

    const/16 v1, 0x70

    invoke-virtual {v4, v1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v1

    :goto_1
    move v5, v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :goto_2
    if-eqz v2, :cond_4

    if-eqz v8, :cond_3

    goto :goto_4

    .line 374
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->IF_BLOCK_WITH_ELSE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I

    move-result v0

    :goto_3
    move v4, v0

    goto :goto_6

    .line 375
    :cond_4
    :goto_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->IF_BLOCK_NO_ELSE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    move-object v1, p0

    move-object v2, p1

    move v4, v0

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 376
    :goto_5
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 377
    :cond_5
    invoke-direct {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    goto :goto_3

    :goto_6
    if-eqz v8, :cond_7

    .line 378
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    .line 379
    sget-object v0, Lorg/eclipse/jdt/core/dom/IfStatement;->THEN_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    .line 380
    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/Block;

    if-eqz v0, :cond_6

    .line 381
    sget-object v3, Lorg/eclipse/jdt/core/dom/IfStatement;->ELSE_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ELSE_AFTER_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I

    goto :goto_7

    .line 382
    :cond_6
    sget-object v3, Lorg/eclipse/jdt/core/dom/IfStatement;->ELSE_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ELSE_AFTER_STATEMENT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I

    goto :goto_7

    .line 383
    :cond_7
    sget-object v0, Lorg/eclipse/jdt/core/dom/IfStatement;->ELSE_STATEMENT_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    :goto_7
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ImportDeclaration;)Z
    .locals 4

    .line 384
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 386
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 387
    sget-object v0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->STATIC_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    const/16 v3, 0x6a

    invoke-virtual {v1, v3, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v1

    .line 390
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v2

    sub-int/2addr v2, v1

    .line 392
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 393
    :cond_1
    const-string v2, " static"

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 394
    :goto_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 395
    :cond_2
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 396
    sget-object v1, Lorg/eclipse/jdt/core/dom/ImportDeclaration;->ON_DEMAND_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 397
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 399
    const-string v1, ".*"

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_2

    .line 400
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v1

    sub-int/2addr v1, v0

    .line 401
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 402
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InfixExpression;)Z
    .locals 12

    .line 403
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 405
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getRightOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v0

    .line 406
    sget-object v1, Lorg/eclipse/jdt/core/dom/InfixExpression;->LEFT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 407
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v6

    if-ne v6, v3, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 408
    :goto_0
    sget-object v7, Lorg/eclipse/jdt/core/dom/InfixExpression;->RIGHT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p0, p1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 409
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v9

    if-ne v9, v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz v6, :cond_3

    .line 410
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->getLeftOperand()Lorg/eclipse/jdt/core/dom/Expression;

    move-result-object v1

    .line 411
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v3

    .line 412
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v9

    .line 413
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v2

    sub-int v10, v9, v3

    .line 414
    invoke-virtual {p0, v3, v10, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_2

    .line 415
    :cond_3
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v9

    .line 416
    :goto_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/InfixExpression;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v2

    .line 417
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    if-nez v6, :cond_4

    if-nez v4, :cond_4

    .line 418
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v10

    invoke-direct {p0, v9, v3, v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->replaceOperation(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    :cond_4
    if-eqz v4, :cond_6

    if-eqz v6, :cond_5

    .line 419
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 420
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/InfixExpression;->extendedOperands()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jdt/core/dom/Expression;

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedOffset(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    goto :goto_3

    .line 421
    :cond_5
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v4

    .line 422
    :goto_3
    invoke-virtual {p0, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    sub-int v7, v4, v9

    .line 423
    invoke-virtual {p0, v9, v7, v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    :goto_4
    move v9, v4

    goto :goto_5

    .line 424
    :cond_6
    invoke-direct {p0, p1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    goto :goto_4

    .line 425
    :goto_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/InfixExpression;->EXTENDED_OPERANDS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v4

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-eqz v2, :cond_c

    .line 427
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    if-eqz v4, :cond_a

    .line 428
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    if-eqz v2, :cond_a

    .line 429
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChildren()[Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v2

    move v0, v5

    move v4, v9

    .line 430
    :goto_6
    array-length v6, v2

    if-lt v0, v6, :cond_7

    goto :goto_8

    .line 431
    :cond_7
    aget-object v6, v2, v0

    .line 432
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v7, :cond_9

    .line 433
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v6

    const/4 v8, 0x4

    if-eq v6, v8, :cond_8

    .line 434
    invoke-direct {p0, v4, v3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->replaceOperation(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 435
    :cond_8
    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v6

    add-int/2addr v4, v6

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 436
    :cond_a
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v2, v5

    move v4, v9

    .line 437
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_b

    goto :goto_8

    .line 438
    :cond_b
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 439
    invoke-direct {p0, v4, v3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->replaceOperation(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 440
    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 441
    :cond_c
    :goto_8
    sget-object v8, Lorg/eclipse/jdt/core/dom/InfixExpression;->EXTENDED_OPERANDS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-object v6, p0

    move-object v7, p1

    move-object v10, v11

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Initializer;)Z
    .locals 3

    .line 442
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 444
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 445
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 446
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_INITIALIZER_MODIFIERS_PROPERTY3:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    goto :goto_0

    .line 447
    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/Initializer;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 448
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/Initializer;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/InstanceofExpression;)Z
    .locals 1

    .line 449
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 451
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->LEFT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 452
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceAfterReplace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    .line 453
    sget-object v0, Lorg/eclipse/jdt/core/dom/InstanceofExpression;->RIGHT_OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/IntersectionType;)Z
    .locals 6

    .line 454
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 456
    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/IntersectionType;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v5, " & "

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Javadoc;)Z
    .locals 7

    .line 457
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 459
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    add-int/lit8 v4, v0, 0x3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndentAtOffset(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 461
    sget-object v3, Lorg/eclipse/jdt/core/dom/Javadoc;->TAGS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LabeledStatement;)Z
    .locals 1

    .line 462
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 464
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/LabeledStatement;->LABEL_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 465
    sget-object v0, Lorg/eclipse/jdt/core/dom/LabeledStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/LambdaExpression;)Z
    .locals 13

    .line 466
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 468
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;->PARENTHESES_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 469
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 470
    sget-object v3, Lorg/eclipse/jdt/core/dom/LambdaExpression;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 471
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 472
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 473
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 474
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    .line 475
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    .line 476
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_3

    :goto_1
    move v0, v4

    goto :goto_3

    :cond_3
    xor-int/lit8 v0, v3, 0x1

    move v5, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v4

    move v5, v0

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    if-eqz v3, :cond_6

    .line 477
    sget-object v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 478
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 479
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    const/16 v3, 0x17

    if-eqz v5, :cond_7

    .line 480
    const-string v7, "("

    invoke-virtual {p0, v1, v7, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    .line 481
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v7

    invoke-virtual {v7, v3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v7

    sub-int v8, v7, v1

    .line 482
    invoke-virtual {p0, v1, v8, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v7

    goto :goto_4

    :catch_0
    move-exception v7

    .line 483
    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 484
    :cond_8
    :goto_4
    sget-object v9, Lorg/eclipse/jdt/core/dom/LambdaExpression;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v2, :cond_9

    .line 485
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v1

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_6

    .line 486
    :cond_9
    :goto_5
    sget-object v11, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v12, ", "

    move-object v7, p0

    move-object v8, p1

    move v10, v1

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 487
    :goto_6
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 488
    :cond_a
    invoke-direct {p0, p1, v9, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v1

    :goto_7
    if-eqz v5, :cond_b

    .line 489
    const-string v0, ")"

    invoke-virtual {p0, v1, v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_8

    :cond_b
    if-eqz v0, :cond_c

    .line 490
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_2
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 491
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 492
    :cond_c
    :goto_8
    sget-object v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    return v4
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MarkerAnnotation;)Z
    .locals 1

    .line 886
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 888
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberRef;)Z
    .locals 3

    .line 750
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 752
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberRef;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    .line 753
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberRef;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MemberValuePair;)Z
    .locals 1

    .line 889
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 891
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 892
    sget-object v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodDeclaration;)Z
    .locals 13

    .line 83
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 86
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 87
    sget-object v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_MODIFIERS_PROPERTY2:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v5, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    goto :goto_1

    .line 88
    :cond_1
    sget-object v5, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v5, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    move-result v9

    .line 89
    sget-object v8, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    if-eq v9, v0, :cond_2

    move v12, v3

    goto :goto_0

    :cond_2
    move v12, v2

    :goto_0
    const-string v10, " "

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I

    .line 90
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->CONSTRUCTOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v5

    .line 91
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v5, :cond_4

    .line 92
    :cond_3
    invoke-direct {p0, p1, v0, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteReturnType(Lorg/eclipse/jdt/core/dom/MethodDeclaration;ZZ)V

    .line 93
    :cond_4
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 94
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteMethodReceiver(Lorg/eclipse/jdt/core/dom/MethodDeclaration;I)I

    move-result v8

    .line 95
    sget-object v7, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v9, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v10, ", "

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v5

    const/16 v6, 0x19

    invoke-virtual {v5, v6, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    const/16 v5, 0x8

    if-ge v1, v5, :cond_5

    .line 97
    sget-object v6, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_THROWN_EXCEPTIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    :goto_2
    move-object v9, v6

    goto :goto_3

    :cond_5
    sget-object v6, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->THROWN_EXCEPTION_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    goto :goto_2

    :goto_3
    if-ge v1, v5, :cond_9

    .line 98
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_METHOD_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v5

    .line 99
    invoke-direct {p0, p1, v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v6

    .line 100
    sget-object v7, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v7

    if-lez v5, :cond_7

    if-nez v6, :cond_6

    if-eq v7, v3, :cond_6

    if-ne v7, v4, :cond_7

    .line 101
    :cond_6
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    if-gtz v1, :cond_8

    :cond_7
    :goto_5
    move v10, v0

    goto :goto_6

    .line 102
    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    const/16 v4, 0x42

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 103
    :cond_9
    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExtraDimensionsInfo(Lorg/eclipse/jdt/core/dom/ASTNode;ILorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)I

    move-result v0

    goto :goto_5

    .line 104
    :goto_6
    const-string v11, " throws "

    const-string v12, ", "

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteMethodBody(Lorg/eclipse/jdt/core/dom/MethodDeclaration;I)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodInvocation;)Z
    .locals 9

    .line 493
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 495
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v5

    .line 496
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 497
    sget-object v4, Lorg/eclipse/jdt/core/dom/MethodInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I

    .line 498
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 499
    sget-object v3, Lorg/eclipse/jdt/core/dom/MethodInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 501
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 502
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodRef;)Z
    .locals 7

    .line 754
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 756
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRef;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    .line 757
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRef;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 758
    sget-object v3, Lorg/eclipse/jdt/core/dom/MethodRef;->PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 760
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 761
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 762
    :cond_1
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/MethodRefParameter;)Z
    .locals 4

    .line 763
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 765
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 766
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 767
    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 768
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 769
    const-string v2, "..."

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    .line 770
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v2

    sub-int/2addr v2, v0

    .line 771
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 772
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 773
    :cond_2
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/MethodRefParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Modifier;)Z
    .locals 3

    .line 893
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 895
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/Modifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 897
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleDeclaration;)Z
    .locals 10

    .line 106
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 108
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 109
    sget-object v1, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    move-result v0

    .line 110
    sget-object v1, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->OPEN_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object v3

    iget-boolean v3, v3, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    .line 113
    :try_start_0
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object v4

    iput-boolean v2, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    .line 115
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v4

    const/16 v5, 0x71

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v4

    sub-int/2addr v4, v0

    .line 116
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 117
    :cond_1
    const-string v4, "open "

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {p0, v0, v4, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object v0

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    goto :goto_3

    .line 119
    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object v0

    iput-boolean v3, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    .line 121
    throw p1

    .line 122
    :cond_2
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 123
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterLeftBrace(I)I

    move-result v6

    .line 124
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 125
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object v0

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    .line 126
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object v1

    iput-boolean v2, v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    .line 127
    sget-object v5, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;->MODULE_DIRECTIVES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    .line 128
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->tokenScanner:Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getScanner()Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    move-result-object p1

    iput-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->fakeInModule:Z

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ModuleModifier;)Z
    .locals 3

    .line 898
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 900
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;->KEYWORD_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 902
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NameQualifiedType;)Z
    .locals 3

    .line 911
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 913
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 914
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 915
    sget-object v1, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteTypeAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 916
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 917
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NormalAnnotation;)Z
    .locals 7

    .line 903
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 905
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 906
    sget-object v3, Lorg/eclipse/jdt/core/dom/NormalAnnotation;->VALUES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 907
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 908
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 909
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 910
    :cond_1
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NullLiteral;)Z
    .locals 1

    .line 504
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 506
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->changeNotSupported(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/NumberLiteral;)Z
    .locals 3

    .line 507
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 509
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/NumberLiteral;->TOKEN_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 510
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 511
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PackageDeclaration;)Z
    .locals 2

    .line 512
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 514
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 515
    sget-object v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 516
    sget-object v1, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 517
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParameterizedType;)Z
    .locals 7

    .line 918
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 920
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ParameterizedType;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 921
    sget-object v3, Lorg/eclipse/jdt/core/dom/ParameterizedType;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 923
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 924
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 925
    :cond_1
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;)Z
    .locals 1

    .line 518
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 520
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PostfixExpression;)Z
    .locals 2

    .line 521
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 523
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/PostfixExpression;->OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 524
    sget-object v1, Lorg/eclipse/jdt/core/dom/PostfixExpression;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOperation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PrefixExpression;)Z
    .locals 2

    .line 525
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 527
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/PrefixExpression;->OPERATOR_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOperation(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    .line 528
    sget-object v0, Lorg/eclipse/jdt/core/dom/PrefixExpression;->OPERAND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/PrimitiveType;)Z
    .locals 3

    .line 529
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 531
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 532
    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteTypeAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 533
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;->PRIMITIVE_TYPE_CODE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;

    .line 534
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 535
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ProvidesDirective;)Z
    .locals 7

    .line 536
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 538
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 539
    sget-object v3, Lorg/eclipse/jdt/core/dom/ProvidesDirective;->IMPLEMENTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v5, " with "

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedName;)Z
    .locals 1

    .line 540
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 542
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedName;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 543
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedName;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/QualifiedType;)Z
    .locals 3

    .line 926
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 928
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedType;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 929
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 930
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 931
    sget-object v1, Lorg/eclipse/jdt/core/dom/QualifiedType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteTypeAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 932
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 933
    :cond_1
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/QualifiedType;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/RequiresDirective;)Z
    .locals 8

    .line 142
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 144
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    const/16 v1, 0x73

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterToken(II)I

    move-result v5

    .line 145
    sget-object v4, Lorg/eclipse/jdt/core/dom/RequiresDirective;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ReturnStatement;)Z
    .locals 3

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    .line 137
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceBeforeReplace(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 140
    sget-object v0, Lorg/eclipse/jdt/core/dom/ReturnStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    sget-object v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 141
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SimpleName;)Z
    .locals 3

    .line 544
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 546
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleName;->IDENTIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 547
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 548
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SimpleType;)Z
    .locals 2

    .line 549
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 551
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 552
    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteTypeAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 553
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/SimpleType;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;)Z
    .locals 1

    .line 934
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 936
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->TYPE_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 937
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;->VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;)Z
    .locals 9

    .line 554
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 556
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 557
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 558
    sget-object v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VARIABLE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    goto :goto_0

    .line 559
    :cond_1
    sget-object v3, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 560
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-lt v1, v4, :cond_8

    .line 561
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 562
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v4

    .line 563
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-lt v1, v6, :cond_2

    .line 564
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteVarargsAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    move-result v3

    .line 565
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v0

    .line 566
    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->VARARGS:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-interface {v7, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-virtual {p0, v3, v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 568
    const-string v0, "..."

    invoke-virtual {p0, v3, v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_4

    :cond_3
    if-lt v1, v6, :cond_4

    .line 569
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_1
    const/4 v7, 0x1

    if-lez v0, :cond_5

    .line 570
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->varargsAnnotations()Ljava/util/List;

    move-result-object v8

    sub-int/2addr v0, v7

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/Annotation;

    .line 571
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v8

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v0

    add-int/2addr v8, v0

    .line 572
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, v8, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v0

    goto :goto_2

    .line 573
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {v0, v3, v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v0

    :goto_2
    sub-int/2addr v0, v3

    .line 574
    invoke-virtual {p0, v3, v0, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 575
    :goto_3
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    if-lt v1, v6, :cond_7

    .line 576
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 577
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->VARARGS_ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v0, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteVarargsAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 578
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->isVarargs()Z

    move-result v0

    if-nez v0, :cond_9

    .line 579
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceAfterReplace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    goto :goto_5

    .line 580
    :cond_8
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceAfterReplace(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    .line 581
    :cond_9
    :goto_5
    sget-object v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    if-ge v1, v6, :cond_b

    .line 582
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VARIABLE_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v1

    if-lez v1, :cond_c

    .line 583
    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 584
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getPreviousTokenEndOffset(II)I

    move-result v0
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    .line 585
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 586
    :cond_a
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6

    .line 587
    :cond_b
    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExtraDimensionsInfo(Lorg/eclipse/jdt/core/dom/ASTNode;ILorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)I

    move-result v0

    .line 588
    :cond_c
    :goto_6
    sget-object v1, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->VAR_INITIALIZER:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    return v5
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/StringLiteral;)Z
    .locals 3

    .line 589
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 591
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/StringLiteral;->ESCAPED_VALUE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 592
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 593
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;)Z
    .locals 12

    .line 594
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 596
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v5

    .line 597
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 598
    sget-object v4, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I

    move-result v5

    .line 599
    :cond_1
    sget-object v8, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v9

    .line 601
    sget-object v10, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v11, ", "

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 602
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 603
    :cond_2
    invoke-direct {p0, p1, v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperFieldAccess;)Z
    .locals 2

    .line 604
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 606
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    .line 607
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;)Z
    .locals 10

    .line 608
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 610
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 611
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 612
    sget-object v5, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v6

    .line 614
    sget-object v7, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 615
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    .line 616
    :cond_1
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 617
    sget-object v3, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;->ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 619
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 620
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 621
    :cond_2
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SuperMethodReference;)Z
    .locals 2

    .line 938
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 940
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 941
    sget-object v1, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->visitReferenceTypeArguments(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    .line 942
    sget-object v0, Lorg/eclipse/jdt/core/dom/SuperMethodReference;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchCase;)Z
    .locals 7

    .line 622
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 624
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_3

    .line 625
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/SwitchCase;->expressions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    goto :goto_0

    .line 626
    :cond_1
    sget-object v3, Lorg/eclipse/jdt/core/dom/SwitchCase;->EXPRESSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 627
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/SwitchCase;->SWITCH_LABELED_RULE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 628
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v2

    .line 629
    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 630
    const-string p1, "->"

    const/16 v1, 0x3e

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 631
    :cond_2
    const-string p1, ":"

    const/16 v1, 0x62

    .line 632
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenStartOffset(II)I

    move-result v0

    .line 633
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v1

    sub-int/2addr v1, v0

    .line 634
    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    .line 635
    invoke-virtual {p0, v0, p1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 636
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 637
    :cond_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_SWITCH_EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExpressionOptionalQualifier(Lorg/eclipse/jdt/core/dom/SwitchCase;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchExpression;)Z
    .locals 6

    .line 638
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 640
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SwitchExpression;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 641
    sget-object v1, Lorg/eclipse/jdt/core/dom/SwitchExpression;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    .line 642
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/16 v3, 0x31

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 644
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v2

    .line 645
    const-string v3, "true"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 646
    :cond_1
    new-instance v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;

    invoke-direct {v3, p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;I)V

    .line 647
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->createIndentString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 650
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 651
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 652
    :cond_2
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SwitchStatement;)Z
    .locals 6

    .line 653
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 655
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SwitchStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 656
    sget-object v1, Lorg/eclipse/jdt/core/dom/SwitchStatement;->STATEMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    .line 657
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    const/16 v3, 0x31

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    .line 659
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v2

    .line 660
    const-string v3, "true"

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->options:Ljava/util/Map;

    const-string v5, "org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 661
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_2

    .line 662
    new-instance v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;

    invoke-direct {v3, p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListLabeledRuleRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 663
    :cond_2
    new-instance v3, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;

    invoke-direct {v3, p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$SwitchListRewriter;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;I)V

    .line 664
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 665
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getLineDelimiter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->createIndentString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer$ListRewriter;->rewriteList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 668
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 669
    :cond_3
    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/SynchronizedStatement;)Z
    .locals 1

    .line 670
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 672
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    .line 673
    sget-object v0, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TagElement;)Z
    .locals 9

    .line 774
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 776
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TagElement;->TAG_NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 777
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 778
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->findTagNameEnd(Lorg/eclipse/jdt/core/dom/TagElement;)I

    move-result v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-direct {p0, v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_0

    .line 779
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->findTagNameEnd(Lorg/eclipse/jdt/core/dom/TagElement;)I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemove(IILorg/eclipse/text/edits/TextEditGroup;)Lorg/eclipse/text/edits/TextEdit;

    goto :goto_0

    .line 780
    :cond_3
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 782
    :goto_0
    sget-object v5, Lorg/eclipse/jdt/core/dom/TagElement;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 783
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->findTagNameEnd(Lorg/eclipse/jdt/core/dom/TagElement;)I

    move-result v6

    .line 784
    const-string v7, " "

    const-string v8, " "

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 785
    :cond_4
    invoke-direct {p0, p1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TextElement;)Z
    .locals 3

    .line 786
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 788
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TextElement;->TEXT_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    .line 790
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    invoke-direct {p0, v2, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThisExpression;)Z
    .locals 2

    .line 674
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 676
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/ThisExpression;->QUALIFIER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalQualifier(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/ThrowStatement;)Z
    .locals 3

    .line 677
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->beforeRequiredSpaceIndex:I

    .line 678
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 679
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 680
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->ensureSpaceBeforeReplace(Lorg/eclipse/jdt/core/dom/ASTNode;)V

    .line 681
    sget-object v0, Lorg/eclipse/jdt/core/dom/ThrowStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 682
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TryStatement;)Z
    .locals 9

    .line 683
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 685
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 686
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 687
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TRY_STATEMENT_RESOURCES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/TryStatement;->RESOURCES2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    goto :goto_0

    .line 688
    :goto_1
    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v1

    .line 690
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->TRY_RESOURCES:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-interface {v2, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->TRY_RESOURCES_PAREN:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-interface {v5, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 692
    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterTry(I)I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, ")"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 693
    :cond_2
    invoke-direct {p0, p1, v4, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    .line 694
    :cond_3
    :goto_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/TryStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 695
    sget-object v3, Lorg/eclipse/jdt/core/dom/TryStatement;->CATCH_CLAUSES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 696
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v0

    .line 697
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->CATCH_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-interface {v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    .line 698
    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 699
    :cond_4
    invoke-direct {p0, p1, v3, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 700
    :goto_3
    sget-object v1, Lorg/eclipse/jdt/core/dom/TryStatement;->FINALLY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FINALLY_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 10
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-direct/range {p0 .. p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    return v0

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    .line 13
    sget-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->JAVADOC_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {v7, v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteJavadoc(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v0, v9, :cond_1

    move v12, v10

    goto :goto_0

    :cond_1
    move v12, v11

    :goto_0
    if-eqz v12, :cond_2

    .line 14
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TYPE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {v7, v8, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    goto :goto_1

    .line 15
    :cond_2
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {v7, v8, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 16
    :goto_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {v7, v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 17
    invoke-direct {v7, v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v13, :cond_3

    const/16 v1, 0x46

    goto :goto_2

    :cond_3
    const/16 v1, 0x43

    .line 18
    :goto_2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    if-nez v12, :cond_4

    .line 19
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/BodyDeclaration;->modifiers()Ljava/util/List;

    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4

    sub-int/2addr v4, v10

    .line 21
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 22
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v2, v3

    .line 23
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->readToToken(II)V

    if-eqz v13, :cond_5

    .line 24
    const-string v1, "class"

    goto :goto_3

    :cond_5
    const-string v1, "interface"

    .line 25
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentStartOffset()I

    move-result v2

    .line 26
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getCurrentEndOffset()I

    move-result v3

    sub-int/2addr v3, v2

    .line 27
    invoke-direct {v7, v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-direct {v7, v2, v3, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    :cond_6
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {v7, v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v3

    if-nez v12, :cond_7

    .line 29
    sget-object v2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->TYPE_PARAMETERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteOptionalTypeParameters(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;ZZ)I

    move-result v3

    :cond_7
    move v6, v3

    .line 30
    const-string v15, " extends "

    if-eqz v13, :cond_8

    if-eqz v14, :cond_f

    :cond_8
    if-eqz v12, :cond_9

    .line 31
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TYPE_SUPERCLASS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    goto :goto_4

    :cond_9
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPERCLASS_TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    .line 32
    :goto_4
    invoke-virtual {v7, v8, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 33
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v2

    goto :goto_5

    :cond_a
    move v2, v11

    :goto_5
    if-eqz v2, :cond_e

    if-eq v2, v10, :cond_d

    if-eq v2, v9, :cond_c

    const/4 v0, 0x4

    if-eq v2, v0, :cond_b

    goto :goto_6

    .line 34
    :cond_b
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 35
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedRange(Lorg/eclipse/jdt/core/dom/ASTNode;)Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getStartPosition()I

    move-result v6

    .line 37
    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/rewrite/TargetSourceRangeComputer$SourceRange;->getLength()I

    move-result v9

    .line 38
    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v2

    invoke-virtual {v7, v6, v9, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 39
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v4, 0x0

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    add-int/2addr v6, v9

    goto :goto_6

    .line 40
    :cond_c
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 41
    invoke-virtual {v7, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v2

    sub-int v3, v2, v6

    .line 42
    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-virtual {v7, v6, v3, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextRemoveAndVisit(IILorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/text/edits/TextEditGroup;)V

    move v6, v2

    goto :goto_6

    .line 43
    :cond_d
    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v0

    invoke-virtual {v7, v6, v15, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 44
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v4, 0x0

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextInsert(ILorg/eclipse/jdt/core/dom/ASTNode;IZLorg/eclipse/text/edits/TextEditGroup;)V

    goto :goto_6

    .line 45
    :cond_e
    invoke-direct {v7, v8, v0, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v6

    :cond_f
    :goto_6
    if-eqz v12, :cond_10

    .line 46
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TYPE_SUPER_INTERFACES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    :goto_7
    move-object v2, v0

    goto :goto_8

    :cond_10
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->SUPER_INTERFACE_TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    goto :goto_7

    .line 47
    :goto_8
    invoke-virtual {v7, v8, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    move-result-object v0

    .line 48
    const-string v1, " implements "

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getChangeKind()I

    move-result v3

    if-nez v3, :cond_11

    goto :goto_b

    :cond_11
    if-ne v13, v14, :cond_12

    move-object v15, v1

    :cond_12
    if-eqz v14, :cond_14

    .line 49
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 50
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 51
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;->getOriginalValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 53
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    goto :goto_9

    :cond_13
    move v0, v6

    :goto_9
    sub-int v1, v0, v6

    .line 54
    sget-object v3, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {v7, v8, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v3

    invoke-direct {v7, v6, v1, v15, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 55
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    move v3, v0

    move-object v4, v1

    goto :goto_a

    :cond_14
    move v3, v6

    move-object v4, v15

    .line 56
    :goto_a
    const-string v5, ", "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    :cond_15
    :goto_b
    if-eqz v14, :cond_17

    .line 57
    invoke-direct {v7, v8, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v13, :cond_16

    move-object v15, v1

    .line 59
    :cond_16
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 60
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    sub-int/2addr v0, v6

    sget-object v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->INTERFACE_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {v7, v8, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v1

    invoke-direct {v7, v6, v0, v15, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 61
    :cond_17
    invoke-direct {v7, v8, v2, v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v0

    .line 62
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    .line 63
    invoke-direct {v7, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getPosAfterLeftBrace(I)I

    move-result v3

    .line 64
    sget-object v2, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->BODY_DECLARATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const/4 v5, -0x1

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteParagraphList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIII)I

    return v11
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;)Z
    .locals 2

    .line 701
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 703
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 704
    sget-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_TDS_TYPE_DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    goto :goto_0

    .line 705
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->DECLARATION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeLiteral;)Z
    .locals 1

    .line 706
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 708
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeLiteral;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeMethodReference;)Z
    .locals 2

    .line 943
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 945
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 946
    sget-object v1, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->TYPE_ARGUMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->visitReferenceTypeArguments(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    .line 947
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeMethodReference;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/TypeParameter;)Z
    .locals 7

    .line 948
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 950
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 951
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeParameter;->MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 952
    :cond_1
    sget-object v0, Lorg/eclipse/jdt/core/dom/TypeParameter;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 953
    sget-object v3, Lorg/eclipse/jdt/core/dom/TypeParameter;->TYPE_BOUNDS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-string v5, " extends "

    const-string v6, " & "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UnionType;)Z
    .locals 6

    .line 709
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 711
    :cond_0
    sget-object v2, Lorg/eclipse/jdt/core/dom/UnionType;->TYPES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v5, " | "

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/UsesDirective;)Z
    .locals 1

    .line 712
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 714
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/UsesDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;)Z
    .locals 7

    .line 715
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 717
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 718
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 719
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VDE_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    goto :goto_0

    .line 720
    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 721
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 722
    sget-object v3, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Z
    .locals 3

    .line 723
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 724
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 725
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 726
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 727
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_FRAGMENT_EXTRA_DIMENSIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExtraDimensions(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)I

    move-result v1

    if-lez v1, :cond_3

    .line 728
    sget-object v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 729
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getPreviousTokenEndOffset(II)I

    move-result v0
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 730
    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 732
    :cond_2
    sget-object v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->EXTRA_DIMENSIONS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteExtraDimensionsInfo(Lorg/eclipse/jdt/core/dom/ASTNode;ILorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)I

    move-result v0

    .line 733
    :cond_3
    :goto_0
    sget-object v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;->INITIALIZER_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->VAR_INITIALIZER:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;)Z
    .locals 7

    .line 734
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 736
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    .line 737
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 738
    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->INTERNAL_VDS_MODIFIERS_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;I)V

    goto :goto_0

    .line 739
    :cond_1
    sget-object v1, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->MODIFIERS2_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-direct {p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteModifiers2(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    .line 740
    :goto_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->TYPE_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    .line 741
    sget-object v3, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->FRAGMENTS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_STRING:Ljava/lang/String;

    const-string v6, ", "

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNodeList(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILjava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WhileStatement;)Z
    .locals 8

    .line 742
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 744
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/WhileStatement;->EXPRESSION_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteRequiredNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v0

    .line 745
    :try_start_0
    sget-object v3, Lorg/eclipse/jdt/core/dom/WhileStatement;->BODY_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->isChanged(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getTokenEndOffset(II)I

    move-result v4

    .line 747
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getIndent(I)I

    move-result v6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v7, v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->WHILE_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteBodyNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;IIILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;)I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 748
    :cond_1
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 749
    :goto_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/WildcardType;)Z
    .locals 6

    .line 954
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->hasChildrenChanges(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doVisitUnchangedChildren(Lorg/eclipse/jdt/core/dom/ASTNode;)Z

    move-result p1

    return p1

    .line 956
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->apiLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 957
    sget-object v0, Lorg/eclipse/jdt/core/dom/WildcardType;->ANNOTATIONS_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteTypeAnnotations(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;I)I

    :cond_1
    const/4 v0, 0x0

    .line 958
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getScanner()Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/TokenScanner;->getNextEndOffset(IZ)I

    move-result v1

    .line 959
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lorg/eclipse/jdt/core/dom/WildcardType;->UPPER_BOUND_PROPERTY:Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getNewValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 960
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->WILDCARD_EXTENDS:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 961
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->formatter:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;

    iget-object v2, v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->WILDCARD_SUPER:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    .line 962
    :goto_0
    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 963
    sget-object v4, Lorg/eclipse/jdt/core/dom/WildcardType;->BOUND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getChangeKind(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)I

    move-result v5

    if-eq v5, v3, :cond_3

    const/4 v3, 0x2

    if-eq v5, v3, :cond_3

    .line 964
    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getOriginalValue(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jdt/core/dom/ASTNode;

    .line 965
    invoke-interface {v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;->getPrefix(I)Ljava/lang/String;

    move-result-object v5

    .line 966
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {p0, p1, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->getEditGroup(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)Lorg/eclipse/text/edits/TextEditGroup;

    move-result-object v4

    invoke-direct {p0, v1, v3, v5, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->doTextReplace(IILjava/lang/String;Lorg/eclipse/text/edits/TextEditGroup;)V

    .line 967
    :cond_3
    sget-object v3, Lorg/eclipse/jdt/core/dom/WildcardType;->BOUND_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-direct {p0, p1, v3, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->rewriteNode(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;ILorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;)I
    :try_end_0
    .catch Lorg/eclipse/core/runtime/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 968
    :goto_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteAnalyzer;->handleException(Ljava/lang/Throwable;)V

    :goto_2
    return v0
.end method

.method public final voidVisit(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    return-void
.end method
