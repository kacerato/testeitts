.class public final Lcom/android/aapt/Resources$Item$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$ItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Item$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$ItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fileBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$FileReference;",
            "Lcom/android/aapt/Resources$FileReference$Builder;",
            "Lcom/android/aapt/Resources$FileReferenceOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private idBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Id;",
            "Lcom/android/aapt/Resources$Id$Builder;",
            "Lcom/android/aapt/Resources$IdOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private primBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Primitive;",
            "Lcom/android/aapt/Resources$Primitive$Builder;",
            "Lcom/android/aapt/Resources$PrimitiveOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private rawStrBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$RawString;",
            "Lcom/android/aapt/Resources$RawString$Builder;",
            "Lcom/android/aapt/Resources$RawStringOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private refBuilder_:Lcom/google/protobuf/Q1;
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

.field private strBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$String;",
            "Lcom/android/aapt/Resources$String$Builder;",
            "Lcom/android/aapt/Resources$StringOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private styledStrBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StyledString;",
            "Lcom/android/aapt/Resources$StyledString$Builder;",
            "Lcom/android/aapt/Resources$StyledStringOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/C;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/C;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Item;)V
    .locals 0

    return-void
.end method

.method private buildPartialOneofs(Lcom/android/aapt/Resources$Item;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->t6(Lcom/android/aapt/Resources$Item;I)V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    :cond_5
    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Item;->u6(Lcom/android/aapt/Resources$Item;Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->A()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getFileFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$FileReference;",
            "Lcom/android/aapt/Resources$FileReference$Builder;",
            "Lcom/android/aapt/Resources$FileReferenceOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$FileReference;->getDefaultInstance()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$FileReference;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getIdFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Id;",
            "Lcom/android/aapt/Resources$Id$Builder;",
            "Lcom/android/aapt/Resources$IdOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Id;->getDefaultInstance()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Id;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getPrimFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Primitive;",
            "Lcom/android/aapt/Resources$Primitive$Builder;",
            "Lcom/android/aapt/Resources$PrimitiveOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x7

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Primitive;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getRawStrFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$RawString;",
            "Lcom/android/aapt/Resources$RawString$Builder;",
            "Lcom/android/aapt/Resources$RawStringOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$RawString;->getDefaultInstance()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$RawString;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getRefFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
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

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Reference;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getStrFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$String;",
            "Lcom/android/aapt/Resources$String$Builder;",
            "Lcom/android/aapt/Resources$StringOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$String;->getDefaultInstance()Lcom/android/aapt/Resources$String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$String;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getStyledStrFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StyledString;",
            "Lcom/android/aapt/Resources$StyledString$Builder;",
            "Lcom/android/aapt/Resources$StyledStringOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$StyledString;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$Item;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->buildPartial()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Item;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->build()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->build()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Item;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Item;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/D;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$Item$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->buildPartial0(Lcom/android/aapt/Resources$Item;)V

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->buildPartialOneofs(Lcom/android/aapt/Resources$Item;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->buildPartial()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->buildPartial()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Item$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Item$Builder;->bitField0_:I

    .line 7
    iget-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 21
    :cond_6
    iput v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->clear()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->clear()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->clear()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->clear()Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFile()Lcom/android/aapt/Resources$Item$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearId()Lcom/android/aapt/Resources$Item$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearPrim()Lcom/android/aapt/Resources$Item$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearRawStr()Lcom/android/aapt/Resources$Item$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearRef()Lcom/android/aapt/Resources$Item$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearStr()Lcom/android/aapt/Resources$Item$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearStyledStr()Lcom/android/aapt/Resources$Item$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearValue()Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Item;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Item$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->A()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/android/aapt/Resources$FileReference;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$FileReference;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$FileReference;->getDefaultInstance()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$FileReference;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$FileReference;->getDefaultInstance()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    return-object v0
.end method

.method public getFileBuilder()Lcom/android/aapt/Resources$FileReference$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getFileFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$FileReference$Builder;

    return-object v0
.end method

.method public getFileOrBuilder()Lcom/android/aapt/Resources$FileReferenceOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$FileReferenceOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$FileReference;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$FileReference;->getDefaultInstance()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/android/aapt/Resources$Id;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Id;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Id;->getDefaultInstance()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Id;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Id;->getDefaultInstance()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    return-object v0
.end method

.method public getIdBuilder()Lcom/android/aapt/Resources$Id$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getIdFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Id$Builder;

    return-object v0
.end method

.method public getIdOrBuilder()Lcom/android/aapt/Resources$IdOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$IdOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Id;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Id;->getDefaultInstance()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    return-object v0
.end method

.method public getPrim()Lcom/android/aapt/Resources$Primitive;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x7

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getPrimBuilder()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getPrimFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive$Builder;

    return-object v0
.end method

.method public getPrimOrBuilder()Lcom/android/aapt/Resources$PrimitiveOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$PrimitiveOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getRawStr()Lcom/android/aapt/Resources$RawString;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$RawString;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$RawString;->getDefaultInstance()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$RawString;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$RawString;->getDefaultInstance()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    return-object v0
.end method

.method public getRawStrBuilder()Lcom/android/aapt/Resources$RawString$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getRawStrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$RawString$Builder;

    return-object v0
.end method

.method public getRawStrOrBuilder()Lcom/android/aapt/Resources$RawStringOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$RawStringOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$RawString;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$RawString;->getDefaultInstance()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    return-object v0
.end method

.method public getRef()Lcom/android/aapt/Resources$Reference;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    return-object v0
.end method

.method public getRefBuilder()Lcom/android/aapt/Resources$Reference$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getRefFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Reference$Builder;

    return-object v0
.end method

.method public getRefOrBuilder()Lcom/android/aapt/Resources$ReferenceOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ReferenceOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    return-object v0
.end method

.method public getStr()Lcom/android/aapt/Resources$String;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$String;->getDefaultInstance()Lcom/android/aapt/Resources$String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$String;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$String;->getDefaultInstance()Lcom/android/aapt/Resources$String;

    move-result-object v0

    return-object v0
.end method

.method public getStrBuilder()Lcom/android/aapt/Resources$String$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getStrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$String$Builder;

    return-object v0
.end method

.method public getStrOrBuilder()Lcom/android/aapt/Resources$StringOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StringOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$String;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$String;->getDefaultInstance()Lcom/android/aapt/Resources$String;

    move-result-object v0

    return-object v0
.end method

.method public getStyledStr()Lcom/android/aapt/Resources$StyledString;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$StyledString;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyledString;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public getStyledStrBuilder()Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getStyledStrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyledString$Builder;

    return-object v0
.end method

.method public getStyledStrOrBuilder()Lcom/android/aapt/Resources$StyledStringOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyledStringOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$StyledString;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lcom/android/aapt/Resources$Item$ValueCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$Item$ValueCase;->forNumber(I)Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasFile()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasId()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrim()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRawStr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRef()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStyledStr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    const/4 v1, 0x4

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

    invoke-static {}, Lcom/android/aapt/Resources;->B()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Item;

    const-class v2, Lcom/android/aapt/Resources$Item$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFile(Lcom/android/aapt/Resources$FileReference;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$FileReference;->getDefaultInstance()Lcom/android/aapt/Resources$FileReference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$FileReference;

    invoke-static {v0}, Lcom/android/aapt/Resources$FileReference;->newBuilder(Lcom/android/aapt/Resources$FileReference;)Lcom/android/aapt/Resources$FileReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$FileReference$Builder;->mergeFrom(Lcom/android/aapt/Resources$FileReference;)Lcom/android/aapt/Resources$FileReference$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$FileReference$Builder;->buildPartial()Lcom/android/aapt/Resources$FileReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Item$ValueCase:[I

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getValueCase()Lcom/android/aapt/Resources$Item$ValueCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getPrim()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->mergePrim(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Item$Builder;

    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getId()Lcom/android/aapt/Resources$Id;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->mergeId(Lcom/android/aapt/Resources$Id;)Lcom/android/aapt/Resources$Item$Builder;

    goto :goto_0

    .line 14
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getFile()Lcom/android/aapt/Resources$FileReference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->mergeFile(Lcom/android/aapt/Resources$FileReference;)Lcom/android/aapt/Resources$Item$Builder;

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getStyledStr()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->mergeStyledStr(Lcom/android/aapt/Resources$StyledString;)Lcom/android/aapt/Resources$Item$Builder;

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getRawStr()Lcom/android/aapt/Resources$RawString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->mergeRawStr(Lcom/android/aapt/Resources$RawString;)Lcom/android/aapt/Resources$Item$Builder;

    goto :goto_0

    .line 17
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getStr()Lcom/android/aapt/Resources$String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->mergeStr(Lcom/android/aapt/Resources$String;)Lcom/android/aapt/Resources$Item$Builder;

    goto :goto_0

    .line 18
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item;->getRef()Lcom/android/aapt/Resources$Reference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Item$Builder;->mergeRef(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Item$Builder;

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;

    .line 20
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item$Builder;
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
    if-nez v0, :cond_9

    .line 22
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

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x32

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3a

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

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 24
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getPrimFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x7

    .line 26
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    goto :goto_0

    .line 27
    :cond_3
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getIdFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 28
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x6

    .line 29
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    goto :goto_0

    .line 30
    :cond_4
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getFileFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 31
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x5

    .line 32
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    goto :goto_0

    .line 33
    :cond_5
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getStyledStrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 34
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x4

    .line 35
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    goto :goto_0

    .line 36
    :cond_6
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getRawStrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 37
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x3

    .line 38
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    goto :goto_0

    .line 39
    :cond_7
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getStrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x2

    .line 41
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    goto/16 :goto_0

    .line 42
    :cond_8
    invoke-direct {p0}, Lcom/android/aapt/Resources$Item$Builder;->getRefFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 43
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 44
    iput v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 45
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 47
    throw p1

    .line 48
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Item;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Item;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Item$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Item$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeId(Lcom/android/aapt/Resources$Id;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Id;->getDefaultInstance()Lcom/android/aapt/Resources$Id;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Id;

    invoke-static {v0}, Lcom/android/aapt/Resources$Id;->newBuilder(Lcom/android/aapt/Resources$Id;)Lcom/android/aapt/Resources$Id$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Id$Builder;->mergeFrom(Lcom/android/aapt/Resources$Id;)Lcom/android/aapt/Resources$Id$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Id$Builder;->buildPartial()Lcom/android/aapt/Resources$Id;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergePrim(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x7

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive;

    invoke-static {v0}, Lcom/android/aapt/Resources$Primitive;->newBuilder(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$Builder;->buildPartial()Lcom/android/aapt/Resources$Primitive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeRawStr(Lcom/android/aapt/Resources$RawString;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$RawString;->getDefaultInstance()Lcom/android/aapt/Resources$RawString;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$RawString;

    invoke-static {v0}, Lcom/android/aapt/Resources$RawString;->newBuilder(Lcom/android/aapt/Resources$RawString;)Lcom/android/aapt/Resources$RawString$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$RawString$Builder;->mergeFrom(Lcom/android/aapt/Resources$RawString;)Lcom/android/aapt/Resources$RawString$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$RawString$Builder;->buildPartial()Lcom/android/aapt/Resources$RawString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeRef(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Reference;->getDefaultInstance()Lcom/android/aapt/Resources$Reference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Reference;

    invoke-static {v0}, Lcom/android/aapt/Resources$Reference;->newBuilder(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Reference$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Reference$Builder;->mergeFrom(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Reference$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Reference$Builder;->buildPartial()Lcom/android/aapt/Resources$Reference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeStr(Lcom/android/aapt/Resources$String;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$String;->getDefaultInstance()Lcom/android/aapt/Resources$String;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$String;

    invoke-static {v0}, Lcom/android/aapt/Resources$String;->newBuilder(Lcom/android/aapt/Resources$String;)Lcom/android/aapt/Resources$String$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$String$Builder;->mergeFrom(Lcom/android/aapt/Resources$String;)Lcom/android/aapt/Resources$String$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$String$Builder;->buildPartial()Lcom/android/aapt/Resources$String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeStyledStr(Lcom/android/aapt/Resources$StyledString;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$StyledString;

    invoke-static {v0}, Lcom/android/aapt/Resources$StyledString;->newBuilder(Lcom/android/aapt/Resources$StyledString;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/android/aapt/Resources$StyledString;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyledString$Builder;->buildPartial()Lcom/android/aapt/Resources$StyledString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Item$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFile(Lcom/android/aapt/Resources$FileReference$Builder;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$FileReference$Builder;->build()Lcom/android/aapt/Resources$FileReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$FileReference$Builder;->build()Lcom/android/aapt/Resources$FileReference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setFile(Lcom/android/aapt/Resources$FileReference;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->fileBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setId(Lcom/android/aapt/Resources$Id$Builder;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Id$Builder;->build()Lcom/android/aapt/Resources$Id;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Id$Builder;->build()Lcom/android/aapt/Resources$Id;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x6

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setId(Lcom/android/aapt/Resources$Id;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->idBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x6

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setPrim(Lcom/android/aapt/Resources$Primitive$Builder;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$Builder;->build()Lcom/android/aapt/Resources$Primitive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$Builder;->build()Lcom/android/aapt/Resources$Primitive;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x7

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setPrim(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->primBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x7

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setRawStr(Lcom/android/aapt/Resources$RawString$Builder;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$RawString$Builder;->build()Lcom/android/aapt/Resources$RawString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$RawString$Builder;->build()Lcom/android/aapt/Resources$RawString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setRawStr(Lcom/android/aapt/Resources$RawString;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->rawStrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setRef(Lcom/android/aapt/Resources$Reference$Builder;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Reference$Builder;->build()Lcom/android/aapt/Resources$Reference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Reference$Builder;->build()Lcom/android/aapt/Resources$Reference;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setRef(Lcom/android/aapt/Resources$Reference;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->refBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStr(Lcom/android/aapt/Resources$String$Builder;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$String$Builder;->build()Lcom/android/aapt/Resources$String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$String$Builder;->build()Lcom/android/aapt/Resources$String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStr(Lcom/android/aapt/Resources$String;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->strBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStyledStr(Lcom/android/aapt/Resources$StyledString$Builder;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyledString$Builder;->build()Lcom/android/aapt/Resources$StyledString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyledString$Builder;->build()Lcom/android/aapt/Resources$StyledString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStyledStr(Lcom/android/aapt/Resources$StyledString;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Item$Builder;->styledStrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Item$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Item$Builder;->valueCase_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Item$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Item$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    return-object p1
.end method
