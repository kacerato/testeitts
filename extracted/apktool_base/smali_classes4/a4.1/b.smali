.class public La4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/b$a;
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:La4/a;

.field public c:La4/b$a;

.field public d:Ljava/lang/Object;

.field public e:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, La4/b$a;->DOWN:La4/b$a;

    iput-object v0, p0, La4/b;->c:La4/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;La4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keys",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "La4/a;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, La4/b$a;->DOWN:La4/b$a;

    iput-object v0, p0, La4/b;->c:La4/b$a;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, La4/b;->h(Ljava/util/List;)La4/b;

    .line 9
    iput-object p2, p0, La4/b;->b:La4/a;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, La4/b$a;->DOWN:La4/b$a;

    iput-object v0, p0, La4/b;->c:La4/b$a;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object p1, p0, La4/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedName"
        }
    .end annotation

    const-string v0, "\\s\\+\\s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()La4/b;
    .locals 2

    new-instance v0, La4/b;

    invoke-direct {v0}, La4/b;-><init>()V

    iget-object v1, p0, La4/b;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, La4/b;->i([Ljava/lang/String;)La4/b;

    iget-object v1, p0, La4/b;->b:La4/a;

    invoke-virtual {v0, v1}, La4/b;->j(La4/a;)La4/b;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    iget-object v0, p0, La4/b;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, La4/b;->b()La4/b;

    move-result-object v0

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La4/b;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public e()La4/a;
    .locals 1

    iget-object v0, p0, La4/b;->b:La4/a;

    return-object v0
.end method

.method public f()La4/b$a;
    .locals 1

    iget-object v0, p0, La4/b;->c:La4/b$a;

    return-object v0
.end method

.method public g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)La4/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorPanel"
        }
    .end annotation

    iput-object p1, p0, La4/b;->e:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    return-object p0
.end method

.method public h(Ljava/util/List;)La4/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "La4/b;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, La4/b;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, La4/b;->a:[Ljava/lang/String;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public varargs i([Ljava/lang/String;)La4/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, La4/b;->a:[Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public j(La4/a;)La4/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, La4/b;->b:La4/a;

    return-object p0
.end method

.method public k(La4/b$a;)La4/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput-object p1, p0, La4/b;->c:La4/b$a;

    return-object p0
.end method
