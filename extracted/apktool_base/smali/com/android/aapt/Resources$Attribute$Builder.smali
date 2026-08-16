.class public final Lcom/android/aapt/Resources$Attribute$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$AttributeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Attribute$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$AttributeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private formatFlags_:I

.field private maxInt_:I

.field private minInt_:I

.field private symbolBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$Attribute$Symbol;",
            "Lcom/android/aapt/Resources$Attribute$Symbol$Builder;",
            "Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private symbol_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Attribute$Symbol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Attribute;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->formatFlags_:I

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Attribute;->u6(Lcom/android/aapt/Resources$Attribute;I)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->minInt_:I

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$Attribute;->w6(Lcom/android/aapt/Resources$Attribute;I)V

    :cond_1
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->maxInt_:I

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Attribute;->v6(Lcom/android/aapt/Resources$Attribute;I)V

    :cond_2
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/aapt/Resources$Attribute;)V
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Attribute;->x6(Lcom/android/aapt/Resources$Attribute;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Attribute;->x6(Lcom/android/aapt/Resources$Attribute;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private ensureSymbolIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->i()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getSymbolFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$Attribute$Symbol;",
            "Lcom/android/aapt/Resources$Attribute$Symbol$Builder;",
            "Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

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

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public addAllSymbol(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$Attribute$Symbol;",
            ">;)",
            "Lcom/android/aapt/Resources$Attribute$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addSymbol(ILcom/android/aapt/Resources$Attribute$Symbol$Builder;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;->build()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;->build()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addSymbol(ILcom/android/aapt/Resources$Attribute$Symbol;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

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

.method public addSymbol(Lcom/android/aapt/Resources$Attribute$Symbol$Builder;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;->build()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;->build()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addSymbol(Lcom/android/aapt/Resources$Attribute$Symbol;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

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

.method public addSymbolBuilder()Lcom/android/aapt/Resources$Attribute$Symbol$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->getSymbolFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$Attribute$Symbol;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;

    return-object v0
.end method

.method public addSymbolBuilder(I)Lcom/android/aapt/Resources$Attribute$Symbol$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->getSymbolFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$Attribute$Symbol;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;

    return-object p1
.end method

.method public build()Lcom/android/aapt/Resources$Attribute;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->buildPartial()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Attribute;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->build()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->build()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Attribute;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Attribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Attribute;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/l;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Attribute$Builder;->buildPartialRepeatedFields(Lcom/android/aapt/Resources$Attribute;)V

    .line 5
    iget v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Attribute$Builder;->buildPartial0(Lcom/android/aapt/Resources$Attribute;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->buildPartial()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->buildPartial()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    .line 7
    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->formatFlags_:I

    .line 8
    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->minInt_:I

    .line 9
    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->maxInt_:I

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    .line 13
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    .line 14
    :goto_0
    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->clear()Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->clear()Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->clear()Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->clear()Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFormatFlags()Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->formatFlags_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearMaxInt()Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->maxInt_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearMinInt()Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->minInt_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSymbol()Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Attribute;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->i()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getFormatFlags()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->formatFlags_:I

    return v0
.end method

.method public getMaxInt()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->maxInt_:I

    return v0
.end method

.method public getMinInt()I
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->minInt_:I

    return v0
.end method

.method public getSymbol(I)Lcom/android/aapt/Resources$Attribute$Symbol;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$Symbol;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$Symbol;

    return-object p1
.end method

.method public getSymbolBuilder(I)Lcom/android/aapt/Resources$Attribute$Symbol$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->getSymbolFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;

    return-object p1
.end method

.method public getSymbolBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Attribute$Symbol$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->getSymbolFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getSymbolList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$Attribute$Symbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolOrBuilder(I)Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;

    return-object p1
.end method

.method public getSymbolOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$Attribute$SymbolOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->j()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Attribute;

    const-class v2, Lcom/android/aapt/Resources$Attribute$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Attribute;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute;->getFormatFlags()I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute;->getFormatFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Attribute$Builder;->setFormatFlags(I)Lcom/android/aapt/Resources$Attribute$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute;->getMinInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute;->getMinInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Attribute$Builder;->setMinInt(I)Lcom/android/aapt/Resources$Attribute$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute;->getMaxInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute;->getMaxInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Attribute$Builder;->setMaxInt(I)Lcom/android/aapt/Resources$Attribute$Builder;

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_5

    .line 18
    invoke-static {p1}, Lcom/android/aapt/Resources$Attribute;->t6(Lcom/android/aapt/Resources$Attribute;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {p1}, Lcom/android/aapt/Resources$Attribute;->t6(Lcom/android/aapt/Resources$Attribute;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    goto :goto_0

    .line 22
    :cond_4
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 23
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$Attribute;->t6(Lcom/android/aapt/Resources$Attribute;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    .line 25
    :cond_5
    invoke-static {p1}, Lcom/android/aapt/Resources$Attribute;->t6(Lcom/android/aapt/Resources$Attribute;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 26
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    .line 29
    invoke-static {p1}, Lcom/android/aapt/Resources$Attribute;->t6(Lcom/android/aapt/Resources$Attribute;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    .line 30
    iget v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    .line 31
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->access$2700()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->getSymbolFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$Attribute;->t6(Lcom/android/aapt/Resources$Attribute;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 34
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;

    .line 35
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_7

    .line 37
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_6

    const/16 v3, 0x10

    if-eq v1, v3, :cond_5

    const/16 v3, 0x18

    if-eq v1, v3, :cond_4

    const/16 v3, 0x22

    if-eq v1, v3, :cond_2

    .line 38
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

    .line 39
    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Attribute$Symbol;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$Attribute$Symbol;

    .line 41
    iget-object v2, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_3

    .line 42
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 43
    iget-object v2, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->maxInt_:I

    .line 46
    iget v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->minInt_:I

    .line 48
    iget v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    goto :goto_0

    .line 49
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/C;->a0()I

    move-result v1

    iput v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->formatFlags_:I

    .line 50
    iget v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 51
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 53
    throw p1

    .line 54
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Attribute;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Attribute;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/android/aapt/Resources$Attribute;)Lcom/android/aapt/Resources$Attribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Attribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Attribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Attribute$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeSymbol(I)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public setFormatFlags(I)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->formatFlags_:I

    iget p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setMaxInt(I)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->maxInt_:I

    iget p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setMinInt(I)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 0

    iput p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->minInt_:I

    iget p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$Attribute$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSymbol(ILcom/android/aapt/Resources$Attribute$Symbol$Builder;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;->build()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$Attribute$Symbol$Builder;->build()Lcom/android/aapt/Resources$Attribute$Symbol;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setSymbol(ILcom/android/aapt/Resources$Attribute$Symbol;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbolBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$Attribute$Builder;->ensureSymbolIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$Attribute$Builder;->symbol_:Ljava/util/List;

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

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Attribute$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    return-object p1
.end method
