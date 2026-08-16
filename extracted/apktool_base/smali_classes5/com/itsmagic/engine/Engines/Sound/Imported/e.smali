.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;
    }
.end annotation


# instance fields
.field public final b:LGc/a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LGc/a;

    invoke-direct {v0, p1}, LGc/a;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->b:LGc/a;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->b:LGc/a;

    invoke-virtual {v0}, LGc/a;->b()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->b:LGc/a;

    invoke-virtual {v0}, LGc/a;->g()V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->b:LGc/a;

    invoke-virtual {v0}, LGc/a;->c()I

    move-result v0

    return v0
.end method

.method public e(Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;)Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reuse"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/e;->b:LGc/a;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;)LGc/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, LGc/a;->e(LGc/a$a;)LGc/a$a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->b(Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;LGc/a$a;)LGc/a$a;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;)LGc/a$a;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;)LGc/a$a;

    move-result-object v0

    iget-object v0, v0, LGc/a$a;->a:[S

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->a:[S

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;)LGc/a$a;

    move-result-object v0

    iget v0, v0, LGc/a$a;->b:I

    iput v0, p1, Lcom/itsmagic/engine/Engines/Sound/Imported/e$a;->b:I

    return-object p1
.end method
