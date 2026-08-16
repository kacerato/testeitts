.class public Lcom/ardor3d/util/export/binary/BinaryIdContentPair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _content:Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

.field private _id:I


# direct methods
.method public constructor <init>(ILcom/ardor3d/util/export/binary/BinaryOutputCapsule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->_id:I

    iput-object p2, p0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->_content:Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    return-void
.end method


# virtual methods
.method public getContent()Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->_content:Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->_id:I

    return v0
.end method

.method public setContent(Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->_content:Lcom/ardor3d/util/export/binary/BinaryOutputCapsule;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/util/export/binary/BinaryIdContentPair;->_id:I

    return-void
.end method
