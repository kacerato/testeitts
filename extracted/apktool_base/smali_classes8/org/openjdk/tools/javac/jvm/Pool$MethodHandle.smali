.class public Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Pool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodHandle"
.end annotation


# instance fields
.field initFilter:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation
.end field

.field nonInitFilter:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;"
        }
    .end annotation
.end field

.field refKind:I

.field refSym:Lorg/openjdk/tools/javac/code/Symbol;

.field uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;


# direct methods
.method public constructor <init>(ILorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/jvm/d;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/d;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->nonInitFilter:Lorg/openjdk/tools/javac/util/Filter;

    new-instance v0, Lorg/openjdk/tools/javac/jvm/e;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/jvm/e;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->initFilter:Lorg/openjdk/tools/javac/util/Filter;

    iput p1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refKind:I

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    new-instance p1, Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p1, p2, p3}, Lorg/openjdk/tools/javac/code/Types$UniqueType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->checkConsistent()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->lambda$new$1(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->lambda$new$0(Lorg/openjdk/tools/javac/util/Name;)Z

    move-result p0

    return p0
.end method

.method private checkConsistent()V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->nonInitFilter:Lorg/openjdk/tools/javac/util/Filter;

    iget v1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refKind:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    move v1, v3

    move v5, v1

    goto :goto_5

    :pswitch_0
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    :goto_1
    move-object v4, v1

    move v5, v2

    move v1, v3

    goto :goto_5

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->initFilter:Lorg/openjdk/tools/javac/util/Filter;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    goto :goto_1

    :pswitch_3
    move v1, v2

    :goto_2
    move v4, v1

    goto :goto_3

    :pswitch_4
    move v1, v3

    goto :goto_2

    :goto_3
    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move-object v7, v5

    move v5, v4

    move-object v4, v7

    goto :goto_5

    :pswitch_5
    move v1, v2

    goto :goto_4

    :pswitch_6
    move v1, v3

    :goto_4
    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    move v5, v3

    :goto_5
    iget-object v6, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_0

    goto :goto_6

    :cond_0
    move v1, v3

    goto :goto_7

    :cond_1
    :goto_6
    move v1, v2

    :goto_7
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_8

    :cond_2
    move v1, v3

    :goto_8
    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v5, :cond_3

    goto :goto_9

    :cond_3
    move v2, v3

    :cond_4
    :goto_9
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$new$0(Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-eq p0, v1, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->clinit:Lorg/openjdk/tools/javac/util/Name;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$new$1(Lorg/openjdk/tools/javac/util/Name;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;

    iget v0, p1, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refKind:I

    iget v2, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refKind:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v3, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v4, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne v0, v2, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Types$UniqueType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refKind:I

    mul-int/lit8 v0, v0, 0x41

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x21

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->refSym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Pool$MethodHandle;->uniqueType:Lorg/openjdk/tools/javac/code/Types$UniqueType;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Types$UniqueType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
