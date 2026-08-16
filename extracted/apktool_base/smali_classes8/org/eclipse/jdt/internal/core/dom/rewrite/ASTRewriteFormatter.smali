.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;
    }
.end annotation


# static fields
.field public static final ASSERT_COMMENT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public static final NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public static final SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;


# instance fields
.field public final ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final ANNOT_MEMBER_DEFAULT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final CASE_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final CATCH_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final DO_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

.field public final ELSE_AFTER_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

.field public final ELSE_AFTER_STATEMENT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

.field public final ENUM_BODY_END:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final ENUM_BODY_START:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final FINALLY_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final FIRST_ENUM_CONST:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final FOR_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

.field public final IF_BLOCK_NO_ELSE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

.field public final IF_BLOCK_WITH_ELSE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

.field public final LOCAL_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final METHOD_BODY:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final PARAM_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final TRY_RESOURCES:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final TRY_RESOURCES_PAREN:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final TYPE_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final VARARGS:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final VAR_INITIALIZER:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final WHILE_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

.field public final WILDCARD_EXTENDS:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field public final WILDCARD_SUPER:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

.field private final eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

.field private final indentWidth:I

.field private final lineDelimiter:Ljava/lang/String;

.field private final options:Ljava/util/Map;

.field private final placeholders:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

.field private final tabWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->NONE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;

    const-string v1, " "

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->SPACE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;

    const-string v1, " : "

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ConstPrefix;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ASSERT_COMMENT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "A a={};"

    const-string v2, "a={"

    const/4 v3, 0x2

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->VAR_INITIALIZER:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "void a() {}"

    const-string v2, ") {"

    const/4 v4, 0x4

    invoke-direct {v0, p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->METHOD_BODY:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "try {} finally {}"

    const-string v2, "} finally {"

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FINALLY_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "try {} catch(Exception e) {}"

    const-string v2, "} c"

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->CATCH_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "String value() default 1;"

    const-string v2, ") default 1"

    invoke-direct {v0, p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ANNOT_MEMBER_DEFAULT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "enum E { A(){void foo(){}} }"

    const-string v2, "){v"

    const/16 v5, 0x8

    invoke-direct {v0, p0, v1, v2, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ENUM_BODY_START:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "enum E { A(){void foo(){ }}, B}"

    const-string v2, "}},"

    invoke-direct {v0, p0, v1, v2, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ENUM_BODY_END:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "A<? extends B> a;"

    const-string v2, "? extends B"

    invoke-direct {v0, p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->WILDCARD_EXTENDS:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "A<? super B> a;"

    const-string v2, "? super B"

    invoke-direct {v0, p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->WILDCARD_SUPER:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "enum E { X;}"

    const-string v2, "{ X"

    invoke-direct {v0, p0, v1, v2, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FIRST_ENUM_CONST:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "@A @B class C {}"

    const-string v2, "A @"

    invoke-direct {v0, p0, v1, v2, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "void foo(@A @B C p) { }"

    invoke-direct {v0, p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->PARAM_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "@A @B C p;"

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->LOCAL_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "C<@A @B D> l;"

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->TYPE_ANNOTATION_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "void foo(A ... a) { }"

    const-string v2, "A ."

    invoke-direct {v0, p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->VARARGS:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "; B"

    const-string v2, "try (A a = new A(); B b = new B()) {}"

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->TRY_RESOURCES:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "y ("

    invoke-direct {v0, p0, v2, v1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->TRY_RESOURCES_PAREN:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;

    const-string v1, "else{}"

    const-string v2, "if (true)"

    invoke-direct {v0, p0, v2, v1, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->IF_BLOCK_WITH_ELSE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;

    invoke-direct {v0, p0, v2, v5}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->IF_BLOCK_NO_ELSE:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;

    const-string v1, "if (true) foo();else "

    const/16 v2, 0xf

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ELSE_AFTER_STATEMENT:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;

    const-string v1, "if (true) {}else "

    const/16 v2, 0xb

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->ELSE_AFTER_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;

    const-string v1, "case A, B"

    const-string v3, "A"

    const/4 v4, 0x1

    invoke-direct {v0, p0, v1, v3, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$FormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->CASE_SEPARATION:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$Prefix;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;

    const-string v1, "for (;;) "

    const/4 v3, 0x7

    invoke-direct {v0, p0, v1, v3}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->FOR_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;

    const-string v1, "while (true)"

    invoke-direct {v0, p0, v1, v2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->WHILE_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;

    const-string v1, "do "

    const-string v2, "while (true);"

    invoke-direct {v0, p0, v1, v2, v4}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockFormattingPrefixSuffix;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->DO_BLOCK:Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$BlockContext;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->placeholders:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    if-nez p3, :cond_0

    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getOptions()Ljava/util/Hashtable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->options:Ljava/util/Map;

    const/4 p2, 0x5

    const/4 v0, 0x0

    invoke-static {v4, p2, v0}, Lorg/eclipse/jdt/core/formatter/DefaultCodeFormatterConstants;->createAlignmentValue(ZII)Ljava/lang/String;

    move-result-object p2

    const-string v0, "org.eclipse.jdt.core.formatter.alignment_for_resources_in_try"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->lineDelimiter:Ljava/lang/String;

    invoke-static {p3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getTabWidth(Ljava/util/Map;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->tabWidth:I

    invoke-static {p3}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getIndentWidth(Ljava/util/Map;)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->indentWidth:I

    return-void
.end method

.method private static createDocument(Ljava/lang/String;[Lorg/eclipse/jface/text/Position;)Lorg/eclipse/jface/text/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "myCategory"

    new-instance v1, Lorg/eclipse/jface/text/Document;

    invoke-direct {v1, p0}, Lorg/eclipse/jface/text/Document;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {v1, v0}, Lorg/eclipse/jface/text/Document;->addPositionCategory(Ljava/lang/String;)V

    new-instance v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;

    invoke-direct {v2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jface/text/Document;->addPositionUpdater(Lorg/eclipse/jface/text/IPositionUpdater;)V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadPositionCategoryException; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    aget-object v3, p1, v2

    invoke-virtual {v1, v0, v3}, Lorg/eclipse/jface/text/Document;->addPosition(Ljava/lang/String;Lorg/eclipse/jface/text/Position;)V
    :try_end_1
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jface/text/BadPositionCategoryException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Position outside of string. offset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v2

    iget v5, v5, Lorg/eclipse/jface/text/Position;->offset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    iget p1, p1, Lorg/eclipse/jface/text/Position;->length:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", string size: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Lorg/eclipse/jface/text/BadPositionCategoryException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static evaluateFormatterEdit(Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;[Lorg/eclipse/jface/text/Position;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->createDocument(Ljava/lang/String;[Lorg/eclipse/jface/text/Position;)Lorg/eclipse/jface/text/Document;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lorg/eclipse/text/edits/TextEdit;->apply(Lorg/eclipse/jface/text/IDocument;I)Lorg/eclipse/text/edits/UndoEdit;

    if-eqz p2, :cond_1

    move p1, v0

    :goto_0
    array-length v1, p2

    if-lt p1, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-object v1, p2, p1

    iget-boolean v1, v1, Lorg/eclipse/jface/text/Position;->isDeleted:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Position got deleted"

    invoke-static {v1, v2}, Lorg/eclipse/core/runtime/Assert;->isTrue(ZLjava/lang/String;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jface/text/Document;->get()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/eclipse/jface/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Fromatter created edits with wrong positions: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jface/text/BadLocationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/eclipse/core/runtime/Assert;->isTrue(ZLjava/lang/String;)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private formatNode(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;I)Lorg/eclipse/text/edits/TextEdit;
    .locals 15

    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/Statement;

    const/4 v2, 0x2

    const-string v3, ""

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const-string v3, "switch(1) {"

    const-string v0, "}"

    move v9, v2

    goto/16 :goto_5

    :cond_0
    :goto_0
    move v9, v2

    :goto_1
    move-object v0, v3

    goto/16 :goto_5

    :cond_1
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/Expression;

    const-string v4, "\nclass A {}"

    const/16 v5, 0x8

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v1

    const/16 v6, 0x3a

    if-eq v1, v6, :cond_3

    instance-of v0, v0, Lorg/eclipse/jdt/core/dom/Annotation;

    if-eqz v0, :cond_2

    :sswitch_0
    move-object v0, v4

    :goto_2
    move v9, v5

    goto :goto_5

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lorg/eclipse/jdt/core/dom/BodyDeclaration;

    const/4 v6, 0x4

    if-eqz v1, :cond_4

    move-object v0, v3

    :goto_3
    move v9, v6

    goto :goto_5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getNodeType()I

    move-result v0

    const/16 v1, 0x80

    const-string v7, ";"

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_1
    move v9, v1

    goto :goto_1

    :sswitch_2
    const-string v0, " class x {}"

    goto :goto_2

    :sswitch_3
    const-string v3, "@Author("

    const-string v0, ") class x {}"

    goto :goto_2

    :sswitch_4
    const-string v3, "A<"

    const-string v0, "> x;"

    goto :goto_3

    :sswitch_5
    const-string v3, "class X<"

    const-string v0, "> {}"

    goto :goto_2

    :sswitch_6
    const-string v3, "A "

    :goto_4
    :sswitch_7
    move v9, v2

    move-object v0, v7

    goto :goto_5

    :sswitch_8
    const-string v3, "void m("

    const-string v0, ");"

    goto :goto_3

    :sswitch_9
    move-object v0, v3

    goto :goto_2

    :sswitch_a
    const-string v0, "try {}"

    move v9, v2

    move-object v14, v3

    move-object v3, v0

    move-object v0, v14

    goto :goto_5

    :sswitch_b
    const-string v3, "void m(final "

    const-string v0, " x);"

    goto :goto_3

    :sswitch_c
    const-string v3, "new A()"

    goto :goto_4

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    move-object v8, p0

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->formatString(ILjava/lang/String;III)Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->shifEdit(Lorg/eclipse/text/edits/TextEdit;I)Lorg/eclipse/text/edits/TextEdit;

    move-result-object v0

    :cond_5
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x5 -> :sswitch_b
        0xc -> :sswitch_a
        0xf -> :sswitch_9
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x23 -> :sswitch_0
        0x27 -> :sswitch_b
        0x2b -> :sswitch_b
        0x2c -> :sswitch_8
        0x3a -> :sswitch_7
        0x3b -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_b
        0x4b -> :sswitch_b
        0x4c -> :sswitch_4
        0x50 -> :sswitch_3
        0x53 -> :sswitch_2
        0x5d -> :sswitch_1
        0x63 -> :sswitch_1
    .end sparse-switch
.end method

.method private static shifEdit(Lorg/eclipse/text/edits/TextEdit;I)Lorg/eclipse/text/edits/TextEdit;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public changeIndent(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    iget v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->tabWidth:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->indentWidth:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->lineDelimiter:Ljava/lang/String;

    move-object v0, p1

    move v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->changeIndent(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public computeIndentUnits(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->tabWidth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->indentWidth:I

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->measureIndentUnits(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1
.end method

.method public createIndentString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->options:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/jdt/core/ToolFactory;->createCodeFormatter(Ljava/util/Map;)Lorg/eclipse/jdt/core/formatter/CodeFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/formatter/CodeFormatter;->createIndentationString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatString(ILjava/lang/String;III)Lorg/eclipse/text/edits/TextEdit;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->options:Ljava/util/Map;

    invoke-static {v0}, Lorg/eclipse/jdt/core/ToolFactory;->createCodeFormatter(Ljava/util/Map;)Lorg/eclipse/jdt/core/formatter/CodeFormatter;

    move-result-object v1

    iget-object v7, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->lineDelimiter:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/eclipse/jdt/core/formatter/CodeFormatter;->format(ILjava/lang/String;IIILjava/lang/String;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1
.end method

.method public getEventStore()Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    return-object v0
.end method

.method public getFormattedResult(Lorg/eclipse/jdt/core/dom/ASTNode;ILjava/util/Collection;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->eventStore:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;)V

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$ExtendedFlattener;->getMarkers()[Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter$NodeMarker;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFlattener;->getResult()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->formatNode(Lorg/eclipse/jdt/core/dom/ASTNode;Ljava/lang/String;I)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    if-nez p1, :cond_1

    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->createIndentString(I)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->tabWidth:I

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->indentWidth:I

    invoke-static {p3, v2, p2, v0, p1}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->getChangeIndentEdits(Ljava/lang/String;IIILjava/lang/String;)[Lorg/eclipse/text/edits/ReplaceEdit;

    move-result-object p2

    new-instance v0, Lorg/eclipse/text/edits/MultiTextEdit;

    invoke-direct {v0}, Lorg/eclipse/text/edits/MultiTextEdit;-><init>()V

    new-instance v3, Lorg/eclipse/text/edits/InsertEdit;

    invoke-direct {v3, v2, p1}, Lorg/eclipse/text/edits/InsertEdit;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/eclipse/text/edits/TextEdit;->addChild(Lorg/eclipse/text/edits/TextEdit;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/text/edits/TextEdit;->addChildren([Lorg/eclipse/text/edits/TextEdit;)V

    move-object p1, v0

    goto :goto_1

    :cond_0
    return-object p3

    :cond_1
    :goto_1
    invoke-static {p3, p1, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->evaluateFormatterEdit(Ljava/lang/String;Lorg/eclipse/text/edits/TextEdit;[Lorg/eclipse/jface/text/Position;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    aget-object v4, v1, v3

    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getIndentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->tabWidth:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->indentWidth:I

    invoke-static {p1, v0, v1}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->extractIndentString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndentWidth()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->indentWidth:I

    return v0
.end method

.method public getLineDelimiter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->lineDelimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceholders()Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->placeholders:Lorg/eclipse/jdt/internal/core/dom/rewrite/NodeInfoStore;

    return-object v0
.end method

.method public getTabWidth()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/ASTRewriteFormatter;->tabWidth:I

    return v0
.end method
