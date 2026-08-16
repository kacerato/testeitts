.class public Lorg/eclipse/jdt/core/dom/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private length:I

.field private message:Ljava/lang/String;

.field private startPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Message;->message:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/core/dom/Message;->startPosition:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/eclipse/jdt/core/dom/Message;->length:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Message;->message:Ljava/lang/String;

    .line 9
    iput p2, p0, Lorg/eclipse/jdt/core/dom/Message;->startPosition:I

    if-gtz p3, :cond_0

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/eclipse/jdt/core/dom/Message;->length:I

    goto :goto_0

    .line 11
    :cond_0
    iput p3, p0, Lorg/eclipse/jdt/core/dom/Message;->length:I

    :goto_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/Message;->length:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Message;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePosition()I
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Message;->getStartPosition()I

    move-result v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/Message;->startPosition:I

    return v0
.end method
