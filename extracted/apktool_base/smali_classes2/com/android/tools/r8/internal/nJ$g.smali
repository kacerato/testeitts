.class public Lcom/android/tools/r8/internal/nJ$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public final synthetic g:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    iput-object p1, p0, Lcom/android/tools/r8/internal/nJ$g;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "com.android.tools.r8.disableHorizontalClassMerging"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$g;->a:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ$g;->b:Z

    const-string p1, "com.android.tools.r8.enableHorizontalInterfaceMerging"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$g;->c:Z

    const-string p1, "com.android.tools.r8.enableSameFilePolicy"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$g;->d:Z

    iput-boolean v1, p0, Lcom/android/tools/r8/internal/nJ$g;->e:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->a:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$g;->a:Z

    return-void
.end method

.method public final a(I)Z
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$g;->g:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/android/tools/r8/internal/nJ;->E0:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/nJ$g;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_4
    :goto_0
    return v1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->e:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$g;->c:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->a:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$g;->d:Z

    return-void
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$g;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nJ$g;->g:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->b:Z

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->c:Z

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$g;->f:Z

    return-void
.end method
