.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lk0/i;
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4


# instance fields
.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private isStreaming:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rawText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "rawText",
            "type",
            "isStreaming",
            "createdAt"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->rawText:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->type:I

    .line 6
    iput-boolean p4, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->isStreaming:Z

    .line 7
    iput-wide p5, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->createdAt:J

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "streaming"
        }
    .end annotation

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, v7

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZJ)V

    return-object v7
.end method

.method public static b(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x4

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZJ)V

    return-object v7
.end method

.method public static h(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x3

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZJ)V

    return-object v7
.end method

.method public static n(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    new-instance v7, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x1

    move-object v0, v7

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;-><init>(Ljava/lang/String;Ljava/lang/String;IZJ)V

    return-object v7
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->createdAt:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->rawText:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->type:I

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->isStreaming:Z

    return v0
.end method

.method public i(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createdAt"
        }
    .end annotation

    iput-wide p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->createdAt:J

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->id:Ljava/lang/String;

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawText"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->rawText:Ljava/lang/String;

    return-void
.end method

.method public l(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streaming"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->isStreaming:Z

    return-void
.end method

.method public m(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatMessage;->type:I

    return-void
.end method
