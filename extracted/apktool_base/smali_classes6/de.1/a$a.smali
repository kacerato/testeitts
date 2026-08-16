.class public Lde/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/a;->iterator()LZd/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lde/a$c;

.field public c:Lde/a$c;

.field public final synthetic d:Lde/a;


# direct methods
.method public constructor <init>(Lde/a;)V
    .locals 0

    iput-object p1, p0, Lde/a$a;->d:Lde/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lde/a;->d:Lde/a$c;

    iput-object p1, p0, Lde/a$a;->b:Lde/a$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lde/a$a;->b:Lde/a$c;

    invoke-static {v0}, Lde/a;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()B
    .locals 2

    iget-object v0, p0, Lde/a$a;->b:Lde/a$c;

    invoke-static {v0}, Lde/a;->h(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/a$a;->b:Lde/a$c;

    invoke-virtual {v0}, Lde/a$c;->c()B

    move-result v0

    iget-object v1, p0, Lde/a$a;->b:Lde/a$c;

    iput-object v1, p0, Lde/a$a;->c:Lde/a$c;

    invoke-virtual {v1}, Lde/a$c;->a()Lde/a$c;

    move-result-object v1

    iput-object v1, p0, Lde/a$a;->b:Lde/a$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lde/a$a;->c:Lde/a$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/a$a;->d:Lde/a;

    invoke-static {v1, v0}, Lde/a;->a(Lde/a;Lde/a$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/a$a;->c:Lde/a$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
