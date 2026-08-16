.class public LDb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LDb/a;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;LDb/a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "axis",
            "collisionElement",
            "bufferGUID"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LDb/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, LIc/m;->hashCode()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, LDb/c;->a:J

    iput-object p2, p0, LDb/c;->c:LDb/a;

    iput p3, p0, LDb/c;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LDb/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LDb/c;->d:I

    return v0
.end method

.method public c()LDb/a;
    .locals 1

    iget-object v0, p0, LDb/c;->c:LDb/a;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, LDb/c;->a:J

    return-wide v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, LDb/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->f0()I

    move-result v0

    iget v1, p0, LDb/c;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
