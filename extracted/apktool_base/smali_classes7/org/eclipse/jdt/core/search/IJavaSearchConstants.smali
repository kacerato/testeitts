.class public interface abstract Lorg/eclipse/jdt/core/search/IJavaSearchConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_OCCURRENCES:I = 0x3

.field public static final ALL_UNNAMED:[C

.field public static final ANNOTATION_TYPE:I = 0x8

.field public static final ANNOTATION_TYPE_REFERENCE:I = 0x10000

.field public static final CANCEL_IF_NOT_READY_TO_SEARCH:I = 0x2

.field public static final CASE_INSENSITIVE:Z = false

.field public static final CASE_SENSITIVE:Z = true

.field public static final CAST_TYPE_REFERENCE:I = 0x800

.field public static final CATCH_TYPE_REFERENCE:I = 0x1000

.field public static final CLASS:I = 0x5

.field public static final CLASS_AND_ENUM:I = 0x9

.field public static final CLASS_AND_INTERFACE:I = 0xa

.field public static final CLASS_INSTANCE_CREATION_TYPE_REFERENCE:I = 0x2000

.field public static final CONSTRUCTOR:I = 0x3

.field public static final DECLARATIONS:I = 0x0

.field public static final ENUM:I = 0x7

.field public static final EXACT_MATCH:I = 0x0

.field public static final FIELD:I = 0x4

.field public static final FIELD_DECLARATION_TYPE_REFERENCE:I = 0x40

.field public static final FORCE_IMMEDIATE_SEARCH:I = 0x1

.field public static final IGNORE_DECLARING_TYPE:I = 0x10

.field public static final IGNORE_RETURN_TYPE:I = 0x20

.field public static final IMPLEMENTORS:I = 0x1

.field public static final IMPLICIT_THIS_REFERENCE:I = 0x8000000

.field public static final IMPORT_DECLARATION_TYPE_REFERENCE:I = 0x8000

.field public static final INSTANCEOF_TYPE_REFERENCE:I = 0x100000

.field public static final INTERFACE:I = 0x6

.field public static final INTERFACE_AND_ANNOTATION:I = 0xb

.field public static final LOCAL_VARIABLE_DECLARATION_TYPE_REFERENCE:I = 0x80

.field public static final METHOD:I = 0x1

.field public static final METHOD_REFERENCE_EXPRESSION:I = 0x10000000

.field public static final MODULE:I = 0xc

.field public static final MODULE_GRAPH:I = 0x6

.field public static final PACKAGE:I = 0x2

.field public static final PARAMETER_DECLARATION_TYPE_REFERENCE:I = 0x100

.field public static final PATTERN_MATCH:I = 0x2

.field public static final PREFIX_MATCH:I = 0x1

.field public static final QUALIFIED_REFERENCE:I = 0x2000000

.field public static final READ_ACCESSES:I = 0x4

.field public static final REFERENCES:I = 0x2

.field public static final RETURN_TYPE_REFERENCE:I = 0x4000

.field public static final SUPERTYPE_TYPE_REFERENCE:I = 0x200

.field public static final SUPER_REFERENCE:I = 0x1000000

.field public static final THIS_REFERENCE:I = 0x4000000

.field public static final THROWS_CLAUSE_TYPE_REFERENCE:I = 0x400

.field public static final TYPE:I = 0x0

.field public static final TYPE_ARGUMENT_TYPE_REFERENCE:I = 0x20000

.field public static final TYPE_VARIABLE_BOUND_TYPE_REFERENCE:I = 0x40000

.field public static final UNKNOWN:I = -0x1

.field public static final WAIT_UNTIL_READY_TO_SEARCH:I = 0x3

.field public static final WILDCARD_BOUND_TYPE_REFERENCE:I = 0x80000

.field public static final WRITE_ACCESSES:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ALL-UNNAMED"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/search/IJavaSearchConstants;->ALL_UNNAMED:[C

    return-void
.end method
