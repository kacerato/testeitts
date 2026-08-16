.class public final Lcom/android/aapt/Resources$OverlayableItem$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$OverlayableItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$OverlayableItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$OverlayableItem$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$OverlayableItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private comment_:Ljava/lang/Object;

.field private overlayableIdx_:I

.field private policy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/K;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/K;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$OverlayableItem;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Source;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$OverlayableItem;->y6(Lcom/android/aapt/Resources$OverlayableItem;Lcom/android/aapt/Resources$Source;)V

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$OverlayableItem;->v6(Lcom/android/aapt/Resources$OverlayableItem;Ljava/lang/Object;)V

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->overlayableIdx_:I

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$OverlayableItem;->w6(Lcom/android/aapt/Resources$OverlayableItem;I)V

    :cond_3
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/aapt/Resources$OverlayableItem;)V
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$OverlayableItem;->x6(Lcom/android/aapt/Resources$OverlayableItem;Ljava/util/List;)V

    return-void
.end method

.method private ensurePolicyIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->G()Lcom/google/protobuf/Descriptors$b;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public addAllPolicy(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
            ">;)",
            "Lcom/android/aapt/Resources$OverlayableItem$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public addAllPolicyValue(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/aapt/Resources$OverlayableItem$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public addPolicy(Lcom/android/aapt/Resources$OverlayableItem$Policy;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public addPolicyValue(I)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public build()Lcom/android/aapt/Resources$OverlayableItem;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->buildPartial()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$OverlayableItem;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->build()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->build()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$OverlayableItem;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$OverlayableItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$OverlayableItem;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/L;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->buildPartialRepeatedFields(Lcom/android/aapt/Resources$OverlayableItem;)V

    .line 5
    iget v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->buildPartial0(Lcom/android/aapt/Resources$OverlayableItem;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->buildPartial()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->buildPartial()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    .line 8
    iget-object v2, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->d()V

    .line 10
    iput-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    .line 11
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    .line 13
    iget v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    .line 14
    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->overlayableIdx_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->clear()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->clear()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->clear()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->clear()Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearComment()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstance()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$OverlayableItem;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearOverlayableIdx()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->overlayableIdx_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearPolicy()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$OverlayableItem;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstance()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->G()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayableIdx()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->overlayableIdx_:I

    return v0
.end method

.method public getPolicy(I)Lcom/android/aapt/Resources$OverlayableItem$Policy;
    .locals 2

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->z6()Lcom/google/protobuf/D0$h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Lcom/google/protobuf/D0$h$a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$OverlayableItem$Policy;

    return-object p1
.end method

.method public getPolicyCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPolicyList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$OverlayableItem$Policy;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/D0$h;

    iget-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->z6()Lcom/google/protobuf/D0$h$a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/D0$h;-><init>(Ljava/util/List;Lcom/google/protobuf/D0$h$a;)V

    return-object v0
.end method

.method public getPolicyValue(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPolicyValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/android/aapt/Resources$Source;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

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

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Source$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasSource()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/android/aapt/Resources;->H()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$OverlayableItem;

    const-class v2, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$OverlayableItem;->getDefaultInstance()Lcom/android/aapt/Resources$OverlayableItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    invoke-static {p1}, Lcom/android/aapt/Resources$OverlayableItem;->t6(Lcom/android/aapt/Resources$OverlayableItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    .line 15
    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 17
    :cond_2
    invoke-static {p1}, Lcom/android/aapt/Resources$OverlayableItem;->u6(Lcom/android/aapt/Resources$OverlayableItem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-static {p1}, Lcom/android/aapt/Resources$OverlayableItem;->u6(Lcom/android/aapt/Resources$OverlayableItem;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    .line 20
    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    goto :goto_0

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    .line 22
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$OverlayableItem;->u6(Lcom/android/aapt/Resources$OverlayableItem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 24
    :cond_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->getOverlayableIdx()I

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/android/aapt/Resources$OverlayableItem;->getOverlayableIdx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->setOverlayableIdx(I)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    .line 26
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    .line 27
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 4
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
    if-nez v0, :cond_8

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0x12

    if-eq v1, v3, :cond_6

    const/16 v3, 0x18

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    .line 30
    invoke-super {p0, p1, p2, v1}, Lcom/google/protobuf/w0$b;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->overlayableIdx_:I

    .line 32
    iget v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->O()I

    move-result v1

    .line 34
    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->u(I)I

    move-result v1

    .line 35
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/C;->g()I

    move-result v2

    if-lez v2, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v2

    .line 37
    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    .line 38
    iget-object v3, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {p1, v1}, Lcom/google/protobuf/C;->t(I)V

    goto :goto_0

    .line 40
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    .line 41
    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    .line 42
    iget-object v2, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    .line 44
    iget v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    goto :goto_0

    .line 45
    :cond_7
    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 46
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 47
    iget v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 48
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 50
    throw p1

    .line 51
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$OverlayableItem;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$OverlayableItem;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/android/aapt/Resources$OverlayableItem;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->getSourceBuilder()Lcom/android/aapt/Resources$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Source$Builder;->mergeFrom(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Source$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setComment(Ljava/lang/String;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setCommentBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$OverlayableItem;->access$1500(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setOverlayableIdx(I)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->overlayableIdx_:I

    iget p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setPolicy(ILcom/android/aapt/Resources$OverlayableItem$Policy;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$OverlayableItem$Policy;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setPolicyValue(II)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->ensurePolicyIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->policy_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source$Builder;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$OverlayableItem$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$OverlayableItem$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$OverlayableItem$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$OverlayableItem$Builder;

    move-result-object p1

    return-object p1
.end method
