.class public Lorg/openjdk/tools/javac/jvm/Items;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/Items$CondItem;,
        Lorg/openjdk/tools/javac/jvm/Items$AssignItem;,
        Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;,
        Lorg/openjdk/tools/javac/jvm/Items$MemberItem;,
        Lorg/openjdk/tools/javac/jvm/Items$DynamicItem;,
        Lorg/openjdk/tools/javac/jvm/Items$StaticItem;,
        Lorg/openjdk/tools/javac/jvm/Items$LocalItem;,
        Lorg/openjdk/tools/javac/jvm/Items$SelfItem;,
        Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;,
        Lorg/openjdk/tools/javac/jvm/Items$StackItem;,
        Lorg/openjdk/tools/javac/jvm/Items$Item;
    }
.end annotation


# instance fields
.field code:Lorg/openjdk/tools/javac/jvm/Code;

.field pool:Lorg/openjdk/tools/javac/jvm/Pool;

.field private final stackItem:[Lorg/openjdk/tools/javac/jvm/Items$Item;

.field private final superItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final thisItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

.field types:Lorg/openjdk/tools/javac/code/Types;

.field private final voidItem:Lorg/openjdk/tools/javac/jvm/Items$Item;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/jvm/Pool;Lorg/openjdk/tools/javac/jvm/Code;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Types;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/openjdk/tools/javac/jvm/Items$Item;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items;->stackItem:[Lorg/openjdk/tools/javac/jvm/Items$Item;

    iput-object p2, p0, Lorg/openjdk/tools/javac/jvm/Items;->code:Lorg/openjdk/tools/javac/jvm/Code;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items;->pool:Lorg/openjdk/tools/javac/jvm/Pool;

    iput-object p4, p0, Lorg/openjdk/tools/javac/jvm/Items;->types:Lorg/openjdk/tools/javac/code/Types;

    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$1;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lorg/openjdk/tools/javac/jvm/Items$1;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items;->voidItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items;->thisItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

    new-instance p1, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lorg/openjdk/tools/javac/jvm/Items$SelfItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items;->superItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

    :goto_0
    if-ge p4, p2, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items;->stackItem:[Lorg/openjdk/tools/javac/jvm/Items$Item;

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$StackItem;

    invoke-direct {v0, p0, p4}, Lorg/openjdk/tools/javac/jvm/Items$StackItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;I)V

    aput-object v0, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/jvm/Items;->stackItem:[Lorg/openjdk/tools/javac/jvm/Items$Item;

    iget-object p4, p0, Lorg/openjdk/tools/javac/jvm/Items;->voidItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

    aput-object p4, p1, p2

    iput-object p3, p0, Lorg/openjdk/tools/javac/jvm/Items;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/jvm/Items;)[Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/jvm/Items;->stackItem:[Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-object p0
.end method

.method private makeLocalItem(Lorg/openjdk/tools/javac/code/Type;I)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;
    .locals 1

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;I)V

    return-object v0
.end method


# virtual methods
.method public makeAssignItem(Lorg/openjdk/tools/javac/jvm/Items$Item;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/jvm/Items$AssignItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/jvm/Items$Item;)V

    return-object v0
.end method

.method public makeCondItem(I)Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lorg/openjdk/tools/javac/jvm/Items;->makeCondItem(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    move-result-object p1

    return-object p1
.end method

.method public makeCondItem(ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Items$CondItem;
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$CondItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/jvm/Items$CondItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;ILorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)V

    return-object v0
.end method

.method public makeDynamicItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$DynamicItem;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/jvm/Items$DynamicItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method public makeImmediateItem(Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Items$ImmediateItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;Ljava/lang/Object;)V

    return-object v0
.end method

.method public makeIndexedItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/jvm/Items$IndexedItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;)V

    return-object v0
.end method

.method public makeLocalItem(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)Lorg/openjdk/tools/javac/jvm/Items$LocalItem;
    .locals 2

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Items;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iget p1, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    invoke-direct {v0, p0, v1, p1}, Lorg/openjdk/tools/javac/jvm/Items$LocalItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Type;I)V

    return-object v0
.end method

.method public makeMemberItem(Lorg/openjdk/tools/javac/code/Symbol;Z)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$MemberItem;

    invoke-direct {v0, p0, p1, p2}, Lorg/openjdk/tools/javac/jvm/Items$MemberItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Symbol;Z)V

    return-object v0
.end method

.method public makeStackItem(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items;->stackItem:[Lorg/openjdk/tools/javac/jvm/Items$Item;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Code;->typecode(Lorg/openjdk/tools/javac/code/Type;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public makeStaticItem(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/jvm/Items$StaticItem;-><init>(Lorg/openjdk/tools/javac/jvm/Items;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method public makeSuperItem()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items;->superItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-object v0
.end method

.method public makeThisItem()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items;->thisItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-object v0
.end method

.method public makeVoidItem()Lorg/openjdk/tools/javac/jvm/Items$Item;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Items;->voidItem:Lorg/openjdk/tools/javac/jvm/Items$Item;

    return-object v0
.end method
