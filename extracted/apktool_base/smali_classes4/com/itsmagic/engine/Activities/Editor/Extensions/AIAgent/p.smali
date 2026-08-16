.class public abstract Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/p;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/q;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "depth",
            "data"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;I)Ljava/lang/String;
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
.end method
