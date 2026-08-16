.class public Lcom/android/tools/r8/naming/F0;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/naming/G0;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/tools/r8/naming/G0;->h:I

    iput v0, p0, Lcom/android/tools/r8/naming/F0;->b:I

    iget p1, p1, Lcom/android/tools/r8/naming/G0;->i:I

    iput p1, p0, Lcom/android/tools/r8/naming/F0;->c:I

    iput-boolean p3, p0, Lcom/android/tools/r8/naming/F0;->d:Z

    iput-object p2, p0, Lcom/android/tools/r8/naming/F0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/android/tools/r8/naming/F0;->d:Z

    const-string v1, "Parse error ["

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/naming/F0;->b:I

    iget-object v2, p0, Lcom/android/tools/r8/naming/F0;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":eol] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/naming/F0;->b:I

    iget v2, p0, Lcom/android/tools/r8/naming/F0;->c:I

    iget-object v3, p0, Lcom/android/tools/r8/naming/F0;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
