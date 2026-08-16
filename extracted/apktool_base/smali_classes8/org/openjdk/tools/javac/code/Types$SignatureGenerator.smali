.class public abstract Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SignatureGenerator"
.end annotation


# instance fields
.field private final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->types:Lorg/openjdk/tools/javac/code/Types;

    return-void
.end method

.method private assembleSig(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 42
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    .line 44
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract append(C)V
.end method

.method public abstract append(Lorg/openjdk/tools/javac/util/Name;)V
.end method

.method public abstract append([B)V
.end method

.method public assembleClassSig(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 5

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->classReference(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Types;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleClassSig(Lorg/openjdk/tools/javac/code/Type;)V

    if-eqz v2, :cond_3

    const/16 v1, 0x24

    goto :goto_2

    :cond_3
    const/16 v1, 0x2e

    :goto_2
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/Name;->startsWith(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    if-eqz v2, :cond_4

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v2

    add-int/2addr v2, v4

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->getByteLength()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/util/Name;->subName(II)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    :goto_3
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(Lorg/openjdk/tools/javac/util/Name;)V

    goto :goto_4

    :cond_5
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/ClassFile;->externalize(Lorg/openjdk/tools/javac/util/Name;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append([B)V

    :goto_4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/util/List;)V

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    :cond_6
    return-void
.end method

.method public assembleParamsSig(Lorg/openjdk/tools/javac/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(Lorg/openjdk/tools/javac/util/Name;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Types;->getBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x200

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/16 v2, 0x3a

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    return-void
.end method

.method public assembleSig(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/code/Types$25;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3b

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typeSig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x54

    .line 3
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 4
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(Lorg/openjdk/tools/javac/util/Name;)V

    .line 5
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_1
    const/16 p1, 0x56

    .line 6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_2
    const/16 p1, 0x5a

    .line 7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_3
    const/16 p1, 0x44

    .line 8
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_4
    const/16 p1, 0x46

    .line 9
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_5
    const/16 p1, 0x4a

    .line 10
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_6
    const/16 p1, 0x49

    .line 11
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_7
    const/16 p1, 0x53

    .line 12
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_8
    const/16 p1, 0x43

    .line 13
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_9
    const/16 p1, 0x42

    .line 14
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    :pswitch_a
    const/16 v0, 0x4c

    .line 15
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 16
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleClassSig(Lorg/openjdk/tools/javac/code/Type;)V

    .line 17
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    goto/16 :goto_1

    .line 18
    :pswitch_b
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    const/16 v0, 0x5b

    .line 19
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 20
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$ArrayType;->elemtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_1

    .line 21
    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    const/16 v0, 0x28

    .line 22
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 23
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/util/List;)V

    const/16 v0, 0x29

    .line 24
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 25
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->restype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    .line 26
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->hasTypeVar(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$MethodType;->thrown:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x5e

    .line 28
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 29
    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    .line 30
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 31
    :cond_1
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$ForAll;

    .line 32
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type$ForAll;->tvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleParamsSig(Lorg/openjdk/tools/javac/util/List;)V

    .line 33
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    .line 34
    :cond_2
    check-cast p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;

    .line 35
    sget-object v0, Lorg/openjdk/tools/javac/code/Types$25;->$SwitchMap$com$sun$tools$javac$code$BoundKind:[I

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2d

    .line 36
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 37
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->kind:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    const/16 v0, 0x2b

    .line 39
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    .line 40
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$WildcardType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->assembleSig(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    :cond_5
    const/16 p1, 0x2a

    .line 41
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Types$SignatureGenerator;->append(C)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public classReference(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 0

    return-void
.end method

.method public hasTypeVar(Lorg/openjdk/tools/javac/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)Z"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
