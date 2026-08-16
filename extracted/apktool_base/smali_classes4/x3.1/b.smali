.class public Lx3/b;
.super Lx3/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orchestratorToChat"
        }
    .end annotation

    invoke-direct {p0, p1}, Lx3/a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "depth",
            "userPrompt"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lx3/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prompt",
            "depth"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lx3/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
