.class public Lwc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/itsmagic/engine/Engines/Native/Base/a;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:J

.field public d:I


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/a;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "pointer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lwc/c;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lwc/c;->a:Ljava/lang/ref/WeakReference;

    .line 4
    iput-wide p2, p0, Lwc/c;->b:J

    const-wide/16 p2, 0x0

    .line 5
    iput-wide p2, p0, Lwc/c;->c:J

    .line 6
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->getEngineInstanceID()I

    move-result p1

    iput p1, p0, Lwc/c;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/a;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "pointer",
            "texturePointer"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lwc/c;->a:Ljava/lang/ref/WeakReference;

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lwc/c;->a:Ljava/lang/ref/WeakReference;

    .line 10
    iput-wide p2, p0, Lwc/c;->b:J

    .line 11
    iput-wide p4, p0, Lwc/c;->c:J

    .line 12
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->getEngineInstanceID()I

    move-result p1

    iput p1, p0, Lwc/c;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Native/Base/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Native/Base/a;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lwc/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Native/Base/a;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lwc/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
