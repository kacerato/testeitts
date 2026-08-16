.class public Lorg/eclipse/jdt/core/BufferChangedEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x9186028be6660cfL


# instance fields
.field private length:I

.field private offset:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IBuffer;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lorg/eclipse/jdt/core/BufferChangedEvent;->offset:I

    iput p3, p0, Lorg/eclipse/jdt/core/BufferChangedEvent;->length:I

    iput-object p4, p0, Lorg/eclipse/jdt/core/BufferChangedEvent;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jdt/core/IBuffer;
    .locals 1

    iget-object v0, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jdt/core/IBuffer;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/BufferChangedEvent;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/BufferChangedEvent;->offset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/BufferChangedEvent;->text:Ljava/lang/String;

    return-object v0
.end method
