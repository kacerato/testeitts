.class public final Lcom/android/tools/r8/internal/VA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/W5;

.field public b:Lcom/android/tools/r8/internal/FH;

.field public c:Lcom/android/tools/r8/internal/FH;

.field public final d:Lcom/android/tools/r8/internal/FH;

.field public e:Lcom/android/tools/r8/internal/FH;

.field public final synthetic f:Lcom/android/tools/r8/internal/aB;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/aB;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/VA;->f:Lcom/android/tools/r8/internal/aB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/W5;

    iget-object p1, p1, Lcom/android/tools/r8/internal/aB;->C:Lcom/android/tools/r8/internal/mB;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    new-instance p1, Lcom/android/tools/r8/internal/FH;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/FH;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    new-instance p1, Lcom/android/tools/r8/internal/FH;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/FH;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    new-instance p1, Lcom/android/tools/r8/internal/FH;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/FH;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VA;->d:Lcom/android/tools/r8/internal/FH;

    new-instance p1, Lcom/android/tools/r8/internal/FH;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/FH;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "block "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/VA;->a:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " predecessors: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VA;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    const-string v1, ""

    move-object v3, v1

    :goto_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v4

    const-string v5, ", "

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v3, v5

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/VA;->d:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    :goto_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v2

    const/16 v6, 0x2a

    if-eqz v2, :cond_1

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v3, v5

    goto :goto_1

    :cond_1
    const-string v2, " successors: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/VA;->c:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v1, v5

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/tools/r8/internal/VA;->e:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    :goto_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/EH;->r()I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v1, v5

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
