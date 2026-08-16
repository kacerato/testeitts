.class public Lcom/android/tools/r8/naming/mappinginformation/b;
.super Lcom/android/tools/r8/naming/mappinginformation/e;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/naming/MapVersion;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/MapVersion;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/e;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/mappinginformation/b;->a:Lcom/android/tools/r8/naming/MapVersion;

    iput-object p2, p0, Lcom/android/tools/r8/naming/mappinginformation/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/gL;ILjava/util/function/Consumer;)V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 3
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/dL;

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 5
    const-string p0, "com.android.tools.r8.mapping"

    invoke-static {p1, v0, p0}, Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/mappinginformation/MappingInformationDiagnostics;

    return-void

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/naming/MapVersion;->fromName(Ljava/lang/String;)Lcom/android/tools/r8/naming/MapVersion;

    move-result-object p1

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_UNKNOWN:Lcom/android/tools/r8/naming/MapVersion;

    .line 8
    :cond_1
    new-instance v0, Lcom/android/tools/r8/naming/mappinginformation/b;

    invoke-direct {v0, p1, p0}, Lcom/android/tools/r8/naming/mappinginformation/b;-><init>(Lcom/android/tools/r8/naming/MapVersion;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b()Lcom/android/tools/r8/naming/mappinginformation/b;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/naming/mappinginformation/b;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p1, Lcom/android/tools/r8/naming/mappinginformation/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->b()Lcom/android/tools/r8/naming/mappinginformation/b;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/naming/mappinginformation/b;->a:Lcom/android/tools/r8/naming/MapVersion;

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/C40;->e(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/internal/gL;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/gL;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    const-string v2, "com.android.tools.r8.mapping"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/jL;

    iget-object v2, p0, Lcom/android/tools/r8/naming/mappinginformation/b;->a:Lcom/android/tools/r8/naming/MapVersion;

    invoke-virtual {v2}, Lcom/android/tools/r8/naming/MapVersion;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/jL;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v3, "version"

    invoke-virtual {v2, v3, v1}, Lcom/android/tools/r8/internal/FS;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Lcom/android/tools/r8/naming/MapVersion;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/mappinginformation/b;->a:Lcom/android/tools/r8/naming/MapVersion;

    return-object v0
.end method
