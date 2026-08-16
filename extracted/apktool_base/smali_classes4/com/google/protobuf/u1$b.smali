.class public final Lcom/google/protobuf/u1$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/v1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/u1$b;",
        ">;",
        "Lcom/google/protobuf/v1;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Lcom/google/protobuf/g;

.field public e:Lcom/google/protobuf/Q1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/g;",
            "Lcom/google/protobuf/g$b;",
            "Lcom/google/protobuf/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/u1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/u1$b;-><init>()V

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

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    .line 6
    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/u1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/u1$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/k2;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method


# virtual methods
.method public A6(Lcom/google/protobuf/x;)Lcom/google/protobuf/u1$b;
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

    iput-object p1, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;
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

    check-cast p1, Lcom/google/protobuf/u1$b;

    return-object p1
.end method

.method public C6(Lcom/google/protobuf/g$b;)Lcom/google/protobuf/u1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/g$b;->m1()Lcom/google/protobuf/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/g$b;->m1()Lcom/google/protobuf/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public D6(Lcom/google/protobuf/g;)Lcom/google/protobuf/u1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->j(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public I1()Lcom/google/protobuf/u1;
    .locals 2

    new-instance v0, Lcom/google/protobuf/u1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/u1;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/u1$a;)V

    iget v1, p0, Lcom/google/protobuf/u1$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/u1$b;->v3(Lcom/google/protobuf/u1;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public a5()Lcom/google/protobuf/u1$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/u1$b;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    iget-object v1, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->m1()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->I1()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->I1()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->a5()Lcom/google/protobuf/u1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->a5()Lcom/google/protobuf/u1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->a5()Lcom/google/protobuf/u1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->a5()Lcom/google/protobuf/u1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->s6()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->s6()Lcom/google/protobuf/u1;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/k2;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/g;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/g;->w6()Lcom/google/protobuf/g;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->f()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/g;

    return-object v0
.end method

.method public final getValueFieldBuilder()Lcom/google/protobuf/Q1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Q1<",
            "Lcom/google/protobuf/g;",
            "Lcom/google/protobuf/g$b;",
            "Lcom/google/protobuf/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Q1;

    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->getValue()Lcom/google/protobuf/g;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->getParentForChildren()Lcom/google/protobuf/w0$c;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Q1;-><init>(Lcom/google/protobuf/a;Lcom/google/protobuf/a$b;Z)V

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    return-object v0
.end method

.method public getValueOrBuilder()Lcom/google/protobuf/h;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->g()Lcom/google/protobuf/e1;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/protobuf/g;->w6()Lcom/google/protobuf/g;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    iget v0, p0, Lcom/google/protobuf/u1$b;->b:I

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

    sget-object v0, Lcom/google/protobuf/k2;->j:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/u1;

    const-class v2, Lcom/google/protobuf/u1$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()Lcom/google/protobuf/u1;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->I1()Lcom/google/protobuf/u1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/u1;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->v6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->v6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/u1$b;->u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->x6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->x6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->x6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lcom/google/protobuf/u1$b;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/u1;->w6()Lcom/google/protobuf/u1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/u1;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/u1$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/u1$b;
    .locals 2

    iget v0, p0, Lcom/google/protobuf/u1$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/u1$b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    iget-object v1, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->d()V

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6()Lcom/google/protobuf/u1;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/u1;->w6()Lcom/google/protobuf/u1;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->B6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lcom/google/protobuf/g$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->getValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/g$b;

    return-object v0
.end method

.method public u6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/u1$b;
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
    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->getValueFieldBuilder()Lcom/google/protobuf/Q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Q1;->e()Lcom/google/protobuf/a$a;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->J(Lcom/google/protobuf/b1$a;Lcom/google/protobuf/d0;)V

    iget v1, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/protobuf/u1$b;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/u1$b;->b:I
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

.method public final v3(Lcom/google/protobuf/u1;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/u1$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/protobuf/u1;->u6(Lcom/google/protobuf/u1;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Q1;->b()Lcom/google/protobuf/a;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/g;

    :goto_0
    invoke-static {p1, v0}, Lcom/google/protobuf/u1;->v6(Lcom/google/protobuf/u1;Lcom/google/protobuf/g;)Lcom/google/protobuf/g;

    :cond_2
    return-void
.end method

.method public v6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/u1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/u1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/u1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->w6(Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public w6(Lcom/google/protobuf/u1;)Lcom/google/protobuf/u1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/u1;->w6()Lcom/google/protobuf/u1;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/u1;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/u1;->t6(Lcom/google/protobuf/u1;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/u1;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/u1;->getValue()Lcom/google/protobuf/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/u1$b;->y6(Lcom/google/protobuf/g;)Lcom/google/protobuf/u1$b;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/u1$b;->x6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final x6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/u1$b;
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

    check-cast p1, Lcom/google/protobuf/u1$b;

    return-object p1
.end method

.method public y6(Lcom/google/protobuf/g;)Lcom/google/protobuf/u1$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->e:Lcom/google/protobuf/Q1;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/protobuf/u1$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/g;->w6()Lcom/google/protobuf/g;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/u1$b;->t6()Lcom/google/protobuf/g$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/g$b;->t6(Lcom/google/protobuf/g;)Lcom/google/protobuf/g$b;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/u1$b;->d:Lcom/google/protobuf/g;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Q1;->h(Lcom/google/protobuf/a;)Lcom/google/protobuf/Q1;

    :goto_0
    iget p1, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public z6(Ljava/lang/String;)Lcom/google/protobuf/u1$b;
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

    iput-object p1, p0, Lcom/google/protobuf/u1$b;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/u1$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/u1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
