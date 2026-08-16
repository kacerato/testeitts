.class public final Lcom/android/aapt/Resources$ConfigValue$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$ConfigValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$ConfigValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$ConfigValue$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$ConfigValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration;",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;",
            "Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

.field private valueBuilder_:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Value;",
            "Lcom/android/aapt/Resources$Value$Builder;",
            "Lcom/android/aapt/Resources$ValueOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Lcom/android/aapt/Resources$Value;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/q;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$ConfigValue;)V
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v1

    check-cast v1, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    :goto_0
    invoke-static {p1, v1}, Lcom/android/aapt/Resources$ConfigValue;->t6(Lcom/android/aapt/Resources$ConfigValue;Lcom/android/aapt/ConfigurationOuterClass$Configuration;)V

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Value;

    :goto_1
    invoke-static {p1, v0}, Lcom/android/aapt/Resources$ConfigValue;->u6(Lcom/android/aapt/Resources$ConfigValue;Lcom/android/aapt/Resources$Value;)V

    :cond_3
    return-void
.end method

.method private getConfigFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration;",
            "Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;",
            "Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method private getValueFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/android/aapt/Resources$Value;",
            "Lcom/android/aapt/Resources$Value$Builder;",
            "Lcom/android/aapt/Resources$ValueOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getValue()Lcom/android/aapt/Resources$Value;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$ConfigValue;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->buildPartial()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$ConfigValue;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->build()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$ConfigValue;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$ConfigValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$ConfigValue;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/r;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->buildPartial0(Lcom/android/aapt/Resources$ConfigValue;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->buildPartial()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->buildPartial()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 2

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    .line 8
    iget-object v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 10
    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    .line 11
    :cond_0
    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    .line 12
    iget-object v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    .line 14
    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->clear()Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->clear()Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->clear()Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->clear()Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearConfig()Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    iget-object v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public clearValue()Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    iget-object v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    return-object v0
.end method

.method public getConfigBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getConfigFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    return-object v0
.end method

.method public getConfigOrBuilder()Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/ConfigurationOuterClass$ConfigurationOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$ConfigValue;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$ConfigValue;->getDefaultInstance()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/android/aapt/Resources$Value;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Value;->getDefaultInstance()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Value;

    return-object v0
.end method

.method public getValueBuilder()Lcom/android/aapt/Resources$Value$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-direct {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$Value$Builder;

    return-object v0
.end method

.method public getValueOrBuilder()Lcom/android/aapt/Resources$ValueOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/android/aapt/Resources$ValueOrBuilder;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/aapt/Resources$Value;->getDefaultInstance()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasConfig()Z
    .locals 2

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValue()Z
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/android/aapt/Resources;->p()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$ConfigValue;

    const-class v2, Lcom/android/aapt/Resources$ConfigValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeConfig(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/ConfigurationOuterClass$Configuration;->getDefaultInstance()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getConfigBuilder()Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->mergeFrom(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$ConfigValue;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$ConfigValue;->getDefaultInstance()Lcom/android/aapt/Resources$ConfigValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ConfigValue;->hasConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ConfigValue;->getConfig()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeConfig(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ConfigValue;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/android/aapt/Resources$ConfigValue;->getValue()Lcom/android/aapt/Resources$Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeValue(Lcom/android/aapt/Resources$Value;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    .line 16
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0x12

    if-eq v1, v3, :cond_2

    .line 19
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

    .line 20
    :cond_2
    invoke-direct {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 22
    iget v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    goto :goto_0

    .line 23
    :cond_3
    invoke-direct {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getConfigFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    .line 24
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    .line 25
    iget v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 26
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 28
    throw p1

    .line 29
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$ConfigValue;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$ConfigValue;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeFrom(Lcom/android/aapt/Resources$ConfigValue;)Lcom/android/aapt/Resources$ConfigValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$ConfigValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$ConfigValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ConfigValue$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValue$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeValue(Lcom/android/aapt/Resources$Value;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/aapt/Resources$Value;->getDefaultInstance()Lcom/android/aapt/Resources$Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/aapt/Resources$ConfigValue$Builder;->getValueBuilder()Lcom/android/aapt/Resources$Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/aapt/Resources$Value$Builder;->mergeFrom(Lcom/android/aapt/Resources$Value;)Lcom/android/aapt/Resources$Value$Builder;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setConfig(Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->build()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/ConfigurationOuterClass$Configuration$Builder;->build()Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setConfig(Lcom/android/aapt/ConfigurationOuterClass$Configuration;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->configBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->config_:Lcom/android/aapt/ConfigurationOuterClass$Configuration;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$ConfigValue$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$ConfigValue$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$ConfigValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/aapt/Resources$Value$Builder;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value$Builder;->build()Lcom/android/aapt/Resources$Value;

    move-result-object p1

    iput-object p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Value$Builder;->build()Lcom/android/aapt/Resources$Value;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 10
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    .line 11
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public setValue(Lcom/android/aapt/Resources$Value;)Lcom/android/aapt/Resources$ConfigValue$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->valueBuilder_:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->value_:Lcom/android/aapt/Resources$Value;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    .line 5
    :goto_0
    iget p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/aapt/Resources$ConfigValue$Builder;->bitField0_:I

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
