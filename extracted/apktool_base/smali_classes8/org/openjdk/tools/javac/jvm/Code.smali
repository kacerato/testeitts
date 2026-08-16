.class public Lorg/openjdk/tools/javac/jvm/Code;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/Code$Mneumonics;,
        Lorg/openjdk/tools/javac/jvm/Code$LocalVar;,
        Lorg/openjdk/tools/javac/jvm/Code$State;,
        Lorg/openjdk/tools/javac/jvm/Code$Chain;,
        Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;,
        Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;
    }
.end annotation


# static fields
.field static final jsrReturnValue:Lorg/openjdk/tools/javac/code/Type;


# instance fields
.field private alive:Z

.field catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "[C>;"
        }
    .end annotation
.end field

.field public code:[B

.field public cp:I

.field public crt:Lorg/openjdk/tools/javac/jvm/CRTable;

.field public final debugCode:Z

.field public fatcode:Z

.field private fixedPc:Z

.field frameBeforeLast:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

.field lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

.field lastStackMapPC:I

.field lineDebugInfo:Z

.field lineInfo:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "[C>;"
        }
    .end annotation
.end field

.field lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

.field lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

.field public max_locals:I

.field public max_stack:I

.field final meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

.field public final needStackMap:Z

.field public nextreg:I

.field pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

.field pendingStackMap:Z

.field pendingStatPos:I

.field final pool:Lorg/openjdk/tools/javac/jvm/Pool;

.field stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

.field stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

.field stackMapBufferSize:I

.field stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

.field state:Lorg/openjdk/tools/javac/jvm/Code$State;

.field final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field final types:Lorg/openjdk/tools/javac/code/Types;

.field varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

.field varBufferSize:I

.field varDebugInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;-><init>(Lorg/openjdk/tools/javac/code/TypeTag;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    sput-object v0, Lorg/openjdk/tools/javac/jvm/Code;->jsrReturnValue:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;ZLorg/openjdk/tools/javac/util/Position$LineMap;ZLorg/openjdk/tools/javac/jvm/Code$StackMapFormat;ZLorg/openjdk/tools/javac/jvm/CRTable;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/jvm/Pool;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_stack:I

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    const/16 v1, 0x40

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->fixedPc:Z

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    const/4 v3, -0x1

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastStackMapPC:I

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->frameBeforeLast:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->fatcode:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    if-eqz p3, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineDebugInfo:Z

    iput-boolean p4, p0, Lorg/openjdk/tools/javac/jvm/Code;->varDebugInfo:Z

    iput-object p7, p0, Lorg/openjdk/tools/javac/jvm/Code;->crt:Lorg/openjdk/tools/javac/jvm/CRTable;

    iput-object p8, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iput-object p9, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    iput-boolean p6, p0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    iput-object p5, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    sget-object p1, Lorg/openjdk/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    :goto_1
    new-instance p1, Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/jvm/Code$State;-><init>(Lorg/openjdk/tools/javac/jvm/Code;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/16 p1, 0x14

    new-array p1, p1, [Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    iput-object p10, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/jvm/Code;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    return p0
.end method

.method private addLocalVar(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 3

    iget v0, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->resolvePending()V

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    invoke-direct {v2, p1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;-><init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    aput-object v2, v1, v0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    return-void
.end method

.method public static arraycode(Lorg/openjdk/tools/javac/code/Type;)I
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arraycode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x7

    return p0

    :pswitch_5
    const/4 p0, 0x6

    return p0

    :pswitch_6
    const/16 p0, 0xb

    return p0

    :pswitch_7
    const/16 p0, 0xa

    return p0

    :pswitch_8
    const/4 p0, 0x5

    return p0

    :pswitch_9
    const/16 p0, 0x9

    return p0

    :pswitch_a
    const/16 p0, 0x8

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private emit1(I)V
    .locals 3

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method private emit2(I)V
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    shr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    :goto_0
    return-void
.end method

.method private emitop(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->resolvePending()V

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markStatBegin()V

    :cond_1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->emitStackMap()V

    :cond_2
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emit@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v2, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    :cond_4
    return-void
.end method

.method private endScope(I)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->isLastRangeInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v2

    iget-char v2, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const v2, 0xffff

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->closeRange(C)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->putVar(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;)V

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->fillLocalVarPosition(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    return-void
.end method

.method private fillLocalVarPosition(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->hasTypeAnnotations()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->getWidestRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v2

    iget-char v3, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    filled-new-array {v3}, [I

    move-result-object v3

    iput-object v3, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarOffset:[I

    iget-char v2, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    filled-new-array {v2}, [I

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarLength:[I

    iget-char v2, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->reg:C

    filled-new-array {v2}, [I

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->lvarIndex:[I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->isValidOffset:Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private findExceptionIndex(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)I
    .locals 7

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->getCatchType()I

    move-result v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->getStartPos()I

    move-result p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v5, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, [C

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    const/4 v6, 0x3

    aget-char v6, v5, v6

    aget-char v5, v5, v3

    if-ne v0, v6, :cond_0

    if-ne v5, p1, :cond_0

    return v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private get1(I)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private get2(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method private getLocalsSize()I
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v1, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v3, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ne v1, v3, :cond_2

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    iget v1, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    iget v1, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    if-ge v0, v1, :cond_3

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->next:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-static {p0, v2}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p0

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-direct {v0, v1, p0, p1}, Lorg/openjdk/tools/javac/jvm/Code$Chain;-><init>(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$State;)V

    return-object v0

    :cond_3
    new-instance v1, Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code$Chain;->next:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-static {v2, p1}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p1

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-direct {v1, v0, p1, p0}, Lorg/openjdk/tools/javac/jvm/Code$Chain;-><init>(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$State;)V

    return-object v1
.end method

.method public static mnem(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/jvm/Code$Mneumonics;->access$200()[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static negate(I)I
    .locals 2

    const/16 v0, 0xc7

    const/16 v1, 0xc6

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    xor-int/lit8 p0, p0, 0x1

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private newLocal(I)I
    .locals 2

    .line 1
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    .line 2
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->width(I)I

    move-result p1

    add-int/2addr p1, v0

    .line 3
    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    .line 4
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    if-le p1, v1, :cond_0

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    :cond_0
    return v0
.end method

.method private newLocal(Lorg/openjdk/tools/javac/code/Type;)I
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(I)I

    move-result p1

    return p1
.end method

.method private put1(II)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method private put2(II)V
    .locals 1

    shr-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->put1(II)V

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Code;->put1(II)V

    return-void
.end method

.method public static truncate(I)I
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private typeForPool(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->stringType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_5
    instance-of v0, p1, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    if-eqz v0, :cond_6

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->methodHandleType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->typeForPool(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    instance-of v1, v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    if-eqz v1, :cond_8

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->classType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_8
    instance-of v0, v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    if-eqz v0, :cond_9

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->methodTypeType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type of constant pool entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static typecode(Lorg/openjdk/tools/javac/code/Type;)I
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$code$TypeTag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typecode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getTag()Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    return v1

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :pswitch_6
    const/4 p0, 0x0

    return p0

    :pswitch_7
    const/4 p0, 0x6

    return p0

    :pswitch_8
    const/4 p0, 0x7

    return p0

    :pswitch_9
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static width(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static width(Lorg/openjdk/tools/javac/code/Type;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/Code;->width(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static width(Lorg/openjdk/tools/javac/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v1}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public addCatch(CCCC)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    const/4 p1, 0x1

    aput-char p2, v1, p1

    const/4 p1, 0x2

    aput-char p3, v1, p1

    const/4 p1, 0x3

    aput-char p4, v1, p1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public addLineNumber(CC)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineDebugInfo:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, [C

    aget-char v3, v3, v1

    if-ne v3, p1, :cond_0

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, [C

    aget-char v2, v2, v0

    if-eq v2, p2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    const/4 v3, 0x2

    new-array v3, v3, [C

    aput-char p1, v3, v1

    aput-char p2, v3, v0

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineInfo:Lorg/openjdk/tools/javac/util/List;

    :cond_2
    return-void
.end method

.method public adjustAliveRanges(II)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    iget-object v3, v3, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->closed()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-char v5, v4, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    iget-char v6, v4, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    add-int/2addr v5, v6

    if-lt v5, p1, :cond_0

    add-int/2addr v6, p2

    int-to-char v5, v6

    iput-char v5, v4, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public align(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    rem-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop0(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public branch(I)Lorg/openjdk/tools/javac/jvm/Code$Chain;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xa7

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-object v0, v2

    :cond_0
    const/16 v2, 0xa8

    if-eq p1, v2, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitJump(I)I

    move-result v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/jvm/Code$State;->dup()Lorg/openjdk/tools/javac/jvm/Code$State;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lorg/openjdk/tools/javac/jvm/Code$Chain;-><init>(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$State;)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->fatcode:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->fixedPc:Z

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    :cond_1
    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method public checkLimits(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Log;)Z
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0xffff

    if-le v0, v3, :cond_0

    const-string v0, "limit.code"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    if-le v0, v3, :cond_1

    const-string v0, "limit.locals"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_stack:I

    if-le v0, v3, :cond_2

    const-string v0, "limit.stack"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    return v2
.end method

.method public compressCatchTable()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    const/4 v4, 0x2

    aget-char v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    const/4 v4, 0x0

    aget-char v4, v3, v4

    const/4 v5, 0x1

    aget-char v5, v3, v5

    if-eq v4, v5, :cond_1

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->catchInfo:Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method

.method public curCP()I
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->resolvePending()V

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markStatBegin()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->fixedPc:Z

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    return v0
.end method

.method public emit4(I)V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->code:[B

    array-length v3, v2

    if-le v1, v3, :cond_1

    shr-int/lit8 v0, p1, 0x18

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    shr-int/lit8 v0, p1, 0x10

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x3

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    :goto_0
    return-void
.end method

.method public emitAnewarray(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    const/16 v0, 0xbd

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitCLDCStackMap(II)V
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastStackMapPC:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_0
    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastStackMapPC:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    if-nez v0, :cond_1

    const/16 v0, 0x14

    new-array v0, v0, [Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBuffer:[Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;-><init>()V

    aput-object v2, v0, v1

    iput p1, v2, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    new-array p1, p2, [Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, v2, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    instance-of v3, v1, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :cond_2
    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    aput-object v1, v3, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p2, p2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    new-array p2, p2, [Lorg/openjdk/tools/javac/code/Type;

    iput-object p2, v2, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    :goto_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, p2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ge p1, v0, :cond_5

    iget-object v0, v2, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p2, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object p2, p2, p1

    aput-object p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public emitInvokedynamic(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result v0

    const/16 v1, 0xba

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitInvokeinterface(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result v0

    const/16 v1, 0xb9

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitInvokespecial(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result v0

    const/16 v1, 0xb7

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p1, v1, p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->peek()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->markInitialized(Lorg/openjdk/tools/javac/jvm/UninitializedType;)V

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitInvokestatic(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result v0

    const/16 v1, 0xb8

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitInvokevirtual(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/util/List;)I

    move-result v0

    const/16 v1, 0xb6

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitJump(I)I
    .locals 2

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->fatcode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->negate(I)I

    move-result p1

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    const/16 p1, 0xc8

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop4(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x21

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop4(II)V

    :goto_1
    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 p1, p1, -0x5

    return p1

    :cond_2
    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 p1, p1, -0x3

    return p1
.end method

.method public emitLdc(I)V
    .locals 1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop1(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop2(II)V

    :goto_0
    return-void
.end method

.method public emitMultianewarray(IILorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    const/16 v0, 0xc5

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitNewarray(ILorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    const/16 v0, 0xbc

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public emitStackMap()V
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/jvm/Code$1;->$SwitchMap$com$sun$tools$javac$jvm$Code$StackMapFormat:[I

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMap:Lorg/openjdk/tools/javac/jvm/Code$StackMapFormat;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Code;->getLocalsSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitStackMapFrame(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have chosen a stackmap format"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Code;->getLocalsSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->emitCLDCStackMap(II)V

    :goto_0
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->dump(I)V

    :cond_3
    return-void
.end method

.method public emitStackMapFrame(II)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->getInitialFrame()Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->frameBeforeLast:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->frameBeforeLast:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    :cond_1
    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;-><init>()V

    iput p1, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    new-array p1, p2, [Lorg/openjdk/tools/javac/code/Type;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p2, :cond_4

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v5, v5, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v5, v5, v3

    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    instance-of v6, v5, Lorg/openjdk/tools/javac/jvm/UninitializedType;

    if-nez v6, :cond_2

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v5

    :cond_2
    aput-object v5, p1, v3

    invoke-static {v5}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v5

    if-le v5, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/2addr v3, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-array v3, v4, [Lorg/openjdk/tools/javac/code/Type;

    iput-object v3, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    move v3, v2

    move v5, v3

    :goto_2
    if-ge v3, p2, :cond_7

    if-ge v5, v4, :cond_5

    move v6, v1

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    invoke-static {v6}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v6, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v7, p1, v3

    aput-object v7, v6, v5

    aget-object v6, p1, v3

    invoke-static {v6}, Lorg/openjdk/tools/javac/jvm/Code;->width(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v6

    if-le v6, v1, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    add-int/2addr v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move p1, v2

    move p2, p1

    :goto_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v3, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ge p1, v3, :cond_9

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object v1, v1, p1

    if-eqz v1, :cond_8

    add-int/lit8 p2, p2, 0x1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    new-array p1, p2, [Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    move p1, v2

    :goto_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v1, p2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ge v2, v1, :cond_b

    iget-object p2, p2, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    aget-object p2, p2, v2

    if-eqz p2, :cond_a

    iget-object v1, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    aput-object p2, v1, p1

    move p1, v3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    if-nez p1, :cond_c

    const/16 p1, 0x14

    new-array p1, p1, [Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    goto :goto_6

    :cond_c
    iget p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    :goto_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapTableBuffer:[Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    iget p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->stackMapBufferSize:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iget v2, v1, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {v0, v2, v1, v3}, Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;->getInstance(Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;I[Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/jvm/ClassWriter$StackMapTableFrame;

    move-result-object v1

    aput-object v1, p1, p2

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->frameBeforeLast:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lastFrame:Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    return-void
.end method

.method public emitop0(I)V
    .locals 5

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa7

    if-eq p1, v0, :cond_c

    const/16 v0, 0xbe

    const/4 v1, 0x1

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbf

    if-eq p1, v0, :cond_a

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_1

    const/4 v4, 0x4

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    return-void

    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_2

    :pswitch_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-nez p1, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_2

    :pswitch_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_8
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_9
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_a
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_c
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_d
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_e
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_f
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_10
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_11
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_12
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_13
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_14
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_15
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_16
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_17
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_18
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_19
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_1a
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_1b
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v4, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v4, v1

    aget-object v1, v3, v4

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop2()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop2()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v3, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v3, v1

    aget-object v1, v2, v3

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop2()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_1c
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop2()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_1d
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop2()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_1e
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v3, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v3, v1

    aget-object v1, v2, v3

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop2()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_1f
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop1()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_20
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_21
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_22
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_23
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_24
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_25
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_26
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_27
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stack:[Lorg/openjdk/tools/javac/code/Type;

    iget p1, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_28
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_29
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_2a
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_2b
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_2c
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v1, v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_2d
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, v3

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :pswitch_2e
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :pswitch_2f
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, v2

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :pswitch_30
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :pswitch_31
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :pswitch_32
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :pswitch_33
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :pswitch_34
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    :goto_2
    :pswitch_35
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->postop()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_24
        :pswitch_24
        :pswitch_26
        :pswitch_25
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_19
        :pswitch_26
        :pswitch_19
        :pswitch_26
        :pswitch_19
        :pswitch_26
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x85
        :pswitch_15
        :pswitch_14
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
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa9
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xc2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emitop1(II)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p2, v0, p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->typeForPool(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->postop()V

    return-void
.end method

.method public emitop1w(II)V
    .locals 1

    const/16 v0, 0xff

    if-le p2, v0, :cond_0

    const/16 v0, 0xc4

    .line 1
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    .line 2
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    .line 3
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    .line 5
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    .line 6
    :goto_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 7
    new-instance p2, Ljava/lang/AssertionError;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 8
    :pswitch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto :goto_1

    .line 9
    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto :goto_1

    .line 10
    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object p2, v0, p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    .line 11
    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->doubleType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    .line 12
    :pswitch_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->floatType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    .line 13
    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->longType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    .line 14
    :pswitch_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->postop()V

    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public emitop1w(III)V
    .locals 1

    const/16 v0, 0xff

    if-gt p2, v0, :cond_1

    const/16 v0, -0x80

    if-lt p3, v0, :cond_1

    const/16 v0, 0x7f

    if-le p3, v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    .line 18
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    .line 19
    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/jvm/Code;->emit1(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xc4

    .line 20
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    .line 21
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    .line 22
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    .line 23
    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    .line 24
    :goto_1
    iget-boolean p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez p2, :cond_2

    return-void

    :cond_2
    const/16 p2, 0x84

    if-ne p1, p2, :cond_3

    return-void

    .line 25
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public emitop2(II)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit2(I)V

    const/16 v0, 0x11

    if-eq p1, v0, :cond_9

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_7

    const/16 v0, 0x13

    if-eq p1, v0, :cond_6

    const/16 v0, 0x14

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :pswitch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p2, v0, p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p2, v0, p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p2, v0, p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p2, v0, p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    goto/16 :goto_2

    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :cond_1
    :pswitch_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/Code$State;->pop(I)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p1, p1, p2

    instance-of p2, p1, Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    check-cast p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p2, v0, p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->typeForPool(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p2, v0, p2

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->typeForPool(Ljava/lang/Object;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Pool;->pool:[Ljava/lang/Object;

    aget-object p1, p1, p2

    instance-of p2, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    if-eqz p2, :cond_8

    check-cast p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_1

    :cond_8
    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol;

    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v0, v0, -0x3

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/jvm/UninitializedType;->uninitializedObject(Lorg/openjdk/tools/javac/code/Type;I)Lorg/openjdk/tools/javac/jvm/UninitializedType;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->intType:Lorg/openjdk/tools/javac/code/Type$JCPrimitiveType;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    :goto_2
    :pswitch_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public emitop4(II)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->emitop(I)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->emit4(I)V

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc9

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->mnem(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->markDead()V

    :goto_0
    return-void
.end method

.method public endScopes(I)V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->endScope(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public entryPoint()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    .line 3
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    return v0
.end method

.method public entryPoint(Lorg/openjdk/tools/javac/jvm/Code$State;)I
    .locals 4

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    .line 6
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->dup()Lorg/openjdk/tools/javac/jvm/Code$State;

    move-result-object v2

    .line 7
    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/Code;->setDefined(Lorg/openjdk/tools/javac/util/Bits;)V

    .line 8
    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    .line 9
    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_stack:I

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 10
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entry point "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    return v0
.end method

.method public entryPoint(Lorg/openjdk/tools/javac/jvm/Code$State;Lorg/openjdk/tools/javac/code/Type;)I
    .locals 4

    .line 12
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v0

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    .line 14
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/jvm/Code$State;->dup()Lorg/openjdk/tools/javac/jvm/Code$State;

    move-result-object v2

    .line 15
    iget-object v3, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/jvm/Code;->setDefined(Lorg/openjdk/tools/javac/util/Bits;)V

    .line 16
    iput-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    .line 17
    iget v2, p1, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_stack:I

    if-gt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 18
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/jvm/Code$State;->push(Lorg/openjdk/tools/javac/code/Type;)V

    .line 19
    iget-boolean p2, p0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz p2, :cond_1

    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entry point "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    :cond_1
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    return v0
.end method

.method public fillExceptionParameterPositions()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->hasTypeAnnotations()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->isExceptionParameter()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->getRawTypeAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Attribute$TypeCompound;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Attribute$Compound;->position:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->hasCatchType()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/jvm/Code;->findExceptionIndex(Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find exception index for type annotation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on exception parameter"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;->setExceptionIndex(I)V

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public get4(I)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public getInitialFrame()Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$MethodType;->argtypes:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->meth:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v5, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    const/4 v6, 0x1

    add-int/2addr v2, v6

    new-array v2, v2, [Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    if-eq v5, v2, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v5}, Lorg/openjdk/tools/javac/jvm/UninitializedType;->uninitializedThis(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/UninitializedType;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    aput-object v3, v2, v4

    :goto_0
    move v4, v6

    goto :goto_1

    :cond_1
    new-array v2, v2, [Lorg/openjdk/tools/javac/code/Type;

    iput-object v2, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    :goto_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->locals:[Lorg/openjdk/tools/javac/code/Type;

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v6, v2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    aput-object v2, v3, v4

    move v4, v5

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->pc:I

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/openjdk/tools/javac/jvm/Code$StackMapFrame;->stack:[Lorg/openjdk/tools/javac/code/Type;

    return-object v0
.end method

.method public getLVTSize()I
    .locals 3

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public markDead()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    return-void
.end method

.method public markStatBegin()V
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineDebugInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/util/Position$LineMap;->getLineNumber(I)I

    move-result v0

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    int-to-char v2, v1

    int-to-char v3, v0

    if-ne v2, v1, :cond_0

    if-ne v3, v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lorg/openjdk/tools/javac/jvm/Code;->addLineNumber(CC)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    return-void
.end method

.method public newLocal(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)I
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->newLocal(Lorg/openjdk/tools/javac/code/Type;)I

    move-result v0

    iput v0, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    .line 7
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->addLocalVar(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    return v0
.end method

.method public newRegSegment()V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->max_locals:I

    iput v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    return-void
.end method

.method public postop()V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void
.end method

.method public put4(II)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->put1(II)V

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->put1(II)V

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->put1(II)V

    add-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Code;->put1(II)V

    return-void
.end method

.method public putVar(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;)V
    .locals 6

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->varDebugInfo:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->isExceptionParameter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->hasTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/high16 v4, 0x2000000000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v4, 0x200000000L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    if-nez v0, :cond_4

    const/16 v0, 0x14

    new-array v0, v0, [Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    goto :goto_1

    :cond_4
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ArrayUtils;->ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBuffer:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->varBufferSize:I

    aput-object p1, v0, v1

    return-void
.end method

.method public resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V
    .locals 4

    .line 33
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v1, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v3, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ne v1, v3, :cond_0

    iget v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    iget v1, v2, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 34
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    return-void
.end method

.method public resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz p1, :cond_10

    .line 2
    iget-object v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v5, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    if-eq v4, v5, :cond_1

    iget v5, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    if-gt p2, v5, :cond_0

    iget v4, v4, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-nez v4, :cond_1

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 3
    iget v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    const/16 v5, 0xa7

    if-lt p2, v4, :cond_2

    move p2, v4

    goto :goto_3

    .line 4
    :cond_2
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 5
    iget-boolean v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->fatcode:Z

    if-eqz v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/jvm/Code;->get4(I)I

    move-result v4

    :goto_2
    add-int/2addr p2, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v4, p2, 0x1

    .line 6
    invoke-direct {p0, v4}, Lorg/openjdk/tools/javac/jvm/Code;->get2(I)I

    move-result v4

    goto :goto_2

    .line 7
    :cond_4
    :goto_3
    iget v4, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    invoke-direct {p0, v4}, Lorg/openjdk/tools/javac/jvm/Code;->get1(I)I

    move-result v4

    if-ne v4, v5, :cond_6

    iget v4, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    add-int/lit8 v4, v4, 0x3

    if-ne v4, p2, :cond_6

    iget v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    if-ne p2, v4, :cond_6

    iget-boolean v5, p0, Lorg/openjdk/tools/javac/jvm/Code;->fixedPc:Z

    if-nez v5, :cond_6

    .line 8
    iget-boolean v5, p0, Lorg/openjdk/tools/javac/jvm/Code;->varDebugInfo:Z

    if-eqz v5, :cond_5

    const/4 v5, -0x3

    .line 9
    invoke-virtual {p0, v4, v5}, Lorg/openjdk/tools/javac/jvm/Code;->adjustAliveRanges(II)V

    .line 10
    :cond_5
    iget v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    add-int/lit8 p2, p2, -0x3

    .line 11
    iget-object v4, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->next:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    if-nez v4, :cond_c

    .line 12
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    goto/16 :goto_a

    .line 13
    :cond_6
    iget-boolean v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->fatcode:Z

    if-eqz v4, :cond_7

    .line 14
    iget v4, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    add-int/lit8 v5, v4, 0x1

    sub-int v4, p2, v4

    invoke-virtual {p0, v5, v4}, Lorg/openjdk/tools/javac/jvm/Code;->put4(II)V

    goto :goto_5

    .line 15
    :cond_7
    iget v4, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->pc:I

    sub-int v5, p2, v4

    const/16 v6, -0x8000

    if-lt v5, v6, :cond_9

    sub-int v5, p2, v4

    const/16 v6, 0x7fff

    if-le v5, v6, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v4, 0x1

    sub-int v4, p2, v4

    .line 16
    invoke-direct {p0, v5, v4}, Lorg/openjdk/tools/javac/jvm/Code;->put2(II)V

    goto :goto_5

    .line 17
    :cond_9
    :goto_4
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->fatcode:Z

    .line 18
    :goto_5
    iget-boolean v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-eqz v4, :cond_b

    iget-object v4, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget v5, v4, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    iget v6, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->stacksize:I

    if-ne v5, v6, :cond_a

    iget v4, v4, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    iget v5, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->nlocks:I

    if-ne v4, v5, :cond_a

    goto :goto_6

    :cond_a
    move v4, v1

    goto :goto_7

    :cond_b
    :goto_6
    move v4, v3

    :goto_7
    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 19
    :cond_c
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->fixedPc:Z

    .line 20
    iget v4, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    if-ne v4, p2, :cond_f

    .line 21
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->debugCode:Z

    if-eqz v2, :cond_d

    .line 22
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolving chain state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    :cond_d
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-eqz v2, :cond_e

    .line 24
    iget-object v2, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/jvm/Code$State;->join(Lorg/openjdk/tools/javac/jvm/Code$State;)Lorg/openjdk/tools/javac/jvm/Code$State;

    move-result-object v0

    :goto_8
    move v2, v3

    goto :goto_9

    .line 25
    :cond_e
    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    .line 26
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    goto :goto_8

    .line 27
    :cond_f
    :goto_9
    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Code$Chain;->next:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    goto/16 :goto_0

    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    .line 28
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    if-eq p1, v0, :cond_12

    :cond_11
    move v1, v3

    :cond_12
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 29
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    if-eq p1, v0, :cond_13

    .line 30
    iget-object p1, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/jvm/Code;->setDefined(Lorg/openjdk/tools/javac/util/Bits;)V

    .line 31
    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    .line 32
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->needStackMap:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStackMap:Z

    :cond_13
    return-void
.end method

.method public resolvePending()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingJumps:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Code;->resolve(Lorg/openjdk/tools/javac/jvm/Code$Chain;I)V

    return-void
.end method

.method public setDefined(I)V
    .locals 2

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/Bits;->incl(I)V

    .line 13
    iget p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->cp:I

    const v1, 0xffff

    if-ge p1, v1, :cond_1

    int-to-char p1, p1

    .line 14
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->openRange(C)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefined(Lorg/openjdk/tools/javac/util/Bits;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->alive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    if-eq p1, v0, :cond_2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Lorg/openjdk/tools/javac/util/Bits;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->xorSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->nextBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_2

    .line 4
    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->nextreg:I

    if-lt v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v1, v1, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Bits;->isMember(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->setUndefined(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->setDefined(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Bits;->nextBit(I)I

    move-result v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setUndefined(I)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->state:Lorg/openjdk/tools/javac/jvm/Code$State;

    iget-object v0, v0, Lorg/openjdk/tools/javac/jvm/Code$State;->defined:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Bits;->excl(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->isLastRangeInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code;->curCP()I

    move-result v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v2

    iget-char v2, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    sub-int/2addr v1, v2

    int-to-char v1, v1

    const v2, 0xffff

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/jvm/Code;->lvar:[Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->dup()Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->closeRange(C)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/jvm/Code;->putVar(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->removeLastRange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public statBegin(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Code;->pendingStatPos:I

    :cond_0
    return-void
.end method
