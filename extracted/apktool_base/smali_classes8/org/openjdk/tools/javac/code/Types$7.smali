.class Lorg/openjdk/tools/javac/code/Types$7;
.super Lorg/openjdk/tools/javac/code/Types$TypeRelation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Types$TypeRelation;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/Types$25;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 p1, 0xd

    if-eq v0, p1, :cond_0

    const/16 p1, 0x10

    if-eq v0, p1, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, p2, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/Warner;

    sget-object p2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 9
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$DefaultTypeVisitor;->visit(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 12
    :cond_6
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$7;->visitArrayType(Lorg/openjdk/tools/javac/code/Type$ArrayType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;
    .locals 11

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getUpperBound()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/Warner;

    sget-object p2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_7

    .line 9
    :cond_3
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 10
    :cond_4
    iget-object v3, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 11
    invoke-virtual {v4, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_2

    .line 12
    :cond_5
    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 13
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const-wide/16 v6, 0x10

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/Warner;

    .line 15
    invoke-static {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->access$600(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/Warner;

    .line 16
    invoke-static {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->access$700(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    .line 17
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 19
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/Warner;

    .line 20
    invoke-static {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->access$600(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/Warner;

    .line 21
    invoke-static {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->access$700(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    .line 22
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 23
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 24
    :cond_a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_b
    :goto_2
    if-nez v3, :cond_d

    .line 25
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 27
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/Warner;

    sget-object p2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    .line 28
    :cond_c
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 29
    :cond_d
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 31
    :cond_e
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$ClassType;->isRaw()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 32
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isUnbounded(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 33
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/Warner;

    sget-object p2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    .line 34
    :cond_f
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_10
    if-eqz v3, :cond_11

    move-object v0, p1

    goto :goto_3

    :cond_11
    move-object v0, p2

    :goto_3
    if-eqz v3, :cond_12

    move-object p1, p2

    .line 35
    :cond_12
    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v4, v0, v2, v1}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    .line 36
    iget-object v5, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v5, v0, v1, v1}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    .line 37
    iget-object v6, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v6, p1, v2, v1}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    .line 38
    iget-object v7, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v7, p1, v1, v1}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    .line 39
    iget-object v8, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v9, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v8, v7, v9}, Lorg/openjdk/tools/javac/code/Types;->asSub(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_13

    move-object v6, v8

    goto :goto_4

    .line 40
    :cond_13
    iget-object v9, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v10, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v9, v6, v10}, Lorg/openjdk/tools/javac/code/Types;->asSub(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    :goto_4
    if-nez v6, :cond_15

    .line 41
    iget-object v4, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v4, v0, v2, v2}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    .line 42
    iget-object v5, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v5, v0, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    .line 43
    iget-object v6, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v6, p1, v2, v2}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    .line 44
    iget-object v7, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v7, p1, v1, v2}, Lorg/openjdk/tools/javac/code/Types;->access$400(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;ZZ)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v1, v7}, Lorg/openjdk/tools/javac/code/Types;->asSub(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7

    if-nez v7, :cond_14

    goto :goto_5

    .line 46
    :cond_14
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v4, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v6, v2}, Lorg/openjdk/tools/javac/code/Types;->asSub(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v8

    :goto_5
    move-object v6, v8

    :cond_15
    if-eqz v6, :cond_1a

    .line 47
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne v1, v2, :cond_16

    iget-object v2, v7, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v1, v2, :cond_17

    .line 48
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 49
    :cond_17
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lorg/openjdk/tools/javac/code/Types;->disjointTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 50
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/openjdk/tools/javac/code/Types;->disjointTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 51
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/openjdk/tools/javac/code/Types;->disjointTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    .line 52
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/code/Type;->allparams()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/openjdk/tools/javac/code/Types;->disjointTypes(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 53
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    if-eqz v3, :cond_18

    invoke-static {p2, v0, p1}, Lorg/openjdk/tools/javac/code/Types;->access$500(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_6

    .line 54
    :cond_18
    invoke-static {p2, p1, v0}, Lorg/openjdk/tools/javac/code/Types;->access$500(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 55
    :goto_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/Warner;

    sget-object p2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    .line 56
    :cond_19
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 57
    :cond_1a
    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->isReifiable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 58
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 59
    :cond_1b
    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {p2, v0, p1, v1}, Lorg/openjdk/tools/javac/code/Types;->isSubtypeUnchecked(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 60
    :cond_1c
    :goto_7
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_1d

    check-cast p2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    .line 61
    invoke-virtual {p0, p2, p1, v2}, Lorg/openjdk/tools/javac/code/Types$7;->visitCompoundType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    goto :goto_8

    .line 62
    :cond_1d
    invoke-virtual {p0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types$7;->visitCompoundType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result p1

    .line 63
    :goto_8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1e
    :goto_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$7;->visitClassType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitCompoundType(Lorg/openjdk/tools/javac/code/Type$ClassType;Lorg/openjdk/tools/javac/code/Type;Z)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->directSupertypes(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/Warner;->clear()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    if-eqz p3, :cond_1

    invoke-virtual {v2, p2, v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    sget-object p1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/Warner;->hasLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$7;->visitErrorType(Lorg/openjdk/tools/javac/code/Type$ErrorType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/code/Types$25;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5
    :pswitch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :pswitch_3
    sget-object p1, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isNumeric()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic visitType(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$7;->visitType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/Types$25;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/Warner;

    sget-object p2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Warner;->warn(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)V

    .line 9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 10
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$7;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Types;->wildUpperBound(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$7;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Types;->warnStack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/code/Types;->isCastable(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types$7;->visitWildcardType(Lorg/openjdk/tools/javac/code/Type$WildcardType;Lorg/openjdk/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
