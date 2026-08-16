.class final Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/Asn1BerParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotatedField"
.end annotation


# instance fields
.field private final mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

.field private final mBerTagClass:I

.field private final mBerTagNumber:I

.field private final mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

.field private final mField:Ljava/lang/reflect/Field;

.field private final mOptional:Z

.field private final mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field private final mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->cls()Lcom/android/apksig/internal/asn1/Asn1TagClass;

    move-result-object v0

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagClass(Lcom/android/apksig/internal/asn1/Asn1TagClass;)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result p1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->ANY:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result p1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v2

    :goto_2
    iput p1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagging()Lcom/android/apksig/internal/asn1/Asn1Tagging;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Tagging;->IMPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-ne p1, v0, :cond_6

    :cond_5
    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    if-eq v0, v2, :cond_7

    :cond_6
    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->optional()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mOptional:Z

    return-void

    :cond_7
    new-instance p2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag number must be specified when tagging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    return-object v0
.end method

.method public getBerTagClass()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    return v0
.end method

.method public getBerTagNumber()I
    .locals 1

    iget v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    return v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mOptional:Z

    return v0
.end method

.method public setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagClass()I

    move-result v0

    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    const/4 v2, -0x1

    const-string v3, ", but found "

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagNumber()I

    move-result v1

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag mismatch. Expected: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    iget v4, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    invoke-static {v2, v4}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    if-ne v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->contentsReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v0, "Failed to read contents of EXPLICIT data value"

    invoke-direct {p2, v0, p1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-static {p2, v0, v1, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$BerToJavaConverter;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Type;Lcom/android/apksig/internal/asn1/ber/BerDataValue;)V

    return-void

    :cond_3
    new-instance p1, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tag mismatch. Expected class: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    invoke-static {v1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
