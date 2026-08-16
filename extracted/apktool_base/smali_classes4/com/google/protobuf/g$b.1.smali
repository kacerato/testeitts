.class public final Lcom/google/protobuf/g$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/g$b;",
        ">;",
        "Lcom/google/protobuf/h;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lcom/google/protobuf/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/g$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 7
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    .line 8
    sget-object p1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object p1, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/g$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method


# virtual methods
.method public A6(Lcom/google/protobuf/x;)Lcom/google/protobuf/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    iget p1, p0, Lcom/google/protobuf/g$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/g$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I1()Lcom/google/protobuf/g;
    .locals 2

    new-instance v0, Lcom/google/protobuf/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/g;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/g$a;)V

    iget v1, p0, Lcom/google/protobuf/g$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g$b;->v3(Lcom/google/protobuf/g;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public K()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public O()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a5()Lcom/google/protobuf/g$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/g$b;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    iput-object v0, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->m1()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->m1()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->I1()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->I1()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->a5()Lcom/google/protobuf/g$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->a5()Lcom/google/protobuf/g$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->a5()Lcom/google/protobuf/g$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->a5()Lcom/google/protobuf/g$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->s6()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->s6()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/i;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/x;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    return-object v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    sget-object v0, Lcom/google/protobuf/i;->b:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/g;

    const-class v2, Lcom/google/protobuf/g$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()Lcom/google/protobuf/g;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/g$b;->I1()Lcom/google/protobuf/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/a$a;->newUninitializedMessageException(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->v6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "other"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->v6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/g$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lcom/google/protobuf/g$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/g;->w6()Lcom/google/protobuf/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g;->O()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/g$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/g$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/g$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/g$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/g$b;->b:I

    invoke-static {}, Lcom/google/protobuf/g;->w6()Lcom/google/protobuf/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6()Lcom/google/protobuf/g;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/g;->w6()Lcom/google/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/Y0$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "unknownFields"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1
.end method

.method public t6(Lcom/google/protobuf/g;)Lcom/google/protobuf/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/g;->w6()Lcom/google/protobuf/g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/g;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/g;->t6(Lcom/google/protobuf/g;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/g$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/g$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/x;->g:Lcom/google/protobuf/x;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/g;->getValue()Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/g$b;->A6(Lcom/google/protobuf/x;)Lcom/google/protobuf/g$b;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/g$b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0x12

    if-eq v1, v3, :cond_2

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

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/C;->y()Lcom/google/protobuf/x;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    iget v1, p0, Lcom/google/protobuf/g$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/g$b;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/g$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/g$b;->b:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final v3(Lcom/google/protobuf/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/g$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/g;->u6(Lcom/google/protobuf/g;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/g$b;->d:Lcom/google/protobuf/x;

    invoke-static {p1, v0}, Lcom/google/protobuf/g;->v6(Lcom/google/protobuf/g;Lcom/google/protobuf/x;)Lcom/google/protobuf/x;

    :cond_1
    return-void
.end method

.method public v6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/g;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/g$b;->t6(Lcom/google/protobuf/g;)Lcom/google/protobuf/g$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public final w6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->mergeUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g$b;

    return-object p1
.end method

.method public x6(Ljava/lang/String;)Lcom/google/protobuf/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/g$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/g$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public y6(Lcom/google/protobuf/x;)Lcom/google/protobuf/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/x;)V

    iput-object p1, p0, Lcom/google/protobuf/g$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/g$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/g$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final z6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "unknownFields"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/protobuf/w0$b;->setUnknownFields(Lcom/google/protobuf/r2;)Lcom/google/protobuf/w0$b;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/g$b;

    return-object p1
.end method
