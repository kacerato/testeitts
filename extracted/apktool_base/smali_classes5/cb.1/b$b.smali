.class public Lcb/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcb/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcb/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(Lcb/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcb/b$b;-><init>(Lcb/b;Z)V

    return-void
.end method

.method public constructor <init>(Lcb/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "allowRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcb/b<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcb/b$b;->e:Z

    .line 4
    iput-object p1, p0, Lcb/b$b;->b:Lcb/b;

    .line 5
    iput-boolean p2, p0, Lcb/b$b;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lcb/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcb/b$b<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcb/b$b;->d:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcb/b$b;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcb/b$b;->d:I

    iget-object v1, p0, Lcb/b$b;->b:Lcb/b;

    iget v1, v1, Lcb/b;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcb/b$b;->a()Lcb/b$b;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcb/b$b;->d:I

    iget-object v1, p0, Lcb/b$b;->b:Lcb/b;

    iget v2, v1, Lcb/b;->c:I

    if-ge v0, v2, :cond_1

    iget-boolean v2, p0, Lcb/b$b;->e:Z

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcb/b;->b:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcb/b$b;->d:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcb/b$b;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcb/b$b;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcb/b$b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcb/b$b;->d:I

    iget-object v1, p0, Lcb/b$b;->b:Lcb/b;

    invoke-virtual {v1, v0}, Lcb/b;->A(I)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;

    const-string v1, "Remove not allowed."

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NubsPathBezier/FromGDX/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
