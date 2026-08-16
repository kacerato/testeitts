.class public Lwc/d;
.super Lwc/b;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final d:LM9/c;


# direct methods
.method public constructor <init>(Lwc/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0, p1}, Lwc/b;-><init>(Lwc/b$a;)V

    new-instance p1, Lwc/d$a;

    invoke-direct {p1, p0}, Lwc/d$a;-><init>(Lwc/d;)V

    iput-object p1, p0, Lwc/d;->d:LM9/c;

    return-void
.end method

.method public static synthetic g(Lwc/d;)Lwc/b$a;
    .locals 0

    iget-object p0, p0, Lwc/b;->a:Lwc/b$a;

    return-object p0
.end method


# virtual methods
.method public a(Lwc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lwc/c;->a()Lcom/itsmagic/engine/Engines/Native/Base/a;

    move-result-object v0

    iget-wide v1, p1, Lwc/c;->b:J

    iget-object p1, p0, Lwc/d;->d:LM9/c;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLM9/c;Z)V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Native/Base/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void
.end method
