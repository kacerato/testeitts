.class public Lcom/android/tools/r8/androidapi/a$a;
.super Lcom/android/tools/r8/androidapi/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/androidapi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/androidapi/c;

.field public final c:Lcom/android/tools/r8/androidapi/f$a;

.field public final d:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/androidapi/a;-><init>()V

    invoke-static {p1, p0}, Lcom/android/tools/r8/androidapi/c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/androidapi/a$a;)Lcom/android/tools/r8/androidapi/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/androidapi/a$a;->b:Lcom/android/tools/r8/androidapi/c;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/C2;)Lcom/android/tools/r8/androidapi/f$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/androidapi/a$a;->c:Lcom/android/tools/r8/androidapi/f$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iput-object p1, p0, Lcom/android/tools/r8/androidapi/a$a;->d:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/androidapi/a$a;->b:Lcom/android/tools/r8/androidapi/c;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/tools/r8/androidapi/c;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;Z)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/v2;)Lcom/android/tools/r8/androidapi/f;
    .locals 3

    sget-object v0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/androidapi/a$a;->b:Lcom/android/tools/r8/androidapi/c;

    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/tools/r8/androidapi/c;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;Z)Lcom/android/tools/r8/androidapi/f;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/android/tools/r8/androidapi/f;
    .locals 5

    sget-object v0, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/androidapi/a$a;->c:Lcom/android/tools/r8/androidapi/f$a;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/androidapi/a$a;->b:Lcom/android/tools/r8/androidapi/c;

    .line 5
    sget-boolean v4, Lcom/android/tools/r8/androidapi/c;->g:Z

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-interface {v1}, Lcom/android/tools/r8/androidapi/f;->x()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v2, v0, v4}, Lcom/android/tools/r8/androidapi/c;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/androidapi/f;Z)Lcom/android/tools/r8/androidapi/f;

    move-result-object v2

    .line 9
    invoke-interface {v2, v1}, Lcom/android/tools/r8/androidapi/f;->a(Lcom/android/tools/r8/androidapi/f;)Lcom/android/tools/r8/androidapi/f;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/androidapi/a$a;->b:Lcom/android/tools/r8/androidapi/c;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/androidapi/c;->e:Ljava/util/Set;

    .line 3
    new-instance v1, Ls/a;

    invoke-direct {v1, p0}, Ls/a;-><init>(Lcom/android/tools/r8/androidapi/a$a;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/J2;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/androidapi/a$a;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/androidapi/AndroidApiUnknownReferenceDiagnostic;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/androidapi/AndroidApiUnknownReferenceDiagnostic;-><init>(Lcom/android/tools/r8/graph/J2;)V

    invoke-interface {v0, v1}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method
