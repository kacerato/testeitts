.class public final Lcom/android/aapt/Resources$MacroBody$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$MacroBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$MacroBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$MacroBody$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$MacroBodyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private namespaceStackBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$NamespaceAlias;",
            "Lcom/android/aapt/Resources$NamespaceAlias$Builder;",
            "Lcom/android/aapt/Resources$NamespaceAliasOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private namespaceStack_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$NamespaceAlias;",
            ">;"
        }
    .end annotation
.end field

.field private rawString_:Ljava/lang/Object;

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

.field private styleStringBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StyleString;",
            "Lcom/android/aapt/Resources$StyleString$Builder;",
            "Lcom/android/aapt/Resources$StyleStringOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private styleString_:Lcom/android/aapt/Resources$StyleString;

.field private untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
            "Lcom/android/aapt/Resources$UntranslatableSection$Builder;",
            "Lcom/android/aapt/Resources$UntranslatableSectionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private untranslatableSections_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
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
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/E;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$MacroBody;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/android/aapt/Resources$MacroBody;->x6(Lcom/android/aapt/Resources$MacroBody;Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$StyleString;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$MacroBody;->z6(Lcom/android/aapt/Resources$MacroBody;Lcom/android/aapt/Resources$StyleString;)V

    :cond_2
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition;

    :goto_1
    invoke-static {p1, v0}, Lcom/android/aapt/Resources$MacroBody;->y6(Lcom/android/aapt/Resources$MacroBody;Lcom/android/aapt/Resources$SourcePosition;)V

    :cond_4
    return-void
.end method

.method private buildPartialRepeatedFields(Lcom/android/aapt/Resources$MacroBody;)V
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$MacroBody;->A6(Lcom/android/aapt/Resources$MacroBody;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$MacroBody;->A6(Lcom/android/aapt/Resources$MacroBody;Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    :cond_2
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$MacroBody;->w6(Lcom/android/aapt/Resources$MacroBody;Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$MacroBody;->w6(Lcom/android/aapt/Resources$MacroBody;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private ensureNamespaceStackIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureUntranslatableSectionsIsMutable()V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->C()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getNamespaceStackFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$NamespaceAlias;",
            "Lcom/android/aapt/Resources$NamespaceAlias$Builder;",
            "Lcom/android/aapt/Resources$NamespaceAliasOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

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

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

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

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getStyleStringFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$StyleString;",
            "Lcom/android/aapt/Resources$StyleString$Builder;",
            "Lcom/android/aapt/Resources$StyleStringOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getStyleString()Lcom/android/aapt/Resources$StyleString;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getUntranslatableSectionsFieldBuilder()Lcom/google/protobuf/G1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/G1<",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
            "Lcom/android/aapt/Resources$UntranslatableSection$Builder;",
            "Lcom/android/aapt/Resources$UntranslatableSectionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/G1;

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    iget v2, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

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

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    return-object v0
.end method


# virtual methods
.method public addAllNamespaceStack(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$NamespaceAlias;",
            ">;)",
            "Lcom/android/aapt/Resources$MacroBody$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addAllUntranslatableSections(Ljava/lang/Iterable;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
            ">;)",
            "Lcom/android/aapt/Resources$MacroBody$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/b$a;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addNamespaceStack(ILcom/android/aapt/Resources$NamespaceAlias$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$NamespaceAlias$Builder;->build()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$NamespaceAlias$Builder;->build()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addNamespaceStack(ILcom/android/aapt/Resources$NamespaceAlias;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

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

.method public addNamespaceStack(Lcom/android/aapt/Resources$NamespaceAlias$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$NamespaceAlias$Builder;->build()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$NamespaceAlias$Builder;->build()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addNamespaceStack(Lcom/android/aapt/Resources$NamespaceAlias;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

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

.method public addNamespaceStackBuilder()Lcom/android/aapt/Resources$NamespaceAlias$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getNamespaceStackFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$NamespaceAlias;->getDefaultInstance()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$NamespaceAlias$Builder;

    return-object v0
.end method

.method public addNamespaceStackBuilder(I)Lcom/android/aapt/Resources$NamespaceAlias$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getNamespaceStackFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$NamespaceAlias;->getDefaultInstance()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$NamespaceAlias$Builder;

    return-object p1
.end method

.method public addUntranslatableSections(ILcom/android/aapt/Resources$UntranslatableSection$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 20
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->build()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->build()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->e(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addUntranslatableSections(ILcom/android/aapt/Resources$UntranslatableSection;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 10
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

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

.method public addUntranslatableSections(Lcom/android/aapt/Resources$UntranslatableSection$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 15
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->build()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->build()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public addUntranslatableSections(Lcom/android/aapt/Resources$UntranslatableSection;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

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

.method public addUntranslatableSectionsBuilder()Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getUntranslatableSectionsFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/aapt/Resources$UntranslatableSection;->getDefaultInstance()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->d(Lcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    return-object v0
.end method

.method public addUntranslatableSectionsBuilder(I)Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getUntranslatableSectionsFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/aapt/Resources$UntranslatableSection;->getDefaultInstance()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/G1;->c(ILcom/google/protobuf/a;)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    return-object p1
.end method

.method public build()Lcom/android/aapt/Resources$MacroBody;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->buildPartial()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$MacroBody;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->build()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->build()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$MacroBody;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$MacroBody;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$MacroBody;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/F;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$MacroBody$Builder;->buildPartialRepeatedFields(Lcom/android/aapt/Resources$MacroBody;)V

    .line 5
    iget v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$MacroBody$Builder;->buildPartial0(Lcom/android/aapt/Resources$MacroBody;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->buildPartial()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->buildPartial()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    .line 9
    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 11
    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v1, :cond_1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    .line 15
    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    .line 16
    :goto_0
    iget v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 17
    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v1, :cond_2

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    goto :goto_1

    .line 19
    :cond_2
    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    .line 20
    invoke-virtual {v1}, Lcom/google/protobuf/G1;->h()V

    .line 21
    :goto_1
    iget v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 22
    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    .line 23
    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 25
    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_3
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->clear()Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->clear()Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->clear()Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->clear()Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearNamespaceStack()Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public clearRawString()Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/aapt/Resources$MacroBody;->getRawString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearSource()Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearStyleString()Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    iget-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearUntranslatableSections()Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->h()V

    :goto_0
    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$MacroBody;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->C()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceStack(I)Lcom/android/aapt/Resources$NamespaceAlias;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$NamespaceAlias;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$NamespaceAlias;

    return-object p1
.end method

.method public getNamespaceStackBuilder(I)Lcom/android/aapt/Resources$NamespaceAlias$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getNamespaceStackFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$NamespaceAlias$Builder;

    return-object p1
.end method

.method public getNamespaceStackBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$NamespaceAlias$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getNamespaceStackFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceStackCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getNamespaceStackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$NamespaceAlias;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceStackOrBuilder(I)Lcom/android/aapt/Resources$NamespaceAliasOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$NamespaceAliasOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$NamespaceAliasOrBuilder;

    return-object p1
.end method

.method public getNamespaceStackOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$NamespaceAliasOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRawString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRawStringBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/aapt/Resources$String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getSource()Lcom/android/aapt/Resources$SourcePosition;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

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

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePosition$Builder;

    return-object v0
.end method

.method public getSourceOrBuilder()Lcom/android/aapt/Resources$SourcePositionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$SourcePositionOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getStyleString()Lcom/android/aapt/Resources$StyleString;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$StyleString;->getDefaultInstance()Lcom/android/aapt/Resources$StyleString;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyleString;

    return-object v0
.end method

.method public getStyleStringBuilder()Lcom/android/aapt/Resources$StyleString$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getStyleStringFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyleString$Builder;

    return-object v0
.end method

.method public getStyleStringOrBuilder()Lcom/android/aapt/Resources$StyleStringOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyleStringOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$StyleString;->getDefaultInstance()Lcom/android/aapt/Resources$StyleString;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUntranslatableSections(I)Lcom/android/aapt/Resources$UntranslatableSection;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->o(I)Lcom/google/protobuf/a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$UntranslatableSection;

    return-object p1
.end method

.method public getUntranslatableSectionsBuilder(I)Lcom/android/aapt/Resources$UntranslatableSection$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getUntranslatableSectionsFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->l(I)Lcom/google/protobuf/a$a;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$UntranslatableSection$Builder;

    return-object p1
.end method

.method public getUntranslatableSectionsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$UntranslatableSection$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getUntranslatableSectionsFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUntranslatableSectionsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->n()I

    move-result v0

    return v0
.end method

.method public getUntranslatableSectionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/aapt/Resources$UntranslatableSection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/G1;->q()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUntranslatableSectionsOrBuilder(I)Lcom/android/aapt/Resources$UntranslatableSectionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$UntranslatableSectionOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->r(I)Lcom/google/protobuf/e1;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$UntranslatableSectionOrBuilder;

    return-object p1
.end method

.method public getUntranslatableSectionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/aapt/Resources$UntranslatableSectionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->s()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasSource()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStyleString()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/android/aapt/Resources;->D()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$MacroBody;

    const-class v2, Lcom/android/aapt/Resources$MacroBody$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$MacroBody;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 3

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody;->getRawString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->u6(Lcom/android/aapt/Resources$MacroBody;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    .line 13
    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody;->hasStyleString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody;->getStyleString()Lcom/android/aapt/Resources$StyleString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeStyleString(Lcom/android/aapt/Resources$StyleString;)Lcom/android/aapt/Resources$MacroBody$Builder;

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 18
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->v6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 19
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->v6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    .line 21
    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    goto :goto_0

    .line 22
    :cond_3
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 23
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->v6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->v6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 28
    iput-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    .line 29
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->v6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    .line 30
    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 31
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getUntranslatableSectionsFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    goto :goto_2

    .line 33
    :cond_6
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->v6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 34
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_9

    .line 35
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->t6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 36
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 37
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->t6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    .line 38
    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    goto :goto_3

    .line 39
    :cond_8
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 40
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->t6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_4

    .line 42
    :cond_9
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->t6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 43
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    invoke-virtual {v0}, Lcom/google/protobuf/G1;->i()V

    .line 45
    iput-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    .line 46
    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->t6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    .line 47
    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 48
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->access$4800()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getNamespaceStackFieldBuilder()Lcom/google/protobuf/G1;

    move-result-object v1

    :cond_a
    iput-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    goto :goto_4

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->t6(Lcom/android/aapt/Resources$MacroBody;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/G1;->b(Ljava/lang/Iterable;)Lcom/google/protobuf/G1;

    .line 51
    :cond_c
    :goto_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 52
    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody;->getSource()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$MacroBody$Builder;

    .line 53
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 56
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

    if-eq v1, v3, :cond_5

    const/16 v3, 0x22

    if-eq v1, v3, :cond_3

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_2

    .line 57
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

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getSourceFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 60
    iget v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Lcom/android/aapt/Resources$NamespaceAlias;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 62
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$NamespaceAlias;

    .line 63
    iget-object v2, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_4

    .line 64
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 65
    iget-object v2, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 67
    :cond_5
    invoke-static {}, Lcom/android/aapt/Resources$UntranslatableSection;->parser()Lcom/google/protobuf/w1;

    move-result-object v1

    .line 68
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/Resources$UntranslatableSection;

    .line 69
    iget-object v2, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v2, :cond_6

    .line 70
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 71
    iget-object v2, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_6
    invoke-virtual {v2, v1}, Lcom/google/protobuf/G1;->f(Lcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    goto :goto_0

    .line 73
    :cond_7
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getStyleStringFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 74
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 75
    iget v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    goto/16 :goto_0

    .line 76
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    .line 77
    iget v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 78
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 80
    throw p1

    .line 81
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$MacroBody;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$MacroBody;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/android/aapt/Resources$MacroBody;)Lcom/android/aapt/Resources$MacroBody$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$MacroBody$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$MacroBody$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$MacroBody$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$SourcePosition;->getDefaultInstance()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getSourceBuilder()Lcom/android/aapt/Resources$SourcePosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->mergeFrom(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$SourcePosition$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeStyleString(Lcom/android/aapt/Resources$StyleString;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$StyleString;->getDefaultInstance()Lcom/android/aapt/Resources$StyleString;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->getStyleStringBuilder()Lcom/android/aapt/Resources$StyleString$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$StyleString$Builder;->mergeFrom(Lcom/android/aapt/Resources$StyleString;)Lcom/android/aapt/Resources$StyleString$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$MacroBody$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeNamespaceStack(I)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public removeUntranslatableSections(I)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/G1;->w(I)V

    :goto_0
    return-object p0
.end method

.method public setNamespaceStack(ILcom/android/aapt/Resources$NamespaceAlias$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$NamespaceAlias$Builder;->build()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$NamespaceAlias$Builder;->build()Lcom/android/aapt/Resources$NamespaceAlias;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setNamespaceStack(ILcom/android/aapt/Resources$NamespaceAlias;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStackBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureNamespaceStackIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->namespaceStack_:Ljava/util/List;

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

.method public setRawString(Ljava/lang/String;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setRawStringBytes(Lcom/google/protobuf/x;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/aapt/Resources$MacroBody;->access$4900(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->rawString_:Ljava/lang/Object;

    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$SourcePosition$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$SourcePosition$Builder;->build()Lcom/android/aapt/Resources$SourcePosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setSource(Lcom/android/aapt/Resources$SourcePosition;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->sourceBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->source_:Lcom/android/aapt/Resources$SourcePosition;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setStyleString(Lcom/android/aapt/Resources$StyleString$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyleString$Builder;->build()Lcom/android/aapt/Resources$StyleString;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$StyleString$Builder;->build()Lcom/android/aapt/Resources$StyleString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setStyleString(Lcom/android/aapt/Resources$StyleString;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleStringBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->styleString_:Lcom/android/aapt/Resources$StyleString;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$MacroBody$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUntranslatableSections(ILcom/android/aapt/Resources$UntranslatableSection$Builder;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 9
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->build()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/aapt/Resources$UntranslatableSection$Builder;->build()Lcom/android/aapt/Resources$UntranslatableSection;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/G1;->x(ILcom/google/protobuf/a;)Lcom/google/protobuf/G1;

    :goto_0
    return-object p0
.end method

.method public setUntranslatableSections(ILcom/android/aapt/Resources$UntranslatableSection;)Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSectionsBuilder_:Lcom/google/protobuf/G1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-direct {p0}, Lcom/android/aapt/Resources$MacroBody$Builder;->ensureUntranslatableSectionsIsMutable()V

    .line 4
    iget-object v0, p0, Lcom/android/aapt/Resources$MacroBody$Builder;->untranslatableSections_:Ljava/util/List;

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
