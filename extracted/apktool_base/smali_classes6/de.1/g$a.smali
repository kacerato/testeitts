.class public Lde/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/g;->iterator()LZd/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lde/g$c;

.field public c:Lde/g$c;

.field public final synthetic d:Lde/g;


# direct methods
.method public constructor <init>(Lde/g;)V
    .locals 0

    iput-object p1, p0, Lde/g$a;->d:Lde/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lde/g;->d:Lde/g$c;

    iput-object p1, p0, Lde/g$a;->b:Lde/g$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lde/g$a;->b:Lde/g$c;

    invoke-static {v0}, Lde/g;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()J
    .locals 3

    iget-object v0, p0, Lde/g$a;->b:Lde/g$c;

    invoke-static {v0}, Lde/g;->k(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/g$a;->b:Lde/g$c;

    invoke-virtual {v0}, Lde/g$c;->c()J

    move-result-wide v0

    iget-object v2, p0, Lde/g$a;->b:Lde/g$c;

    iput-object v2, p0, Lde/g$a;->c:Lde/g$c;

    invoke-virtual {v2}, Lde/g$c;->a()Lde/g$c;

    move-result-object v2

    iput-object v2, p0, Lde/g$a;->b:Lde/g$c;

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lde/g$a;->c:Lde/g$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lde/g$a;->d:Lde/g;

    invoke-static {v1, v0}, Lde/g;->a(Lde/g;Lde/g$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/g$a;->c:Lde/g$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
