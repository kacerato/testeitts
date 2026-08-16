.class public Lorg/openjdk/tools/sjavac/server/CompilationSubResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0xae1df4e39L


# instance fields
.field public dependencyPubapis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;"
        }
    .end annotation
.end field

.field public packageArtifacts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;>;"
        }
    .end annotation
.end field

.field public packageCpDependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public packageDependencies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public packagePubapis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;"
        }
    .end annotation
.end field

.field public result:Lorg/openjdk/tools/javac/main/Main$Result;

.field public stderr:Ljava/lang/String;

.field public stdout:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/main/Main$Result;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageArtifacts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageDependencies:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageCpDependencies:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packagePubapis:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->dependencyPubapis:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->stdout:Ljava/lang/String;

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->stderr:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->result:Lorg/openjdk/tools/javac/main/Main$Result;

    return-void
.end method


# virtual methods
.method public setResult(Lorg/openjdk/tools/javac/main/Main$Result;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->result:Lorg/openjdk/tools/javac/main/Main$Result;

    return-void
.end method
