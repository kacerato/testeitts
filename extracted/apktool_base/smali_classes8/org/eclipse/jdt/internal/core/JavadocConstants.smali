.class public interface abstract Lorg/eclipse/jdt/internal/core/JavadocConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANCHOR_PREFIX_END:Ljava/lang/String; = "\""

.field public static final ANCHOR_PREFIX_START:[C

.field public static final ANCHOR_PREFIX_START2_LENGTH:I

.field public static final ANCHOR_PREFIX_START_2:[C

.field public static final ANCHOR_PREFIX_START_LENGTH:I

.field public static final ANCHOR_SUFFIX:[C

.field public static final ANCHOR_SUFFIX_LENGTH:I

.field public static final ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY:[C

.field public static final ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY:[C

.field public static final BOTTOM_NAVBAR:[C

.field public static final CONSTRUCTOR_DETAIL:[C

.field public static final CONSTRUCTOR_SUMMARY:[C

.field public static final DIV_CLASS_BLOCK:Ljava/lang/String; = "<DIV CLASS=\"BLOCK\">"

.field public static final END_OF_CLASS_DATA:[C

.field public static final ENUM_CONSTANT_SUMMARY:[C

.field public static final FIELD_DETAIL:[C

.field public static final FIELD_SUMMARY:[C

.field public static final H2_PREFIX:[C

.field public static final H2_SUFFIX:[C

.field public static final H2_SUFFIX_LENGTH:I

.field public static final HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static final INDEX_FILE_NAME:Ljava/lang/String; = "index.html"

.field public static final METHOD_DETAIL:[C

.field public static final METHOD_SUMMARY:[C

.field public static final MODULE_DESCRIPTION_START:[C

.field public static final MODULE_FILE_SUFFIX:Ljava/lang/String; = "-summary.html"

.field public static final NESTED_CLASS_SUMMARY:[C

.field public static final P:Ljava/lang/String; = "<P>"

.field public static final PACKAGE_DESCRIPTION_START:[C

.field public static final PACKAGE_DESCRIPTION_START2:[C

.field public static final PACKAGE_DESCRIPTION_START3:[C

.field public static final PACKAGE_FILE_NAME:Ljava/lang/String; = "package-summary.html"

.field public static final SEPARATOR_START:[C

.field public static final START_OF_CLASS_DATA:[C

.field public static final START_OF_CLASS_DATA_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "<A NAME=\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START:[C

    const-string v1, "<A ID=\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START_2:[C

    array-length v0, v0

    sput v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START_LENGTH:I

    array-length v0, v1

    sput v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_PREFIX_START2_LENGTH:I

    const-string v0, "</A>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_SUFFIX:[C

    array-length v0, v0

    sput v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANCHOR_SUFFIX_LENGTH:I

    const-string v0, "<!-- ========= CONSTRUCTOR DETAIL ======== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->CONSTRUCTOR_DETAIL:[C

    const-string v0, "<!-- ======== CONSTRUCTOR SUMMARY ======== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->CONSTRUCTOR_SUMMARY:[C

    const-string v0, "<!-- ============ FIELD DETAIL =========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->FIELD_DETAIL:[C

    const-string v0, "<!-- =========== FIELD SUMMARY =========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->FIELD_SUMMARY:[C

    const-string v0, "<!-- =========== ENUM CONSTANT SUMMARY =========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ENUM_CONSTANT_SUMMARY:[C

    const-string v0, "<!-- =========== ANNOTATION TYPE REQUIRED MEMBER SUMMARY =========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANNOTATION_TYPE_REQUIRED_MEMBER_SUMMARY:[C

    const-string v0, "<!-- =========== ANNOTATION TYPE OPTIONAL MEMBER SUMMARY =========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->ANNOTATION_TYPE_OPTIONAL_MEMBER_SUMMARY:[C

    const-string v0, "<!-- ========= END OF CLASS DATA ========= -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->END_OF_CLASS_DATA:[C

    const-string v0, "<!-- ============ METHOD DETAIL ========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->METHOD_DETAIL:[C

    const-string v0, "<!-- ========== METHOD SUMMARY =========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->METHOD_SUMMARY:[C

    const-string v0, "<!-- ======== NESTED CLASS SUMMARY ======== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->NESTED_CLASS_SUMMARY:[C

    const-string v0, "name=\"package_description\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->PACKAGE_DESCRIPTION_START:[C

    const-string v0, "name=\"package.description\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->PACKAGE_DESCRIPTION_START2:[C

    const-string v0, "<div class=\"contentContainer\">"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->PACKAGE_DESCRIPTION_START3:[C

    const-string v0, "<!-- ============ MODULE DESCRIPTION =========== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->MODULE_DESCRIPTION_START:[C

    const-string v0, "<H2"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->H2_PREFIX:[C

    const-string v0, "</H2>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->H2_SUFFIX:[C

    array-length v0, v0

    sput v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->H2_SUFFIX_LENGTH:I

    const-string v0, "<!-- ======= START OF BOTTOM NAVBAR ====== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->BOTTOM_NAVBAR:[C

    const-string v0, "<!-- ="

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->SEPARATOR_START:[C

    const-string v0, "<!-- ======== START OF CLASS DATA ======== -->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->START_OF_CLASS_DATA:[C

    array-length v0, v0

    sput v0, Lorg/eclipse/jdt/internal/core/JavadocConstants;->START_OF_CLASS_DATA_LENGTH:I

    return-void
.end method
