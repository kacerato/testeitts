.class public final Lcom/android/aapt/Resources$XmlNode$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$XmlNodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$XmlNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$XmlNode$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$XmlNodeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private elementBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$XmlElement;",
            "Lcom/android/aapt/Resources$XmlElement$Builder;",
            "Lcom/android/aapt/Resources$XmlElementOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private nodeCase_:I

.field private node_:Ljava/lang/Object;

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/Z0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/Z0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$XmlNode;)V
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition;

    :goto_0
    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlNode;->w6(Lcom/android/aapt/Resources$XmlNode;Lcom/android/aapt/Resources$SourcePosition;)V

    :cond_1
    return-void
.end method

.method private buildPartialOneofs(Lcom/android/aapt/Resources$XmlNode;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlNode;->u6(Lcom/android/aapt/Resources$XmlNode;I)V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlNode;->v6(Lcom/android/aapt/Resources$XmlNode;Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$XmlNode;->v6(Lcom/android/aapt/Resources$XmlNode;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->W0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getElementFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$XmlElement;",
            "Lcom/android/aapt/Resources$XmlElement$Builder;",
            "Lcom/android/aapt/Resources$XmlElementOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$XmlElement;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$XmlNode;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$XmlNode;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->build()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$XmlNode;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$XmlNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$XmlNode;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/a1;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$XmlNode$Builder;->buildPartial0(Lcom/android/aapt/Resources$XmlNode;)V

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$XmlNode$Builder;->buildPartialOneofs(Lcom/android/aapt/Resources$XmlNode;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    .line 7
    iget-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    .line 10
    iget-object v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->d()V

    .line 12
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    .line 13
    :cond_1
    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    .line 14
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->clear()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->clear()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->clear()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->clear()Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearElement()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearNode()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    iget-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearText()Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlNode;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$XmlNode;->getDefaultInstance()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->W0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lcom/android/aapt/Resources$XmlElement;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public getElementBuilder()Lcom/android/aapt/Resources$XmlElement$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getElementFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$XmlElement$Builder;

    return-object v0
.end method

.method public getElementOrBuilder()Lcom/android/aapt/Resources$XmlElementOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$XmlElementOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public getNodeCase()Lcom/android/aapt/Resources$XmlNode$NodeCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$XmlNode$NodeCase;->forNumber(I)Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/android/aapt/Resources$SourcePosition;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

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

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourcePositionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePositionOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_2

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v2, v1, :cond_1

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/x;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    instance-of v2, v0, Lcom/android/aapt/Resources$String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iget v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v2, v1, :cond_1

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public hasElement()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSource()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasText()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->X0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$XmlNode;

    const-class v2, Lcom/android/aapt/Resources$XmlNode$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeElement(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$XmlElement;->getDefaultInstance()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$XmlElement;

    invoke-static {v0}, Lcom/android/aapt/Resources$XmlElement;->newBuilder(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlElement$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->buildPartial()Lcom/android/aapt/Resources$XmlElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$XmlNode;->getDefaultInstance()Lcom/android/aapt/Resources$XmlNode;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$XmlNode$Builder;

    .line 13
    :cond_1
    sget-object v0, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$XmlNode$NodeCase:[I

    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->getNodeCase()Lcom/android/aapt/Resources$XmlNode$NodeCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iput v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    .line 15
    invoke-static {p1}, Lcom/android/aapt/Resources$XmlNode;->t6(Lcom/android/aapt/Resources$XmlNode;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlNode;->getElement()Lcom/android/aapt/Resources$XmlElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeElement(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlNode$Builder;

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x12

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_2

    .line 22
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

    .line 23
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 24
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 25
    iget v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 27
    iput v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    .line 28
    iput-object v1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_4
    invoke-direct {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getElementFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 30
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 31
    iput v2, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 34
    throw p1

    .line 35
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$XmlNode;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$XmlNode;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/android/aapt/Resources$XmlNode;)Lcom/android/aapt/Resources$XmlNode$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlNode$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$XmlNode$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$XmlNode$Builder;->getSourceBuilder()Lcom/android/aapt/Resources$SourcePosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->mergeFrom(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$SourcePosition$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNode$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setElement(Lcom/android/aapt/Resources$XmlElement$Builder;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->build()Lcom/android/aapt/Resources$XmlElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$XmlElement$Builder;->build()Lcom/android/aapt/Resources$XmlElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    return-object p0
.end method

.method public setElement(Lcom/android/aapt/Resources$XmlElement;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->elementBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$SourcePosition$Builder;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$XmlNode;->access$3600(Lcom/google/protobuf/x;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->nodeCase_:I

    iput-object p1, p0, Lcom/android/aapt/Resources$XmlNode$Builder;->node_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$XmlNode$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$XmlNode$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$XmlNode$Builder;

    move-result-object p1

    return-object p1
.end method
