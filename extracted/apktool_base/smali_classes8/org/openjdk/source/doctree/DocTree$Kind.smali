.class public final enum Lorg/openjdk/source/doctree/DocTree$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/source/doctree/DocTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/source/doctree/DocTree$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum ATTRIBUTE:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum AUTHOR:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum CODE:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum COMMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum DEPRECATED:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum DOC_COMMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum DOC_ROOT:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum END_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum ENTITY:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum ERRONEOUS:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum EXCEPTION:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum HIDDEN:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum IDENTIFIER:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum INDEX:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum INHERIT_DOC:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum LINK:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum LINK_PLAIN:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum LITERAL:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum OTHER:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum PARAM:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum PROVIDES:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum REFERENCE:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum RETURN:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum SEE:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum SERIAL:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum SERIAL_DATA:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum SERIAL_FIELD:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum SINCE:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum START_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum TEXT:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum THROWS:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum UNKNOWN_BLOCK_TAG:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum UNKNOWN_INLINE_TAG:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum USES:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum VALUE:Lorg/openjdk/source/doctree/DocTree$Kind;

.field public static final enum VERSION:Lorg/openjdk/source/doctree/DocTree$Kind;


# instance fields
.field public final tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    new-instance v1, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v0, v1

    const-string v2, "ATTRIBUTE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/source/doctree/DocTree$Kind;->ATTRIBUTE:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v2, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "author"

    const-string v5, "AUTHOR"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/openjdk/source/doctree/DocTree$Kind;->AUTHOR:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v3, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "code"

    const-string v6, "CODE"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/openjdk/source/doctree/DocTree$Kind;->CODE:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v4, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v3, v4

    const-string v5, "COMMENT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/source/doctree/DocTree$Kind;->COMMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v5, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "deprecated"

    const-string v8, "DEPRECATED"

    invoke-direct {v5, v8, v6, v7}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/openjdk/source/doctree/DocTree$Kind;->DEPRECATED:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v6, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v5, v6

    const-string v7, "DOC_COMMENT"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/source/doctree/DocTree$Kind;->DOC_COMMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v7, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "docRoot"

    const-string v10, "DOC_ROOT"

    invoke-direct {v7, v10, v8, v9}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/openjdk/source/doctree/DocTree$Kind;->DOC_ROOT:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v8, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v7, v8

    const-string v9, "END_ELEMENT"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/openjdk/source/doctree/DocTree$Kind;->END_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v9, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v8, v9

    const-string v10, "ENTITY"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/openjdk/source/doctree/DocTree$Kind;->ENTITY:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v10, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v9, v10

    const-string v11, "ERRONEOUS"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/openjdk/source/doctree/DocTree$Kind;->ERRONEOUS:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v11, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "exception"

    const-string v14, "EXCEPTION"

    invoke-direct {v11, v14, v12, v13}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lorg/openjdk/source/doctree/DocTree$Kind;->EXCEPTION:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v12, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "hidden"

    const-string v15, "HIDDEN"

    invoke-direct {v12, v15, v13, v14}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/openjdk/source/doctree/DocTree$Kind;->HIDDEN:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v13, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v12, v13

    const-string v14, "IDENTIFIER"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/openjdk/source/doctree/DocTree$Kind;->IDENTIFIER:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v14, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v13, v14

    const/16 v15, 0xd

    move-object/from16 v36, v0

    const-string v0, "index"

    move-object/from16 v37, v1

    const-string v1, "INDEX"

    invoke-direct {v14, v1, v15, v0}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lorg/openjdk/source/doctree/DocTree$Kind;->INDEX:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "inheritDoc"

    move-object/from16 v38, v2

    const-string v2, "INHERIT_DOC"

    invoke-direct {v0, v2, v1, v15}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->INHERIT_DOC:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "link"

    move-object/from16 v39, v3

    const-string v3, "LINK"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "linkplain"

    const-string v3, "LINK_PLAIN"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->LINK_PLAIN:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-string v2, "literal"

    const-string v3, "LITERAL"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->LITERAL:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-string v2, "param"

    const-string v3, "PARAM"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->PARAM:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-string v2, "provides"

    const-string v3, "PROVIDES"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->PROVIDES:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v20, v0

    const-string v1, "REFERENCE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->REFERENCE:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "return"

    const-string v3, "RETURN"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->RETURN:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "see"

    const-string v3, "SEE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->SEE:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "serial"

    const-string v3, "SERIAL"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->SERIAL:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-string v2, "serialData"

    const-string v3, "SERIAL_DATA"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->SERIAL_DATA:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-string v2, "serialField"

    const-string v3, "SERIAL_FIELD"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->SERIAL_FIELD:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-string v2, "since"

    const-string v3, "SINCE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->SINCE:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v27, v0

    const-string v1, "START_ELEMENT"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->START_ELEMENT:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v28, v0

    const-string v1, "TEXT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->TEXT:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-string v2, "throws"

    const-string v3, "THROWS"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->THROWS:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v30, v0

    const-string v1, "UNKNOWN_BLOCK_TAG"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->UNKNOWN_BLOCK_TAG:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v31, v0

    const-string v1, "UNKNOWN_INLINE_TAG"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->UNKNOWN_INLINE_TAG:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-string v2, "uses"

    const-string v3, "USES"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->USES:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v33, v0

    const/16 v1, 0x21

    const-string v2, "value"

    const-string v3, "VALUE"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->VALUE:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v34, v0

    const/16 v1, 0x22

    const-string v2, "version"

    const-string v3, "VERSION"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->VERSION:Lorg/openjdk/source/doctree/DocTree$Kind;

    new-instance v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v35, v0

    const-string v1, "OTHER"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/doctree/DocTree$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->OTHER:Lorg/openjdk/source/doctree/DocTree$Kind;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    filled-new-array/range {v0 .. v35}, [Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->$VALUES:[Lorg/openjdk/source/doctree/DocTree$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/openjdk/source/doctree/DocTree$Kind;->tagName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lorg/openjdk/source/doctree/DocTree$Kind;->tagName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/doctree/DocTree$Kind;->$VALUES:[Lorg/openjdk/source/doctree/DocTree$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/source/doctree/DocTree$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method
