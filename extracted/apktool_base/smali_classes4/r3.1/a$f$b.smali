.class public final Lr3/a$f$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lr3/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lr3/a$f$b;",
        ">;",
        "Lr3/a$g;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

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

    iput-object p1, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lr3/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr3/a$f$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lr3/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lr3/a$f$b;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lr3/a;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A6(I)Lr3/a$f$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lr3/a$f$b;->d:I

    iget p1, p0, Lr3/a$f$b;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr3/a$f$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public B1()Z
    .locals 2

    iget v0, p0, Lr3/a$f$b;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public B6(I)Lr3/a$f$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lr3/a$f$b;->e:I

    iget p1, p0, Lr3/a$f$b;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lr3/a$f$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public C6(Ljava/lang/String;)Lr3/a$f$b;
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

    iput-object p1, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    iget p1, p0, Lr3/a$f$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lr3/a$f$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public D6(Lcom/google/protobuf/x;)Lr3/a$f$b;
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

    iput-object p1, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    iget p1, p0, Lr3/a$f$b;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lr3/a$f$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public E0()Z
    .locals 1

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final E6(Lcom/google/protobuf/r2;)Lr3/a$f$b;
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

    check-cast p1, Lr3/a$f$b;

    return-object p1
.end method

.method public I1()Lr3/a$f;
    .locals 2

    new-instance v0, Lr3/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr3/a$f;-><init>(Lcom/google/protobuf/w0$b;Lr3/a$a;)V

    iget v1, p0, Lr3/a$f$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lr3/a$f$b;->v3(Lr3/a$f;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public R5()Z
    .locals 1

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a5()Lr3/a$f$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lr3/a$f$b;->b:I

    iput v0, p0, Lr3/a$f$b;->c:I

    iput v0, p0, Lr3/a$f$b;->d:I

    iput v0, p0, Lr3/a$f$b;->e:I

    const-string v0, ""

    iput-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$f$b;->m1()Lr3/a$f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$f$b;->m1()Lr3/a$f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$f$b;->I1()Lr3/a$f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$f$b;->I1()Lr3/a$f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lr3/a$f$b;->a5()Lr3/a$f$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$f$b;->a5()Lr3/a$f$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lr3/a$f$b;->a5()Lr3/a$f$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$f$b;->a5()Lr3/a$f$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lr3/a$f$b;->u6()Lr3/a$f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lr3/a$f$b;->u6()Lr3/a$f;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    invoke-static {}, Lr3/a;->a()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    iget v0, p0, Lr3/a$f$b;->c:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    iget v0, p0, Lr3/a$f$b;->d:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    iget v0, p0, Lr3/a$f$b;->e:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/x;

    invoke-virtual {v0}, Lcom/google/protobuf/x;->g0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/x;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSuffixBytes()Lcom/google/protobuf/x;
    .locals 2

    iget-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/x;->w(Ljava/lang/String;)Lcom/google/protobuf/x;

    move-result-object v0

    iput-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/x;

    return-object v0
.end method

.method public hasSuffix()Z
    .locals 1

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v0, v0, 0x8

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

    invoke-static {}, Lr3/a;->b()Lcom/google/protobuf/w0$h;

    move-result-object v0

    const-class v1, Lr3/a$f;

    const-class v2, Lr3/a$f$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m1()Lr3/a$f;
    .locals 2

    invoke-virtual {p0}, Lr3/a$f$b;->I1()Lr3/a$f;

    move-result-object v0

    invoke-virtual {v0}, Lr3/a$f;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lr3/a$f$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1}, Lr3/a$f$b;->w6(Lcom/google/protobuf/Y0;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$f$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1}, Lr3/a$f$b;->w6(Lcom/google/protobuf/Y0;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$f$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1, p2}, Lr3/a$f$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1}, Lr3/a$f$b;->y6(Lcom/google/protobuf/r2;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1}, Lr3/a$f$b;->y6(Lcom/google/protobuf/r2;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1}, Lr3/a$f$b;->y6(Lcom/google/protobuf/r2;)Lr3/a$f$b;

    move-result-object p1

    return-object p1
.end method

.method public q6()Lr3/a$f$b;
    .locals 1

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lr3/a$f$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lr3/a$f$b;->c:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public r6()Lr3/a$f$b;
    .locals 1

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lr3/a$f$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lr3/a$f$b;->d:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public s6()Lr3/a$f$b;
    .locals 1

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lr3/a$f$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lr3/a$f$b;->e:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
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
    invoke-virtual {p0, p1}, Lr3/a$f$b;->E6(Lcom/google/protobuf/r2;)Lr3/a$f$b;

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
    invoke-virtual {p0, p1}, Lr3/a$f$b;->E6(Lcom/google/protobuf/r2;)Lr3/a$f$b;

    move-result-object p1

    return-object p1
.end method

.method public t6()Lr3/a$f$b;
    .locals 1

    invoke-static {}, Lr3/a$f;->z6()Lr3/a$f;

    move-result-object v0

    invoke-virtual {v0}, Lr3/a$f;->getSuffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lr3/a$f$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public u6()Lr3/a$f;
    .locals 1

    invoke-static {}, Lr3/a$f;->z6()Lr3/a$f;

    move-result-object v0

    return-object v0
.end method

.method public final v3(Lr3/a$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lr3/a$f$b;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lr3/a$f$b;->c:I

    invoke-static {p1, v1}, Lr3/a$f;->t6(Lr3/a$f;I)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget v2, p0, Lr3/a$f$b;->d:I

    invoke-static {p1, v2}, Lr3/a$f;->u6(Lr3/a$f;I)I

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    iget v2, p0, Lr3/a$f$b;->e:I

    invoke-static {p1, v2}, Lr3/a$f;->v6(Lr3/a$f;I)I

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Lr3/a$f;->x6(Lr3/a$f;Ljava/lang/Object;)Ljava/lang/Object;

    or-int/lit8 v1, v1, 0x8

    :cond_3
    invoke-static {p1, v1}, Lr3/a$f;->y6(Lr3/a$f;I)I

    return-void
.end method

.method public v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lr3/a$f$b;
    .locals 5
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
    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_5

    const/16 v4, 0x10

    if-eq v1, v4, :cond_4

    const/16 v4, 0x18

    if-eq v1, v4, :cond_3

    const/16 v4, 0x22

    if-eq v1, v4, :cond_2

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

    iput-object v1, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    iget v1, p0, Lr3/a$f$b;->b:I

    or-int/2addr v1, v3

    iput v1, p0, Lr3/a$f$b;->b:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lr3/a$f$b;->e:I

    iget v1, p0, Lr3/a$f$b;->b:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lr3/a$f$b;->b:I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lr3/a$f$b;->d:I

    iget v1, p0, Lr3/a$f$b;->b:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lr3/a$f$b;->b:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/C;->G()I

    move-result v1

    iput v1, p0, Lr3/a$f$b;->c:I

    iget v1, p0, Lr3/a$f$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lr3/a$f$b;->b:I
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

    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public w6(Lcom/google/protobuf/Y0;)Lr3/a$f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lr3/a$f;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/a$f;

    invoke-virtual {p0, p1}, Lr3/a$f$b;->x6(Lr3/a$f;)Lr3/a$f$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public x6(Lr3/a$f;)Lr3/a$f$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lr3/a$f;->z6()Lr3/a$f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lr3/a$f;->B1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lr3/a$f;->getMajor()I

    move-result v0

    invoke-virtual {p0, v0}, Lr3/a$f$b;->z6(I)Lr3/a$f$b;

    :cond_1
    invoke-virtual {p1}, Lr3/a$f;->E0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lr3/a$f;->getMinor()I

    move-result v0

    invoke-virtual {p0, v0}, Lr3/a$f$b;->A6(I)Lr3/a$f$b;

    :cond_2
    invoke-virtual {p1}, Lr3/a$f;->R5()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lr3/a$f;->getPatch()I

    move-result v0

    invoke-virtual {p0, v0}, Lr3/a$f$b;->B6(I)Lr3/a$f$b;

    :cond_3
    invoke-virtual {p1}, Lr3/a$f;->hasSuffix()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lr3/a$f;->w6(Lr3/a$f;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lr3/a$f$b;->f:Ljava/lang/Object;

    iget v0, p0, Lr3/a$f$b;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr3/a$f$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr3/a$f$b;->y6(Lcom/google/protobuf/r2;)Lr3/a$f$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final y6(Lcom/google/protobuf/r2;)Lr3/a$f$b;
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

    check-cast p1, Lr3/a$f$b;

    return-object p1
.end method

.method public z6(I)Lr3/a$f$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iput p1, p0, Lr3/a$f$b;->c:I

    iget p1, p0, Lr3/a$f$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr3/a$f$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method
