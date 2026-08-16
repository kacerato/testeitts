.class public final Lcom/google/protobuf/X1$b;
.super Lcom/google/protobuf/w0$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/X1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/w0$b<",
        "Lcom/google/protobuf/X1$b;",
        ">;",
        "Lcom/google/protobuf/Y1;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/google/protobuf/S0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/S0<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/protobuf/w0$b;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/X1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/X1$b;-><init>()V

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

    .line 4
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/w0$c;Lcom/google/protobuf/X1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/X1$b;-><init>(Lcom/google/protobuf/w0$c;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Z1;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method


# virtual methods
.method public A6(Ljava/lang/String;Lcom/google/protobuf/y2;)Lcom/google/protobuf/X1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/protobuf/X1$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/X1$b;->b:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "map value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "map key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public B6(Ljava/lang/String;)Lcom/google/protobuf/X1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "map key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final C6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;
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

    check-cast p1, Lcom/google/protobuf/X1$b;

    return-object p1
.end method

.method public I1()Lcom/google/protobuf/X1;
    .locals 2

    new-instance v0, Lcom/google/protobuf/X1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/X1;-><init>(Lcom/google/protobuf/w0$b;Lcom/google/protobuf/X1$a;)V

    iget v1, p0, Lcom/google/protobuf/X1$b;->b:I

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/X1$b;->v3(Lcom/google/protobuf/X1;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onBuilt()V

    return-object v0
.end method

.method public P2(Ljava/lang/String;Lcom/google/protobuf/y2;)Lcom/google/protobuf/y2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->t6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/protobuf/y2;

    :cond_0
    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "map key"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a5()Lcom/google/protobuf/X1$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/w0$b;->clear()Lcom/google/protobuf/w0$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/X1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->b()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->m1()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->m1()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->I1()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->I1()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Y0$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->a5()Lcom/google/protobuf/X1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->a5()Lcom/google/protobuf/X1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/b1$a;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->a5()Lcom/google/protobuf/X1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/w0$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->a5()Lcom/google/protobuf/X1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Y0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->r6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/b1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->r6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Z1;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->s2()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->t6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public internalGetFieldAccessorTable()Lcom/google/protobuf/w0$h;
    .locals 3

    sget-object v0, Lcom/google/protobuf/Z1;->b:Lcom/google/protobuf/w0$h;

    const-class v1, Lcom/google/protobuf/X1;

    const-class v2, Lcom/google/protobuf/X1$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/w0$h;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/w0$h;

    move-result-object v0

    return-object v0
.end method

.method public internalGetMapField(I)Lcom/google/protobuf/S0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->t6()Lcom/google/protobuf/S0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public internalGetMutableMapField(I)Lcom/google/protobuf/S0;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k3(Ljava/lang/String;)Lcom/google/protobuf/y2;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->t6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/y2;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "map key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m1()Lcom/google/protobuf/X1;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->I1()Lcom/google/protobuf/X1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/X1;->isInitialized()Z

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/X1$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->w6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/X1$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->w6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/X1$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/X1$b;->v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->y6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->y6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->y6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;

    move-result-object p1

    return-object p1
.end method

.method public n5(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->t6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "map key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q6()Lcom/google/protobuf/X1$b;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/X1$b;->b:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/X1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public r6()Lcom/google/protobuf/X1;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    return-object v0
.end method

.method public s2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->t6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->j()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public s6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/protobuf/X1$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/X1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->m()Ljava/util/Map;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->C6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;

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
    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->C6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;

    move-result-object p1

    return-object p1
.end method

.method public final t6()Lcom/google/protobuf/S0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/S0<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/X1$b;->c:Lcom/google/protobuf/S0;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/X1$c;->a:Lcom/google/protobuf/Q0;

    invoke-static {v0}, Lcom/google/protobuf/S0;->h(Lcom/google/protobuf/Q0;)Lcom/google/protobuf/S0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final u6()Lcom/google/protobuf/S0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/S0<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/X1$b;->c:Lcom/google/protobuf/S0;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/X1$c;->a:Lcom/google/protobuf/Q0;

    invoke-static {v0}, Lcom/google/protobuf/S0;->q(Lcom/google/protobuf/Q0;)Lcom/google/protobuf/S0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/X1$b;->c:Lcom/google/protobuf/S0;

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/X1$b;->c:Lcom/google/protobuf/S0;

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/protobuf/X1$b;->c:Lcom/google/protobuf/S0;

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->g()Lcom/google/protobuf/S0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/X1$b;->c:Lcom/google/protobuf/S0;

    :cond_1
    iget v0, p0, Lcom/google/protobuf/X1$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/X1$b;->b:I

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    iget-object v0, p0, Lcom/google/protobuf/X1$b;->c:Lcom/google/protobuf/S0;

    return-object v0
.end method

.method public final v3(Lcom/google/protobuf/X1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    iget v0, p0, Lcom/google/protobuf/X1$b;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->t6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/X1;->u6(Lcom/google/protobuf/X1;Lcom/google/protobuf/S0;)Lcom/google/protobuf/S0;

    invoke-static {p1}, Lcom/google/protobuf/X1;->t6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/S0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/S0;->o()V

    :cond_0
    return-void
.end method

.method public v6(Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)Lcom/google/protobuf/X1$b;
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
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/C;->Z()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/16 v3, 0xa

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
    sget-object v1, Lcom/google/protobuf/X1$c;->a:Lcom/google/protobuf/Q0;

    invoke-virtual {v1}, Lcom/google/protobuf/Q0;->getParserForType()Lcom/google/protobuf/w1;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/C;->I(Lcom/google/protobuf/w1;Lcom/google/protobuf/d0;)Lcom/google/protobuf/b1;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Q0;

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/S0;->m()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/protobuf/Q0;->s6()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/protobuf/Q0;->u6()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/y2;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/X1$b;->b:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/protobuf/X1$b;->b:I
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

    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public w6(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/X1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/protobuf/X1;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/X1;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->x6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/X1$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/a$a;->mergeFrom(Lcom/google/protobuf/Y0;)Lcom/google/protobuf/a$a;

    return-object p0
.end method

.method public x6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/X1$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/X1;->w6()Lcom/google/protobuf/X1;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/X1;->v6(Lcom/google/protobuf/X1;)Lcom/google/protobuf/S0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/S0;->p(Lcom/google/protobuf/S0;)V

    iget v0, p0, Lcom/google/protobuf/X1$b;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/X1$b;->b:I

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->getUnknownFields()Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/X1$b;->y6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;

    invoke-virtual {p0}, Lcom/google/protobuf/w0$b;->onChanged()V

    return-object p0
.end method

.method public final y6(Lcom/google/protobuf/r2;)Lcom/google/protobuf/X1$b;
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

    check-cast p1, Lcom/google/protobuf/X1$b;

    return-object p1
.end method

.method public z6(Ljava/util/Map;)Lcom/google/protobuf/X1$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/y2;",
            ">;)",
            "Lcom/google/protobuf/X1$b;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/X1$b;->u6()Lcom/google/protobuf/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/S0;->m()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget p1, p0, Lcom/google/protobuf/X1$b;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/X1$b;->b:I

    return-object p0
.end method
