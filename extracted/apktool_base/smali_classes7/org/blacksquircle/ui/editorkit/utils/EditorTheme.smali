.class public final Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_STUDIO:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DARCULA:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LADIES_NIGHT:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MONOKAI:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OBSIDIAN:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TOMORROW_NIGHT:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VISUAL_STUDIO_2013:Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 99

    new-instance v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;

    invoke-direct {v0}, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;-><init>()V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->INSTANCE:Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object v1, v0

    const-string v30, "#ABB7C5"

    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#1f1f1f"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#2e2e2e"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v31, "#555555"

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v32, "#A4A3A3"

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v33, "#616366"

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v34, "#3A3A3A"

    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "#28427F"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "#987DAC"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v35, "#33654B"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v36, "#6897BB"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#E8E2B7"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v37, "#EC7600"

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    const-string v18, "#C9C54E"

    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v19, "#9378A7"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v20, "#FEC76C"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v21, "#6E875A"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v22, "#66747B"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v38, "#E2C077"

    invoke-static/range {v38 .. v38}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v38 .. v38}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const-string v25, "#BABABA"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    const-string v26, "#ABC16D"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    const-string v39, "#ff0000"

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    const-string v40, "#f1c40f"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    invoke-direct/range {v1 .. v29}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->ANDROID_STUDIO:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object/from16 v41, v0

    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    const-string v1, "#303030"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v43

    const-string v1, "#313335"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v33 .. v33}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    invoke-static/range {v34 .. v34}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    const-string v1, "#28427F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    const-string v1, "#987DAC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v51

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v53

    const-string v1, "#E8E2B7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v55

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v56

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    const-string v1, "#C9C54E"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    const-string v1, "#9378A7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v59

    const-string v1, "#FEC76C"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v60

    const-string v1, "#6E875A"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v61

    const-string v1, "#66747B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v62

    invoke-static/range {v38 .. v38}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    invoke-static/range {v38 .. v38}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    const-string v1, "#BABABA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v65

    const-string v1, "#ABC16D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v66

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v68

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    invoke-direct/range {v41 .. v69}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->DARCULA:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object v1, v0

    const-string v2, "#F8F8F8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#272823"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v4, "#272823"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "#5B5A4F"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#C8BBAC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    const-string v7, "#5B5A4F"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v8, "#34352D"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const-string v9, "#666666"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const-string v10, "#7CE0F3"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    const-string v11, "#5F5E5A"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    const-string v12, "#5F5E5A"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    const-string v13, "#BB8FF8"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    const-string v14, "#F8F8F2"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const-string v24, "#EB347E"

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const-string v16, "#7FD0E4"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v18

    const-string v19, "#7FD0E4"

    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v19

    const-string v20, "#B6E951"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v21, "#EBE48C"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    const-string v22, "#89826D"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    const-string v23, "#F8F8F8"

    invoke-static/range {v23 .. v23}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    const-string v25, "#B6E951"

    invoke-static/range {v25 .. v25}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    const-string v26, "#EBE48C"

    invoke-static/range {v26 .. v26}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    const-string v27, "#BB8FF8"

    invoke-static/range {v27 .. v27}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v29

    invoke-direct/range {v1 .. v29}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->MONOKAI:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object/from16 v41, v0

    const-string v1, "#E0E2E4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    const-string v2, "#2A3134"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v43

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    const-string v3, "#67777B"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    const-string v3, "#E0E0E0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    const-string v3, "#859599"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    const-string v3, "#31393C"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    const-string v3, "#616161"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    const-string v4, "#9EC56F"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    const-string v5, "#838177"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v51

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    const-string v5, "#F8CE4E"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v53

    const-string v5, "#E7E2BC"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v55

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v56

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    const-string v6, "#9B84B9"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    const-string v6, "#6E8BAE"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v59

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v60

    const-string v6, "#DE7C2E"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v61

    const-string v6, "#808C92"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v62

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v65

    const-string v4, "#DE7C2E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v66

    const-string v4, "#F8CE4E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v68

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    invoke-direct/range {v41 .. v69}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->OBSIDIAN:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object/from16 v70, v0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v71

    const-string v4, "#22282C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v72

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v73

    const-string v2, "#4F575A"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v74

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v75

    const-string v2, "#859599"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v76

    const-string v2, "#373340"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v77

    const-string v2, "#5B2B41"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    const-string v2, "#6E8BAE"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v79

    const-string v2, "#8A4364"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v80

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v81

    const-string v2, "#7EFBFD"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v82

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    const-string v2, "#DA89A2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v84

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v85

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v86

    const-string v4, "#9B84B9"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v87

    const-string v4, "#6EA4C7"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v88

    const-string v4, "#8FB4C5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v89

    const-string v4, "#75D367"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v90

    const-string v4, "#808C92"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v91

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v93

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v94

    const-string v1, "#75D367"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v95

    const-string v1, "#7EFBFD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v96

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v98

    invoke-direct/range {v70 .. v98}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->LADIES_NIGHT:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object/from16 v41, v0

    const-string v1, "#C6C8C6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    const-string v2, "#222426"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v43

    const-string v2, "#222426"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v44

    const-string v2, "#4B4D51"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v45

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v46

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v47

    const-string v2, "#2D2F33"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v48

    const-string v2, "#383B40"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v49

    const-string v2, "#EAC780"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v50

    const-string v2, "#4B4E54"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v51

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v52

    const-string v2, "#D49668"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v53

    const-string v2, "#CFD1CF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v54

    const-string v4, "#AD95B8"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v55

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v56

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    const-string v5, "#EAC780"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v59

    const-string v5, "#87A1BB"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v60

    const-string v5, "#B7BC73"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v61

    const-string v5, "#969896"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v62

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v65

    const-string v2, "#B7BC73"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v66

    const-string v2, "#D49668"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v67

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v68

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    invoke-direct/range {v41 .. v69}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->TOMORROW_NIGHT:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    move-object/from16 v70, v0

    const-string v2, "#C8C8C8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v71

    const-string v2, "#232323"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v72

    const-string v2, "#2C2C2C"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v73

    invoke-static/range {v31 .. v31}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v74

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v75

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v76

    const-string v1, "#141414"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v77

    const-string v1, "#454464"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    const-string v1, "#4F98F7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v79

    const-string v1, "#1C3D6B"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v80

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v81

    const-string v1, "#BACDAB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v82

    const-string v1, "#DCDCDC"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    const-string v1, "#669BD1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v84

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v85

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v86

    const-string v2, "#C49594"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v87

    const-string v2, "#9DDDFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v88

    const-string v2, "#71C6B1"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v89

    const-string v2, "#CE9F89"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v90

    const-string v2, "#6BA455"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v91

    const-string v2, "#DCDCDC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v93

    const-string v1, "#C8C8C8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v94

    const-string v1, "#CE9F89"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v95

    const-string v1, "#BACDAB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v96

    invoke-static/range {v39 .. v39}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v98

    invoke-direct/range {v70 .. v98}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;-><init>(IIIIIIIIIIIIIIIIIIIIIIIIIIII)V

    sput-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->VISUAL_STUDIO_2013:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getANDROID_STUDIO$annotations()V
    .locals 0
    .annotation runtime LF6/c;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getANDROID_STUDIO()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->ANDROID_STUDIO:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method

.method public final getDARCULA()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->DARCULA:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method

.method public final getLADIES_NIGHT()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->LADIES_NIGHT:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method

.method public final getMONOKAI()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->MONOKAI:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method

.method public final getOBSIDIAN()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->OBSIDIAN:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method

.method public final getTOMORROW_NIGHT()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->TOMORROW_NIGHT:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method

.method public final getVISUAL_STUDIO_2013()Lorg/blacksquircle/ui/language/base/model/ColorScheme;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/editorkit/utils/EditorTheme;->VISUAL_STUDIO_2013:Lorg/blacksquircle/ui/language/base/model/ColorScheme;

    return-object v0
.end method
