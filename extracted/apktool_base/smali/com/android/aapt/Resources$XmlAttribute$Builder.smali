.class public final Lcom/android/aapt/Resources$XmlAttribute$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$XmlAttributeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$XmlAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$XmlAttribute$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$XmlAttributeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private compiledItemBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Item;",
            "Lcom/android/aapt/Resources$Item$Builder;",
            "Lcom/android/aapt/Resources$ItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private compiledItem_:Lcom/android/aapt/Resources$Item;

.field private name_:Ljava/lang/Object;

.field private namespaceUri_:Ljava/lang/Object;

.field private resourceId_:I

.field private sourceBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$SourcePosition;",
            "Lcom/android/aapt/Resources$SourcePosition$Builder;",
            "Lcom/android/aapt/Resources$SourcePositionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private source_:Lcom/android/aapt/Resources$SourcePosition;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/T0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/T0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$XmlAttribute;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$XmlAttribute;->y6(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$XmlAttribute;->x6(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$XmlAttribute;->B6(Lcom/android/aapt/Resources$XmlAttribute;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$SourcePosition;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$XmlAttribute;->A6(Lcom/android/aapt/Resources$XmlAttribute;Lcom/android/aapt/Resources$SourcePosition;)V

    :cond_4
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->resourceId_:I

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$XmlAttribute;->z6(Lcom/android/aapt/Resources$XmlAttribute;I)V

    :cond_5
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Item;

    :goto_1
    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlAttribute;->w6(Lcom/android/aapt/Resources$XmlAttribute;Lcom/android/aapt/Resources$Item;)V

    :cond_7
    return-void
.end method

.method private getCompiledItemFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Item;",
            "Lcom/android/aapt/Resources$Item$Builder;",
            "Lcom/android/aapt/Resources$ItemOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getCompiledItem()Lcom/android/aapt/Resources$Item;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->Q0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getSourceFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$SourcePosition;",
            "Lcom/android/aapt/Resources$SourcePosition$Builder;",
            "Lcom/android/aapt/Resources$SourcePositionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$XmlAttribute;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->build()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$XmlAttribute;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$XmlAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$XmlAttribute;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/U0;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->buildPartial0(Lcom/android/aapt/Resources$XmlAttribute;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 8
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    .line 11
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->d()V

    .line 13
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    .line 14
    :cond_0
    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->resourceId_:I

    .line 15
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    .line 16
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->d()V

    .line 18
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->clear()Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->clear()Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->clear()Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->clear()Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCompiledItem()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->getDefaultInstance()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearNamespaceUri()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->getDefaultInstance()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearResourceId()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->resourceId_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearValue()Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->getDefaultInstance()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getCompiledItem()Lcom/android/aapt/Resources$Item;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Item;

    return-object v0
.end method

.method public getCompiledItemBuilder()Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getCompiledItemFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Item$Builder;

    return-object v0
.end method

.method public getCompiledItemOrBuilder()Lcom/android/aapt/Resources$ItemOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ItemOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlAttribute;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->getDefaultInstance()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->Q0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceUriBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->resourceId_:I

    return v0
.end method

.method public getSource()Lcom/android/aapt/Resources$SourcePosition;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition;

    return-object v0
.end method

.method public getSourceBuilder()Lcom/android/aapt/Resources$SourcePosition$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourcePositionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePositionOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public hasCompiledItem()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSource()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->R0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$XmlAttribute;

    const-class v2, Lcom/android/aapt/Resources$XmlAttribute$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeCompiledItem(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getCompiledItemBuilder()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$XmlAttribute;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$XmlAttribute;->getDefaultInstance()Lcom/android/aapt/Resources$XmlAttribute;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlAttribute;->u6(Lcom/android/aapt/Resources$XmlAttribute;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 13
    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlAttribute;->t6(Lcom/android/aapt/Resources$XmlAttribute;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    .line 17
    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 20
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlAttribute;->v6(Lcom/android/aapt/Resources$XmlAttribute;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    .line 21
    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getResourceId()I

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->setResourceId(I)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    .line 27
    :cond_5
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->hasCompiledItem()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlAttribute;->getCompiledItem()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeCompiledItem(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    .line 29
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    .line 30
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_8

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0x12

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x22

    if-eq v1, v3, :cond_4

    const/16 v3, 0x28

    if-eq v1, v3, :cond_3

    const/16 v3, 0x32

    if-eq v1, v3, :cond_2

    .line 33
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getCompiledItemFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 36
    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->resourceId_:I

    .line 38
    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    goto :goto_0

    .line 39
    :cond_4
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 41
    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    goto :goto_0

    .line 42
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    .line 43
    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    goto :goto_0

    .line 44
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    .line 45
    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    goto :goto_0

    .line 46
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    .line 47
    iget v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 48
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 50
    throw p1

    .line 51
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$XmlAttribute;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlAttribute;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->getSourceBuilder()Lcom/android/aapt/Resources$SourcePosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->mergeFrom(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$SourcePosition$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setCompiledItem(Lcom/android/aapt/Resources$Item$Builder;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item$Builder;->build()Lcom/android/aapt/Resources$Item;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item$Builder;->build()Lcom/android/aapt/Resources$Item;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setCompiledItem(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->compiledItem_:Lcom/android/aapt/Resources$Item;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlAttribute;->access$4500(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->name_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNamespaceUri(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNamespaceUriBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlAttribute;->access$4400(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->namespaceUri_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setResourceId(I)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->resourceId_:I

    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$SourcePosition$Builder;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlAttribute$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlAttribute$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlAttribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlAttribute$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlAttribute;->access$4600(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->value_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$XmlAttribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
