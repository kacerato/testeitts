.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;
.super Lorg/eclipse/jdt/internal/compiler/ast/Expression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/ast/OperatorIds;


# static fields
.field public static OperatorSignatures:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [[I

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->classInitialize()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;-><init>()V

    return-void
.end method

.method public static final classInitialize()V
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x2

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_AND()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x0

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_AND_AND()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0x9

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_DIVIDE()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0x12

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_EQUAL_EQUAL()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x6

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_GREATER()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x7

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_GREATER_EQUAL()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0xa

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LEFT_SHIFT()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x4

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LESS()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x5

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LESS_EQUAL()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0xd

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_MINUS()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0xf

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_MULTIPLY()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x3

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_OR()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/4 v1, 0x1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_OR_OR()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0xe

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_PLUS()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0x10

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_REMAINDER()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0x11

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_RIGHT_SHIFT()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0x13

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_UNSIGNED_RIGHT_SHIFT()[I

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    const/16 v1, 0x8

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_XOR()[I

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public static final generateTableTestCase()Ljava/lang/String;
    .locals 18

    const/16 v0, 0x11

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v4, 0x9

    aput v4, v1, v3

    const/4 v5, 0x3

    const/4 v6, 0x6

    aput v6, v1, v5

    const/4 v7, 0x4

    const/4 v8, 0x7

    aput v8, v1, v7

    const/4 v9, 0x5

    const/16 v10, 0xa

    aput v10, v1, v9

    aput v7, v1, v6

    aput v9, v1, v8

    const/16 v6, 0x8

    const/16 v11, 0xd

    aput v11, v1, v6

    const/16 v12, 0xf

    aput v12, v1, v4

    aput v5, v1, v10

    const/16 v13, 0xb

    const/4 v14, 0x1

    aput v14, v1, v13

    const/16 v15, 0xc

    const/16 v16, 0xe

    aput v16, v1, v15

    const/16 v15, 0x10

    aput v15, v1, v11

    aput v0, v1, v16

    const/16 v11, 0x13

    aput v11, v1, v12

    aput v6, v1, v15

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;

    invoke-direct {v11}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "\tpublic static void binaryOperationTablesTestCase(){\n\t\t//TC test : all binary operation (described in tables)\n\t\t//method automatically generated by\n\t\t//org.eclipse.jdt.internal.compiler.ast.OperatorExpression.generateTableTestCase();\n\t\tString str0;\t String str\t= "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ";\n"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\t\tint i0;\t int i\t= "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\t\tboolean z0;\t boolean z\t= "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\t\tchar c0; \t char  c\t= "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\tfloat f0; \t float f\t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\tdouble d0;\t double d\t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\tbyte b0; \t byte b\t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\tshort s0; \t short s\t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\tlong l0; \t long l\t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\tObject obj0; \t Object obj\t= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\t\tSystem.out.println(\"binary tables test : done\");}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    aget v5, v1, v3

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v15, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v15, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sget-object v8, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->OperatorSignatures:[[I

    aget-object v8, v8, v5

    shl-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v7

    aget v8, v8, v9

    const/16 v9, 0xf

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t\t"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->type(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->type(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->operator(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->type(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb

    if-ne v8, v14, :cond_3

    const-string v17, "\t\tif (! "

    :goto_3
    move-object/from16 v0, v17

    goto :goto_4

    :cond_3
    const-string v17, "\t\tif ( "

    goto :goto_3

    :goto_4
    if-ne v8, v14, :cond_4

    const-string v17, ".equals("

    :goto_5
    move-object/from16 v9, v17

    goto :goto_6

    :cond_4
    const-string v17, " != ("

    goto :goto_5

    :goto_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->type(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->operator(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression$1Decode;->constant(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "))\n"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\t\t\tSystem.out.println("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ");\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/16 v0, 0x11

    goto/16 :goto_2
.end method

.method public static final get_AND()[I
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x33

    const v2, 0xa3a3a

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x73777

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xa3a4a

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xa3a2a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xa3aaa

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x77737

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x77777

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x77747

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x77727

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x777a7

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xa4a3a

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x74777

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xa4a4a

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xa4a2a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xa4aaa

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x55555

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xa2a3a

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x72777

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xa2a4a

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xa2a2a

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xa2aaa

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xaaa3a

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x7a777

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xaaa4a

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xaaa2a

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xaaaaa

    aput v2, v0, v1

    return-object v0
.end method

.method public static final get_AND_AND()[I
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x55

    const v2, 0x55555

    aput v2, v0, v1

    return-object v0
.end method

.method public static final get_DIVIDE()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_MINUS()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_EQUAL_EQUAL()[I
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x33

    const v2, 0xa3a35

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x73775

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xa3a45

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x83885

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x93995

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xa3a25

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xa3aa5

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x77735

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x77775

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x77745

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x87885

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x97995

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x77725

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x777a5

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xa4a35

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x74775

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xa4a45

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x84885

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x94995

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xa4a25

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xa4aa5

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x1b1b5

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x1b115

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0x1b1c5

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x111b5

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x11115

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x111c5

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x88835

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x88875

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x88845

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x88885

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x88895

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x88825

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x888a5

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x99935

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x99975

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x99945

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x89885

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x99995

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x99925

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x999a5

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x55555

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xa2a35

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x72775

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xa2a45

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x82885

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x92995

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xa2a25

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xa2aa5

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xaaa35

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x7a775

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xaaa45

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x8a885

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x9a995

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xaaa25

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xaaaa5

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x1c1b5

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0x1c115

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0x1c1c5

    aput v2, v0, v1

    return-object v0
.end method

.method public static final get_GREATER()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LESS()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_GREATER_EQUAL()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LESS()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_LEFT_SHIFT()[I
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x33

    const v2, 0xa3a3a

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0xa3a7a

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xa3a4a

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xa3a2a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xa3aaa

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x77a37

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x77a77

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x77a47

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x77a27

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x77aa7

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xa4a3a

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0xa4a7a

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xa4a4a

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xa4a2a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xa4aaa

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xa2a3a

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0xa2a7a

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xa2a4a

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xa2a2a

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xa2aaa

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xaaa3a

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xaaa7a

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xaaa4a

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xaaa2a

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xaaaaa

    aput v2, v0, v1

    return-object v0
.end method

.method public static final get_LESS()[I
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x33

    const v2, 0xa3a35

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x73775

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xa3a45

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x83885

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x93995

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xa3a25

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xa3aa5

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x77735

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x77775

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x77745

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x87885

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x97995

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x77725

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x777a5

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xa4a35

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x74775

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xa4a45

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x84885

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x94995

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xa4a25

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xa4aa5

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x88835

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x88875

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x88845

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x88885

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x88895

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x88825

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x888a5

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x99935

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x99975

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x99945

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x89885

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x99995

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x99925

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x999a5

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xa2a35

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x72775

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xa2a45

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x82885

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x92995

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xa2a25

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xa2aa5

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xaaa35

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x7a775

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xaaa45

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x8a885

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x9a995

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xaaa25

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xaaaa5

    aput v2, v0, v1

    return-object v0
.end method

.method public static final get_LESS_EQUAL()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LESS()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_MINUS()[I
    .locals 3

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_PLUS()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/16 v1, 0xb3

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0xb7

    aput v2, v0, v1

    const/16 v1, 0xb4

    aput v2, v0, v1

    const/16 v1, 0xb6

    aput v2, v0, v1

    const/16 v1, 0xbb

    aput v2, v0, v1

    const/16 v1, 0xb1

    aput v2, v0, v1

    const/16 v1, 0xb8

    aput v2, v0, v1

    const/16 v1, 0xb9

    aput v2, v0, v1

    const/16 v1, 0xb5

    aput v2, v0, v1

    const/16 v1, 0xb2

    aput v2, v0, v1

    const/16 v1, 0xba

    aput v2, v0, v1

    const/16 v1, 0xbc

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v2, v0, v1

    const/16 v1, 0x7b

    aput v2, v0, v1

    const/16 v1, 0x4b

    aput v2, v0, v1

    const/16 v1, 0x6b

    aput v2, v0, v1

    const/16 v1, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x8b

    aput v2, v0, v1

    const/16 v1, 0x9b

    aput v2, v0, v1

    const/16 v1, 0x5b

    aput v2, v0, v1

    const/16 v1, 0x2b

    aput v2, v0, v1

    const/16 v1, 0xab

    aput v2, v0, v1

    const/16 v1, 0xcb

    aput v2, v0, v1

    const/16 v1, 0xcc

    aput v2, v0, v1

    return-object v0
.end method

.method public static final get_MULTIPLY()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_MINUS()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_OR()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_AND()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_OR_OR()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_AND_AND()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_PLUS()[I
    .locals 3

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v1, 0x33

    const v2, 0xa3a3a

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x73777

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xa3a4a

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x33bbb

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x83888

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x93999

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xa3a2a

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xa3aaa

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x77737

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x77777

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x77747

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0x77bbb

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0x87888

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x97999

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0x77727

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x777a7

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xa4a3a

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x74777

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xa4a4a

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x44bbb

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x84888

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x94999

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xa4a2a

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xa4aaa

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0xbb33b

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0xbb77b

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0xbb44b

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0xbbbbb

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xbb11b

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0xbb88b

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0xbb99b

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0xbb55b

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0xbb22b

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0xbbaab

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0xbbccb

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x11bbb

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x88838

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x88878

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x88848

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x88bbb

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x88888

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x88898

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x88828

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0x888a8

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x99939

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x99979

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x99949

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x99bbb

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x89888

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x99999

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0x99929

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x999a9

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x55bbb

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xa2a3a

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x72777

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xa2a4a

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x22bbb

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x82888

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x92999

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xa2a2a

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xa2aaa

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xaaa3a

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x7a777

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xaaa4a

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xaabbb

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x8a888

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x9a999

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xaaa2a

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xaaaaa

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0xccbbb

    aput v2, v0, v1

    return-object v0
.end method

.method public static final get_REMAINDER()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_MINUS()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_RIGHT_SHIFT()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LEFT_SHIFT()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_UNSIGNED_RIGHT_SHIFT()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_LEFT_SHIFT()[I

    move-result-object v0

    return-object v0
.end method

.method public static final get_XOR()[I
    .locals 1

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->get_AND()[I

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public operatorToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->bits:I

    and-int/lit16 v0, v0, 0xfc0

    shr-int/lit8 v0, v0, 0x6

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown operator"

    return-object v0

    :pswitch_0
    const-string v0, ">>>"

    return-object v0

    :pswitch_1
    const-string v0, "=="

    return-object v0

    :pswitch_2
    const-string v0, ">>"

    return-object v0

    :pswitch_3
    const-string v0, "%"

    return-object v0

    :pswitch_4
    const-string v0, "*"

    return-object v0

    :pswitch_5
    const-string v0, "+"

    return-object v0

    :pswitch_6
    const-string v0, "-"

    return-object v0

    :pswitch_7
    const-string v0, "~"

    return-object v0

    :pswitch_8
    const-string v0, "!"

    return-object v0

    :pswitch_9
    const-string v0, "<<"

    return-object v0

    :pswitch_a
    const-string v0, "/"

    return-object v0

    :pswitch_b
    const-string v0, "^"

    return-object v0

    :pswitch_c
    const-string v0, ">="

    return-object v0

    :pswitch_d
    const-string v0, ">"

    return-object v0

    :pswitch_e
    const-string v0, "<="

    return-object v0

    :pswitch_f
    const-string v0, "<"

    return-object v0

    :pswitch_10
    const-string v0, "|"

    return-object v0

    :pswitch_11
    const-string v0, "&"

    return-object v0

    :pswitch_12
    const-string v0, "||"

    return-object v0

    :pswitch_13
    const-string v0, "&&"

    return-object v0

    :cond_0
    const-string v0, "="

    return-object v0

    :cond_1
    const-string v0, "!="

    return-object v0

    :cond_2
    const-string v0, "?:"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public printExpression(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    const/16 p1, 0x28

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/OperatorExpression;->printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-object p1
.end method

.method public abstract printExpressionNoParenthesis(ILjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
.end method
