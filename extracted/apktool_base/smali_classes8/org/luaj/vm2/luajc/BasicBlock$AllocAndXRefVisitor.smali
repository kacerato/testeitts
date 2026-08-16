.class final Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;
.super Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/luaj/vm2/luajc/BasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocAndXRefVisitor"
.end annotation


# instance fields
.field private final blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

.field private final nnext:[I

.field private final nprev:[I


# direct methods
.method private constructor <init>([Z[I[I[Lorg/luaj/vm2/luajc/BasicBlock;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/luaj/vm2/luajc/BasicBlock$BranchVisitor;-><init>([Z)V

    iput-object p2, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->nnext:[I

    iput-object p3, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->nprev:[I

    iput-object p4, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

    return-void
.end method

.method public synthetic constructor <init>([Z[I[I[Lorg/luaj/vm2/luajc/BasicBlock;Lorg/luaj/vm2/luajc/BasicBlock$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;-><init>([Z[I[I[Lorg/luaj/vm2/luajc/BasicBlock;)V

    return-void
.end method


# virtual methods
.method public visitBranch(II)V
    .locals 5

    iget-object v0, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->blocks:[Lorg/luaj/vm2/luajc/BasicBlock;

    aget-object v1, v0, p1

    iget-object v2, v1, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->nnext:[I

    aget v2, v2, p1

    new-array v2, v2, [Lorg/luaj/vm2/luajc/BasicBlock;

    iput-object v2, v1, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    :cond_0
    aget-object v2, v0, p2

    iget-object v3, v2, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->nprev:[I

    aget v3, v3, p2

    new-array v3, v3, [Lorg/luaj/vm2/luajc/BasicBlock;

    iput-object v3, v2, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    :cond_1
    iget-object v1, v1, Lorg/luaj/vm2/luajc/BasicBlock;->next:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget-object v3, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->nnext:[I

    aget v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, p1

    aput-object v2, v1, v4

    aget-object v1, v0, p2

    iget-object v1, v1, Lorg/luaj/vm2/luajc/BasicBlock;->prev:[Lorg/luaj/vm2/luajc/BasicBlock;

    iget-object v2, p0, Lorg/luaj/vm2/luajc/BasicBlock$AllocAndXRefVisitor;->nprev:[I

    aget v3, v2, p2

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, p2

    aget-object p1, v0, p1

    aput-object p1, v1, v3

    return-void
.end method
