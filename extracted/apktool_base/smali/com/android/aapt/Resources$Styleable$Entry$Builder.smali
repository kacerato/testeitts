.class public final Lcom/android/aapt/Resources$Styleable$Entry$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$Styleable$EntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Styleable$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Styleable$Entry$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$Styleable$EntryOrBuilder;"
    }
.end annotation


# instance fields
.field private attrBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Reference;",
            "Lcom/android/aapt/Resources$Reference$Builder;",
            "Lcom/android/aapt/Resources$ReferenceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private attr_:Lcom/android/aapt/Resources$Reference;

.field private bitField0_:I

.field private comment_:Ljava/lang/Object;

.field private sourceBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Source;",
            "Lcom/android/aapt/Resources$Source$Builder;",
            "Lcom/android/aapt/Resources$SourceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private source_:Lcom/android/aapt/Resources$Source;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/A0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 6
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/A0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Styleable$Entry;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Source;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Styleable$Entry;->w6(Lcom/android/aapt/Resources$Styleable$Entry;Lcom/android/aapt/Resources$Source;)V

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Styleable$Entry;->v6(Lcom/android/aapt/Resources$Styleable$Entry;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    :goto_1
    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Styleable$Entry;->u6(Lcom/android/aapt/Resources$Styleable$Entry;Lcom/android/aapt/Resources$Reference;)V

    :cond_4
    return-void
.end method

.method private getAttrFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Reference;",
            "Lcom/android/aapt/Resources$Reference$Builder;",
            "Lcom/android/aapt/Resources$ReferenceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getAttr()Lcom/android/aapt/Resources$Reference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->w0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getSourceFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Source;",
            "Lcom/android/aapt/Resources$Source$Builder;",
            "Lcom/android/aapt/Resources$SourceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$Styleable$Entry;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->buildPartial()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Styleable$Entry;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->build()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->build()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Styleable$Entry;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Styleable$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Styleable$Entry;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/B0;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->buildPartial0(Lcom/android/aapt/Resources$Styleable$Entry;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->buildPartial()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->buildPartial()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    .line 8
    iget-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 10
    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    .line 11
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    .line 13
    iget-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 15
    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->clear()Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->clear()Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->clear()Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->clear()Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttr()Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    iget-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearComment()Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$Styleable$Entry;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Styleable$Entry;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    iget-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getAttr()Lcom/android/aapt/Resources$Reference;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    return-object v0
.end method

.method public getAttrBuilder()Lcom/android/aapt/Resources$Reference$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getAttrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Reference$Builder;

    return-object v0
.end method

.method public getAttrOrBuilder()Lcom/android/aapt/Resources$ReferenceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ReferenceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Styleable$Entry;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Styleable$Entry;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->w0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/android/aapt/Resources$Source;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Source;

    return-object v0
.end method

.method public getSourceBuilder()Lcom/android/aapt/Resources$Source$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Source$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAttr()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSource()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->x0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Styleable$Entry;

    const-class v2, Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAttr(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getAttrBuilder()Lcom/android/aapt/Resources$Reference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Reference$Builder;->mergeFrom(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Reference$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Styleable$Entry;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Styleable$Entry;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable$Entry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Entry;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Entry;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Entry;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/android/aapt/Resources$Styleable$Entry;->t6(Lcom/android/aapt/Resources$Styleable$Entry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    .line 15
    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Entry;->hasAttr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Entry;->getAttr()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeAttr(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 22
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

    .line 23
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

    .line 24
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getAttrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 26
    iget v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    .line 28
    iget v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    goto :goto_0

    .line 29
    :cond_4
    invoke-direct {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 30
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 31
    iget v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I
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

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Styleable$Entry;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Styleable$Entry;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeFrom(Lcom/android/aapt/Resources$Styleable$Entry;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->getSourceBuilder()Lcom/android/aapt/Resources$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Source$Builder;->mergeFrom(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Source$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAttr(Lcom/android/aapt/Resources$Reference$Builder;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Reference$Builder;->build()Lcom/android/aapt/Resources$Reference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Reference$Builder;->build()Lcom/android/aapt/Resources$Reference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setAttr(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->attr_:Lcom/android/aapt/Resources$Reference;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setCommentBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$Styleable$Entry;->access$3000(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source$Builder;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Styleable$Entry$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Styleable$Entry$Builder;

    move-result-object p1

    return-object p1
.end method
