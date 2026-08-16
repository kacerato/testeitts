.class public Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANNOTATION:Ljava/lang/String;

.field public static final CLASSFILE:Ljava/lang/String;

.field public static final COMPILATIONUNIT:Ljava/lang/String;

.field public static final COUNT:Ljava/lang/String;

.field public static final FIELD:Ljava/lang/String;

.field public static final IMPORTDECLARATION:Ljava/lang/String;

.field public static final INITIALIZER:Ljava/lang/String;

.field public static final JAVAPROJECT:Ljava/lang/String;

.field public static final LAMBDA_EXPRESSION:Ljava/lang/String;

.field public static final LAMBDA_METHOD:Ljava/lang/String;

.field public static final LOCALVARIABLE:Ljava/lang/String;

.field public static final METHOD:Ljava/lang/String;

.field public static final MODULAR_CLASSFILE:Ljava/lang/String;

.field public static final MODULE:Ljava/lang/String;

.field public static final PACKAGEDECLARATION:Ljava/lang/String;

.field public static final PACKAGEFRAGMENT:Ljava/lang/String;

.field public static final PACKAGEFRAGMENTROOT:Ljava/lang/String;

.field public static final STRING:Ljava/lang/String;

.field public static final TYPE:Ljava/lang/String;

.field public static final TYPE_PARAMETER:Ljava/lang/String;


# instance fields
.field private index:I

.field private final length:I

.field private final memento:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->COUNT:Ljava/lang/String;

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->JAVAPROJECT:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->PACKAGEFRAGMENTROOT:Ljava/lang/String;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->PACKAGEFRAGMENT:Ljava/lang/String;

    const/16 v0, 0x5e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->FIELD:Ljava/lang/String;

    const/16 v0, 0x7e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->METHOD:Ljava/lang/String;

    const/16 v0, 0x7c

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->INITIALIZER:Ljava/lang/String;

    const/16 v0, 0x7b

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->COMPILATIONUNIT:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->CLASSFILE:Ljava/lang/String;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->MODULAR_CLASSFILE:Ljava/lang/String;

    const/16 v0, 0x5b

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->TYPE:Ljava/lang/String;

    const/16 v0, 0x60

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->MODULE:Ljava/lang/String;

    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->PACKAGEDECLARATION:Ljava/lang/String;

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->IMPORTDECLARATION:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->LOCALVARIABLE:Ljava/lang/String;

    const/16 v0, 0x5d

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->TYPE_PARAMETER:Ljava/lang/String;

    const/16 v0, 0x7d

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->ANNOTATION:Ljava/lang/String;

    const/16 v0, 0x29

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->LAMBDA_EXPRESSION:Ljava/lang/String;

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->LAMBDA_METHOD:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    array-length p1, p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->length:I

    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->length:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 13

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    aget-char v3, v1, v0

    const/16 v4, 0x21

    if-eq v3, v4, :cond_12

    const/16 v5, 0x23

    if-eq v3, v5, :cond_11

    const/16 v6, 0x25

    if-eq v3, v6, :cond_10

    const/16 v7, 0x2f

    if-eq v3, v7, :cond_f

    const/16 v8, 0x40

    if-eq v3, v8, :cond_e

    const/16 v9, 0x60

    if-eq v3, v9, :cond_d

    const/16 v10, 0x27

    if-eq v3, v10, :cond_c

    const/16 v10, 0x28

    if-eq v3, v10, :cond_b

    const/16 v11, 0x3c

    if-eq v3, v11, :cond_a

    const/16 v12, 0x3d

    if-eq v3, v12, :cond_5

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->METHOD:Ljava/lang/String;

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->ANNOTATION:Ljava/lang/String;

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->INITIALIZER:Ljava/lang/String;

    return-object v0

    :pswitch_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->COMPILATIONUNIT:Ljava/lang/String;

    return-object v0

    :pswitch_4
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->FIELD:Ljava/lang/String;

    return-object v0

    :pswitch_5
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->TYPE_PARAMETER:Ljava/lang/String;

    return-object v0

    :pswitch_6
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->length:I

    if-lt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    aget-char v3, v3, v2

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_3

    if-eq v3, v10, :cond_3

    if-eq v3, v7, :cond_3

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_3

    if-eq v3, v11, :cond_3

    if-eq v3, v12, :cond_3

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    goto :goto_1

    :pswitch_7
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    aget-char v2, v2, v0

    if-ne v2, v9, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    goto :goto_0

    :cond_3
    :goto_2
    :pswitch_8
    if-eqz v1, :cond_4

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v0, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->memento:[C

    sub-int/2addr v2, v0

    invoke-direct {v1, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :pswitch_9
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->TYPE:Ljava/lang/String;

    return-object v0

    :cond_5
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->length:I

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    aget-char v1, v1, v2

    const/16 v2, 0x22

    if-eq v1, v2, :cond_8

    const/16 v2, 0x26

    if-eq v1, v2, :cond_7

    const/16 v2, 0x29

    if-eq v1, v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->index:I

    goto :goto_3

    :cond_6
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->LAMBDA_EXPRESSION:Ljava/lang/String;

    return-object v0

    :cond_7
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->LAMBDA_METHOD:Ljava/lang/String;

    return-object v0

    :cond_8
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->STRING:Ljava/lang/String;

    return-object v0

    :cond_9
    :goto_3
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->JAVAPROJECT:Ljava/lang/String;

    return-object v0

    :cond_a
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->PACKAGEFRAGMENT:Ljava/lang/String;

    return-object v0

    :cond_b
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->CLASSFILE:Ljava/lang/String;

    return-object v0

    :cond_c
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->MODULAR_CLASSFILE:Ljava/lang/String;

    return-object v0

    :cond_d
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->MODULE:Ljava/lang/String;

    return-object v0

    :cond_e
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->LOCALVARIABLE:Ljava/lang/String;

    return-object v0

    :cond_f
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->PACKAGEFRAGMENTROOT:Ljava/lang/String;

    return-object v0

    :cond_10
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->PACKAGEDECLARATION:Ljava/lang/String;

    return-object v0

    :cond_11
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->IMPORTDECLARATION:Ljava/lang/String;

    return-object v0

    :cond_12
    sget-object v0, Lorg/eclipse/jdt/internal/core/util/MementoTokenizer;->COUNT:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
