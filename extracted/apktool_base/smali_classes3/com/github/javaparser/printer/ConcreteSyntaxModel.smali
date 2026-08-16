.class public Lcom/github/javaparser/printer/ConcreteSyntaxModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final concreteSyntaxModelByClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation
.end field

.field private static initializationError:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 65

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->concreteSyntaxModelByClass:Ljava/util/Map;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v6, 0x27

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    sget-object v9, Lcom/github/javaparser/ast/observer/ObservableProperty;->NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/16 v12, 0x67

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->MEMBERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    move-object/from16 v18, v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    move-object/from16 v19, v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {v4, v12, v6, v9, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/16 v9, 0x68

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/16 v9, 0xe

    move-object/from16 v20, v4

    new-array v4, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    const/16 v21, 0x0

    aput-object v1, v4, v21

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    const/4 v3, 0x3

    aput-object v5, v4, v3

    const/4 v5, 0x4

    aput-object v7, v4, v5

    const/4 v7, 0x5

    aput-object v8, v4, v7

    const/4 v8, 0x6

    aput-object v10, v4, v8

    const/4 v10, 0x7

    aput-object v11, v4, v10

    const/16 v11, 0x8

    aput-object v13, v4, v11

    const/16 v13, 0x9

    aput-object v14, v4, v13

    const/16 v14, 0xa

    aput-object v15, v4, v14

    const/16 v15, 0xb

    aput-object v0, v4, v15

    const/16 v0, 0xc

    aput-object v6, v4, v0

    const/16 v6, 0xd

    aput-object v12, v4, v6

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const-class v12, Lcom/github/javaparser/ast/body/AnnotationDeclaration;

    move-object/from16 v9, v19

    invoke-interface {v9, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v19

    sget-object v23, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v24

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v25

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v26

    const/16 v27, 0x65

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v28

    const/16 v29, 0x66

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v30

    sget-object v6, Lcom/github/javaparser/ast/observer/ObservableProperty;->DEFAULT_VALUE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    sget-object v15, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_PRESENT:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v31

    const/16 v32, 0x16

    invoke-static/range {v32 .. v32}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v33

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v34

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v35

    new-array v0, v5, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v31, v0, v21

    aput-object v33, v0, v1

    aput-object v34, v0, v2

    aput-object v35, v0, v3

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {v6, v15, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    new-array v13, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v13, v21

    aput-object v12, v13, v1

    aput-object v19, v13, v2

    aput-object v24, v13, v3

    aput-object v25, v13, v5

    aput-object v26, v13, v7

    aput-object v28, v13, v8

    aput-object v30, v13, v10

    aput-object v0, v13, v11

    const/16 v0, 0x9

    aput-object v6, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/body/AnnotationMemberDeclaration;

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v12, Lcom/github/javaparser/ast/observer/ObservableProperty;->INTERFACE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    sget-object v13, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->FLAG:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    const/16 v17, 0x27

    invoke-static/range {v17 .. v17}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v17, 0x13

    invoke-static/range {v17 .. v17}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v12, v13, v14, v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    sget-object v10, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v26

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v28

    new-array v8, v2, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v26, v8, v21

    aput-object v28, v8, v1

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v26, 0x72

    invoke-static/range {v26 .. v26}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/16 v33, 0x96

    invoke-static/range {v33 .. v33}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v10, v8, v7, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->EXTENDED_TYPES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v8, 0x6c

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v35

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v36

    new-array v8, v2, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v35, v8, v21

    aput-object v36, v8, v1

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v35

    const/16 v36, 0x1b

    invoke-static/range {v36 .. v36}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v39

    new-array v2, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v35, v2, v21

    aput-object v38, v2, v1

    const/4 v3, 0x2

    aput-object v39, v2, v3

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {v7, v8, v2, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    sget-object v2, Lcom/github/javaparser/ast/observer/ObservableProperty;->IMPLEMENTED_TYPES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v7, 0x6c

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    move-object/from16 v39, v15

    new-array v15, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v15, v21

    const/4 v8, 0x1

    aput-object v7, v15, v8

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    const/16 v41, 0x23

    invoke-static/range {v41 .. v41}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v40

    move-object/from16 v43, v13

    const/4 v3, 0x3

    new-array v13, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v15, v13, v21

    aput-object v38, v13, v8

    const/4 v3, 0x2

    aput-object v40, v13, v3

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {v2, v7, v13, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    sget-object v15, Lcom/github/javaparser/ast/observer/ObservableProperty;->PERMITTED_TYPES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v37, 0x6c

    invoke-static/range {v37 .. v37}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v40

    move-object/from16 v42, v2

    new-array v2, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v38, v2, v21

    aput-object v40, v2, v8

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    const/16 v40, 0x2e

    invoke-static/range {v40 .. v40}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v40

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v44

    move-object/from16 v46, v10

    const/4 v3, 0x3

    new-array v10, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v38, v10, v21

    aput-object v40, v10, v8

    const/4 v3, 0x2

    aput-object v44, v10, v3

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v15, v2, v10, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v44, v9

    new-array v9, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v10, v9, v21

    const/4 v10, 0x1

    aput-object v15, v9, v10

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    move-object/from16 v45, v2

    move-object/from16 v2, v20

    invoke-static {v2, v9, v15, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    new-array v10, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v10, v21

    const/4 v8, 0x1

    aput-object v9, v10, v8

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->block(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0xc

    new-array v15, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    aput-object v4, v15, v8

    aput-object v6, v15, v3

    const/4 v0, 0x3

    aput-object v11, v15, v0

    const/4 v0, 0x4

    aput-object v12, v15, v0

    const/4 v0, 0x5

    aput-object v14, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v1, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v13, v15, v0

    const/16 v0, 0xa

    aput-object v45, v15, v0

    const/16 v0, 0xb

    aput-object v9, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-object/from16 v3, v44

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeParameters()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    sget-object v8, Lcom/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v11, 0x2

    new-array v12, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v12, v21

    const/4 v9, 0x1

    aput-object v10, v12, v9

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v8, v10, v12, v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    sget-object v13, Lcom/github/javaparser/ast/observer/ObservableProperty;->THROWN_EXCEPTIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    new-array v2, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v14, v2, v21

    aput-object v15, v2, v9

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v15, 0x3d

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v40

    const/4 v15, 0x3

    new-array v11, v15, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v14, v11, v21

    aput-object v38, v11, v9

    const/4 v14, 0x2

    aput-object v40, v11, v14

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {v13, v2, v11, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    sget-object v15, Lcom/github/javaparser/ast/observer/ObservableProperty;->BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v45

    move-object/from16 v47, v15

    const/16 v14, 0xb

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    aput-object v1, v15, v9

    const/4 v0, 0x2

    aput-object v4, v15, v0

    const/4 v0, 0x3

    aput-object v5, v15, v0

    const/4 v0, 0x4

    aput-object v6, v15, v0

    const/4 v0, 0x5

    aput-object v7, v15, v0

    const/4 v0, 0x6

    aput-object v10, v15, v0

    const/4 v0, 0x7

    aput-object v12, v15, v0

    const/16 v0, 0x8

    aput-object v2, v15, v0

    const/16 v0, 0x9

    aput-object v11, v15, v0

    const/16 v0, 0xa

    aput-object v45, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0x32

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v11, 0x2

    new-array v12, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v12, v21

    const/4 v9, 0x1

    aput-object v10, v12, v9

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v8, v10, v12, v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v45, v8

    new-array v8, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v14, v8, v21

    aput-object v15, v8, v9

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static/range {v26 .. v26}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static/range {v33 .. v33}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v9, v46

    invoke-static {v9, v8, v14, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x6c

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    new-array v15, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v15, v21

    const/4 v9, 0x1

    aput-object v14, v15, v9

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static/range {v41 .. v41}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v37

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    move-object/from16 v46, v13

    const/4 v11, 0x3

    new-array v13, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v15, v13, v21

    aput-object v37, v13, v9

    const/4 v11, 0x2

    aput-object v38, v13, v11

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v9, v42

    invoke-static {v9, v14, v13, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v37

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v40

    new-array v9, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v37, v9, v21

    const/16 v37, 0x1

    aput-object v40, v9, v37

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    move-object/from16 v48, v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    move-object/from16 v49, v14

    move-object/from16 v14, v20

    invoke-static {v14, v9, v11, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v9, 0x2

    new-array v11, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v15, v11, v21

    aput-object v3, v11, v37

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->block(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v11, 0xd

    new-array v15, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    aput-object v1, v15, v37

    aput-object v2, v15, v9

    const/4 v0, 0x3

    aput-object v4, v15, v0

    const/4 v0, 0x4

    aput-object v5, v15, v0

    const/4 v0, 0x5

    aput-object v6, v15, v0

    const/4 v0, 0x6

    aput-object v7, v15, v0

    const/4 v0, 0x7

    aput-object v10, v15, v0

    const/16 v0, 0x8

    aput-object v12, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v13, v15, v0

    const/16 v0, 0xb

    aput-object v49, v15, v0

    const/16 v0, 0xc

    aput-object v3, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/RecordDeclaration;

    move-object/from16 v2, v48

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeParameters()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v9, v21

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x3d

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v12, 0x3

    new-array v13, v12, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v13, v21

    aput-object v11, v13, v6

    aput-object v10, v13, v8

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    move-object/from16 v11, v46

    invoke-static {v11, v7, v9, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/16 v12, 0x8

    new-array v13, v12, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    aput-object v1, v13, v6

    aput-object v3, v13, v8

    const/4 v0, 0x3

    aput-object v4, v13, v0

    const/4 v0, 0x4

    aput-object v5, v13, v0

    const/4 v0, 0x5

    aput-object v7, v13, v0

    const/4 v0, 0x6

    aput-object v9, v13, v0

    const/4 v0, 0x7

    aput-object v10, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/CompactConstructorDeclaration;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v8, v21

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    sget-object v6, Lcom/github/javaparser/ast/observer/ObservableProperty;->CLASS_BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    sget-object v7, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_NOT_EMPTY:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x67

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v20, v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    move-object/from16 v37, v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v6, v15, v4, v11, v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/16 v14, 0x68

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    move-object/from16 v49, v5

    const/16 v2, 0x9

    new-array v5, v2, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v5, v21

    const/4 v2, 0x1

    aput-object v10, v5, v2

    const/4 v2, 0x2

    aput-object v9, v5, v2

    const/4 v2, 0x3

    aput-object v12, v5, v2

    const/4 v2, 0x4

    aput-object v13, v5, v2

    const/4 v2, 0x5

    aput-object v4, v5, v2

    const/4 v4, 0x6

    aput-object v11, v5, v4

    const/4 v4, 0x7

    aput-object v15, v5, v4

    const/16 v4, 0x8

    aput-object v14, v5, v4

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    new-array v5, v2, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v5, v21

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v49, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/EnumConstantDeclaration;

    move-object/from16 v2, v48

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v11, v21

    const/4 v8, 0x1

    aput-object v9, v11, v8

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static/range {v41 .. v41}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v14, 0x3

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v11, v15, v21

    aput-object v12, v15, v8

    aput-object v13, v15, v10

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    move-object/from16 v11, v42

    invoke-static {v11, v9, v8, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x67

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    sget-object v14, Lcom/github/javaparser/ast/observer/ObservableProperty;->ENTRIES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v41

    move-object/from16 v42, v13

    const/4 v2, 0x2

    new-array v13, v2, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v15, v13, v21

    const/4 v2, 0x1

    aput-object v41, v13, v2

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {v14, v2, v13, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    sget-object v13, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->IS_EMPTY:Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {v14, v7, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v41

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v49

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v50

    move-object/from16 v51, v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    move-object/from16 v52, v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    move-object/from16 v53, v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    move-object/from16 v54, v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    move-object/from16 v55, v10

    move-object/from16 v10, v37

    invoke-static {v10, v14, v7, v2, v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v7, 0x4

    new-array v12, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v41, v12, v21

    const/4 v7, 0x1

    aput-object v49, v12, v7

    const/4 v14, 0x2

    aput-object v50, v12, v14

    const/16 v35, 0x3

    aput-object v2, v12, v35

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {v10, v13, v15, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/16 v12, 0x68

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/16 v12, 0x10

    new-array v15, v12, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    aput-object v1, v15, v7

    aput-object v3, v15, v14

    aput-object v4, v15, v35

    const/4 v0, 0x4

    aput-object v5, v15, v0

    const/4 v0, 0x5

    aput-object v6, v15, v0

    const/4 v0, 0x6

    aput-object v8, v15, v0

    const/4 v0, 0x7

    aput-object v9, v15, v0

    const/16 v0, 0x8

    aput-object v11, v15, v0

    const/16 v0, 0x9

    aput-object v55, v15, v0

    const/16 v0, 0xa

    aput-object v54, v15, v0

    const/16 v0, 0xb

    aput-object v42, v15, v0

    const/16 v0, 0xc

    aput-object v53, v15, v0

    const/16 v0, 0xd

    aput-object v2, v15, v0

    const/16 v0, 0xe

    aput-object v10, v15, v0

    const/16 v0, 0xf

    aput-object v13, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/EnumDeclaration;

    move-object/from16 v2, v48

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v6, v21

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-static {v6}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->mix([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v6, Lcom/github/javaparser/ast/observer/ObservableProperty;->VARIABLES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->MAXIMUM_COMMON_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    move-object/from16 v9, v52

    invoke-static {v6, v9, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    new-array v14, v5, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v11, v14, v21

    aput-object v13, v14, v3

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v14, 0x7

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    aput-object v1, v15, v3

    aput-object v4, v15, v5

    const/4 v0, 0x3

    aput-object v8, v15, v0

    const/4 v0, 0x4

    aput-object v10, v15, v0

    const/4 v0, 0x5

    aput-object v11, v15, v0

    const/4 v0, 0x6

    aput-object v13, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/FieldDeclaration;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->STATIC:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v3, 0x36

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v8, 0x2

    new-array v10, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v10, v21

    const/4 v4, 0x1

    aput-object v5, v10, v4

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    move-object/from16 v10, v43

    invoke-static {v1, v10, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v13, 0x3

    new-array v14, v13, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v14, v21

    aput-object v5, v14, v4

    aput-object v11, v14, v8

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v5, Lcom/github/javaparser/ast/body/InitializerDeclaration;

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    new-array v14, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v11, v14, v21

    aput-object v13, v14, v4

    invoke-static {v14}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->mix([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeParameters()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->RECEIVER_PARAMETER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v41

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v42

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v43

    move-object/from16 v49, v1

    const/4 v12, 0x3

    new-array v1, v12, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v41, v1, v21

    const/4 v12, 0x1

    aput-object v42, v1, v12

    const/4 v12, 0x2

    aput-object v43, v1, v12

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    move-object/from16 v12, v39

    invoke-static {v3, v12, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v39

    move-object/from16 v41, v6

    move-object/from16 v42, v7

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v7, v21

    const/4 v3, 0x1

    aput-object v39, v7, v3

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    move-object/from16 v9, v45

    invoke-static {v9, v7, v3, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v39

    move-object/from16 v43, v10

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v10, v21

    const/4 v7, 0x1

    aput-object v39, v10, v7

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    const/16 v39, 0x3d

    invoke-static/range {v39 .. v39}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v39

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v40

    move-object/from16 v50, v2

    const/4 v9, 0x3

    new-array v2, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v38, v2, v21

    aput-object v39, v2, v7

    const/4 v9, 0x2

    aput-object v40, v2, v9

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    move-object/from16 v9, v46

    invoke-static {v9, v10, v2, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    move-object/from16 v39, v2

    const/4 v10, 0x2

    new-array v2, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v2, v21

    const/4 v7, 0x1

    aput-object v9, v2, v7

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    move-object/from16 v10, v47

    invoke-static {v10, v12, v2, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v9, 0xd

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    aput-object v5, v10, v7

    const/4 v0, 0x2

    aput-object v4, v10, v0

    const/4 v0, 0x3

    aput-object v8, v10, v0

    const/4 v0, 0x4

    aput-object v11, v10, v0

    const/4 v0, 0x5

    aput-object v13, v10, v0

    const/4 v0, 0x6

    aput-object v14, v10, v0

    const/4 v0, 0x7

    aput-object v15, v10, v0

    const/16 v0, 0x8

    aput-object v1, v10, v0

    const/16 v0, 0x9

    aput-object v3, v10, v0

    const/16 v0, 0xa

    aput-object v6, v10, v0

    const/16 v0, 0xb

    aput-object v39, v10, v0

    const/16 v0, 0xc

    aput-object v2, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/MethodDeclaration;

    move-object/from16 v2, v50

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->onlineAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v5, v21

    const/4 v1, 0x1

    aput-object v3, v5, v1

    invoke-static {v5}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->mix([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->VAR_ARGS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->VAR_ARGS_ANNOTATIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v6, 0x6e

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v8, v21

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    move-object/from16 v8, v43

    invoke-static {v4, v8, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x6

    new-array v11, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v11, v21

    aput-object v1, v11, v5

    aput-object v3, v11, v7

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v6, v11, v0

    const/4 v0, 0x5

    aput-object v9, v11, v0

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v3, Lcom/github/javaparser/ast/body/Parameter;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->onlineAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    new-array v7, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v7, v21

    const/4 v0, 0x1

    aput-object v3, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/ReceiverParameter;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v5, 0x71

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x4

    new-array v11, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v11, v21

    const/4 v4, 0x1

    aput-object v6, v11, v4

    const/4 v6, 0x2

    aput-object v7, v11, v6

    const/4 v7, 0x3

    aput-object v9, v11, v7

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v3, v12, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    new-array v10, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    aput-object v1, v10, v4

    aput-object v9, v10, v6

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v4, 0x69

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->INDEX:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/16 v9, 0x6a

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v11, 0x5

    new-array v13, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v6, v13, v0

    const/4 v0, 0x3

    aput-object v7, v13, v0

    const/4 v0, 0x4

    aput-object v10, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/ArrayAccessExpr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    sget-object v10, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELEMENT_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    sget-object v11, Lcom/github/javaparser/ast/observer/ObservableProperty;->LEVELS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/4 v15, 0x2

    new-array v9, v15, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v13, v9, v21

    const/4 v13, 0x1

    aput-object v14, v9, v13

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v3, v12, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v9, 0x6

    new-array v14, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v14, v21

    aput-object v6, v14, v13

    aput-object v7, v14, v15

    const/4 v0, 0x3

    aput-object v10, v14, v0

    const/4 v0, 0x4

    aput-object v11, v14, v0

    const/4 v0, 0x5

    aput-object v3, v14, v0

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/expr/ArrayCreationExpr;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v3, 0x67

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->VALUES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x2

    new-array v11, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v11, v21

    const/4 v7, 0x1

    aput-object v9, v11, v7

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v3, v9, v10, v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x68

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v10, 0x5

    new-array v13, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    aput-object v6, v13, v7

    const/4 v0, 0x2

    aput-object v3, v13, v0

    const/4 v0, 0x3

    aput-object v9, v13, v0

    const/4 v0, 0x4

    aput-object v11, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->TARGET:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    sget-object v11, Lcom/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v14, 0x6

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    const/4 v0, 0x1

    aput-object v3, v15, v0

    const/4 v0, 0x2

    aput-object v6, v15, v0

    const/4 v0, 0x3

    aput-object v9, v15, v0

    const/4 v0, 0x4

    aput-object v10, v15, v0

    const/4 v0, 0x5

    aput-object v13, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/expr/AssignExpr;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->LEFT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    sget-object v13, Lcom/github/javaparser/ast/observer/ObservableProperty;->RIGHT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v14, 0x6

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    const/4 v0, 0x1

    aput-object v3, v15, v0

    const/4 v0, 0x2

    aput-object v6, v15, v0

    const/4 v3, 0x3

    aput-object v9, v15, v3

    const/4 v3, 0x4

    aput-object v10, v15, v3

    const/4 v3, 0x5

    aput-object v13, v15, v3

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v6, Lcom/github/javaparser/ast/expr/BinaryExpr;

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    new-array v9, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v9, v21

    const/4 v0, 0x1

    aput-object v6, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    sget-object v13, Lcom/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/4 v15, 0x6

    new-array v4, v15, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v4, v21

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v6, v4, v0

    const/4 v3, 0x3

    aput-object v9, v4, v3

    const/4 v3, 0x4

    aput-object v10, v4, v3

    const/4 v3, 0x5

    aput-object v14, v4, v3

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/CastExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->charToken(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    new-array v6, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v6, v21

    const/4 v0, 0x1

    aput-object v4, v6, v0

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/CharLiteralExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v6, 0x6d

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v17 .. v17}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v14, 0x4

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v15, v21

    aput-object v4, v15, v0

    const/4 v0, 0x2

    aput-object v9, v15, v0

    const/4 v0, 0x3

    aput-object v10, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/expr/ClassExpr;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x75

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    sget-object v17, Lcom/github/javaparser/ast/observer/ObservableProperty;->THEN_EXPR:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v17 .. v17}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v17

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v44

    const/16 v46, 0x76

    invoke-static/range {v46 .. v46}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v50

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v53

    sget-object v54, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELSE_EXPR:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v54 .. v54}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v54

    const/16 v10, 0xa

    new-array v1, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v1, v21

    const/4 v0, 0x1

    aput-object v4, v1, v0

    const/4 v0, 0x2

    aput-object v9, v1, v0

    const/4 v0, 0x3

    aput-object v14, v1, v0

    const/4 v0, 0x4

    aput-object v15, v1, v0

    const/4 v0, 0x5

    aput-object v17, v1, v0

    const/4 v0, 0x6

    aput-object v44, v1, v0

    const/4 v0, 0x7

    aput-object v50, v1, v0

    const/16 v0, 0x8

    aput-object v53, v1, v0

    const/16 v0, 0x9

    aput-object v54, v1, v0

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/ConditionalExpr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/4 v4, 0x2

    new-array v9, v4, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v9, v21

    const/4 v0, 0x1

    aput-object v1, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v4, Lcom/github/javaparser/ast/expr/DoubleLiteralExpr;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v9, Lcom/github/javaparser/ast/observer/ObservableProperty;->INNER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v14, 0x4

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v15, v21

    aput-object v4, v15, v0

    const/4 v0, 0x2

    aput-object v9, v15, v0

    const/4 v0, 0x3

    aput-object v10, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/EnclosedExpr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v14, 0x4

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    const/4 v0, 0x1

    aput-object v4, v15, v0

    const/4 v0, 0x2

    aput-object v9, v15, v0

    const/4 v0, 0x3

    aput-object v10, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/expr/FieldAccessExpr;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x25

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    const/4 v6, 0x6

    new-array v5, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v5, v21

    const/4 v0, 0x1

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object v9, v5, v0

    const/4 v4, 0x3

    aput-object v10, v5, v4

    const/4 v4, 0x4

    aput-object v14, v5, v4

    const/4 v4, 0x5

    aput-object v15, v5, v4

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const-class v5, Lcom/github/javaparser/ast/expr/InstanceOfExpr;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    new-array v6, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v6, v21

    const/4 v0, 0x1

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/expr/IntegerLiteralExpr;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->ENCLOSING_PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v4, v8, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x2

    new-array v14, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v14, v21

    const/4 v6, 0x1

    aput-object v9, v14, v6

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    move-object/from16 v9, v45

    invoke-static {v9, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x77

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    sget-object v10, Lcom/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION_BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-object/from16 v50, v3

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    move-object/from16 v53, v13

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v10, v12, v3, v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v10, 0x8

    new-array v13, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    const/4 v0, 0x1

    aput-object v5, v13, v0

    const/4 v0, 0x2

    aput-object v6, v13, v0

    const/4 v5, 0x3

    aput-object v4, v13, v5

    const/4 v4, 0x4

    aput-object v9, v13, v4

    const/4 v4, 0x5

    aput-object v14, v13, v4

    const/4 v4, 0x6

    aput-object v15, v13, v4

    const/4 v4, 0x7

    aput-object v3, v13, v4

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/LambdaExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    new-array v5, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v5, v21

    const/4 v0, 0x1

    aput-object v4, v5, v0

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/LongLiteralExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v6, 0x3

    new-array v9, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v9, v21

    aput-object v5, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/expr/MarkerAnnotationExpr;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v5, 0x71

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x6

    new-array v13, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    const/4 v0, 0x1

    aput-object v3, v13, v0

    const/4 v0, 0x2

    aput-object v4, v13, v0

    const/4 v3, 0x3

    aput-object v5, v13, v3

    const/4 v3, 0x4

    aput-object v6, v13, v3

    const/4 v3, 0x5

    aput-object v9, v13, v3

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/MemberValuePair;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v5, 0x6d

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    new-array v5, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v5, v21

    const/4 v4, 0x1

    aput-object v6, v5, v4

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v1, v12, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    new-array v15, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v13, v15, v21

    aput-object v14, v15, v4

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v0, v20

    invoke-static {v0, v13, v14, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    move-object/from16 v20, v8

    const/4 v15, 0x7

    new-array v8, v15, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v8, v21

    aput-object v5, v8, v4

    const/4 v3, 0x2

    aput-object v6, v8, v3

    const/4 v3, 0x3

    aput-object v9, v8, v3

    const/4 v3, 0x4

    aput-object v10, v8, v3

    const/4 v3, 0x5

    aput-object v13, v8, v3

    const/4 v3, 0x6

    aput-object v14, v8, v3

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/MethodCallExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v5, 0x70

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v8, Lcom/github/javaparser/ast/observer/ObservableProperty;->IDENTIFIER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x5

    new-array v13, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v13, v21

    const/4 v3, 0x1

    aput-object v4, v13, v3

    const/4 v3, 0x2

    aput-object v5, v13, v3

    const/4 v3, 0x3

    aput-object v6, v13, v3

    const/4 v3, 0x4

    aput-object v9, v13, v3

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/MethodReferenceExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->KEYWORD:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/Modifier;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->QUALIFIER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v6, 0x6d

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v6, 0x2

    new-array v10, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v10, v21

    const/4 v5, 0x1

    aput-object v9, v10, v5

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v12, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v13, 0x4

    new-array v14, v13, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v14, v21

    aput-object v4, v14, v5

    aput-object v9, v14, v6

    const/4 v3, 0x3

    aput-object v10, v14, v3

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const-class v9, Lcom/github/javaparser/ast/expr/Name;

    invoke-interface {v2, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    new-array v13, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v13, v21

    aput-object v9, v13, v5

    aput-object v10, v13, v6

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x6f

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v6, Lcom/github/javaparser/ast/observer/ObservableProperty;->PAIRS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    move-object/from16 v10, v52

    invoke-static {v6, v10, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    move-object/from16 v44, v7

    const/4 v15, 0x2

    new-array v7, v15, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v13, v7, v21

    const/4 v13, 0x1

    aput-object v14, v7, v13

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v6, v10, v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v14, 0x6

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v15, v21

    aput-object v5, v15, v13

    const/4 v3, 0x2

    aput-object v4, v15, v3

    const/4 v4, 0x3

    aput-object v9, v15, v4

    const/4 v4, 0x4

    aput-object v7, v15, v4

    const/4 v4, 0x5

    aput-object v6, v15, v4

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const-class v5, Lcom/github/javaparser/ast/expr/NormalAnnotationExpr;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    new-array v6, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v6, v21

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const-class v6, Lcom/github/javaparser/ast/expr/NullLiteralExpr;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/16 v7, 0x6d

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    new-array v7, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v7, v21

    aput-object v9, v7, v4

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v1, v12, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/16 v7, 0x2a

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    sget-object v13, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v52, v1

    new-array v1, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v14, v1, v21

    aput-object v15, v1, v4

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v26 .. v26}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v33 .. v33}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v13, v1, v3, v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v13, v10, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v54, v10

    move-object/from16 v56, v11

    const/4 v10, 0x2

    new-array v11, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v14, v11, v21

    const/4 v10, 0x1

    aput-object v15, v11, v10

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {v0, v10, v11, v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    sget-object v14, Lcom/github/javaparser/ast/observer/ObservableProperty;->ANONYMOUS_CLASS_BODY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    const/16 v16, 0x67

    invoke-static/range {v16 .. v16}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v57

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v58

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v59

    move-object/from16 v60, v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    move-object/from16 v61, v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    move-object/from16 v62, v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    move-object/from16 v63, v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v14, v0, v8, v2, v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v8, 0x68

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    move-object/from16 v64, v10

    const/4 v8, 0x7

    new-array v10, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v15, v10, v21

    const/4 v8, 0x1

    aput-object v57, v10, v8

    const/4 v15, 0x2

    aput-object v58, v10, v15

    const/16 v35, 0x3

    aput-object v59, v10, v35

    const/16 v34, 0x4

    aput-object v0, v10, v34

    const/4 v0, 0x5

    aput-object v2, v10, v0

    const/4 v2, 0x6

    aput-object v11, v10, v2

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {v14, v12, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/16 v11, 0xb

    new-array v14, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v14, v21

    aput-object v6, v14, v8

    aput-object v7, v14, v15

    aput-object v9, v14, v35

    aput-object v1, v14, v34

    aput-object v3, v14, v0

    aput-object v4, v14, v2

    const/4 v0, 0x7

    aput-object v13, v14, v0

    const/16 v0, 0x8

    aput-object v64, v14, v0

    const/16 v0, 0x9

    aput-object v63, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/ObjectCreationExpr;

    move-object/from16 v2, v62

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->PATTERN_LIST:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v9, v21

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {v5, v7, v9, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v9, 0x6

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    aput-object v1, v10, v6

    aput-object v3, v10, v8

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v7, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/RecordPatternExpr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-static/range {v61 .. v61}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->MEMBER_VALUE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x6

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v8, v21

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v5, v8, v1

    const/4 v1, 0x5

    aput-object v6, v8, v1

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v3, Lcom/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v56 .. v56}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->stringToken(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    new-array v4, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v4, v21

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_NAME:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v6, 0x6d

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    new-array v6, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v6, v21

    aput-object v7, v6, v1

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v4, v12, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v6, 0x38

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v9, v21

    aput-object v5, v9, v1

    aput-object v7, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v5, Lcom/github/javaparser/ast/expr/SuperExpr;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v56 .. v56}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->textBlockToken(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    new-array v7, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v7, v21

    aput-object v5, v7, v1

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/expr/TextBlockLiteralExpr;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v8, v21

    aput-object v3, v8, v1

    const/4 v0, 0x2

    aput-object v5, v8, v0

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v5, Lcom/github/javaparser/ast/expr/TypePatternExpr;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v7, 0x6d

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    new-array v7, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v7, v21

    aput-object v8, v7, v1

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v4, v12, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v5, 0x3b

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v9, v21

    aput-object v4, v9, v1

    aput-object v7, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/expr/ThisExpr;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    new-array v7, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v7, v21

    aput-object v4, v7, v1

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/TypeExpr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->PREFIX:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v44 .. v44}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-static {v0, v3, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v53 .. v53}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->POSTFIX:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v44 .. v44}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v4, v3, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v8, v21

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v4, v8, v0

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v4, Lcom/github/javaparser/ast/expr/UnaryExpr;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->onlineAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v42 .. v42}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    new-array v13, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v10, v13, v21

    const/4 v10, 0x1

    aput-object v11, v13, v10

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    move-object/from16 v13, v41

    invoke-static {v13, v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v13, 0x6

    new-array v14, v13, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v14, v21

    aput-object v4, v14, v10

    aput-object v7, v14, v0

    const/4 v0, 0x3

    aput-object v8, v14, v0

    const/4 v0, 0x4

    aput-object v9, v14, v0

    const/4 v0, 0x5

    aput-object v11, v14, v0

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->CHECK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    sget-object v8, Lcom/github/javaparser/ast/observer/ObservableProperty;->MESSAGE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v46 .. v46}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v14, 0x4

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v15, v21

    const/4 v9, 0x1

    aput-object v10, v15, v9

    const/4 v10, 0x2

    aput-object v11, v15, v10

    const/4 v11, 0x3

    aput-object v13, v15, v11

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v8, v12, v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v14, 0x6

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v15, v21

    aput-object v4, v15, v9

    aput-object v1, v15, v10

    aput-object v7, v15, v11

    const/4 v0, 0x4

    aput-object v8, v15, v0

    const/4 v0, 0x5

    aput-object v13, v15, v0

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/AssertStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v4, 0x67

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v8, Lcom/github/javaparser/ast/observer/ObservableProperty;->STATEMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v11, v15, v21

    const/4 v11, 0x1

    aput-object v13, v15, v11

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v8, v9, v10, v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/16 v13, 0x68

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    const/4 v13, 0x7

    new-array v6, v13, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v6, v21

    aput-object v1, v6, v11

    aput-object v7, v6, v14

    const/4 v0, 0x3

    aput-object v4, v6, v0

    const/4 v0, 0x4

    aput-object v9, v6, v0

    const/4 v0, 0x5

    aput-object v10, v6, v0

    const/4 v0, 0x6

    aput-object v15, v6, v0

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/BlockStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v10, v21

    const/4 v6, 0x1

    aput-object v7, v10, v6

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v1, v12, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v11, 0x4

    new-array v13, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    aput-object v4, v13, v6

    aput-object v7, v13, v9

    const/4 v0, 0x3

    aput-object v10, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/stmt/BreakStmt;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v6, 0x11

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    sget-object v10, Lcom/github/javaparser/ast/observer/ObservableProperty;->PARAMETER:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    const/16 v15, 0x9

    new-array v5, v15, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v5, v21

    const/4 v0, 0x1

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object v6, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v11, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/stmt/CatchClause;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v4, 0x15

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x2

    new-array v9, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v9, v21

    const/4 v5, 0x1

    aput-object v6, v9, v5

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v1, v12, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x4

    new-array v11, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v11, v21

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    const/4 v0, 0x3

    aput-object v9, v11, v0

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/stmt/ContinueStmt;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v4, 0x17

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/16 v9, 0x43

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static/range {v50 .. v50}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v41

    move-object/from16 v44, v8

    const/16 v9, 0xb

    new-array v8, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v8, v21

    const/4 v0, 0x1

    aput-object v4, v8, v0

    const/4 v0, 0x2

    aput-object v5, v8, v0

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v10, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v14, v8, v0

    const/16 v0, 0x9

    aput-object v15, v8, v0

    const/16 v0, 0xa

    aput-object v41, v8, v0

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/stmt/DoStmt;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v4, 0x6b

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v7, v21

    const/4 v0, 0x1

    aput-object v5, v7, v0

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const-class v7, Lcom/github/javaparser/ast/stmt/EmptyStmt;

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    new-array v7, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v7, v21

    aput-object v4, v7, v0

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const-class v5, Lcom/github/javaparser/ast/stmt/UnparsableStmt;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->THIS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/16 v8, 0x3b

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    new-array v9, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v9, v21

    aput-object v8, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v53 .. v53}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x6d

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    new-array v9, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v9, v21

    aput-object v10, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    move-object/from16 v9, v53

    invoke-static {v9, v12, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/16 v11, 0x38

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/4 v11, 0x3

    new-array v14, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v14, v21

    aput-object v10, v14, v0

    aput-object v13, v14, v6

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v5, v3, v7, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    new-array v11, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v11, v21

    aput-object v10, v11, v0

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    move-object/from16 v10, v60

    invoke-static {v10, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v13, 0x6

    new-array v14, v13, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v14, v21

    aput-object v5, v14, v0

    aput-object v7, v14, v6

    const/4 v0, 0x3

    aput-object v8, v14, v0

    const/4 v0, 0x4

    aput-object v10, v14, v0

    const/4 v4, 0x5

    aput-object v11, v14, v4

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const-class v5, Lcom/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsBeforeThis()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    new-array v8, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v8, v21

    const/4 v0, 0x1

    aput-object v5, v8, v0

    const/4 v0, 0x2

    aput-object v6, v8, v0

    const/4 v0, 0x3

    aput-object v7, v8, v0

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v4, Lcom/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v4, 0x20

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->VARIABLE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static/range {v46 .. v46}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    sget-object v13, Lcom/github/javaparser/ast/observer/ObservableProperty;->ITERABLE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v20

    move-object/from16 v41, v1

    const/16 v9, 0xc

    new-array v1, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v1, v21

    const/4 v0, 0x1

    aput-object v4, v1, v0

    const/4 v0, 0x2

    aput-object v5, v1, v0

    const/4 v0, 0x3

    aput-object v6, v1, v0

    const/4 v0, 0x4

    aput-object v7, v1, v0

    const/4 v0, 0x5

    aput-object v8, v1, v0

    const/4 v0, 0x6

    aput-object v10, v1, v0

    const/4 v0, 0x7

    aput-object v11, v1, v0

    const/16 v0, 0x8

    aput-object v13, v1, v0

    const/16 v0, 0x9

    aput-object v14, v1, v0

    const/16 v0, 0xa

    aput-object v15, v1, v0

    const/16 v0, 0xb

    aput-object v20, v1, v0

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/ForEachStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    sget-object v6, Lcom/github/javaparser/ast/observer/ObservableProperty;->INITIALIZATION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v10, v21

    const/4 v7, 0x1

    aput-object v8, v10, v7

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    sget-object v9, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMPARE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    sget-object v13, Lcom/github/javaparser/ast/observer/ObservableProperty;->UPDATE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v20, v3

    move-object/from16 v56, v12

    const/4 v3, 0x2

    new-array v12, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v14, v12, v21

    const/4 v14, 0x1

    aput-object v15, v12, v14

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v57

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v3, v21

    aput-object v1, v3, v14

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v7, v3, v0

    const/4 v0, 0x6

    aput-object v8, v3, v0

    const/4 v0, 0x7

    aput-object v9, v3, v0

    const/16 v0, 0x8

    aput-object v10, v3, v0

    const/16 v0, 0x9

    aput-object v11, v3, v0

    const/16 v0, 0xa

    aput-object v12, v3, v0

    const/16 v0, 0xb

    aput-object v13, v3, v0

    const/16 v0, 0xc

    aput-object v15, v3, v0

    const/16 v0, 0xd

    aput-object v57, v3, v0

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/ForStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v50 .. v50}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->THEN_BLOCK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    sget-object v9, Lcom/github/javaparser/ast/observer/ObservableProperty;->THEN_STMT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    sget-object v11, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    move-object/from16 v13, v56

    invoke-static {v11, v13, v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/4 v14, 0x3

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v15, v21

    const/4 v8, 0x1

    aput-object v10, v15, v8

    const/4 v10, 0x2

    aput-object v12, v15, v10

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {v11, v13, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v22

    const/4 v8, 0x5

    new-array v2, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v14, v2, v21

    const/4 v8, 0x1

    aput-object v15, v2, v8

    const/4 v8, 0x2

    aput-object v9, v2, v8

    const/4 v8, 0x3

    aput-object v10, v2, v8

    const/4 v8, 0x4

    aput-object v22, v2, v8

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    move-object/from16 v8, v20

    invoke-static {v7, v8, v12, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v7, 0x19

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    sget-object v9, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELSE_BLOCK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    sget-object v10, Lcom/github/javaparser/ast/observer/ObservableProperty;->CASCADING_IF_STMT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    filled-new-array {v9, v10}, [Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/4 v14, 0x2

    new-array v15, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v10, v15, v21

    const/4 v10, 0x1

    aput-object v12, v15, v10

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v20

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v22

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v38

    move-object/from16 v56, v2

    const/4 v14, 0x4

    new-array v2, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v15, v2, v21

    aput-object v20, v2, v10

    const/4 v14, 0x2

    aput-object v22, v2, v14

    const/4 v15, 0x3

    aput-object v38, v2, v15

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {v9, v8, v12, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    new-array v9, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v9, v21

    aput-object v2, v9, v10

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {v11, v13, v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v7, 0x8

    new-array v9, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v9, v21

    aput-object v1, v9, v10

    aput-object v3, v9, v14

    const/4 v0, 0x3

    aput-object v4, v9, v0

    const/4 v0, 0x4

    aput-object v5, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    const/4 v0, 0x6

    aput-object v56, v9, v0

    const/4 v0, 0x7

    aput-object v2, v9, v0

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/IfStmt;

    move-object/from16 v2, v62

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v41 .. v41}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v46 .. v46}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->STATEMENT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v6, 0x5

    new-array v7, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v7, v21

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v3, Lcom/github/javaparser/ast/stmt/LabeledStmt;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->CLASS_DECLARATION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    new-array v4, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v4, v21

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->RECORD_DECLARATION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    new-array v5, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v5, v21

    aput-object v4, v5, v1

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const-class v4, Lcom/github/javaparser/ast/stmt/LocalRecordDeclarationStmt;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x33

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v53 .. v53}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    new-array v7, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v7, v21

    aput-object v6, v7, v1

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    move-object/from16 v6, v53

    invoke-static {v6, v13, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v9, 0x4

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v10, v21

    aput-object v4, v10, v1

    aput-object v5, v10, v0

    const/4 v1, 0x3

    aput-object v7, v10, v1

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v3, Lcom/github/javaparser/ast/stmt/ReturnStmt;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    new-array v7, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v7, v21

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v6, v13, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v9, 0x4

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v10, v21

    aput-object v3, v10, v4

    aput-object v5, v10, v0

    const/4 v0, 0x3

    aput-object v7, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v3, Lcom/github/javaparser/ast/stmt/YieldStmt;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->SWITCH_STATEMENT_ENTRY:Lcom/github/javaparser/ast/observer/ObservableProperty;

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->LABELS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    new-array v10, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v10, v21

    const/4 v7, 0x1

    aput-object v5, v10, v7

    const/4 v5, 0x2

    aput-object v9, v10, v5

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v32 .. v32}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    move-object/from16 v11, v54

    invoke-static {v4, v11, v9, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static/range {v46 .. v46}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    new-array v14, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v14, v21

    aput-object v10, v14, v7

    aput-object v12, v14, v5

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->DEFAULT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v7, 0x10

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static/range {v32 .. v32}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    const/4 v6, 0x6

    new-array v2, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v2, v21

    const/4 v6, 0x1

    aput-object v7, v2, v6

    const/4 v6, 0x2

    aput-object v10, v2, v6

    const/4 v6, 0x3

    aput-object v12, v2, v6

    const/4 v6, 0x4

    aput-object v14, v2, v6

    const/4 v6, 0x5

    aput-object v15, v2, v6

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v6, 0x10

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    sget-object v10, Lcom/github/javaparser/ast/observer/ObservableProperty;->GUARD:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/16 v14, 0x4f

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v20

    move-object/from16 v41, v0

    move-object/from16 v22, v1

    const/4 v1, 0x4

    new-array v0, v1, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v12, v0, v21

    const/4 v12, 0x1

    aput-object v14, v0, v12

    const/4 v14, 0x2

    aput-object v15, v0, v14

    const/4 v15, 0x3

    aput-object v20, v0, v15

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {v10, v13, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    new-array v10, v1, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v10, v21

    aput-object v7, v10, v12

    aput-object v9, v10, v14

    aput-object v0, v10, v15

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {v5, v8, v2, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static/range {v32 .. v32}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {v4, v11, v0, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v2, 0x77

    invoke-static {v2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v5, 0x4

    new-array v6, v5, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v6, v21

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v4, v6, v0

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    move-object/from16 v1, v41

    invoke-static {v3, v8, v1, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    move-object/from16 v5, v44

    invoke-static {v5, v2, v3, v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v22, v5, v21

    const/4 v4, 0x1

    aput-object v0, v5, v4

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/SwitchEntry;

    move-object/from16 v2, v62

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->SELECTOR:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/16 v9, 0x67

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v20, v8

    move-object/from16 v8, v51

    invoke-static {v8, v12, v14, v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/16 v14, 0x68

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v15

    move-object/from16 v56, v13

    const/16 v14, 0xa

    new-array v13, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v3, v13, v0

    const/4 v0, 0x3

    aput-object v5, v13, v0

    const/4 v0, 0x4

    aput-object v6, v13, v0

    const/4 v0, 0x5

    aput-object v7, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    const/4 v0, 0x7

    aput-object v9, v13, v0

    const/16 v0, 0x8

    aput-object v12, v13, v0

    const/16 v0, 0x9

    aput-object v15, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/SwitchStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/16 v7, 0x67

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v8, v10, v12, v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v10, 0x68

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    const/16 v10, 0xa

    new-array v13, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v3, v13, v0

    const/4 v0, 0x3

    aput-object v4, v13, v0

    const/4 v0, 0x4

    aput-object v5, v13, v0

    const/4 v0, 0x5

    aput-object v6, v13, v0

    const/4 v0, 0x6

    aput-object v9, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v12, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/expr/SwitchExpr;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v53 .. v53}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x8

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v8, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/SynchronizedStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v53 .. v53}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v6, 0x5

    new-array v7, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v7, v21

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v5, v7, v0

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/ThrowStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->RESOURCES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v9, v21

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x4

    new-array v12, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v12, v21

    aput-object v7, v12, v6

    const/4 v5, 0x2

    aput-object v8, v12, v5

    const/4 v5, 0x3

    aput-object v9, v12, v5

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v4, v11, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->TRY_BLOCK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    sget-object v6, Lcom/github/javaparser/ast/observer/ObservableProperty;->CATCH_CLAUSES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    sget-object v7, Lcom/github/javaparser/ast/observer/ObservableProperty;->FINALLY_BLOCK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x1e

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/4 v12, 0x4

    new-array v13, v12, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v13, v21

    const/4 v8, 0x1

    aput-object v9, v13, v8

    const/4 v9, 0x2

    aput-object v10, v13, v9

    const/4 v10, 0x3

    aput-object v11, v13, v10

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    move-object/from16 v12, v56

    invoke-static {v7, v12, v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v11, 0x7

    new-array v13, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    aput-object v1, v13, v8

    aput-object v3, v13, v9

    aput-object v4, v13, v10

    const/4 v0, 0x4

    aput-object v5, v13, v0

    const/4 v0, 0x5

    aput-object v6, v13, v0

    const/4 v0, 0x6

    aput-object v7, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/TryStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v50 .. v50}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v29 .. v29}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v47 .. v47}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x8

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    const/4 v0, 0x6

    aput-object v7, v10, v0

    const/4 v0, 0x7

    aput-object v8, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/stmt/WhileStmt;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMPONENT_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x69

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v4, 0x6a

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v4, 0x4

    new-array v7, v4, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v7, v21

    const/4 v0, 0x1

    aput-object v3, v7, v0

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const/4 v4, 0x3

    aput-object v6, v7, v4

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const-class v5, Lcom/github/javaparser/ast/type/ArrayType;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v52 .. v52}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v6, 0x6d

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    new-array v6, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v6, v21

    aput-object v7, v6, v0

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    move-object/from16 v3, v52

    invoke-static {v3, v12, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v1, v3, v5, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    sget-object v6, Lcom/github/javaparser/ast/observer/ObservableProperty;->USING_DIAMOND_OPERATOR:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static/range {v26 .. v26}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static/range {v33 .. v33}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v7, v10, v21

    const/4 v7, 0x1

    aput-object v8, v10, v7

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->typeArguments()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    move-object/from16 v11, v20

    invoke-static {v6, v11, v8, v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v8, 0x5

    new-array v10, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v10, v21

    aput-object v0, v10, v7

    aput-object v3, v10, v9

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v6, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->ELEMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/16 v6, 0x84

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v8, 0x3

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v9, v21

    const/4 v5, 0x1

    aput-object v6, v9, v5

    const/4 v6, 0x2

    aput-object v7, v9, v6

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v9, v21

    aput-object v3, v9, v5

    aput-object v7, v9, v6

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v3, Lcom/github/javaparser/ast/type/IntersectionType;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v23 .. v23}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->attribute(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    new-array v7, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v7, v21

    aput-object v1, v7, v5

    aput-object v3, v7, v6

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/type/PrimitiveType;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_BOUND:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/16 v7, 0x84

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v10, v21

    const/4 v6, 0x1

    aput-object v7, v10, v6

    const/4 v7, 0x2

    aput-object v8, v10, v7

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static/range {v36 .. v36}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v14

    new-array v15, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v10, v15, v21

    aput-object v13, v15, v6

    aput-object v14, v15, v7

    invoke-static {v15}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    invoke-static {v5, v8, v10, v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v8, 0x4

    new-array v10, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    aput-object v1, v10, v6

    aput-object v3, v10, v7

    aput-object v5, v10, v9

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/type/TypeParameter;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v5, 0x85

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    new-array v7, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v7, v21

    const/4 v3, 0x1

    aput-object v5, v7, v3

    const/4 v5, 0x2

    aput-object v6, v7, v5

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    new-array v6, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v6, v21

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/type/UnionType;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/github/javaparser/ast/type/UnknownType;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v3, 0x41

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v5, v21

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/type/VoidType;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v3, 0x62

    const-string v4, "var"

    invoke-static {v3, v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->string(ILjava/lang/String;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v5, v21

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/type/VarType;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v3, 0x75

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->EXTENDED_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v36 .. v36}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x4

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v10, v21

    const/4 v5, 0x1

    aput-object v6, v10, v5

    const/4 v5, 0x2

    aput-object v7, v10, v5

    const/4 v5, 0x3

    aput-object v8, v10, v5

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {v4, v12, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->SUPER_TYPE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x4

    new-array v13, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v13, v21

    const/4 v6, 0x1

    aput-object v7, v13, v6

    const/4 v7, 0x2

    aput-object v8, v13, v7

    const/4 v8, 0x3

    aput-object v9, v13, v8

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v5, v12, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v9, 0x5

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    aput-object v1, v10, v6

    aput-object v3, v10, v7

    aput-object v4, v10, v8

    const/4 v0, 0x4

    aput-object v5, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v3, Lcom/github/javaparser/ast/type/WildcardType;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v3, 0x69

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->DIMENSION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v5, 0x6a

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    new-array v6, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v6, v21

    const/4 v0, 0x1

    aput-object v3, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/ArrayCreationLevel;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->PACKAGE_DECLARATION:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    sget-object v3, Lcom/github/javaparser/ast/observer/ObservableProperty;->IMPORTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v9, v21

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    sget-object v5, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODULE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x6

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v8, v21

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v4, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v6, v8, v0

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/CompilationUnit;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v4, 0x36

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v4, v7, v21

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    move-object/from16 v7, v49

    invoke-static {v7, v11, v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    sget-object v8, Lcom/github/javaparser/ast/observer/ObservableProperty;->ASTERISK:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v9, 0x6d

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x82

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    new-array v12, v6, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v9, v12, v21

    aput-object v10, v12, v4

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v8, v11, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/16 v12, 0x8

    new-array v13, v12, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v13, v21

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    const/4 v0, 0x3

    aput-object v5, v13, v0

    const/4 v0, 0x4

    aput-object v7, v13, v0

    const/4 v0, 0x5

    aput-object v8, v13, v0

    const/4 v0, 0x6

    aput-object v9, v13, v0

    const/4 v0, 0x7

    aput-object v10, v13, v0

    invoke-static {v13}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/ImportDeclaration;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comment()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->orphanCommentsEnding()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/16 v10, 0x9

    new-array v12, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v12, v21

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v3, v12, v0

    const/4 v0, 0x3

    aput-object v4, v12, v0

    const/4 v0, 0x4

    aput-object v5, v12, v0

    const/4 v0, 0x5

    aput-object v6, v12, v0

    const/4 v0, 0x6

    aput-object v7, v12, v0

    const/4 v0, 0x7

    aput-object v8, v12, v0

    const/16 v0, 0x8

    aput-object v9, v12, v0

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/PackageDeclaration;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/observer/ObservableProperty;->OPEN:Lcom/github/javaparser/ast/observer/ObservableProperty;

    const/16 v3, 0x48

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v3, v6, v21

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v1, v11, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->conditional(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const/16 v3, 0x4b

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/16 v7, 0x67

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->indent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    sget-object v10, Lcom/github/javaparser/ast/observer/ObservableProperty;->DIRECTIVES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->unindent()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v11

    const/16 v12, 0x68

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v12

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v13

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v14, v21

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v4, v14, v0

    const/4 v0, 0x4

    aput-object v5, v14, v0

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    aput-object v7, v14, v0

    const/4 v0, 0x7

    aput-object v8, v14, v0

    const/16 v0, 0x8

    aput-object v9, v14, v0

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v11, v14, v0

    const/16 v0, 0xb

    aput-object v12, v14, v0

    const/16 v0, 0xc

    aput-object v13, v14, v0

    invoke-static {v14}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4c

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODULE_NAMES:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v8, v21

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x46

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v12, v21

    aput-object v9, v12, v5

    aput-object v10, v12, v7

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v6, v8, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    const/4 v10, 0x6

    new-array v11, v10, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v11, v21

    aput-object v1, v11, v5

    aput-object v3, v11, v7

    const/4 v0, 0x3

    aput-object v6, v11, v0

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v9, v11, v0

    invoke-static {v11}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/modules/ModuleExportsDirective;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x49

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v8, v21

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x46

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v12, v21

    aput-object v9, v12, v5

    aput-object v10, v12, v7

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v6, v8, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x6

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    aput-object v1, v10, v5

    aput-object v3, v10, v7

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v6, v10, v0

    const/4 v0, 0x5

    aput-object v8, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/modules/ModuleOpensDirective;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4d

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    sget-object v4, Lcom/github/javaparser/ast/observer/ObservableProperty;->WITH:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v8, v21

    const/4 v5, 0x1

    aput-object v6, v8, v5

    invoke-static {v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/16 v9, 0x47

    invoke-static {v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v10

    const/4 v11, 0x3

    new-array v12, v11, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v8, v12, v21

    aput-object v9, v12, v5

    aput-object v10, v12, v7

    invoke-static {v12}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v9

    invoke-static {v4, v6, v8, v9}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v8

    const/4 v9, 0x6

    new-array v10, v9, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v10, v21

    aput-object v1, v10, v5

    aput-object v3, v10, v7

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v6, v10, v0

    const/4 v0, 0x5

    aput-object v8, v10, v0

    invoke-static {v10}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/modules/ModuleProvidesDirective;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x45

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v0, v7, v21

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v5, v7, v0

    const/4 v0, 0x5

    aput-object v6, v7, v0

    invoke-static {v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    const-class v3, Lcom/github/javaparser/ast/modules/ModuleRequiresDirective;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->child(Lcom/github/javaparser/ast/observer/ObservableProperty;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->semicolon()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    new-array v0, v0, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v1, v0, v21

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object v6, v0, v1

    invoke-static {v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    const-class v1, Lcom/github/javaparser/ast/modules/ModuleUsesDirective;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->getNodeMetaModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/a;

    invoke-direct {v1}, Lcom/github/javaparser/printer/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/b;

    invoke-direct {v1}, Lcom/github/javaparser/printer/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->initializationError:Ljava/util/Optional;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/github/javaparser/printer/ConcreteSyntaxModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should include support for these classes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->initializationError:Ljava/util/Optional;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->lambda$static$0(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Z

    move-result p0

    return p0
.end method

.method private static annotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 4

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->lambda$static$1(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->lambda$forClass$2(Ljava/lang/String;)V

    return-void
.end method

.method public static forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeClazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/github/javaparser/ast/Node;",
            ">;)",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->initializationError:Ljava/util/Optional;

    new-instance v1, Lcom/github/javaparser/printer/c;

    invoke-direct {v1}, Lcom/github/javaparser/printer/c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object v0, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->concreteSyntaxModelByClass:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static genericPrettyPrint(Lcom/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/printer/SourcePrinter;

    invoke-direct {v0}, Lcom/github/javaparser/printer/SourcePrinter;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    .line 4
    invoke-virtual {v0}, Lcom/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static genericPrettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->forClass(Ljava/lang/Class;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    return-void
.end method

.method private static synthetic lambda$forClass$2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$static$0(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/github/javaparser/printer/ConcreteSyntaxModel;->concreteSyntaxModelByClass:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$1(Lcom/github/javaparser/metamodel/BaseNodeMetaModel;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "nm"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/metamodel/BaseNodeMetaModel;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static memberAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 4

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->newline()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method private static varargs mix([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static modifiers()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 4

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->MODIFIERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method private static onlineAnnotations()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 4

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->ANNOTATIONS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->none()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method private static typeArguments()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 6

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v3, 0x72

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v3

    const/16 v5, 0x96

    invoke-static {v5}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v5

    new-array v1, v1, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v5, v1, v4

    invoke-static {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method

.method private static typeParameters()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 8

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->TYPE_PARAMETERS:Lcom/github/javaparser/ast/observer/ObservableProperty;

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->comma()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v2

    const/16 v4, 0x72

    invoke-static {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v4

    const/16 v6, 0x96

    invoke-static {v6}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->token(I)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v6

    invoke-static {}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->space()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v7

    new-array v3, v3, [Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    aput-object v6, v3, v5

    aput-object v7, v3, v1

    invoke-static {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->sequence([Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v1

    invoke-static {v0, v2, v4, v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->list(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    return-object v0
.end method
