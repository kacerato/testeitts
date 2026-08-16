.class public final Lcom/android/tools/r8/naming/R0;
.super Lcom/android/tools/r8/naming/w0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ef0;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/naming/w0;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/R0;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/R0;->b:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/tools/r8/naming/R0;->c:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/E0;)Lcom/android/tools/r8/naming/g;
    .locals 4

    .line 4
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/naming/R0;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/android/tools/r8/naming/R0;->c:Lcom/android/tools/r8/internal/Ef0;

    .line 8
    new-instance v2, Lcom/android/tools/r8/naming/i;

    invoke-direct {v2, v0, p2, p3, v1}, Lcom/android/tools/r8/naming/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/E0;Lcom/android/tools/r8/internal/Ef0;)V

    .line 9
    const-string v0, "R8$$REMOVED$$CLASS$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/naming/R0;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/naming/R0;->c:Lcom/android/tools/r8/internal/Ef0;

    sget v0, Lcom/android/tools/r8/naming/y0;->f:I

    .line 12
    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    new-instance v0, Lcom/android/tools/r8/naming/y0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' already has a mapping"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/naming/y0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/Position;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/naming/mappinginformation/b;)Lcom/android/tools/r8/naming/w0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/w0;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 3
    return-void
.end method
