.class Lorg/openjdk/tools/javac/jvm/Code$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "State"
.end annotation


# instance fields
.field defined:Lorg/openjdk/tools/javac/util/Bits;

.field locks:[I

.field nlocks:I

.field stack:[Lorg/openjdk/tools/javac/code/Type;

.field stacksize:I

.field final synthetic this$0:Lorg/openjdk/tools/javac/jvm/Code;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Code;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Bits;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    const/16 p1, 0x10

    new-array p1, p1, [Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->dump(I)V

    return-void
.end method

.method public dump(I)V
    .locals 8

    .line 2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stackMap for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    :goto_0
    const-string p1, " stack (from bottom):"

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v0, p1

    .line 6
    :goto_1
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const-string v2, ": "

    const-string v3, "  "

    if-ge v0, v1, :cond_1

    .line 7
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v2, v2, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 9
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move v0, p1

    :goto_3
    if-ltz v0, :cond_4

    .line 10
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, " locals:"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    move v1, p1

    :goto_4
    if-gt v1, v0, :cond_8

    .line 11
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v5, v1}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 13
    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v5, v5, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v5, v5, v1

    if-nez v5, :cond_5

    .line 14
    const-string v5, "(none)"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 15
    :cond_5
    iget-object v6, v5, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-nez v6, :cond_6

    .line 16
    const-string v5, "UNKNOWN!"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 17
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v7, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v7, v7, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    .line 18
    invoke-virtual {v5, v7}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 20
    :cond_7
    const-string v5, "undefined"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 21
    :cond_8
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-eqz v0, :cond_a

    .line 22
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " locks:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 23
    :goto_6
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-ge p1, v0, :cond_9

    .line 24
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 25
    :cond_9
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    :cond_a
    return-void
.end method

.method public dup()Lorg/openjdk/tools/javac/jvm/Code$State;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Code$State;

    new-instance v1, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, [Lorg/openjdk/tools/javac/code/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duping state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$State;->dump()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public error()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "inconsistent stack types at join point"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public forceStackTop(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->access$100(Lorg/openjdk/tools/javac/jvm/Code;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v2, v0

    aput-object p1, v1, v2

    :goto_0
    return-void
.end method

.method public join(Lorg/openjdk/tools/javac/jvm/Code$State;)Lorg/openjdk/tools/javac/jvm/Code$State;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget v1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    iget v1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :goto_1
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v0, v0, v2

    iget-object v1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0, v1}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v1, v0}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$State;->error()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aput-object v0, v3, v2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    :cond_4
    add-int/2addr v2, v1

    goto :goto_1

    :cond_5
    return-object p0
.end method

.method public lock(I)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    if-nez v0, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    return-void
.end method

.method public markInitialized(Lorg/openjdk/tools/javac/jvm/UninitializedType;)V
    .locals 6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/UninitializedType;->initializedType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_0

    aput-object v0, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-ne v4, p1, :cond_2

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->clone(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    move-result-object v3

    iput-object v0, v3, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object v4, v4, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    new-instance v5, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    invoke-direct {v5, v3}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;-><init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    aput-object v5, v4, v1

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    iput-object v2, v5, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public peek()Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public pop(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   popping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-lez p1, :cond_1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pop(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    return-void
.end method

.method public pop1()Lorg/openjdk/tools/javac/code/Type;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "   popping 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v3, v2, v0

    const/4 v4, 0x0

    aput-object v4, v2, v0

    if-eqz v3, :cond_1

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-object v3
.end method

.method public pop2()Lorg/openjdk/tools/javac/code/Type;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "   popping 2"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v0, -0x2

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v3, v2, v1

    const/4 v4, 0x0

    aput-object v4, v2, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-static {v3}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-object v3
.end method

.method public push(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   pushing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Type;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    aput-object p1, v0, v3

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_1
    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->this$0:Lorg/openjdk/tools/javac/jvm/Code;

    iget v1, v0, Lorg/openjdk/tools/javac/jvm/Code;->max_stack:I

    if-le p1, v1, :cond_5

    iput p1, v0, Lorg/openjdk/tools/javac/jvm/Code;->max_stack:I

    :cond_5
    return-void
.end method

.method public unlock(I)V
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    aget v0, v2, v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->locks:[I

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    const/4 v1, -0x1

    aput v1, p1, v0

    return-void
.end method
