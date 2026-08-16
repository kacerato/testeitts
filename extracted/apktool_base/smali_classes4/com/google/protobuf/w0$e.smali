.class public abstract Lcom/google/protobuf/w0$e;
.super Lcom/google/protobuf/w0;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/w0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w0$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageT:",
        "Lcom/google/protobuf/w0$e<",
        "TMessageT;>;>",
        "Lcom/google/protobuf/w0;",
        "Lcom/google/protobuf/w0$f<",
        "TMessageT;>;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public final b:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/Descriptors$f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/w0;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->N()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/w0$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w0$d<",
            "TMessageT;*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/w0;-><init>(Lcom/google/protobuf/w0$b;)V

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/w0$d;->m1(Lcom/google/protobuf/w0$d;)Lcom/google/protobuf/o0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    return-void
.end method

.method private A6(Lcom/google/protobuf/Descriptors$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private B6(Lcom/google/protobuf/Z;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension is for type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->q()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which does not match message type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic t6(Lcom/google/protobuf/w0$e;)Lcom/google/protobuf/o0;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/google/protobuf/t0$n;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$e;->u(Lcom/google/protobuf/a0;)Z

    move-result p1

    return p1
.end method

.method public final M(Lcom/google/protobuf/Z;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$e;->z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final Q(Lcom/google/protobuf/t0$n;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$e;->s(Lcom/google/protobuf/a0;)I

    move-result p1

    return p1
.end method

.method public final R(Lcom/google/protobuf/t0$n;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$e;->r(Lcom/google/protobuf/a0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final X(Lcom/google/protobuf/Z;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$e;->u(Lcom/google/protobuf/a0;)Z

    move-result p1

    return p1
.end method

.method public final Z(Lcom/google/protobuf/Z;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$e;->s(Lcom/google/protobuf/a0;)I

    move-result p1

    return p1
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/w0;->access$800(Lcom/google/protobuf/w0;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllFieldsRaw()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/w0;->access$800(Lcom/google/protobuf/w0;Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->x6()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->A6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->x()Lcom/google/protobuf/Descriptors$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/P;->r6(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/P;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/w0;->getField(Lcom/google/protobuf/Descriptors$f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "field",
            "index"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->A6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/w0;->getRepeatedField(Lcom/google/protobuf/Descriptors$f;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->A6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/w0;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$f;)I

    move-result p1

    return p1
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$f;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->A6(Lcom/google/protobuf/Descriptors$f;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->B(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/w0;->hasField(Lcom/google/protobuf/Descriptors$f;)Z

    move-result p1

    return p1
.end method

.method public isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/w0;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/w0$e;->u6()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l0(Lcom/google/protobuf/Z;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Z<",
            "TMessageT;TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/protobuf/w0$e;->r(Lcom/google/protobuf/a0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public makeExtensionsImmutable()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->J()V

    return-void
.end method

.method public parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "unknownFields",
            "extensionRegistry",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/C;->g0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v1, p2

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v3

    new-instance v4, Lcom/google/protobuf/f1$c;

    iget-object p2, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-direct {v4, p2}, Lcom/google/protobuf/f1$c;-><init>(Lcom/google/protobuf/o0;)V

    move-object v0, p1

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f1;->g(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/f1$e;I)Z

    move-result p1

    return p1
.end method

.method public parseUnknownFieldProto3(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "unknownFields",
            "extensionRegistry",
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/w0$e;->parseUnknownField(Lcom/google/protobuf/C;Lcom/google/protobuf/r2$b;Lcom/google/protobuf/d0;I)Z

    move-result p1

    return p1
.end method

.method public final r(Lcom/google/protobuf/a0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extensionLite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->B6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/o0;->u(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->Z1()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->v()Lcom/google/protobuf/Descriptors$f$b;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/Descriptors$f$b;->MESSAGE:Lcom/google/protobuf/Descriptors$f$b;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->j()Lcom/google/protobuf/Y0;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$f;->r()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/Z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/protobuf/Z;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lcom/google/protobuf/a0;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extensionLite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->B6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->y(Lcom/google/protobuf/o0$c;)I

    move-result p1

    return p1
.end method

.method public final s0(Lcom/google/protobuf/t0$n;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extension",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/t0$n<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/w0$e;->z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final u(Lcom/google/protobuf/a0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "extensionLite"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;TT;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->B6(Lcom/google/protobuf/Z;)V

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o0;->B(Lcom/google/protobuf/o0$c;)Z

    move-result p1

    return p1
.end method

.method public u6()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->E()Z

    move-result v0

    return v0
.end method

.method public v6()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->z()I

    move-result v0

    return v0
.end method

.method public w6()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->v()I

    move-result v0

    return v0
.end method

.method public x6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$f;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public y6()Lcom/google/protobuf/w0$e$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w0$e<",
            "TMessageT;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/w0$e$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/w0$e$a;-><init>(Lcom/google/protobuf/w0$e;ZLcom/google/protobuf/w0$a;)V

    return-object v0
.end method

.method public final z(Lcom/google/protobuf/a0;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "extensionLite",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/a0<",
            "TMessageT;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/w0;->access$500(Lcom/google/protobuf/a0;)Lcom/google/protobuf/Z;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/w0$e;->B6(Lcom/google/protobuf/Z;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Z;->h()Lcom/google/protobuf/Descriptors$f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/w0$e;->b:Lcom/google/protobuf/o0;

    invoke-virtual {v1, v0, p2}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/Z;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z6()Lcom/google/protobuf/w0$e$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/w0$e<",
            "TMessageT;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/w0$e$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/w0$e$a;-><init>(Lcom/google/protobuf/w0$e;ZLcom/google/protobuf/w0$a;)V

    return-object v0
.end method
