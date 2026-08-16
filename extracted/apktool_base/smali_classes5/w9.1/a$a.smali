.class public Lw9/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/a;->l(Lw9/a;)Lsb/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public b:Lz9/e;

.field public c:Lvc/e;

.field public d:I

.field public final synthetic e:Lw9/a;


# direct methods
.method public constructor <init>(Lw9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw9/a$a;->e:Lw9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "count"
        }
    .end annotation

    iget-object v0, p0, Lw9/a$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->putFill(FI)V

    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lw9/a$a;->b:Lz9/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw9/a$a;->c:Lvc/e;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lw9/a$a;->b:Lz9/e;

    invoke-virtual {v2}, Lz9/e;->g()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget-object v3, p0, Lw9/a$a;->b:Lz9/e;

    invoke-virtual {v3}, Lz9/e;->g()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lw9/a$a;->b:Lz9/e;

    iget-object v4, p0, Lw9/a$a;->c:Lvc/e;

    invoke-virtual {v4, v1, v2}, Lvc/e;->w(II)F

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lz9/e;->i(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lw9/a$a;->c:Lvc/e;

    iput-object v0, p0, Lw9/a$a;->b:Lz9/e;

    iput-object v0, p0, Lw9/a$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public c(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lw9/a$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    return-void
.end method

.method public d(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return-void
.end method

.method public e(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "count"
        }
    .end annotation

    return-void
.end method

.method public f(Ljava/lang/String;Lsb/a$a;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bufferName",
            "bufferType",
            "capacity"
        }
    .end annotation

    const-string v0, "table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object p1, Lsb/a$a;->Float:Lsb/a$a;

    if-ne p2, p1, :cond_0

    invoke-static {p3}, LNc/b;->r1(I)I

    move-result p1

    iput p3, p0, Lw9/a$a;->d:I

    new-instance p2, Lvc/e;

    invoke-direct {p2, p1, p1}, Lvc/e;-><init>(II)V

    iput-object p2, p0, Lw9/a$a;->c:Lvc/e;

    iget-object p3, p0, Lw9/a$a;->e:Lw9/a;

    new-instance v0, Lz9/e;

    invoke-direct {v0, p1}, Lz9/e;-><init>(I)V

    invoke-static {p3, v0}, Lw9/a;->b(Lw9/a;Lz9/e;)Lz9/e;

    iget-object p1, p0, Lw9/a$a;->e:Lw9/a;

    invoke-static {p1}, Lw9/a;->a(Lw9/a;)Lz9/e;

    move-result-object p1

    iput-object p1, p0, Lw9/a$a;->b:Lz9/e;

    invoke-virtual {p2}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lw9/a$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return v1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "terrain table serialized with wrong data type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "layer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsb/a$a;->Float:Lsb/a$a;

    if-ne p2, v0, :cond_2

    invoke-static {p3}, LNc/b;->r1(I)I

    move-result p2

    iput p3, p0, Lw9/a$a;->d:I

    new-instance p3, Lvc/e;

    invoke-direct {p3, p2, p2}, Lvc/e;-><init>(II)V

    iput-object p3, p0, Lw9/a$a;->c:Lvc/e;

    new-instance v0, Lz9/e;

    invoke-direct {v0, p2}, Lz9/e;-><init>(I)V

    iput-object v0, p0, Lw9/a$a;->b:Lz9/e;

    new-instance p2, Lx9/a;

    invoke-direct {p2, p1, v0}, Lx9/a;-><init>(Ljava/lang/String;Lz9/e;)V

    iget-object p1, p0, Lw9/a$a;->e:Lw9/a;

    invoke-static {p1}, Lw9/a;->c(Lw9/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lvc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lw9/a$a;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    return v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "terrain layer serialized with wrong data type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return v2
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "comment",
            "line"
        }
    .end annotation

    return-void
.end method
