.class public final LB6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/blacksquircle/ui/language/base/styler/LanguageStyler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB6/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGLSLStyler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLSLStyler.kt\ncom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/GLSL/GLSLStyler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1807#2,3:143\n*S KotlinDebug\n*F\n+ 1 GLSLStyler.kt\ncom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/GLSL/GLSLStyler\n*L\n58#1:143,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nGLSLStyler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GLSLStyler.kt\ncom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/GLSL/GLSLStyler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1807#2,3:143\n*S KotlinDebug\n*F\n+ 1 GLSLStyler.kt\ncom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/GLSL/GLSLStyler\n*L\n58#1:143,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:LB6/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:Lag/v;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 39

    new-instance v0, LB6/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB6/d$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LB6/d;->a:LB6/d$a;

    const-string v34, "mediump"

    const-string v35, "lowp"

    const-string v2, "void"

    const-string v3, "bool"

    const-string v4, "int"

    const-string v5, "float"

    const-string v6, "vec2"

    const-string v7, "vec3"

    const-string v8, "vec4"

    const-string v9, "mat2"

    const-string v10, "mat3"

    const-string v11, "mat4"

    const-string v12, "sampler2D"

    const-string v13, "samplerCube"

    const-string v14, "in"

    const-string v15, "out"

    const-string v16, "inout"

    const-string v17, "uniform"

    const-string v18, "varying"

    const-string v19, "attribute"

    const-string v20, "layout"

    const-string v21, "const"

    const-string v22, "break"

    const-string v23, "continue"

    const-string v24, "do"

    const-string v25, "for"

    const-string v26, "while"

    const-string v27, "if"

    const-string v28, "else"

    const-string v29, "return"

    const-string v30, "struct"

    const-string v31, "discard"

    const-string v32, "precision"

    const-string v33, "highp"

    filled-new-array/range {v2 .. v35}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpf/z0;->u([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LB6/d;->b:Ljava/util/Set;

    const-string v37, "texture2D"

    const-string v38, "textureCube"

    const-string v1, "radians"

    const-string v2, "degrees"

    const-string v3, "sin"

    const-string v4, "cos"

    const-string v5, "tan"

    const-string v6, "asin"

    const-string v7, "acos"

    const-string v8, "atan"

    const-string v9, "pow"

    const-string v10, "exp"

    const-string v11, "log"

    const-string v12, "exp2"

    const-string v13, "log2"

    const-string v14, "sqrt"

    const-string v15, "inversesqrt"

    const-string v16, "abs"

    const-string v17, "sign"

    const-string v18, "floor"

    const-string v19, "ceil"

    const-string v20, "fract"

    const-string v21, "mod"

    const-string v22, "min"

    const-string v23, "max"

    const-string v24, "clamp"

    const-string v25, "mix"

    const-string v26, "step"

    const-string v27, "smoothstep"

    const-string v28, "length"

    const-string v29, "distance"

    const-string v30, "dot"

    const-string v31, "cross"

    const-string v32, "normalize"

    const-string v33, "faceforward"

    const-string v34, "reflect"

    const-string v35, "refract"

    const-string v36, "texture"

    filled-new-array/range {v1 .. v38}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpf/z0;->u([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LB6/d;->c:Ljava/util/Set;

    new-instance v0, Lag/v;

    const-string v1, "#\\s*\\w+"

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->d:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "//.*"

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->e:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "/\\*.*?\\*/"

    sget-object v2, Lag/x;->DOT_MATCHES_ALL:Lag/x;

    invoke-direct {v0, v1, v2}, Lag/v;-><init>(Ljava/lang/String;Lag/x;)V

    sput-object v0, LB6/d;->f:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "\"([^\"\\\\]|\\\\.)*\""

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->g:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "\'([^\'\\\\]|\\\\.)*\'"

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->h:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "\\b\\d+(\\.\\d+)?\\b"

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->i:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "\\b[a-zA-Z_][a-zA-Z0-9_]*\\b"

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->j:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "[+\\-*/%=<>!&|^~]+"

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->k:Lag/v;

    new-instance v0, Lag/v;

    const-string v1, "\\bvoid\\s+([a-zA-Z_][a-zA0-9_]*)\\s*\\("

    invoke-direct {v0, v1}, Lag/v;-><init>(Ljava/lang/String;)V

    sput-object v0, LB6/d;->l:Lag/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/List;Ljava/util/List;Lag/r;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;",
            "Ljava/util/List<",
            "LVf/l;",
            ">;",
            "Lag/r;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v9, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move v2, p3

    invoke-direct/range {v1 .. v8}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {p2}, Lag/r;->getRange()LVf/l;

    move-result-object p3

    invoke-virtual {p3}, LVf/j;->c()I

    move-result p3

    invoke-interface {p2}, Lag/r;->getRange()LVf/l;

    move-result-object v1

    invoke-virtual {v1}, LVf/j;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v9, p3, v1}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Lag/r;->getRange()LVf/l;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final b(Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LVf/l;",
            ">;I)Z"
        }
    .end annotation

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVf/l;

    invoke-virtual {v0}, LVf/j;->c()I

    move-result v2

    invoke-virtual {v0}, LVf/j;->d()I

    move-result v0

    if-gt p1, v0, :cond_1

    if-gt v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/blacksquircle/ui/language/base/model/ColorScheme;)Ljava/util/List;
    .locals 21
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/blacksquircle/ui/language/base/model/ColorScheme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/blacksquircle/ui/language/base/model/ColorScheme;",
            ")",
            "Ljava/util/List<",
            "Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "source"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheme"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v5, LB6/d;->l:Lag/v;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lag/r;

    invoke-interface {v9}, Lag/r;->c()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v5, LB6/d;->f:Lag/v;

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lag/r;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getCommentColor()I

    move-result v11

    invoke-static {v1, v3, v9, v11}, LB6/d;->a(Ljava/util/List;Ljava/util/List;Lag/r;I)V

    goto :goto_1

    :cond_1
    sget-object v5, LB6/d;->e:Lag/v;

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lag/r;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getCommentColor()I

    move-result v11

    invoke-static {v1, v3, v9, v11}, LB6/d;->a(Ljava/util/List;Ljava/util/List;Lag/r;I)V

    goto :goto_2

    :cond_2
    sget-object v5, LB6/d;->g:Lag/v;

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lag/r;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getStringColor()I

    move-result v11

    invoke-static {v1, v3, v9, v11}, LB6/d;->a(Ljava/util/List;Ljava/util/List;Lag/r;I)V

    goto :goto_3

    :cond_3
    sget-object v5, LB6/d;->h:Lag/v;

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lag/r;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getStringColor()I

    move-result v11

    invoke-static {v1, v3, v9, v11}, LB6/d;->a(Ljava/util/List;Ljava/util/List;Lag/r;I)V

    goto :goto_4

    :cond_4
    sget-object v5, LB6/d;->d:Lag/v;

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lag/r;

    invoke-interface {v9}, Lag/r;->getRange()LVf/l;

    move-result-object v11

    invoke-virtual {v11}, LVf/j;->c()I

    move-result v11

    invoke-static {v3, v11}, LB6/d;->b(Ljava/util/List;I)Z

    move-result v11

    if-nez v11, :cond_5

    new-instance v11, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v15, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getKeywordColor()I

    move-result v13

    const/16 v18, 0x1e

    const/16 v19, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v12, v15

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-direct/range {v12 .. v19}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v9}, Lag/r;->getRange()LVf/l;

    move-result-object v12

    invoke-virtual {v12}, LVf/j;->c()I

    move-result v12

    invoke-interface {v9}, Lag/r;->getRange()LVf/l;

    move-result-object v9

    invoke-virtual {v9}, LVf/j;->d()I

    move-result v9

    add-int/2addr v9, v10

    invoke-direct {v11, v6, v12, v9}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    sget-object v5, LB6/d;->i:Lag/v;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lag/r;

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v9

    invoke-virtual {v9}, LVf/j;->c()I

    move-result v9

    invoke-static {v3, v9}, LB6/d;->b(Ljava/util/List;I)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v15, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getNumberColor()I

    move-result v12

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v11, v15

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v19

    invoke-direct/range {v11 .. v18}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v11

    invoke-virtual {v11}, LVf/j;->c()I

    move-result v11

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v6

    invoke-virtual {v6}, LVf/j;->d()I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v9, v7, v11, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    goto :goto_6

    :cond_8
    sget-object v5, LB6/d;->k:Lag/v;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lag/r;

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v7

    invoke-virtual {v7}, LVf/j;->c()I

    move-result v7

    invoke-static {v3, v7}, LB6/d;->b(Ljava/util/List;I)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v9, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getOperatorColor()I

    move-result v12

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v11

    invoke-virtual {v11}, LVf/j;->c()I

    move-result v11

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v6

    invoke-virtual {v6}, LVf/j;->d()I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v7, v9, v11, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    sget-object v5, LB6/d;->j:Lag/v;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v5, v0, v6, v7, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v5

    invoke-interface {v5}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lag/r;

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v7

    invoke-virtual {v7}, LVf/j;->c()I

    move-result v7

    invoke-static {v3, v7}, LB6/d;->b(Ljava/util/List;I)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-interface {v6}, Lag/r;->getValue()Ljava/lang/String;

    move-result-object v7

    sget-object v9, LB6/d;->b:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    new-instance v7, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v9, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getKeywordColor()I

    move-result v12

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v11

    invoke-virtual {v11}, LVf/j;->c()I

    move-result v11

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v6

    invoke-virtual {v6}, LVf/j;->d()I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v7, v9, v11, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    sget-object v9, LB6/d;->c:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v7, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v9, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getMethodColor()I

    move-result v12

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v11

    invoke-virtual {v11}, LVf/j;->c()I

    move-result v11

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v6

    invoke-virtual {v6}, LVf/j;->d()I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v7, v9, v11, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_d
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v7, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v9, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getMethodColor()I

    move-result v12

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v9

    invoke-direct/range {v11 .. v18}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v11

    invoke-virtual {v11}, LVf/j;->c()I

    move-result v11

    invoke-interface {v6}, Lag/r;->getRange()LVf/l;

    move-result-object v6

    invoke-virtual {v6}, LVf/j;->d()I

    move-result v6

    add-int/2addr v6, v10

    invoke-direct {v7, v9, v11, v6}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_e
    new-instance v3, Lag/v;

    const-string v5, "[\\[\\]]"

    invoke-direct {v3, v5}, Lag/v;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v0, v5, v6, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v3

    invoke-interface {v3}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lag/r;

    new-instance v6, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v7, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getGutterDividerColor()I

    move-result v12

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v7

    invoke-direct/range {v11 .. v18}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v5}, Lag/r;->getRange()LVf/l;

    move-result-object v9

    invoke-virtual {v9}, LVf/j;->c()I

    move-result v9

    invoke-interface {v5}, Lag/r;->getRange()LVf/l;

    move-result-object v5

    invoke-virtual {v5}, LVf/j;->d()I

    move-result v5

    add-int/2addr v5, v10

    invoke-direct {v6, v7, v9, v5}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    new-instance v3, Lag/v;

    const-string v5, "\\b([a-zA-Z_][a-zA-Z0-9_]*)\\s*\\("

    invoke-direct {v3, v5}, Lag/v;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v0, v5, v6, v8}, Lag/v;->g(Lag/v;Ljava/lang/CharSequence;IILjava/lang/Object;)LXf/m;

    move-result-object v0

    invoke-interface {v0}, LXf/m;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lag/r;

    invoke-interface {v3}, Lag/r;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    sget-object v6, LB6/d;->c:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_11
    new-instance v5, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;

    new-instance v6, Lorg/blacksquircle/ui/language/base/span/StyleSpan;

    invoke-virtual/range {p2 .. p2}, Lorg/blacksquircle/ui/language/base/model/ColorScheme;->getMethodColor()I

    move-result v12

    const/16 v17, 0x1e

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v6

    invoke-direct/range {v11 .. v18}, Lorg/blacksquircle/ui/language/base/span/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/x;)V

    invoke-interface {v3}, Lag/r;->getRange()LVf/l;

    move-result-object v7

    invoke-virtual {v7}, LVf/j;->c()I

    move-result v7

    invoke-interface {v3}, Lag/r;->getRange()LVf/l;

    move-result-object v3

    invoke-virtual {v3}, LVf/j;->d()I

    move-result v3

    add-int/2addr v3, v10

    invoke-direct {v5, v6, v7, v3}, Lorg/blacksquircle/ui/language/base/span/SyntaxHighlightSpan;-><init>(Lorg/blacksquircle/ui/language/base/span/StyleSpan;II)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    return-object v1
.end method
