.class public final Lcom/android/aapt/Resources$Boolean$Builder;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/android/aapt/Resources$BooleanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/aapt/Resources$Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/android/aapt/Resources$Boolean$Builder;",
        ">;",
        "Lcom/android/aapt/Resources$BooleanOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private value_:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/aapt/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/aapt/Resources$Boolean$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/android/aapt/m;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method private buildPartial0(Lcom/android/aapt/Resources$Boolean;)V
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->value_:Z

    invoke-static {p1, v0}, Lcom/android/aapt/Resources$Boolean;->t6(Lcom/android/aapt/Resources$Boolean;Z)V

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->k()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/aapt/Resources$Boolean;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->buildPartial()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/aapt/Resources$Boolean;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->build()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->build()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/android/aapt/Resources$Boolean;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/aapt/Resources$Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/aapt/Resources$Boolean;-><init>(Lcom/google/protobuf/w0$b;Lcom/android/aapt/n;)V

    .line 4
    iget v1, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/aapt/Resources$Boolean$Builder;->buildPartial0(Lcom/android/aapt/Resources$Boolean;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->buildPartial()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->buildPartial()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    .line 7
    iput-boolean v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->value_:Z

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->clear()Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->clear()Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->clear()Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->clear()Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 1

    iget v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->value_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public getDefaultInstanceForType()Lcom/android/aapt/Resources$Boolean;
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/aapt/Resources$Boolean;->getDefaultInstance()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/aapt/Resources$Boolean$Builder;->getDefaultInstanceForType()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lcom/android/aapt/Resources;->k()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/aapt/Resources$Boolean$Builder;->value_:Z

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    invoke-static {}, Lcom/android/aapt/Resources;->l()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lcom/android/aapt/Resources$Boolean;

    const-class v2, Lcom/android/aapt/Resources$Boolean$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/android/aapt/Resources$Boolean;)Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 1

    .line 10
    invoke-static {}, Lcom/android/aapt/Resources$Boolean;->getDefaultInstance()Lcom/android/aapt/Resources$Boolean;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Boolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/android/aapt/Resources$Boolean;->getValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/aapt/Resources$Boolean$Builder;->setValue(Z)Lcom/android/aapt/Resources$Boolean$Builder;

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 16
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    .line 17
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

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->v()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/aapt/Resources$Boolean$Builder;->value_:Z

    .line 19
    iget v1, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    .line 22
    throw p1

    .line 23
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 1

    .line 7
    instance-of v0, p1, Lcom/android/aapt/Resources$Boolean;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/android/aapt/Resources$Boolean;

    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeFrom(Lcom/android/aapt/Resources$Boolean;)Lcom/android/aapt/Resources$Boolean$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Boolean$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/android/aapt/Resources$Boolean$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Boolean$Builder;

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
    invoke-virtual {p0, p1, p2}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Boolean$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/android/aapt/Resources$Boolean$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/aapt/Resources$Boolean$Builder;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/android/aapt/Resources$Boolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Z)Lcom/android/aapt/Resources$Boolean$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/aapt/Resources$Boolean$Builder;->value_:Z

    iget p1, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/aapt/Resources$Boolean$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
