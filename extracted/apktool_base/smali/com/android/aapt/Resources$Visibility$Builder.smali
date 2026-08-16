.class public final Lcom/android/aapt/Resources$Visibility$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$VisibilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Visibility$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$VisibilityOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private comment_:Ljava/lang/Object;

.field private level_:I

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

.field private stagedApi_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/R0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Visibility$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/R0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Visibility;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Visibility;->w6(Lcom/android/aapt/Resources$Visibility;I)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Source;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Visibility;->x6(Lcom/android/aapt/Resources$Visibility;Lcom/android/aapt/Resources$Source;)V

    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Visibility;->v6(Lcom/android/aapt/Resources$Visibility;Ljava/lang/Object;)V

    :cond_3
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->stagedApi_:Z

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Visibility;->y6(Lcom/android/aapt/Resources$Visibility;Z)V

    :cond_4
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->O0()Lcom/google/protobuf/Descriptors$b;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$Visibility;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->buildPartial()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Visibility;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->build()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->build()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Visibility;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Visibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Visibility;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/S0;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Visibility$Builder;->buildPartial0(Lcom/android/aapt/Resources$Visibility;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->buildPartial()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->buildPartial()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 3

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    .line 7
    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    .line 9
    iget-object v2, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->d()V

    .line 11
    iput-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    .line 12
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    .line 13
    iput-boolean v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->stagedApi_:Z

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->clear()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->clear()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->clear()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->clear()Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearComment()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstance()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$Visibility;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearLevel()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    iget-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearStagedApi()Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->stagedApi_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getComment()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Visibility;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstance()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->O0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lcom/android/aapt/Resources$Visibility$Level;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$Visibility$Level;->forNumber(I)Lcom/android/aapt/Resources$Visibility$Level;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/aapt/Resources$Visibility$Level;->UNRECOGNIZED:Lcom/android/aapt/Resources$Visibility$Level;

    :cond_0
    return-object v0
.end method

.method public getLevelValue()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    return v0
.end method

.method public getSource()Lcom/android/aapt/Resources$Source;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

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

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Source$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourceOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourceOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStagedApi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->stagedApi_:Z

    return v0
.end method

.method public hasSource()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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

    invoke-static {}, Lcom/android/aapt/Resources;->P0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Visibility;

    const-class v2, Lcom/android/aapt/Resources$Visibility$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Visibility;->getDefaultInstance()Lcom/android/aapt/Resources$Visibility;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p1}, Lcom/android/aapt/Resources$Visibility;->u6(Lcom/android/aapt/Resources$Visibility;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getLevelValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Visibility$Builder;->setLevelValue(I)Lcom/android/aapt/Resources$Visibility$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getSource()Lcom/android/aapt/Resources$Source;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Visibility$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-static {p1}, Lcom/android/aapt/Resources$Visibility;->t6(Lcom/android/aapt/Resources$Visibility;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    .line 17
    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    .line 18
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getStagedApi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility;->getStagedApi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Visibility$Builder;->setStagedApi(Z)Lcom/android/aapt/Resources$Visibility$Builder;

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;

    .line 22
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_5

    const/16 v4, 0x12

    if-eq v1, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v1, v4, :cond_3

    const/16 v4, 0x20

    if-eq v1, v4, :cond_2

    .line 25
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

    .line 26
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->stagedApi_:Z

    .line 27
    iget v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    goto :goto_0

    .line 28
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    .line 29
    iget v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    goto :goto_0

    .line 30
    :cond_4
    invoke-direct {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 31
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 32
    iget v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    goto :goto_0

    .line 33
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->A()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    .line 34
    iget v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 37
    throw p1

    .line 38
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Visibility;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Visibility;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/android/aapt/Resources$Visibility;)Lcom/android/aapt/Resources$Visibility$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Visibility$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Visibility$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Source;->getDefaultInstance()Lcom/android/aapt/Resources$Source;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$Visibility$Builder;->getSourceBuilder()Lcom/android/aapt/Resources$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Source$Builder;->mergeFrom(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Source$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Visibility$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setComment(Ljava/lang/String;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setCommentBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$Visibility;->access$1100(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->comment_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setLevel(Lcom/android/aapt/Resources$Visibility$Level;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Visibility$Level;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setLevelValue(I)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->level_:I

    iget p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source$Builder;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Source$Builder;->build()Lcom/android/aapt/Resources$Source;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$Source;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Visibility$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->source_:Lcom/android/aapt/Resources$Source;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setStagedApi(Z)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->stagedApi_:Z

    iget p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/aapt/Resources$Visibility$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Visibility$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Visibility$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Visibility$Builder;

    move-result-object p1

    return-object p1
.end method
