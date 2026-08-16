.class public final Lcom/android/aapt/Resources$XmlElement$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$XmlElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$XmlElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$XmlElement$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$XmlElementOrBuilder;"
    }
.end annotation


# instance fields
.field private attributeBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$XmlAttribute;",
            "Lcom/android/aapt/Resources$XmlAttribute$Builder;",
            "Lcom/android/aapt/Resources$XmlAttributeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private attribute_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private childBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$XmlNode;",
            "Lcom/android/aapt/Resources$XmlNode$Builder;",
            "Lcom/android/aapt/Resources$XmlNodeOrBuilder;",
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

.field private name_:Ljava/lang/Object;

.field private namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$XmlNamespace;",
            "Lcom/android/aapt/Resources$XmlNamespace$Builder;",
            "Lcom/android/aapt/Resources$XmlNamespaceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private namespaceDeclaration_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private namespaceUri_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/V0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    .line 11
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/V0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$XmlElement;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$XmlElement;->C6(Lcom/android/aapt/Resources$XmlElement;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlElement;->A6(Lcom/android/aapt/Resources$XmlElement;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/aapt/Resources$XmlElement;)V
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlElement;->B6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlElement;->B6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    :cond_2
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlElement;->y6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlElement;->y6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    :cond_4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlElement;->z6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlElement;->z6(Lcom/android/aapt/Resources$XmlElement;Ljava/util/List;)V

    :goto_2
    return-void
.end method

.method private ensureAttributeIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureChildIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureNamespaceDeclarationIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAttributeFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$XmlAttribute;",
            "Lcom/android/aapt/Resources$XmlAttribute$Builder;",
            "Lcom/android/aapt/Resources$XmlAttributeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method private getChildFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$XmlNode;",
            "Lcom/android/aapt/Resources$XmlNode$Builder;",
            "Lcom/android/aapt/Resources$XmlNodeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->S0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getNamespaceDeclarationFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$XmlNamespace;",
            "Lcom/android/aapt/Resources$XmlNamespace$Builder;",
            "Lcom/android/aapt/Resources$XmlNamespaceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/G1;-><init>(Ljava/util/List;ZLcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public addAllAttribute(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$XmlAttribute;",
            ">;)",
            "Lcom/android/aapt/Resources$XmlElement$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAllChild(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$XmlNode;",
            ">;)",
            "Lcom/android/aapt/Resources$XmlElement$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAllNamespaceDeclaration(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$XmlNamespace;",
            ">;)",
            "Lcom/android/aapt/Resources$XmlElement$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAttribute(ILcom/android/aapt/Resources$XmlAttribute$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAttribute(ILcom/android/aapt/Resources$XmlAttribute;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAttribute(Lcom/android/aapt/Resources$XmlAttribute$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAttribute(Lcom/android/aapt/Resources$XmlAttribute;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAttributeBuilder()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getAttributeFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->getDefaultInstance()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$XmlAttribute$Builder;

    return-object v0
.end method

.method public addAttributeBuilder(I)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getAttributeFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->getDefaultInstance()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute$Builder;

    return-object p1
.end method

.method public addChild(ILcom/android/aapt/Resources$XmlNode$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addChild(ILcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addChild(Lcom/android/aapt/Resources$XmlNode$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addChild(Lcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addChildBuilder()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getChildFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$XmlNode;->getDefaultInstance()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$XmlNode$Builder;

    return-object v0
.end method

.method public addChildBuilder(I)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getChildFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$XmlNode;->getDefaultInstance()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNode$Builder;

    return-object p1
.end method

.method public addNamespaceDeclaration(ILcom/android/aapt/Resources$XmlNamespace$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNamespace$Builder;->build()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNamespace$Builder;->build()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addNamespaceDeclaration(ILcom/android/aapt/Resources$XmlNamespace;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addNamespaceDeclaration(Lcom/android/aapt/Resources$XmlNamespace$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNamespace$Builder;->build()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNamespace$Builder;->build()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addNamespaceDeclaration(Lcom/android/aapt/Resources$XmlNamespace;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addNamespaceDeclarationBuilder()Lcom/android/aapt/Resources$XmlNamespace$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getNamespaceDeclarationFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$XmlNamespace;->getDefaultInstance()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$XmlNamespace$Builder;

    return-object v0
.end method

.method public addNamespaceDeclarationBuilder(I)Lcom/android/aapt/Resources$XmlNamespace$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getNamespaceDeclarationFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$XmlNamespace;->getDefaultInstance()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNamespace$Builder;

    return-object p1
.end method

.method public build()Lcom/android/aapt/Resources$XmlElement;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->build()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->build()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$XmlElement;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$XmlElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$XmlElement;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/W0;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$XmlElement$Builder;->buildPartialRepeatedFields(Lcom/android/aapt/Resources$XmlElement;)V

    .line 5
    iget v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$XmlElement$Builder;->buildPartial0(Lcom/android/aapt/Resources$XmlElement;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    goto :goto_0

    .line 9
    :cond_0
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    .line 11
    :goto_0
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    goto :goto_1

    .line 16
    :cond_1
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    .line 18
    :goto_1
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 19
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_2

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    goto :goto_2

    .line 21
    :cond_2
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    .line 22
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    .line 23
    :goto_2
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->clear()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->clear()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->clear()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->clear()Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttribute()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearChild()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearName()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearNamespaceDeclaration()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearNamespaceUri()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getAttribute(I)Lcom/android/aapt/Resources$XmlAttribute;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute;

    return-object p1
.end method

.method public getAttributeBuilder(I)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getAttributeFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute$Builder;

    return-object p1
.end method

.method public getAttributeBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlAttribute$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getAttributeFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

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

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeOrBuilder(I)Lcom/android/aapt/Resources$XmlAttributeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttributeOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChild(I)Lcom/android/aapt/Resources$XmlNode;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNode;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNode;

    return-object p1
.end method

.method public getChildBuilder(I)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getChildFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNode$Builder;

    return-object p1
.end method

.method public getChildBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlNode$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getChildFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

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

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildOrBuilder(I)Lcom/android/aapt/Resources$XmlNodeOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNodeOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlElement;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->S0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getNamespaceDeclaration(I)Lcom/android/aapt/Resources$XmlNamespace;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNamespace;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNamespace;

    return-object p1
.end method

.method public getNamespaceDeclarationBuilder(I)Lcom/android/aapt/Resources$XmlNamespace$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getNamespaceDeclarationFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNamespace$Builder;

    return-object p1
.end method

.method public getNamespaceDeclarationBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$XmlNamespace$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getNamespaceDeclarationFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceDeclarationCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

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

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceDeclarationOrBuilder(I)Lcom/android/aapt/Resources$XmlNamespaceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNamespaceOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceUriBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 12
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->w6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->w6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    .line 15
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 17
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->w6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_2

    .line 19
    :cond_2
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->w6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 22
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    .line 23
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->w6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    .line 24
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 25
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getNamespaceDeclarationFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    goto :goto_2

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->w6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 28
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 29
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->x6(Lcom/android/aapt/Resources$XmlElement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 30
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 31
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 32
    :cond_6
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->v6(Lcom/android/aapt/Resources$XmlElement;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    .line 34
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_9

    .line 37
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->t6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 38
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 39
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->t6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    .line 40
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    goto :goto_3

    .line 41
    :cond_8
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 42
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->t6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_5

    .line 44
    :cond_9
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->t6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 47
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    .line 48
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->t6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    .line 49
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 50
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 51
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getAttributeFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_4

    :cond_a
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    goto :goto_5

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->t6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 53
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_e

    .line 54
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->u6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->u6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    .line 57
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    goto :goto_6

    .line 58
    :cond_d
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 59
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->u6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :goto_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_7

    .line 61
    :cond_e
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->u6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 62
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 64
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    .line 65
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->u6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    .line 66
    iget v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    .line 67
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->access$3900()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->getChildFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v1

    :cond_f
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    goto :goto_7

    .line 69
    :cond_10
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->u6(Lcom/android/aapt/Resources$XmlElement;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 70
    :cond_11
    :goto_7
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;

    .line 71
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_a

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_8

    const/16 v3, 0x12

    if-eq v1, v3, :cond_7

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_6

    const/16 v3, 0x22

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2

    .line 74
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 75
    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$XmlNode;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 76
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$XmlNode;

    .line 77
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 79
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 81
    :cond_4
    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 82
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$XmlAttribute;

    .line 83
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_5

    .line 84
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 85
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_5
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 87
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    .line 88
    iget v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    goto :goto_0

    .line 89
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 90
    iget v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    goto :goto_0

    .line 91
    :cond_8
    invoke-static {}, Lcom/android/aapt/Resources$XmlNamespace;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$XmlNamespace;

    .line 93
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_9

    .line 94
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 95
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 96
    :cond_9
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 97
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 99
    throw p1

    .line 100
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$XmlElement;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$XmlElement;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlElement$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeAttribute(I)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public removeChild(I)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public removeNamespaceDeclaration(I)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public setAttribute(ILcom/android/aapt/Resources$XmlAttribute$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setAttribute(ILcom/android/aapt/Resources$XmlAttribute;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attributeBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureAttributeIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->attribute_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setChild(ILcom/android/aapt/Resources$XmlNode$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setChild(ILcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->childBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureChildIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->child_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->access$4100(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->name_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNamespaceDeclaration(ILcom/android/aapt/Resources$XmlNamespace$Builder;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNamespace$Builder;->build()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$XmlNamespace$Builder;->build()Lcom/android/aapt/Resources$XmlNamespace;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setNamespaceDeclaration(ILcom/android/aapt/Resources$XmlNamespace;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclarationBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlElement$Builder;->ensureNamespaceDeclarationIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceDeclaration_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setNamespaceUri(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNamespaceUriBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlElement;->access$4000(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->namespaceUri_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$XmlElement$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlElement$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    return-object p1
.end method
