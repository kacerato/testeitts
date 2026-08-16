.class public final Lcom/android/aapt/Resources$StyledString$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$StyledStringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$StyledString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$StyledString$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$StyledStringOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private spanBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$StyledString$Span;",
            "Lcom/android/aapt/Resources$StyledString$Span$Builder;",
            "Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$StyledString$Span;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/D0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/D0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$StyledString;)V
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$StyledString;->w6(Lcom/android/aapt/Resources$StyledString;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/aapt/Resources$StyledString;)V
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$StyledString;->v6(Lcom/android/aapt/Resources$StyledString;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$StyledString;->v6(Lcom/android/aapt/Resources$StyledString;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private ensureSpanIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->C0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getSpanFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$StyledString$Span;",
            "Lcom/android/aapt/Resources$StyledString$Span$Builder;",
            "Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

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

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public addAllSpan(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$StyledString$Span;",
            ">;)",
            "Lcom/android/aapt/Resources$StyledString$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addSpan(ILcom/android/aapt/Resources$StyledString$Span$Builder;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$StyledString$Span$Builder;->build()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$StyledString$Span$Builder;->build()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addSpan(ILcom/android/aapt/Resources$StyledString$Span;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

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

.method public addSpan(Lcom/android/aapt/Resources$StyledString$Span$Builder;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyledString$Span$Builder;->build()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyledString$Span$Builder;->build()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addSpan(Lcom/android/aapt/Resources$StyledString$Span;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

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

.method public addSpanBuilder()Lcom/android/aapt/Resources$StyledString$Span$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->getSpanFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$StyledString$Span;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyledString$Span$Builder;

    return-object v0
.end method

.method public addSpanBuilder(I)Lcom/android/aapt/Resources$StyledString$Span$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->getSpanFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$StyledString$Span;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$Span$Builder;

    return-object p1
.end method

.method public build()Lcom/android/aapt/Resources$StyledString;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->buildPartial()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$StyledString;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->build()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->build()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$StyledString;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$StyledString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$StyledString;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/G0;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$StyledString$Builder;->buildPartialRepeatedFields(Lcom/android/aapt/Resources$StyledString;)V

    .line 5
    iget v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$StyledString$Builder;->buildPartial0(Lcom/android/aapt/Resources$StyledString;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->buildPartial()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->buildPartial()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    .line 12
    :goto_0
    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->clear()Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->clear()Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->clear()Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->clear()Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSpan()Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearValue()Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$StyledString;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$StyledString;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->C0()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getSpan(I)Lcom/android/aapt/Resources$StyledString$Span;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$Span;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$Span;

    return-object p1
.end method

.method public getSpanBuilder(I)Lcom/android/aapt/Resources$StyledString$Span$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->getSpanFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$Span$Builder;

    return-object p1
.end method

.method public getSpanBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$StyledString$Span$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->getSpanFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$StyledString$Span;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpanOrBuilder(I)Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;

    return-object p1
.end method

.method public getSpanOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$StyledString$SpanOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->D0()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$StyledString;

    const-class v2, Lcom/android/aapt/Resources$StyledString$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$StyledString;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->getDefaultInstance()Lcom/android/aapt/Resources$StyledString;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyledString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->u6(Lcom/android/aapt/Resources$StyledString;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    .line 13
    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    .line 16
    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->t6(Lcom/android/aapt/Resources$StyledString;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->t6(Lcom/android/aapt/Resources$StyledString;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    .line 19
    iget v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    goto :goto_0

    .line 20
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 21
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->t6(Lcom/android/aapt/Resources$StyledString;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    .line 23
    :cond_3
    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->t6(Lcom/android/aapt/Resources$StyledString;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    .line 27
    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->t6(Lcom/android/aapt/Resources$StyledString;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    .line 28
    iget v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    .line 29
    invoke-static {}, Lcom/android/aapt/Resources$StyledString;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->getSpanFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    goto :goto_1

    .line 31
    :cond_5
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->t6(Lcom/android/aapt/Resources$StyledString;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 32
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;

    .line 33
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 35
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v3, 0x12

    if-eq v1, v3, :cond_2

    .line 36
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

    .line 37
    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$StyledString$Span;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 38
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$StyledString$Span;

    .line 39
    iget-object v2, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    .line 40
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 41
    iget-object v2, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    .line 44
    iget v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

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
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$StyledString;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$StyledString;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/android/aapt/Resources$StyledString;)Lcom/android/aapt/Resources$StyledString$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$StyledString$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$StyledString$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$StyledString$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeSpan(I)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public setSpan(ILcom/android/aapt/Resources$StyledString$Span$Builder;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$StyledString$Span$Builder;->build()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$StyledString$Span$Builder;->build()Lcom/android/aapt/Resources$StyledString$Span;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setSpan(ILcom/android/aapt/Resources$StyledString$Span;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->spanBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$StyledString$Builder;->ensureSpanIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$StyledString$Builder;->span_:Ljava/util/List;

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

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$StyledString$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$StyledString$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$StyledString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$StyledString$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$StyledString;->access$2400(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->value_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$StyledString$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
