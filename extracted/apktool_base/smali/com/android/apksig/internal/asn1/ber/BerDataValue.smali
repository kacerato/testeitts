.class public Lcom/android/apksig/internal/asn1/ber/BerDataValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;
    }
.end annotation


# instance fields
.field private final mConstructed:Z

.field private final mEncoded:Ljava/nio/ByteBuffer;

.field private final mEncodedContents:Ljava/nio/ByteBuffer;

.field private final mTagClass:I

.field private final mTagNumber:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mEncoded:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mEncodedContents:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mTagClass:I

    iput-boolean p4, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mConstructed:Z

    iput p5, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mTagNumber:I

    return-void
.end method


# virtual methods
.method public contentsReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;
    .locals 2

    new-instance v0, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getEncodedContents()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public dataValueReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;
    .locals 1

    new-instance v0, Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue$ParsedValueReader;-><init>(Lcom/android/apksig/internal/asn1/ber/BerDataValue;)V

    return-object v0
.end method

.method public getEncoded()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mEncoded:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedContents()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mEncodedContents:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTagClass()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mTagClass:I

    return v0
.end method

.method public getTagNumber()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mTagNumber:I

    return v0
.end method

.method public isConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->mConstructed:Z

    return v0
.end method
