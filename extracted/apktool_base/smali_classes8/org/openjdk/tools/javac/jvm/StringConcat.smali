.class public abstract Lorg/openjdk/tools/javac/jvm/StringConcat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/StringConcat$IndyConstants;,
        Lorg/openjdk/tools/javac/jvm/StringConcat$IndyPlain;,
        Lorg/openjdk/tools/javac/jvm/StringConcat$Indy;,
        Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;
    }
.end annotation


# static fields
.field private static final MAX_INDY_CONCAT_ARG_SLOTS:I = 0xc8

.field private static final TAG_ARG:C = '\u0001'

.field private static final TAG_CONST:C = '\u0002'

.field protected static final concatKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/jvm/StringConcat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final gen:Lorg/openjdk/tools/javac/jvm/Gen;

.field protected final make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field protected final names:Lorg/openjdk/tools/javac/util/Names;

.field protected final rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field protected final sbAppends:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field protected final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field protected final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/StringConcat;->concatKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/jvm/StringConcat;->concatKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Gen;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Gen;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->sbAppends:Ljava/util/Map;

    return-void
.end method

.method private collect(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->constValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;->opcode:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/StringConcat;->collect(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0, p2}, Lorg/openjdk/tools/javac/jvm/StringConcat;->collect(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/StringConcat;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/jvm/StringConcat;->concatKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/StringConcat;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/StringConcat;->makeConcat(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/StringConcat;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static makeConcat(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/StringConcat;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/Target;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Target;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    const-string v2, "stringConcat"

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "inline"

    if-nez v1, :cond_0

    move-object v1, v2

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Target;->hasStringConcatFactory()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    const-string v0, "StringConcatFactory-based string concat is requested on a platform that does not support it."

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_2
    move-object v1, v2

    :goto_0
    const/4 v0, -0x1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "indyWithConstants"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "indy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown stringConcat: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :pswitch_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyConstants;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyConstants;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    return-object v0

    .line 11
    :pswitch_1
    new-instance v0, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyPlain;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/StringConcat$IndyPlain;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    return-object v0

    .line 12
    :pswitch_2
    new-instance v0, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/StringConcat$Inline;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46925d67 -> :sswitch_2
        0x31647a -> :sswitch_1
        0x2804e0cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public collectAll(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;->collectAll(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/jvm/StringConcat;->collectAll(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public collectAll(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/StringConcat;->collect(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract makeConcat(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)Lorg/openjdk/tools/javac/jvm/Items$Item;
.end method

.method public abstract makeConcat(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)Lorg/openjdk/tools/javac/jvm/Items$Item;
.end method

.method public sharpestAccessible(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/StringConcat;->sharpestAccessible(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->makeArrayType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type$ArrayType;

    move-result-object p1

    return-object p1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Gen;->getAttrEnv()Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->asElement()Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/StringConcat;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method
