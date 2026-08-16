.class public final Lcom/android/aapt/Resources$CompoundValue$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$CompoundValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$CompoundValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$CompoundValue$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$CompoundValueOrBuilder;"
    }
.end annotation


# instance fields
.field private arrayBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Array;",
            "Lcom/android/aapt/Resources$Array$Builder;",
            "Lcom/android/aapt/Resources$ArrayOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private attrBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Attribute;",
            "Lcom/android/aapt/Resources$Attribute$Builder;",
            "Lcom/android/aapt/Resources$AttributeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private macroBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$MacroBody;",
            "Lcom/android/aapt/Resources$MacroBody$Builder;",
            "Lcom/android/aapt/Resources$MacroBodyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pluralBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Plural;",
            "Lcom/android/aapt/Resources$Plural$Builder;",
            "Lcom/android/aapt/Resources$PluralOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private styleBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Style;",
            "Lcom/android/aapt/Resources$Style$Builder;",
            "Lcom/android/aapt/Resources$StyleOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private styleableBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Styleable;",
            "Lcom/android/aapt/Resources$Styleable$Builder;",
            "Lcom/android/aapt/Resources$StyleableOrBuilder;",
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
    iput v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/o;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$CompoundValue;)V
    .locals 0

    return-void
.end method

.method private buildPartialOneofs(Lcom/android/aapt/Resources$CompoundValue;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->t6(Lcom/android/aapt/Resources$CompoundValue;I)V

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V

    :cond_3
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V

    :cond_4
    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$CompoundValue;->u6(Lcom/android/aapt/Resources$CompoundValue;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private getArrayFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Array;",
            "Lcom/android/aapt/Resources$Array$Builder;",
            "Lcom/android/aapt/Resources$ArrayOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Array;->getDefaultInstance()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Array;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getAttrFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Attribute;",
            "Lcom/android/aapt/Resources$Attribute$Builder;",
            "Lcom/android/aapt/Resources$AttributeOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Attribute;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->m()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getMacroFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$MacroBody;",
            "Lcom/android/aapt/Resources$MacroBody$Builder;",
            "Lcom/android/aapt/Resources$MacroBodyOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$MacroBody;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getPluralFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Plural;",
            "Lcom/android/aapt/Resources$Plural$Builder;",
            "Lcom/android/aapt/Resources$PluralOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Plural;->getDefaultInstance()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Plural;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getStyleFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Style;",
            "Lcom/android/aapt/Resources$Style$Builder;",
            "Lcom/android/aapt/Resources$StyleOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Style;->getDefaultInstance()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Style;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method private getStyleableFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Styleable;",
            "Lcom/android/aapt/Resources$Styleable$Builder;",
            "Lcom/android/aapt/Resources$StyleableOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Styleable;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_0
    new-instance v0, Lcom/google/protobuf/Q1;

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v2, Lcom/android/aapt/Resources$Styleable;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$CompoundValue;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->buildPartial()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$CompoundValue;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->build()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->build()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$CompoundValue;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$CompoundValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$CompoundValue;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/p;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->buildPartial0(Lcom/android/aapt/Resources$CompoundValue;)V

    .line 5
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->buildPartialOneofs(Lcom/android/aapt/Resources$CompoundValue;)V

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->buildPartial()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->buildPartial()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->bitField0_:I

    .line 7
    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 17
    :cond_4
    iget-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    .line 19
    :cond_5
    iput v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->clear()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->clear()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->clear()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->clear()Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearArray()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearAttr()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearMacro()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearPlural()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearStyle()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearStyleable()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 5

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v3, :cond_2

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v4, v3, :cond_1

    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    iput-object v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->c()Lcom/google/protobuf/Q1;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public clearValue()Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getArray()Lcom/android/aapt/Resources$Array;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Array;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Array;->getDefaultInstance()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Array;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Array;->getDefaultInstance()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    return-object v0
.end method

.method public getArrayBuilder()Lcom/android/aapt/Resources$Array$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getArrayFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Array$Builder;

    return-object v0
.end method

.method public getArrayOrBuilder()Lcom/android/aapt/Resources$ArrayOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ArrayOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Array;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Array;->getDefaultInstance()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    return-object v0
.end method

.method public getAttr()Lcom/android/aapt/Resources$Attribute;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttrBuilder()Lcom/android/aapt/Resources$Attribute$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getAttrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Attribute$Builder;

    return-object v0
.end method

.method public getAttrOrBuilder()Lcom/android/aapt/Resources$AttributeOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$AttributeOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$CompoundValue;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->m()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getMacro()Lcom/android/aapt/Resources$MacroBody;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$MacroBody;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$MacroBody;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public getMacroBuilder()Lcom/android/aapt/Resources$MacroBody$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getMacroFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$MacroBody$Builder;

    return-object v0
.end method

.method public getMacroOrBuilder()Lcom/android/aapt/Resources$MacroBodyOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$MacroBodyOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$MacroBody;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    return-object v0
.end method

.method public getPlural()Lcom/android/aapt/Resources$Plural;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Plural;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Plural;->getDefaultInstance()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Plural;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Plural;->getDefaultInstance()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    return-object v0
.end method

.method public getPluralBuilder()Lcom/android/aapt/Resources$Plural$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getPluralFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Plural$Builder;

    return-object v0
.end method

.method public getPluralOrBuilder()Lcom/android/aapt/Resources$PluralOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$PluralOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Plural;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Plural;->getDefaultInstance()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/android/aapt/Resources$Style;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Style;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Style;->getDefaultInstance()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Style;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Style;->getDefaultInstance()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    return-object v0
.end method

.method public getStyleBuilder()Lcom/android/aapt/Resources$Style$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getStyleFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Style$Builder;

    return-object v0
.end method

.method public getStyleOrBuilder()Lcom/android/aapt/Resources$StyleOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyleOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Style;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Style;->getDefaultInstance()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    return-object v0
.end method

.method public getStyleable()Lcom/android/aapt/Resources$Styleable;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Styleable;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/aapt/Resources$Styleable;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Styleable;

    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/aapt/Resources$Styleable;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    return-object v0
.end method

.method public getStyleableBuilder()Lcom/android/aapt/Resources$Styleable$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getStyleableFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Styleable$Builder;

    return-object v0
.end method

.method public getStyleableOrBuilder()Lcom/android/aapt/Resources$StyleableOrBuilder;
    .locals 3

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$StyleableOrBuilder;

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Styleable;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/aapt/Resources$Styleable;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lcom/android/aapt/Resources$CompoundValue$ValueCase;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    invoke-static {v0}, Lcom/android/aapt/Resources$CompoundValue$ValueCase;->forNumber(I)Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasArray()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAttr()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMacro()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlural()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStyle()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStyleable()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    const/4 v1, 0x3

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

    invoke-static {}, Lcom/android/aapt/Resources;->n()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$CompoundValue;

    const-class v2, Lcom/android/aapt/Resources$CompoundValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeArray(Lcom/android/aapt/Resources$Array;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Array;->getDefaultInstance()Lcom/android/aapt/Resources$Array;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Array;

    invoke-static {v0}, Lcom/android/aapt/Resources$Array;->newBuilder(Lcom/android/aapt/Resources$Array;)Lcom/android/aapt/Resources$Array$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Array$Builder;->mergeFrom(Lcom/android/aapt/Resources$Array;)Lcom/android/aapt/Resources$Array$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Array$Builder;->buildPartial()Lcom/android/aapt/Resources$Array;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeAttr(Lcom/android/aapt/Resources$Attribute;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Attribute;->getDefaultInstance()Lcom/android/aapt/Resources$Attribute;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Attribute;

    invoke-static {v0}, Lcom/android/aapt/Resources$Attribute;->newBuilder(Lcom/android/aapt/Resources$Attribute;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Attribute$Builder;->mergeFrom(Lcom/android/aapt/Resources$Attribute;)Lcom/android/aapt/Resources$Attribute$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute$Builder;->buildPartial()Lcom/android/aapt/Resources$Attribute;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 2

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$CompoundValue;->getDefaultInstance()Lcom/android/aapt/Resources$CompoundValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/android/aapt/Resources$1;->$SwitchMap$com$android$aapt$Resources$CompoundValue$ValueCase:[I

    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getValueCase()Lcom/android/aapt/Resources$CompoundValue$ValueCase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getMacro()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeMacro(Lcom/android/aapt/Resources$MacroBody;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    goto :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getPlural()Lcom/android/aapt/Resources$Plural;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergePlural(Lcom/android/aapt/Resources$Plural;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    goto :goto_0

    .line 14
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getArray()Lcom/android/aapt/Resources$Array;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeArray(Lcom/android/aapt/Resources$Array;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    goto :goto_0

    .line 15
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getStyleable()Lcom/android/aapt/Resources$Styleable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeStyleable(Lcom/android/aapt/Resources$Styleable;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getStyle()Lcom/android/aapt/Resources$Style;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeStyle(Lcom/android/aapt/Resources$Style;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    goto :goto_0

    .line 17
    :pswitch_5
    invoke-virtual {p1}, Lcom/android/aapt/Resources$CompoundValue;->getAttr()Lcom/android/aapt/Resources$Attribute;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeAttr(Lcom/android/aapt/Resources$Attribute;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue$Builder;
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
    if-nez v0, :cond_8

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0x12

    if-eq v1, v3, :cond_6

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x22

    if-eq v1, v3, :cond_4

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x32

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
    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getMacroFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 24
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x6

    .line 25
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    goto :goto_0

    .line 26
    :cond_3
    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getPluralFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x5

    .line 28
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    goto :goto_0

    .line 29
    :cond_4
    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getArrayFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 30
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x4

    .line 31
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    goto :goto_0

    .line 32
    :cond_5
    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getStyleableFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 33
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x3

    .line 34
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    goto :goto_0

    .line 35
    :cond_6
    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getStyleFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    const/4 v1, 0x2

    .line 37
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    goto :goto_0

    .line 38
    :cond_7
    invoke-direct {p0}, Lcom/android/aapt/Resources$CompoundValue$Builder;->getAttrFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 39
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 40
    iput v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 43
    throw p1

    .line 44
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$CompoundValue;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$CompoundValue;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/android/aapt/Resources$CompoundValue;)Lcom/android/aapt/Resources$CompoundValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$CompoundValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$CompoundValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeMacro(Lcom/android/aapt/Resources$MacroBody;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$MacroBody;->getDefaultInstance()Lcom/android/aapt/Resources$MacroBody;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$MacroBody;

    invoke-static {v0}, Lcom/android/aapt/Resources$MacroBody;->newBuilder(Lcom/android/aapt/Resources$MacroBody;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->mergeFrom(Lcom/android/aapt/Resources$MacroBody;)Lcom/android/aapt/Resources$MacroBody$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->buildPartial()Lcom/android/aapt/Resources$MacroBody;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergePlural(Lcom/android/aapt/Resources$Plural;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Plural;->getDefaultInstance()Lcom/android/aapt/Resources$Plural;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Plural;

    invoke-static {v0}, Lcom/android/aapt/Resources$Plural;->newBuilder(Lcom/android/aapt/Resources$Plural;)Lcom/android/aapt/Resources$Plural$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Plural$Builder;->mergeFrom(Lcom/android/aapt/Resources$Plural;)Lcom/android/aapt/Resources$Plural$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Plural$Builder;->buildPartial()Lcom/android/aapt/Resources$Plural;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeStyle(Lcom/android/aapt/Resources$Style;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Style;->getDefaultInstance()Lcom/android/aapt/Resources$Style;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Style;

    invoke-static {v0}, Lcom/android/aapt/Resources$Style;->newBuilder(Lcom/android/aapt/Resources$Style;)Lcom/android/aapt/Resources$Style$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Style$Builder;->mergeFrom(Lcom/android/aapt/Resources$Style;)Lcom/android/aapt/Resources$Style$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Style$Builder;->buildPartial()Lcom/android/aapt/Resources$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public mergeStyleable(Lcom/android/aapt/Resources$Styleable;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 3

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {}, Lcom/android/aapt/Resources$Styleable;->getDefaultInstance()Lcom/android/aapt/Resources$Styleable;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/android/aapt/Resources$Styleable;

    invoke-static {v0}, Lcom/android/aapt/Resources$Styleable;->newBuilder(Lcom/android/aapt/Resources$Styleable;)Lcom/android/aapt/Resources$Styleable$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Styleable$Builder;->mergeFrom(Lcom/android/aapt/Resources$Styleable;)Lcom/android/aapt/Resources$Styleable$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Builder;->buildPartial()Lcom/android/aapt/Resources$Styleable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    if-ne v2, v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_1
    iput v1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$CompoundValue$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setArray(Lcom/android/aapt/Resources$Array$Builder;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Array$Builder;->build()Lcom/android/aapt/Resources$Array;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Array$Builder;->build()Lcom/android/aapt/Resources$Array;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setArray(Lcom/android/aapt/Resources$Array;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->arrayBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x4

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setAttr(Lcom/android/aapt/Resources$Attribute$Builder;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute$Builder;->build()Lcom/android/aapt/Resources$Attribute;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Attribute$Builder;->build()Lcom/android/aapt/Resources$Attribute;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setAttr(Lcom/android/aapt/Resources$Attribute;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->attrBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setMacro(Lcom/android/aapt/Resources$MacroBody$Builder;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->build()Lcom/android/aapt/Resources$MacroBody;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$MacroBody$Builder;->build()Lcom/android/aapt/Resources$MacroBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x6

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setMacro(Lcom/android/aapt/Resources$MacroBody;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->macroBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x6

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setPlural(Lcom/android/aapt/Resources$Plural$Builder;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Plural$Builder;->build()Lcom/android/aapt/Resources$Plural;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Plural$Builder;->build()Lcom/android/aapt/Resources$Plural;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setPlural(Lcom/android/aapt/Resources$Plural;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->pluralBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x5

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStyle(Lcom/android/aapt/Resources$Style$Builder;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Style$Builder;->build()Lcom/android/aapt/Resources$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Style$Builder;->build()Lcom/android/aapt/Resources$Style;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x2

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStyle(Lcom/android/aapt/Resources$Style;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStyleable(Lcom/android/aapt/Resources$Styleable$Builder;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Builder;->build()Lcom/android/aapt/Resources$Styleable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Styleable$Builder;->build()Lcom/android/aapt/Resources$Styleable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x3

    .line 11
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public setStyleable(Lcom/android/aapt/Resources$Styleable;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->styleableBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->value_:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/android/aapt/Resources$CompoundValue$Builder;->valueCase_:I

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$CompoundValue$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$CompoundValue$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$CompoundValue$Builder;

    move-result-object p1

    return-object p1
.end method
