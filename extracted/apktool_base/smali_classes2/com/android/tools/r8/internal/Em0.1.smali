.class public final Lcom/android/tools/r8/internal/Em0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/J0;


# instance fields
.field public a:Lcom/android/tools/r8/internal/J0;

.field public b:Lcom/android/tools/r8/internal/I0;

.field public c:Lcom/android/tools/r8/internal/K0;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/K0;Lcom/android/tools/r8/internal/J0;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Em0;->a:Lcom/android/tools/r8/internal/J0;

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/Em0;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Em0;->e()V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/K0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/nW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Em0;->c()Lcom/android/tools/r8/internal/I0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Em0;->e()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/android/tools/r8/internal/nW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    .line 10
    invoke-interface {v0}, Lcom/android/tools/r8/internal/nW;->getDefaultInstanceForType()Lcom/android/tools/r8/internal/fW;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/tools/r8/internal/K0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/I0;->dispose()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Em0;->e()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/K0;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    .line 4
    iget-object p1, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/I0;->dispose()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Em0;->e()V

    return-void
.end method

.method public final c()Lcom/android/tools/r8/internal/I0;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/K0;->newBuilderForType(Lcom/android/tools/r8/internal/J0;)Lcom/android/tools/r8/internal/eW;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/I0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/I0;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/I0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/I0;->markClean()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/K0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/eW;->buildPartial()Lcom/android/tools/r8/internal/fW;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/K0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->b:Lcom/android/tools/r8/internal/I0;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Em0;->c:Lcom/android/tools/r8/internal/K0;

    :cond_0
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Em0;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Em0;->a:Lcom/android/tools/r8/internal/J0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/tools/r8/internal/J0;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Em0;->d:Z

    :cond_1
    return-void
.end method
