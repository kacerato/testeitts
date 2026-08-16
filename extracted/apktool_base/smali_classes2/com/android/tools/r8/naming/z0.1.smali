.class public final Lcom/android/tools/r8/naming/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lcom/android/tools/r8/internal/C2;

.field public final d:Lcom/android/tools/r8/naming/MapVersion;

.field public final e:Lcom/android/tools/r8/naming/I0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/android/tools/r8/internal/C2;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/naming/I0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/z0;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/tools/r8/naming/z0;->b:Z

    iput-object p3, p0, Lcom/android/tools/r8/naming/z0;->c:Lcom/android/tools/r8/internal/C2;

    iput-object p4, p0, Lcom/android/tools/r8/naming/z0;->d:Lcom/android/tools/r8/naming/MapVersion;

    iput-object p5, p0, Lcom/android/tools/r8/naming/z0;->e:Lcom/android/tools/r8/naming/I0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/naming/z0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# compiler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "# compiler_version: 8.10.21"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/android/tools/r8/naming/z0;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/naming/z0;->c:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C2;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# min_api: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/android/tools/r8/Version;->isDevelopmentVersion()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/Ww0;->c:Lcom/android/tools/r8/internal/Ww0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ww0;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# compiler_hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "# common_typos_disable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/tools/r8/naming/z0;->d:Lcom/android/tools/r8/naming/MapVersion;

    sget-object v2, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/C40;->c(Lcom/android/tools/r8/internal/C40;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/naming/z0;->d:Lcom/android/tools/r8/naming/MapVersion;

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/MapVersion;->toMapVersionMappingInformation()Lcom/android/tools/r8/naming/mappinginformation/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/mappinginformation/b;->r()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/naming/z0;->e:Lcom/android/tools/r8/naming/I0;

    iget-object v1, v1, Lcom/android/tools/r8/naming/I0;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# pg_map_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/tools/r8/naming/z0;->e:Lcom/android/tools/r8/naming/I0;

    iget-object v1, v1, Lcom/android/tools/r8/naming/I0;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# pg_map_hash: SHA-256 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
