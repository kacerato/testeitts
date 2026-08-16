.class public final Lcom/android/aapt/Resources$Value$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Value$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private comment_:Ljava/lang/Object;

.field private compoundValueBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$CompoundValue;",
            "Lcom/android/aapt/Resources$CompoundValue$Builder;",
            "Lcom/android/aapt/Resources$CompoundValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private itemBuilder_:Lcom/google/protobuf/Q1;
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

.field private valueCase_:I

.field private value_:Ljava/lang/Object;

.field private weak_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/P0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Value$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/P0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Value;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Source;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Value;->v6(Lcom/android/aapt/Resources$Value;Lcom/android/aapt/Resources$Source;)V

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Value;->u6(Lcom/android/aapt/Resources$Value;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/aapt/Resources$Value$Builder;->weak_:Z

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Value;->y6(Lcom/android/aapt/Resources$Value;Z)V

    :cond_3
    return-void
.end method

.method private buildPartialOneofs(Lcom/android/aapt/Resources$Value;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Value;->w6(Lcom/android/aapt/Resources$Value;I)V

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Value;->x6(Lcom/android/aapt/Resources$Value;Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Value;->x6(Lcom/android/aapt/Resources$Value;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Value;->x6(Lcom/android/aapt/Resources$Value;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private getCompoundValueFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$CompoundValue;",
            "Lcom/android/aapt/Resources$CompoundValue$Builder;",
            "Lcom/android/aapt/Resources$CompoundValueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$CompoundValue;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->M0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getItemFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
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

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Item;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$Value;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->buildPartial()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Value;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->build()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->build()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Value;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Value;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/Q0;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Value$Builder;->buildPartial0(Lcom/android/aapt/Resources$Value;)V

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Value$Builder;->buildPartialOneofs(Lcom/android/aapt/Resources$Value;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->buildPartial()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->buildPartial()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Value$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    .line 8
    iget-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->d()V

    .line 10
    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    .line 11
    :cond_0
    const-string v2, ""

    iput-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    .line 12
    iput-boolean v0, p0, Lcom/android/aapt/Resources$Value$Builder;->weak_:Z

    .line 13
    iget-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 17
    :cond_2
    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    .line 18
    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->clear()Lcom/android/aapt/Resources$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->clear()Lcom/android/aapt/Resources$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->clear()Lcom/android/aapt/Resources$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->clear()Lcom/android/aapt/Resources$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearComment()Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$Value;->getDefaultInstance()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Value;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearCompoundValue()Lcom/android/aapt/Resources$Value$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearItem()Lcom/android/aapt/Resources$Value$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearSource()Lcom/android/aapt/Resources$Value$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    iget-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearValue()Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearWeak()Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/aapt/Resources$Value$Builder;->weak_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getCompoundValue()Lcom/android/aapt/Resources$CompoundValue;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$CompoundValue;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$CompoundValue;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundValueBuilder()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Value$Builder;->getCompoundValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$CompoundValue$Builder;

    return-object v0
.end method

.method public getCompoundValueOrBuilder()Lcom/android/aapt/Resources$CompoundValueOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$CompoundValueOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$CompoundValue;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Value;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Value;->getDefaultInstance()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->M0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Lcom/android/aapt/Resources$Item;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Item;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Item;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public getItemBuilder()Lcom/android/aapt/Resources$Item$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Value$Builder;->getItemFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Item$Builder;

    return-object v0
.end method

.method public getItemOrBuilder()Lcom/android/aapt/Resources$ItemOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ItemOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Item;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/android/aapt/Resources$Source;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

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

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Value$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Source$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getValueCase()Lcom/android/aapt/Resources$Value$ValueCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$Value$ValueCase;->forNumber(I)Lcom/android/aapt/Resources$Value$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public getWeak()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/aapt/Resources$Value$Builder;->weak_:Z

    return v0
.end method

.method public hasCompoundValue()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasItem()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSource()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/android/aapt/Resources;->N0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Value;

    const-class v2, Lcom/android/aapt/Resources$Value$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeCompoundValue(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$CompoundValue;

    invoke-static {v0}, Lcom/android/aapt/Resources$CompoundValue;->newBuilder(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->buildPartial()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Value;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Value;->getDefaultInstance()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Value$Builder;->mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Value$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/android/aapt/Resources$Value;->t6(Lcom/android/aapt/Resources$Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    .line 15
    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->getWeak()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->getWeak()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Value$Builder;->setWeak(Z)Lcom/android/aapt/Resources$Value$Builder;

    .line 19
    :cond_3
    sget-object v0, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$Value$ValueCase:[I

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->getValueCase()Lcom/android/aapt/Resources$Value$ValueCase;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->getCompoundValue()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Value$Builder;->mergeCompoundValue(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$Value$Builder;

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value;->getItem()Lcom/android/aapt/Resources$Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Value$Builder;->mergeItem(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Value$Builder;

    .line 22
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;

    .line 23
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6

    const/16 v3, 0x12

    if-eq v1, v3, :cond_5

    const/16 v3, 0x18

    const/4 v4, 0x4

    if-eq v1, v3, :cond_4

    const/16 v3, 0x22

    if-eq v1, v3, :cond_3

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2

    .line 26
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

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$Value$Builder;->getCompoundValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 28
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x5

    .line 29
    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    goto :goto_0

    .line 30
    :cond_3
    invoke-direct {p0}, Lcom/android/aapt/Resources$Value$Builder;->getItemFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 31
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 32
    iput v4, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/aapt/Resources$Value$Builder;->weak_:Z

    .line 34
    iget v1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/2addr v1, v4

    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    goto :goto_0

    .line 35
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    .line 36
    iget v1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    goto :goto_0

    .line 37
    :cond_6
    invoke-direct {p0}, Lcom/android/aapt/Resources$Value$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 38
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 39
    iget v1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 42
    throw p1

    .line 43
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Value;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Value;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/android/aapt/Resources$Value;)Lcom/android/aapt/Resources$Value$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Value$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Value$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Value$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeItem(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Item;->getDefaultInstance()Lcom/android/aapt/Resources$Item;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Item;

    invoke-static {v0}, Lcom/android/aapt/Resources$Item;->newBuilder(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Item$Builder;->mergeFrom(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Item$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item$Builder;->buildPartial()Lcom/android/aapt/Resources$Item;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Value$Builder;->getSourceBuilder()Lcom/android/aapt/Resources$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Source$Builder;->mergeFrom(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Source$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Value$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setComment(Ljava/lang/String;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setCommentBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$Value;->access$1800(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setCompoundValue(Lcom/android/aapt/Resources$CompoundValue$Builder;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->build()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->build()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    return-object p0
.end method

.method public setCompoundValue(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->compoundValueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    return-object p0
.end method

.method public setItem(Lcom/android/aapt/Resources$Item$Builder;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item$Builder;->build()Lcom/android/aapt/Resources$Item;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Item$Builder;->build()Lcom/android/aapt/Resources$Item;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    return-object p0
.end method

.method public setItem(Lcom/android/aapt/Resources$Item;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->itemBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->valueCase_:I

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source$Builder;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Value$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Value$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Value$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Value$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWeak(Z)Lcom/android/aapt/Resources$Value$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/aapt/Resources$Value$Builder;->weak_:Z

    iget p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Value$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
