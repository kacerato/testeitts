.class Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cursor"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$1:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->this$1:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->position:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->position:I

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->this$1:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iget-object v1, v1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->this$1:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iget-object v0, v0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;->store:Ljava/util/ArrayList;

    iget v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->position:I

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public update(II)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->position:I

    if-le v0, p1, :cond_0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList$Cursor;->position:I

    :cond_0
    return-void
.end method
