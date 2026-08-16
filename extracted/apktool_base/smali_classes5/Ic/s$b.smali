.class public final LIc/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "LIc/s$a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public b:LIc/s$a;

.field public c:I

.field public d:I

.field public final synthetic e:LIc/s;


# direct methods
.method public constructor <init>(LIc/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LIc/s$b;->e:LIc/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, LIc/s$b;->c:I

    iput p1, p0, LIc/s$b;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, LIc/s$b;->e:LIc/s;

    invoke-static {v0}, LIc/s;->a(LIc/s;)[LIc/s$a;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, LIc/s$b;->b:LIc/s$a;

    iput v1, p0, LIc/s$b;->c:I

    iput v1, p0, LIc/s$b;->d:I

    return-void
.end method

.method public b()LIc/s$a;
    .locals 2

    iget v0, p0, LIc/s$b;->d:I

    iget-object v1, p0, LIc/s$b;->e:LIc/s;

    invoke-static {v1}, LIc/s;->b(LIc/s;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, LIc/s$b;->b:LIc/s$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, LIc/s$a;->d:LIc/s$a;

    iput-object v1, p0, LIc/s$b;->b:LIc/s$a;

    iget v1, p0, LIc/s$b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LIc/s$b;->d:I

    return-object v0

    :cond_0
    iget-object v0, p0, LIc/s$b;->e:LIc/s;

    invoke-static {v0}, LIc/s;->a(LIc/s;)[LIc/s$a;

    move-result-object v0

    iget v1, p0, LIc/s$b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LIc/s$b;->c:I

    aget-object v0, v0, v1

    iput-object v0, p0, LIc/s$b;->b:LIc/s$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, LIc/s$a;->d:LIc/s$a;

    iput-object v1, p0, LIc/s$b;->b:LIc/s$a;

    iget v1, p0, LIc/s$b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LIc/s$b;->d:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements!"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, LIc/s$b;->d:I

    iget-object v1, p0, LIc/s$b;->e:LIc/s;

    invoke-static {v1}, LIc/s;->b(LIc/s;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LIc/s$b;->b()LIc/s$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
