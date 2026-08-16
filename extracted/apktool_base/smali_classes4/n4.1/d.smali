.class public Ln4/d;
.super Ln4/f;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln4/f;-><init>()V

    .line 2
    iput-object p1, p0, Ln4/d;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln4/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphFile"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ln4/f;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ln4/d;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/Components/NoCodeExecutor;

    .line 6
    iput-object p1, p0, Ln4/d;->b:Ljava/lang/String;

    return-void
.end method
