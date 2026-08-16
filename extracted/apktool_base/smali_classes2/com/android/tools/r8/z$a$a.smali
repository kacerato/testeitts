.class public Lcom/android/tools/r8/z$a$a;
.super Lcom/android/tools/r8/BaseCommand$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/z$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/BaseCommand$Builder<",
        "Lcom/android/tools/r8/z$a;",
        "Lcom/android/tools/r8/z$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Ljava/nio/file/Path;

.field public g:Ljava/nio/file/Path;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/BaseCommand$Builder;-><init>(Lcom/android/tools/r8/utils/i$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/z$a$a;->f:Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/android/tools/r8/z$a$a;->g:Ljava/nio/file/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/z$a$a;->h:Z

    return-void
.end method


# virtual methods
.method public final c()Lcom/android/tools/r8/BaseCommand$Builder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public c(Ljava/nio/file/Path;)Lcom/android/tools/r8/z$a$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/z$a$a;->f:Ljava/nio/file/Path;

    return-object p0
.end method

.method public c(Z)Lcom/android/tools/r8/z$a$a;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/z$a$a;->h:Z

    return-object p0
.end method

.method public d(Ljava/nio/file/Path;)Lcom/android/tools/r8/z$a$a;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/z$a$a;->g:Ljava/nio/file/Path;

    return-object p0
.end method

.method public final makeCommand()Lcom/android/tools/r8/BaseCommand;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/tools/r8/z$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->a()Lcom/android/tools/r8/utils/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/z$a$a;->f:Ljava/nio/file/Path;

    iget-object v3, p0, Lcom/android/tools/r8/z$a$a;->g:Ljava/nio/file/Path;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/tools/r8/v0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/v0$a;

    move-result-object v3

    :goto_0
    iget-boolean v4, p0, Lcom/android/tools/r8/z$a$a;->h:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/z$a;-><init>(Lcom/android/tools/r8/utils/i;Ljava/nio/file/Path;Lcom/android/tools/r8/v0$a;Z)V

    return-object v0

    :cond_2
    :goto_1
    new-instance v0, Lcom/android/tools/r8/z$a;

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintHelp()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand$Builder;->isPrintVersion()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/z$a;-><init>(ZZ)V

    return-object v0
.end method
