.class public final Lcom/android/aapt/Resources$Primitive$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$PrimitiveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Primitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Primitive$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$PrimitiveOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private emptyValueBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Primitive$EmptyType;",
            "Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;",
            "Lcom/android/aapt/Resources$Primitive$EmptyTypeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private nullValueBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Primitive$NullType;",
            "Lcom/android/aapt/Resources$Primitive$NullType$Builder;",
            "Lcom/android/aapt/Resources$Primitive$NullTypeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private oneofValueCase_:I

.field private oneofValue_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/V;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Primitive$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/V;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Primitive;)V
    .locals 0

    return-void
.end method

.method private buildPartialOneofs(Lcom/android/aapt/Resources$Primitive;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Primitive;->t6(Lcom/android/aapt/Resources$Primitive;I)V

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Primitive;->u6(Lcom/android/aapt/Resources$Primitive;Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Primitive;->u6(Lcom/android/aapt/Resources$Primitive;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Primitive;->u6(Lcom/android/aapt/Resources$Primitive;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->W()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getEmptyValueFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Primitive$EmptyType;",
            "Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;",
            "Lcom/android/aapt/Resources$Primitive$EmptyTypeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Primitive$EmptyType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Primitive$EmptyType;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getNullValueFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Primitive$NullType;",
            "Lcom/android/aapt/Resources$Primitive$NullType$Builder;",
            "Lcom/android/aapt/Resources$Primitive$NullTypeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Primitive$NullType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Primitive$NullType;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$Primitive;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->buildPartial()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Primitive;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->build()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->build()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Primitive;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Primitive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Primitive;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/a0;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->buildPartial0(Lcom/android/aapt/Resources$Primitive;)V

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->buildPartialOneofs(Lcom/android/aapt/Resources$Primitive;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->buildPartial()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->buildPartial()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->bitField0_:I

    .line 7
    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 11
    :cond_1
    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->clear()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->clear()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->clear()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->clear()Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBooleanValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearColorArgb4Value()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearColorArgb8Value()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearColorRgb4Value()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearColorRgb8Value()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearDimensionValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearDimensionValueDeprecated()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearEmptyValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearFloatValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearFractionValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearFractionValueDeprecated()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearIntDecimalValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearIntHexadecimalValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_0
    return-object p0
.end method

.method public clearNullValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearOneofValue()Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getBooleanValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorArgb4Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorArgb8Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorRgb4Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorRgb8Value()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Primitive;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->W()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getDimensionValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDimensionValueDeprecated()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyValue()Lcom/android/aapt/Resources$Primitive$EmptyType;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$EmptyType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$EmptyType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyValueBuilder()Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->getEmptyValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;

    return-object v0
.end method

.method public getEmptyValueOrBuilder()Lcom/android/aapt/Resources$Primitive$EmptyTypeOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyTypeOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$EmptyType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue()F
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFractionValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFractionValueDeprecated()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntDecimalValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntHexadecimalValue()I
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNullValue()Lcom/android/aapt/Resources$Primitive$NullType;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$NullType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$NullType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    return-object v0
.end method

.method public getNullValueBuilder()Lcom/android/aapt/Resources$Primitive$NullType$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->getNullValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType$Builder;

    return-object v0
.end method

.method public getNullValueOrBuilder()Lcom/android/aapt/Resources$Primitive$NullTypeOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullTypeOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Primitive$NullType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    return-object v0
.end method

.method public getOneofValueCase()Lcom/android/aapt/Resources$Primitive$OneofValueCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$Primitive$OneofValueCase;->forNumber(I)Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasBooleanValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorArgb4Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorArgb8Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorRgb4Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasColorRgb8Value()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDimensionValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDimensionValueDeprecated()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEmptyValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFloatValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFractionValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFractionValueDeprecated()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntDecimalValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntHexadecimalValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNullValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->X()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Primitive;

    const-class v2, Lcom/android/aapt/Resources$Primitive$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeEmptyValue(Lcom/android/aapt/Resources$Primitive$EmptyType;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Primitive$EmptyType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$EmptyType;

    invoke-static {v0}, Lcom/android/aapt/Resources$Primitive$EmptyType;->newBuilder(Lcom/android/aapt/Resources$Primitive$EmptyType;)Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;->mergeFrom(Lcom/android/aapt/Resources$Primitive$EmptyType;)Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;->buildPartial()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Primitive;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Primitive$OneofValueCase:[I

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getOneofValueCase()Lcom/android/aapt/Resources$Primitive$OneofValueCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getFractionValueDeprecated()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setFractionValueDeprecated(F)Lcom/android/aapt/Resources$Primitive$Builder;

    goto/16 :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getDimensionValueDeprecated()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setDimensionValueDeprecated(F)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 14
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorRgb4Value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setColorRgb4Value(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorArgb4Value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setColorArgb4Value(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorRgb8Value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setColorRgb8Value(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 17
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getColorArgb8Value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setColorArgb8Value(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 18
    :pswitch_6
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setBooleanValue(Z)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 19
    :pswitch_7
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getIntHexadecimalValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setIntHexadecimalValue(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 20
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getIntDecimalValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setIntDecimalValue(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 21
    :pswitch_9
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getFractionValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setFractionValue(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 22
    :pswitch_a
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getDimensionValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setDimensionValue(I)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 23
    :pswitch_b
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getFloatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->setFloatValue(F)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 24
    :pswitch_c
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getEmptyValue()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeEmptyValue(Lcom/android/aapt/Resources$Primitive$EmptyType;)Lcom/android/aapt/Resources$Primitive$Builder;

    goto :goto_0

    .line 25
    :pswitch_d
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive;->getNullValue()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeNullValue(Lcom/android/aapt/Resources$Primitive$NullType;)Lcom/android/aapt/Resources$Primitive$Builder;

    .line 26
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 30
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 31
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/16 v1, 0xe

    .line 32
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto :goto_0

    .line 33
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/16 v1, 0xd

    .line 34
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto :goto_0

    .line 35
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/16 v1, 0xc

    .line 36
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto :goto_0

    .line 37
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/16 v1, 0xb

    .line 38
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto :goto_0

    .line 39
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/16 v1, 0xa

    .line 40
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto :goto_0

    .line 41
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/16 v1, 0x9

    .line 42
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto :goto_0

    .line 43
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/16 v1, 0x8

    .line 44
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto/16 :goto_0

    .line 45
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/4 v1, 0x7

    .line 46
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto/16 :goto_0

    .line 47
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/4 v1, 0x6

    .line 48
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto/16 :goto_0

    .line 49
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/C;->D()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/4 v1, 0x5

    .line 50
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto/16 :goto_0

    .line 51
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/C;->D()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/4 v1, 0x4

    .line 52
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto/16 :goto_0

    .line 53
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/C;->D()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    const/4 v1, 0x3

    .line 54
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto/16 :goto_0

    .line 55
    :sswitch_d
    invoke-direct {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->getEmptyValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 56
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x2

    .line 57
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    goto/16 :goto_0

    .line 58
    :sswitch_e
    invoke-direct {p0}, Lcom/android/aapt/Resources$Primitive$Builder;->getNullValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 60
    iput v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 61
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 63
    throw p1

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1d -> :sswitch_c
        0x25 -> :sswitch_b
        0x2d -> :sswitch_a
        0x30 -> :sswitch_9
        0x38 -> :sswitch_8
        0x40 -> :sswitch_7
        0x48 -> :sswitch_6
        0x50 -> :sswitch_5
        0x58 -> :sswitch_4
        0x60 -> :sswitch_3
        0x68 -> :sswitch_2
        0x70 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Primitive;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Primitive;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/android/aapt/Resources$Primitive;)Lcom/android/aapt/Resources$Primitive$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Primitive$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Primitive$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeNullValue(Lcom/android/aapt/Resources$Primitive$NullType;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Primitive$NullType;->getDefaultInstance()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Primitive$NullType;

    invoke-static {v0}, Lcom/android/aapt/Resources$Primitive$NullType;->newBuilder(Lcom/android/aapt/Resources$Primitive$NullType;)Lcom/android/aapt/Resources$Primitive$NullType$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Primitive$NullType$Builder;->mergeFrom(Lcom/android/aapt/Resources$Primitive$NullType;)Lcom/android/aapt/Resources$Primitive$NullType$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$NullType$Builder;->buildPartial()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Primitive$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBooleanValue(Z)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setColorArgb4Value(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setColorArgb8Value(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setColorRgb4Value(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setColorRgb8Value(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setDimensionValue(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setDimensionValueDeprecated(F)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setEmptyValue(Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;->build()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$EmptyType$Builder;->build()Lcom/android/aapt/Resources$Primitive$EmptyType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-object p0
.end method

.method public setEmptyValue(Lcom/android/aapt/Resources$Primitive$EmptyType;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->emptyValueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-object p0
.end method

.method public setFloatValue(F)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setFractionValue(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/16 v0, 0xe

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setFractionValueDeprecated(F)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setIntDecimalValue(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setIntHexadecimalValue(I)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setNullValue(Lcom/android/aapt/Resources$Primitive$NullType$Builder;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$NullType$Builder;->build()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Primitive$NullType$Builder;->build()Lcom/android/aapt/Resources$Primitive$NullType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-object p0
.end method

.method public setNullValue(Lcom/android/aapt/Resources$Primitive$NullType;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Primitive$Builder;->nullValueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValue_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Primitive$Builder;->oneofValueCase_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Primitive$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Primitive$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Primitive$Builder;

    move-result-object p1

    return-object p1
.end method
