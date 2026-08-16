.class public interface abstract Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_TAGS_LENGTH:I

.field public static final BLOCK_IDX:I = 0x0

.field public static final BLOCK_TAGS:[[[C

.field public static final BLOCK_TAGS_LENGTH:I

.field public static final CLASS_TAGS:[[C

.field public static final COMPILATION_UNIT_TAGS:[[C

.field public static final FIELD_TAGS:[[C

.field public static final HREF_TAG:[C

.field public static final INLINE_IDX:I = 0x1

.field public static final INLINE_TAGS:[[[C

.field public static final INLINE_TAGS_LENGTH:I

.field public static final JAVADOC_TAG_TYPE:[S

.field public static final METHOD_TAGS:[[C

.field public static final MODULE_TAGS:[[C

.field public static final NO_TAG_VALUE:I = 0x0

.field public static final ORDERED_TAGS_NUMBER:I = 0x3

.field public static final PACKAGE_TAGS:[[C

.field public static final PARAM_TAG_EXPECTED_ORDER:I = 0x0

.field public static final SEE_TAG_EXPECTED_ORDER:I = 0x2

.field public static final TAG_API_NOTE:[C

.field public static final TAG_API_NOTE_LENGTH:I

.field public static final TAG_API_NOTE_VALUE:I = 0x1b

.field public static final TAG_AUTHOR:[C

.field public static final TAG_AUTHOR_LENGTH:I

.field public static final TAG_AUTHOR_VALUE:I = 0xc

.field public static final TAG_CATEGORY:[C

.field public static final TAG_CATEGORY_LENGTH:I

.field public static final TAG_CATEGORY_VALUE:I = 0xb

.field public static final TAG_CODE:[C

.field public static final TAG_CODE_LENGTH:I

.field public static final TAG_CODE_VALUE:I = 0x12

.field public static final TAG_DEPRECATED:[C

.field public static final TAG_DEPRECATED_LENGTH:I

.field public static final TAG_DEPRECATED_VALUE:I = 0x1

.field public static final TAG_DOC_ROOT:[C

.field public static final TAG_DOC_ROOT_LENGTH:I

.field public static final TAG_DOC_ROOT_VALUE:I = 0x14

.field public static final TAG_EXCEPTION:[C

.field public static final TAG_EXCEPTION_LENGTH:I

.field public static final TAG_EXCEPTION_VALUE:I = 0x5

.field public static final TAG_HIDDEN:[C

.field public static final TAG_HIDDEN_LENGTH:I

.field public static final TAG_HIDDEN_VALUE:I = 0x18

.field public static final TAG_IMPL_NOTE:[C

.field public static final TAG_IMPL_NOTE_LENGTH:I

.field public static final TAG_IMPL_NOTE_VALUE:I = 0x1d

.field public static final TAG_IMPL_SPEC:[C

.field public static final TAG_IMPL_SPEC_LENGTH:I

.field public static final TAG_IMPL_SPEC_VALUE:I = 0x1c

.field public static final TAG_INDEX:[C

.field public static final TAG_INDEX_LENGTH:I

.field public static final TAG_INDEX_VALUE:I = 0x19

.field public static final TAG_INHERITDOC:[C

.field public static final TAG_INHERITDOC_LENGTH:I

.field public static final TAG_INHERITDOC_VALUE:I = 0x9

.field public static final TAG_LINK:[C

.field public static final TAG_LINKPLAIN:[C

.field public static final TAG_LINKPLAIN_LENGTH:I

.field public static final TAG_LINKPLAIN_VALUE:I = 0x8

.field public static final TAG_LINK_LENGTH:I

.field public static final TAG_LINK_VALUE:I = 0x7

.field public static final TAG_LITERAL:[C

.field public static final TAG_LITERAL_LENGTH:I

.field public static final TAG_LITERAL_VALUE:I = 0x13

.field public static final TAG_NAMES:[[C

.field public static final TAG_OTHERS_VALUE:I = 0x64

.field public static final TAG_PARAM:[C

.field public static final TAG_PARAM_LENGTH:I

.field public static final TAG_PARAM_VALUE:I = 0x2

.field public static final TAG_PROVIDES:[C

.field public static final TAG_PROVIDES_LENGTH:I

.field public static final TAG_PROVIDES_VALUE:I = 0x17

.field public static final TAG_RETURN:[C

.field public static final TAG_RETURN_LENGTH:I

.field public static final TAG_RETURN_VALUE:I = 0x3

.field public static final TAG_SEE:[C

.field public static final TAG_SEE_LENGTH:I

.field public static final TAG_SEE_VALUE:I = 0x6

.field public static final TAG_SERIAL:[C

.field public static final TAG_SERIAL_DATA:[C

.field public static final TAG_SERIAL_DATA_LENGTH:I

.field public static final TAG_SERIAL_DATA_VALUE:I = 0xe

.field public static final TAG_SERIAL_FIELD:[C

.field public static final TAG_SERIAL_FIELD_LENGTH:I

.field public static final TAG_SERIAL_FIELD_VALUE:I = 0xf

.field public static final TAG_SERIAL_LENGTH:I

.field public static final TAG_SERIAL_VALUE:I = 0xd

.field public static final TAG_SINCE:[C

.field public static final TAG_SINCE_LENGTH:I

.field public static final TAG_SINCE_VALUE:I = 0x10

.field public static final TAG_SUMMARY:[C

.field public static final TAG_SUMMARY_LENGTH:I

.field public static final TAG_SUMMARY_VALUE:I = 0x1a

.field public static final TAG_SYSTEM_PROPERTY:[C

.field public static final TAG_SYSTEM_PROPERTY_LENGTH:I

.field public static final TAG_SYSTEM_PROPERTY_VALUE:I = 0x15

.field public static final TAG_THROWS:[C

.field public static final TAG_THROWS_LENGTH:I

.field public static final TAG_THROWS_VALUE:I = 0x4

.field public static final TAG_TYPE_BLOCK:S = 0x2s

.field public static final TAG_TYPE_INLINE:S = 0x1s

.field public static final TAG_TYPE_NONE:S = 0x0s

.field public static final TAG_USES:[C

.field public static final TAG_USES_LENGTH:I

.field public static final TAG_USES_VALUE:I = 0x16

.field public static final TAG_VALUE:[C

.field public static final TAG_VALUE_LENGTH:I

.field public static final TAG_VALUE_VALUE:I = 0xa

.field public static final TAG_VERSION:[C

.field public static final TAG_VERSION_LENGTH:I

.field public static final TAG_VERSION_VALUE:I = 0x11

.field public static final THROWS_TAG_EXPECTED_ORDER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 178

    const-string v0, "deprecated"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object/from16 v96, v0

    move-object/from16 v73, v0

    move-object/from16 v54, v0

    move-object/from16 v33, v0

    move-object v2, v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DEPRECATED:[C

    const-string v1, "param"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object/from16 v74, v1

    move-object/from16 v37, v1

    move-object v3, v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PARAM:[C

    const-string v4, "return"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v75, v12

    move-object v4, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_RETURN:[C

    const-string v5, "throws"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    move-object/from16 v76, v15

    move-object v5, v15

    sput-object v15, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_THROWS:[C

    const-string v6, "exception"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    move-object/from16 v77, v14

    move-object v6, v14

    sput-object v14, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_EXCEPTION:[C

    const-string v7, "see"

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    move-object/from16 v94, v13

    move-object/from16 v71, v13

    move-object/from16 v52, v13

    move-object/from16 v31, v13

    move-object/from16 v115, v13

    move-object v7, v13

    sput-object v13, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SEE:[C

    const-string v8, "link"

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    move-object/from16 v101, v11

    move-object/from16 v80, v11

    move-object/from16 v58, v11

    move-object/from16 v39, v11

    move-object/from16 v121, v11

    move-object v8, v11

    sput-object v11, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINK:[C

    const-string v9, "linkplain"

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move-object/from16 v102, v10

    move-object/from16 v81, v10

    move-object/from16 v59, v10

    move-object/from16 v40, v10

    move-object/from16 v122, v10

    move-object v9, v10

    sput-object v10, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINKPLAIN:[C

    const-string v16, "inheritDoc"

    move-object/from16 v132, v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move-object/from16 v82, v2

    move-object/from16 v133, v3

    move-object v3, v10

    move-object v10, v2

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INHERITDOC:[C

    const-string v16, "value"

    move-object/from16 v134, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object/from16 v104, v4

    move-object/from16 v84, v4

    move-object/from16 v61, v4

    move-object/from16 v42, v4

    move-object/from16 v124, v4

    move-object/from16 v135, v5

    move-object v5, v11

    move-object v11, v4

    sput-object v4, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VALUE:[C

    const-string v16, "author"

    move-object/from16 v136, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move-object/from16 v98, v6

    move-object/from16 v35, v6

    move-object/from16 v118, v6

    move-object/from16 v137, v7

    move-object v13, v6

    sput-object v6, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_AUTHOR:[C

    const-string v16, "code"

    move-object/from16 v138, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move-object/from16 v105, v8

    move-object/from16 v85, v8

    move-object/from16 v62, v8

    move-object/from16 v43, v8

    move-object/from16 v19, v8

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CODE:[C

    const-string v16, "docRoot"

    move-object/from16 v139, v9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    move-object/from16 v103, v9

    move-object/from16 v83, v9

    move-object/from16 v60, v9

    move-object/from16 v41, v9

    move-object/from16 v123, v9

    move-object/from16 v21, v9

    sput-object v9, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DOC_ROOT:[C

    const-string v16, "literal"

    move-object/from16 v140, v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move-object/from16 v106, v10

    move-object/from16 v86, v10

    move-object/from16 v63, v10

    move-object/from16 v44, v10

    move-object/from16 v20, v10

    sput-object v10, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LITERAL:[C

    const-string v16, "serial"

    move-object/from16 v141, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    move-object/from16 v97, v11

    move-object/from16 v55, v11

    move-object/from16 v34, v11

    move-object/from16 v117, v11

    move-object/from16 v142, v13

    move-object v13, v14

    move-object v14, v11

    sput-object v11, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL:[C

    const-string v16, "serialData"

    move-object/from16 v143, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    move-object/from16 v78, v14

    move-object/from16 v144, v9

    move-object v9, v15

    move-object v15, v14

    sput-object v14, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_DATA:[C

    const-string v16, "serialField"

    move-object/from16 v145, v15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    move-object/from16 v56, v15

    move-object/from16 v16, v15

    sput-object v15, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_FIELD:[C

    const-string v17, "since"

    move-object/from16 v146, v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move-object/from16 v95, v10

    move-object/from16 v72, v10

    move-object/from16 v53, v10

    move-object/from16 v32, v10

    move-object/from16 v116, v10

    move-object/from16 v17, v10

    sput-object v10, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SINCE:[C

    const-string v18, "version"

    move-object/from16 v147, v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move-object/from16 v99, v8

    move-object/from16 v36, v8

    move-object/from16 v119, v8

    move-object/from16 v18, v8

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VERSION:[C

    const-string v22, "category"

    move-object/from16 v148, v8

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move-object/from16 v100, v8

    move-object/from16 v79, v8

    move-object/from16 v57, v8

    move-object/from16 v38, v8

    move-object/from16 v120, v8

    move-object/from16 v149, v10

    move-object v10, v12

    move-object v12, v8

    sput-object v8, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CATEGORY:[C

    const-string v22, "systemProperty"

    move-object/from16 v150, v12

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v87, v12

    move-object/from16 v64, v12

    move-object/from16 v45, v12

    move-object/from16 v125, v12

    move-object/from16 v22, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SYSTEM_PROPERTY:[C

    const-string v23, "uses"

    move-object/from16 v151, v12

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v107, v12

    move-object/from16 v23, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_USES:[C

    const-string v24, "provides"

    move-object/from16 v152, v12

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v108, v12

    move-object/from16 v24, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PROVIDES:[C

    const-string v25, "hidden"

    move-object/from16 v153, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v109, v12

    move-object/from16 v88, v12

    move-object/from16 v66, v12

    move-object/from16 v46, v12

    move-object/from16 v126, v12

    move-object/from16 v25, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_HIDDEN:[C

    const-string v26, "index"

    move-object/from16 v154, v12

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v110, v12

    move-object/from16 v89, v12

    move-object/from16 v65, v12

    move-object/from16 v47, v12

    move-object/from16 v127, v12

    move-object/from16 v26, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INDEX:[C

    const-string v27, "summary"

    move-object/from16 v155, v12

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v111, v12

    move-object/from16 v90, v12

    move-object/from16 v67, v12

    move-object/from16 v48, v12

    move-object/from16 v128, v12

    move-object/from16 v27, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SUMMARY:[C

    const-string v28, "apiNote"

    move-object/from16 v156, v12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v112, v12

    move-object/from16 v91, v12

    move-object/from16 v68, v12

    move-object/from16 v49, v12

    move-object/from16 v129, v12

    move-object/from16 v28, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_API_NOTE:[C

    const-string v29, "implSpec"

    move-object/from16 v157, v12

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v113, v12

    move-object/from16 v92, v12

    move-object/from16 v69, v12

    move-object/from16 v50, v12

    move-object/from16 v130, v12

    move-object/from16 v29, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_SPEC:[C

    const-string v30, "implNote"

    move-object/from16 v158, v12

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    move-object/from16 v114, v12

    move-object/from16 v93, v12

    move-object/from16 v70, v12

    move-object/from16 v51, v12

    move-object/from16 v131, v12

    move-object/from16 v30, v12

    sput-object v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_NOTE:[C

    move-object/from16 v159, v12

    array-length v12, v0

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DEPRECATED_LENGTH:I

    array-length v12, v1

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PARAM_LENGTH:I

    array-length v12, v10

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_RETURN_LENGTH:I

    array-length v12, v9

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_THROWS_LENGTH:I

    array-length v12, v13

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_EXCEPTION_LENGTH:I

    array-length v12, v7

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SEE_LENGTH:I

    array-length v12, v5

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINK_LENGTH:I

    array-length v12, v3

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LINKPLAIN_LENGTH:I

    array-length v12, v2

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INHERITDOC_LENGTH:I

    array-length v12, v4

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VALUE_LENGTH:I

    array-length v12, v8

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CATEGORY_LENGTH:I

    array-length v12, v6

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_AUTHOR_LENGTH:I

    array-length v12, v11

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_LENGTH:I

    array-length v12, v14

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_DATA_LENGTH:I

    array-length v12, v15

    sput v12, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SERIAL_FIELD_LENGTH:I

    move-object/from16 v12, v149

    move-object/from16 v149, v1

    array-length v1, v12

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SINCE_LENGTH:I

    move-object/from16 v1, v148

    move-object/from16 v148, v2

    array-length v2, v1

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_VERSION_LENGTH:I

    move-object/from16 v2, v147

    move-object/from16 v147, v1

    array-length v1, v2

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_CODE_LENGTH:I

    move-object/from16 v1, v146

    move-object/from16 v146, v2

    array-length v2, v1

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_LITERAL_LENGTH:I

    move-object/from16 v2, v144

    move-object/from16 v144, v1

    array-length v1, v2

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_DOC_ROOT_LENGTH:I

    move-object/from16 v1, v151

    move-object/from16 v151, v2

    array-length v2, v1

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SYSTEM_PROPERTY_LENGTH:I

    move-object/from16 v2, v152

    move-object/from16 v152, v1

    array-length v1, v2

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_USES_LENGTH:I

    move-object/from16 v1, v153

    move-object/from16 v153, v2

    array-length v2, v1

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_PROVIDES_LENGTH:I

    move-object/from16 v2, v154

    move-object/from16 v154, v1

    array-length v1, v2

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_HIDDEN_LENGTH:I

    move-object/from16 v1, v155

    move-object/from16 v155, v2

    array-length v2, v1

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_INDEX_LENGTH:I

    move-object/from16 v2, v156

    move-object/from16 v156, v1

    array-length v1, v2

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_SUMMARY_LENGTH:I

    move-object/from16 v1, v157

    move-object/from16 v157, v2

    array-length v2, v1

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_API_NOTE_LENGTH:I

    move-object/from16 v2, v158

    move-object/from16 v158, v1

    array-length v1, v2

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_SPEC_LENGTH:I

    move-object/from16 v1, v159

    move-object/from16 v159, v2

    array-length v2, v1

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_IMPL_NOTE_LENGTH:I

    sget-object v2, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR:[C

    move-object/from16 v160, v1

    move-object/from16 v176, v147

    move-object/from16 v147, v144

    move-object/from16 v144, v149

    move-object/from16 v149, v176

    move-object v1, v2

    move-object/from16 v162, v3

    move-object/from16 v164, v4

    move-object/from16 v161, v9

    move-object/from16 v167, v11

    move-object/from16 v168, v14

    move-object/from16 v169, v15

    move-object/from16 v2, v132

    move-object/from16 v3, v133

    move-object/from16 v4, v134

    move-object/from16 v9, v139

    move-object/from16 v11, v141

    move-object/from16 v14, v143

    move-object/from16 v15, v145

    move-object/from16 v165, v146

    move-object/from16 v166, v147

    move-object/from16 v163, v148

    move-object/from16 v139, v149

    move-object/from16 v141, v152

    move-object/from16 v170, v153

    move-object/from16 v171, v154

    move-object/from16 v172, v155

    move-object/from16 v143, v157

    move-object/from16 v173, v158

    move-object/from16 v174, v159

    move-object/from16 v175, v160

    move-object/from16 v134, v7

    move-object/from16 v132, v10

    move-object/from16 v133, v13

    move-object/from16 v10, v140

    move-object/from16 v13, v142

    move-object/from16 v137, v151

    move-object/from16 v142, v156

    move-object/from16 v140, v8

    move-object/from16 v8, v138

    move-object/from16 v138, v12

    move-object/from16 v12, v150

    move-object/from16 v176, v135

    move-object/from16 v135, v5

    move-object/from16 v5, v176

    move-object/from16 v177, v136

    move-object/from16 v136, v6

    move-object/from16 v6, v177

    filled-new-array/range {v1 .. v30}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->TAG_NAMES:[[C

    const/4 v9, 0x4

    new-array v1, v9, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->HREF_TAG:[C

    move-object/from16 v1, v136

    move-object v2, v0

    move-object/from16 v3, v133

    move-object/from16 v4, v144

    move-object/from16 v5, v132

    move-object/from16 v6, v134

    move-object/from16 v7, v139

    move-object/from16 v8, v140

    filled-new-array/range {v1 .. v8}, [[C

    move-result-object v10

    filled-new-array/range {v138 .. v138}, [[C

    move-result-object v11

    move-object/from16 v0, v161

    move-object/from16 v1, v167

    move-object/from16 v2, v168

    move-object/from16 v3, v169

    filled-new-array {v1, v2, v3, v0}, [[C

    move-result-object v12

    const/4 v0, 0x0

    new-array v13, v0, [[C

    new-array v14, v0, [[C

    new-array v15, v0, [[C

    new-array v1, v0, [[C

    new-array v2, v0, [[C

    move-object/from16 v3, v173

    move-object/from16 v4, v174

    move-object/from16 v5, v175

    filled-new-array {v3, v4, v5}, [[C

    move-result-object v18

    move-object/from16 v3, v170

    move-object/from16 v4, v171

    move-object/from16 v5, v172

    filled-new-array {v5, v3, v4}, [[C

    move-result-object v19

    new-array v3, v0, [[C

    new-array v4, v0, [[C

    new-array v5, v0, [[C

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    filled-new-array/range {v10 .. v22}, [[[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->BLOCK_TAGS:[[[C

    new-array v10, v0, [[C

    new-array v11, v0, [[C

    filled-new-array/range {v135 .. v135}, [[C

    move-result-object v12

    filled-new-array/range {v137 .. v137}, [[C

    move-result-object v13

    move-object/from16 v2, v162

    move-object/from16 v3, v163

    move-object/from16 v4, v164

    filled-new-array {v3, v2, v4}, [[C

    move-result-object v14

    move-object/from16 v2, v165

    move-object/from16 v3, v166

    filled-new-array {v2, v3}, [[C

    move-result-object v15

    new-array v2, v0, [[C

    new-array v3, v0, [[C

    new-array v4, v0, [[C

    filled-new-array/range {v142 .. v142}, [[C

    move-result-object v19

    filled-new-array/range {v143 .. v143}, [[C

    move-result-object v20

    new-array v5, v0, [[C

    filled-new-array/range {v141 .. v141}, [[C

    move-result-object v22

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    filled-new-array/range {v10 .. v22}, [[[C

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->INLINE_TAGS:[[[C

    array-length v2, v2

    sput v2, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->INLINE_TAGS_LENGTH:I

    array-length v1, v1

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->BLOCK_TAGS_LENGTH:I

    add-int/2addr v1, v2

    sput v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->ALL_TAGS_LENGTH:I

    const/16 v1, 0x1e

    new-array v1, v1, [S

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput-short v3, v1, v2

    aput-short v3, v1, v3

    const/4 v4, 0x3

    aput-short v3, v1, v4

    aput-short v3, v1, v9

    const/4 v4, 0x5

    aput-short v3, v1, v4

    const/4 v4, 0x6

    aput-short v3, v1, v4

    const/4 v4, 0x7

    aput-short v2, v1, v4

    const/16 v4, 0x8

    aput-short v2, v1, v4

    const/16 v4, 0x9

    aput-short v2, v1, v4

    const/16 v4, 0xa

    aput-short v2, v1, v4

    const/16 v4, 0xb

    aput-short v3, v1, v4

    const/16 v4, 0xc

    aput-short v3, v1, v4

    const/16 v4, 0xd

    aput-short v3, v1, v4

    const/16 v4, 0xe

    aput-short v3, v1, v4

    const/16 v4, 0xf

    aput-short v3, v1, v4

    const/16 v4, 0x10

    aput-short v3, v1, v4

    const/16 v4, 0x11

    aput-short v3, v1, v4

    const/16 v4, 0x12

    aput-short v2, v1, v4

    const/16 v4, 0x13

    aput-short v2, v1, v4

    const/16 v4, 0x14

    aput-short v2, v1, v4

    const/16 v4, 0x15

    aput-short v2, v1, v4

    const/16 v4, 0x16

    aput-short v3, v1, v4

    const/16 v4, 0x17

    aput-short v3, v1, v4

    const/16 v4, 0x18

    aput-short v3, v1, v4

    const/16 v4, 0x19

    aput-short v2, v1, v4

    const/16 v4, 0x1a

    aput-short v2, v1, v4

    const/16 v2, 0x1b

    aput-short v3, v1, v2

    const/16 v2, 0x1c

    aput-short v3, v1, v2

    const/16 v2, 0x1d

    aput-short v3, v1, v2

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->JAVADOC_TAG_TYPE:[S

    filled-new-array/range {v115 .. v131}, [[C

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->PACKAGE_TAGS:[[C

    new-array v0, v0, [[C

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->COMPILATION_UNIT_TAGS:[[C

    filled-new-array/range {v31 .. v51}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->CLASS_TAGS:[[C

    filled-new-array/range {v52 .. v70}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->FIELD_TAGS:[[C

    filled-new-array/range {v71 .. v93}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->METHOD_TAGS:[[C

    filled-new-array/range {v94 .. v114}, [[C

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/parser/JavadocTagConstants;->MODULE_TAGS:[[C

    return-void

    nop

    :array_0
    .array-data 2
        0x68s
        0x72s
        0x65s
        0x66s
    .end array-data
.end method
