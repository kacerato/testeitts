.class public Lk8/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk8/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lk8/c;
    .locals 2

    new-instance v0, Lk8/c;

    iget-object v1, p0, Lk8/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lk8/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk8/c;->d:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iput-object v1, v0, Lk8/c;->d:Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    iget-object v1, p0, Lk8/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lk8/c;->i(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lk8/c;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk8/c;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk8/c;->b:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk8/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lk8/c;->a()Lk8/c;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk8/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    invoke-virtual {p0}, Lk8/c;->b()V

    iget-object v0, p0, Lk8/c;->b:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lk8/c;->b()V

    iget-object v0, p0, Lk8/c;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public g()V
    .locals 4

    invoke-virtual {p0}, Lk8/c;->b()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lk8/c;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LTc/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk8/c;->a:Ljava/lang/String;

    return-void
.end method

.method public h(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "newText"
        }
    .end annotation

    invoke-virtual {p0}, Lk8/c;->b()V

    iget-object v0, p0, Lk8/c;->b:[Ljava/lang/String;

    invoke-static {p2}, LTc/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lk8/c;->b:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v0, v0, p2

    if-lez p2, :cond_0

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LTc/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk8/c;->a:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    invoke-static {p1}, LTc/b;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk8/c;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lk8/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lk8/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
