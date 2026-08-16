.class public final Lcom/android/tools/r8/internal/Rl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Wk;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/internal/Pl;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Wk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Tl;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rl;->b:Lcom/android/tools/r8/internal/Wk;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Rl;->d:Lcom/android/tools/r8/internal/Pl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/android/tools/r8/internal/Tl;->c:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Wk;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rl;->c:Ljava/lang/String;

    iget-object p1, p2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rl;->d:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rl;->b:Lcom/android/tools/r8/internal/Wk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Wk;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rl;->b:Lcom/android/tools/r8/internal/Wk;

    return-object v0
.end method
