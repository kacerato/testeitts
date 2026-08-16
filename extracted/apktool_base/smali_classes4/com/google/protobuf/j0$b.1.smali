.class public final Lcom/google/protobuf/j0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Field;

.field public b:Lcom/google/protobuf/p0;

.field public c:I

.field public d:Ljava/lang/reflect/Field;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Lcom/google/protobuf/t1;

.field public i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/Object;

.field public k:Lcom/google/protobuf/D0$e;

.field public l:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/j0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/j0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/j0;
    .locals 8

    iget-object v2, p0, Lcom/google/protobuf/j0$b;->h:Lcom/google/protobuf/t1;

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v1, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    iget-object v3, p0, Lcom/google/protobuf/j0$b;->i:Ljava/lang/Class;

    iget-boolean v4, p0, Lcom/google/protobuf/j0$b;->g:Z

    iget-object v5, p0, Lcom/google/protobuf/j0$b;->k:Lcom/google/protobuf/D0$e;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/j0;->g(ILcom/google/protobuf/p0;Lcom/google/protobuf/t1;Ljava/lang/Class;ZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/j0$b;->j:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v3, p0, Lcom/google/protobuf/j0$b;->k:Lcom/google/protobuf/D0$e;

    invoke-static {v1, v2, v0, v3}, Lcom/google/protobuf/j0;->e(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/google/protobuf/j0$b;->d:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_3

    iget-boolean v0, p0, Lcom/google/protobuf/j0$b;->f:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v3, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    iget v5, p0, Lcom/google/protobuf/j0$b;->e:I

    iget-boolean v6, p0, Lcom/google/protobuf/j0$b;->g:Z

    iget-object v7, p0, Lcom/google/protobuf/j0$b;->k:Lcom/google/protobuf/D0$e;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/j0;->k(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;IZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v3, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    iget v5, p0, Lcom/google/protobuf/j0$b;->e:I

    iget-boolean v6, p0, Lcom/google/protobuf/j0$b;->g:Z

    iget-object v7, p0, Lcom/google/protobuf/j0$b;->k:Lcom/google/protobuf/D0$e;

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/j0;->j(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;IZLcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/j0$b;->k:Lcom/google/protobuf/D0$e;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/protobuf/j0$b;->l:Ljava/lang/reflect/Field;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v3, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/j0;->d(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    iget v3, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v4, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/protobuf/j0;->i(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Lcom/google/protobuf/D0$e;Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/j0$b;->l:Ljava/lang/reflect/Field;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    iget v1, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v2, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    iget-boolean v3, p0, Lcom/google/protobuf/j0$b;->g:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/j0;->c(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Z)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    iget v2, p0, Lcom/google/protobuf/j0$b;->c:I

    iget-object v3, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/j0;->h(Ljava/lang/reflect/Field;ILcom/google/protobuf/p0;Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cachedSizeField"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/j0$b;->l:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public c(Z)Lcom/google/protobuf/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enforceUtf8"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/j0$b;->g:Z

    return-object p0
.end method

.method public d(Lcom/google/protobuf/D0$e;)Lcom/google/protobuf/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumVerifier"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/j0$b;->k:Lcom/google/protobuf/D0$e;

    return-object p0
.end method

.method public e(Ljava/lang/reflect/Field;)Lcom/google/protobuf/j0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j0$b;->h:Lcom/google/protobuf/t1;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set field when building a oneof."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(I)Lcom/google/protobuf/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    iput p1, p0, Lcom/google/protobuf/j0$b;->c:I

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/protobuf/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapDefaultEntry"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/j0$b;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public h(Lcom/google/protobuf/t1;Ljava/lang/Class;)Lcom/google/protobuf/j0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oneof",
            "oneofStoredType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/t1;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/protobuf/j0$b;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/j0$b;->a:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/j0$b;->d:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/j0$b;->h:Lcom/google/protobuf/t1;

    iput-object p2, p0, Lcom/google/protobuf/j0$b;->i:Ljava/lang/Class;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set oneof when field or presenceField have been provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/reflect/Field;I)Lcom/google/protobuf/j0$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "presenceField",
            "presenceMask"
        }
    .end annotation

    const-string v0, "presenceField"

    invoke-static {p1, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/google/protobuf/j0$b;->d:Ljava/lang/reflect/Field;

    iput p2, p0, Lcom/google/protobuf/j0$b;->e:I

    return-object p0
.end method

.method public j(Z)Lcom/google/protobuf/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "required"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/protobuf/j0$b;->f:Z

    return-object p0
.end method

.method public k(Lcom/google/protobuf/p0;)Lcom/google/protobuf/j0$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/protobuf/j0$b;->b:Lcom/google/protobuf/p0;

    return-object p0
.end method
