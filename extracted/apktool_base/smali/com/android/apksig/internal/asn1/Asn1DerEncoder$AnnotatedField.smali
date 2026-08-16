.class final Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/Asn1DerEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotatedField"
.end annotation


# instance fields
.field private final mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

.field private final mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

.field private final mDerTagClass:I

.field private final mDerTagNumber:I

.field private final mElementDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

.field private final mField:Ljava/lang/reflect/Field;

.field private final mObject:Ljava/lang/Object;

.field private final mOptional:Z

.field private final mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field private final mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mObject:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->elementType()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object p2

    iput-object p2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mElementDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->cls()Lcom/android/apksig/internal/asn1/Asn1TagClass;

    move-result-object p2

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v1, -0x1

    if-ne p2, v0, :cond_1

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result p2

    if-eq p2, v1, :cond_0

    sget-object p2, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-static {p2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagClass(Lcom/android/apksig/internal/asn1/Asn1TagClass;)I

    move-result p2

    iput p2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagClass:I

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result p2

    if-eq p2, v1, :cond_2

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result p1

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/android/apksig/internal/asn1/Asn1Type;->CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-eq p1, p2, :cond_4

    sget-object p2, Lcom/android/apksig/internal/asn1/Asn1Type;->ANY:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result p1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v1

    :goto_2
    iput p1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagging()Lcom/android/apksig/internal/asn1/Asn1Tagging;

    move-result-object p1

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    sget-object p2, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-eq p1, p2, :cond_5

    sget-object p2, Lcom/android/apksig/internal/asn1/Asn1Tagging;->IMPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-ne p1, p2, :cond_6

    :cond_5
    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result p2

    if-eq p2, v1, :cond_7

    :cond_6
    invoke-interface {p3}, Lcom/android/apksig/internal/asn1/Asn1Field;->optional()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mOptional:Z

    return-void

    :cond_7
    new-instance p2, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tag number must be specified when tagging mode is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public toDer()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$100(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mOptional:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    const-string v1, "Required field not set"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    iget-object v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mElementDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-static {v0, v1, v2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$JavaToDerConverter;->toDer(Ljava/lang/Object;Lcom/android/apksig/internal/asn1/Asn1Type;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    move-result-object v0

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Tagging:[I

    iget-object v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    invoke-static {v2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(B)I

    move-result v2

    const/16 v3, 0x1f

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    if-ge v2, v3, :cond_2

    aget-byte v3, v0, v1

    invoke-static {v3, v2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->setTagNumber(BI)B

    move-result v2

    aput-byte v2, v0, v1

    iget v3, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagClass:I

    invoke-static {v2, v3}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->setTagClass(BI)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0

    :cond_2
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported high tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    const-string v1, "High-tag-number form not supported"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tagging mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagClass:I

    iget v3, p0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->mDerTagNumber:I

    filled-new-array {v0}, [[B

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$200(IZI[[B)[B

    move-result-object v0

    :cond_6
    return-object v0
.end method
