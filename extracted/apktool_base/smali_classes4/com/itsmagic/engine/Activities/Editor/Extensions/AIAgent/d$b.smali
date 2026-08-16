.class public final Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

.field public final c:I

.field public final d:J

.field public final e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;IJLcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V
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
            "sessionId",
            "specialist",
            "seed",
            "createdAt",
            "chat"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    .line 5
    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->c:I

    .line 6
    iput-wide p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d:J

    .line 7
    iput-object p6, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;IJLcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;IJLcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d:J

    return-wide v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_RUNNING_CHAT_NOW:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "d"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_CHAT:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->c:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "----"

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public j()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    return-object v0
.end method
