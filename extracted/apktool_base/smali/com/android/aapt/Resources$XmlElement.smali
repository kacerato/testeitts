.class public final Lcom/android/aapt/Resources$XmlElement;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$XmlElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/aapt/Resources$XmlElement$Builder;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_FIELD_NUMBER:I = 0x4

.field public static final CHILD_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlElement;

.field public static final NAMESPACE_DECLARATION_FIELD_NUMBER:I = 0x1

.field public static final NAMESPACE_URI_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/w1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private attribute_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private child_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlNode;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private namespaceDeclaration_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private volatile namespaceUri_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/aapt/Resources$XmlElement;

    invoke-direct {v0}, Lcom/android/aapt/Resources$XmlElement;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$XmlElement;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlElement;

    new-instance v0, Lcom/android/aapt/Resources$XmlElement$1;

    invoke-direct {v0}, Lcom/android/aapt/Resources$XmlElement$1;-><init>()V

    sput-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 9
    iput-byte v1, p0, Lcom/android/aapt/Resources$XmlElement;->memoizedIsInitialized:B

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$b<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/w0$b;)V

    .line 3
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lcom/android/aapt/Resources$XmlElement;->memoizedIsInitialized:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/W0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$XmlElement;-><init>(Lcom/google/protobuf/w0$b;)V

    return-void
.end method

.method public static bridge synthetic A6(Lcom/android/aapt/Resources$XmlElement;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic B6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic C6(Lcom/android/aapt/Resources$XmlElement;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$3700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$3900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/w0;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static synthetic access$4000(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static synthetic access$4100(Lcom/google/protobuf/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;
    .locals 1

    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlElement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->S0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlElement;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->toBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlElement;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->toBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseDelimitedWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Lcom/google/protobuf/x;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/w0;->parseWithIOException(Lcom/google/protobuf/w1;Ljava/io/InputStream;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0}, Lcom/google/protobuf/w1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/w1;->parseFrom([BLcom/google/protobuf/d0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/aapt/Resources$XmlElement;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$XmlElement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public static bridge synthetic t6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic u6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic v6(Lcom/android/aapt/Resources$XmlElement;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic w6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic x6(Lcom/android/aapt/Resources$XmlElement;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic y6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic z6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/aapt/Resources$XmlElement;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/aapt/Resources$XmlElement;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceDeclarationList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceDeclarationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getAttributeList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement;->getAttributeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getChildList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement;->getChildList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getAttribute(I)Lcom/android/aapt/Resources$XmlAttribute;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute;

    return-object p1
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlAttribute;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method public getAttributeOrBuilder(I)Lcom/android/aapt/Resources$XmlAttributeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttributeOrBuilder;

    return-object p1
.end method

.method public getAttributeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$XmlAttributeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    return-object v0
.end method

.method public getChild(I)Lcom/android/aapt/Resources$XmlNode;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNode;

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getChildOrBuilder(I)Lcom/android/aapt/Resources$XmlNodeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNodeOrBuilder;

    return-object p1
.end method

.method public getChildOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$XmlNodeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlElement;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlElement;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getNamespaceDeclaration(I)Lcom/android/aapt/Resources$XmlNamespace;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNamespace;

    return-object p1
.end method

.method public getNamespaceDeclarationCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNamespaceDeclarationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlNamespace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    return-object v0
.end method

.method public getNamespaceDeclarationOrBuilder(I)Lcom/android/aapt/Resources$XmlNamespaceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNamespaceOrBuilder;

    return-object p1
.end method

.method public getNamespaceDeclarationOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$XmlNamespaceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNamespaceUriBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/w1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w1<",
            "Lcom/android/aapt/Resources$XmlElement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->PARSER:Lcom/google/protobuf/w1;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    :cond_2
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/w0;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v2, v1

    :cond_3
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/b1;

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->F0(ILcom/google/protobuf/b1;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x30b

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceDeclarationCount()I

    move-result v0

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceDeclarationList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getAttributeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    mul-int/lit8 v1, v1, 0x25

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x35

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->T0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$XmlElement;

    const-class v2, Lcom/android/aapt/Resources$XmlElement$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/aapt/Resources$XmlElement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/android/aapt/Resources$XmlElement;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->newBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/aapt/Resources$XmlElement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/aapt/Resources$XmlElement$Builder;-><init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/V0;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->newBuilderForType()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement;->newBuilderForType(Lcom/google/protobuf/w0$c;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->newBuilderForType()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Lcom/google/protobuf/w0$i;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/android/aapt/Resources$XmlElement;

    invoke-direct {p1}, Lcom/android/aapt/Resources$XmlElement;-><init>()V

    return-object p1
.end method

.method public toBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 2

    .line 3
    sget-object v0, Lcom/android/aapt/Resources$XmlElement;->DEFAULT_INSTANCE:Lcom/android/aapt/Resources$XmlElement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/aapt/Resources$XmlElement$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$XmlElement$Builder;-><init>(Lcom/android/aapt/V0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/aapt/Resources$XmlElement$Builder;

    invoke-direct {v0, v1}, Lcom/android/aapt/Resources$XmlElement$Builder;-><init>(Lcom/android/aapt/V0;)V

    invoke-virtual {v0, p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->toBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement;->toBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement;->namespaceUri_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/w0;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement;->name_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/w0;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement;->attribute_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/b1;

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement;->child_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/b1;

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L1(ILcom/google/protobuf/b1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
