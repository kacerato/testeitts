.class public final Lcom/android/tools/r8/internal/qe0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/se0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/se0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/qe0;->a:Lcom/android/tools/r8/internal/se0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/qe0;->a:Lcom/android/tools/r8/internal/se0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/tools/r8/internal/qe0;->a:Lcom/android/tools/r8/internal/se0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/tools/r8/internal/Tf0;->f:Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x2f

    invoke-static {p1, v1, v0}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/String;CI)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/qe0;->a:Lcom/android/tools/r8/internal/se0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/ig0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/qe0;->a:Lcom/android/tools/r8/internal/se0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    sget-object v1, Lcom/android/tools/r8/internal/lg0;->w:Lcom/android/tools/r8/internal/lg0;

    const/16 v2, 0x2e

    invoke-static {p1, v2}, Lcom/android/tools/r8/internal/Iq0;->c(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/qe0;->a:Lcom/android/tools/r8/internal/se0;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ng0;

    iget-object v2, p1, Lcom/android/tools/r8/internal/se0;->d:Lcom/android/tools/r8/internal/ng0;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/ng0;->a(Lcom/android/tools/r8/internal/ng0;)V

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qe0;->a(Ljava/lang/String;)V

    return-void
.end method
