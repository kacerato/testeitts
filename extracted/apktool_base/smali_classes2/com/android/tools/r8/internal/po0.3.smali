.class public Lcom/android/tools/r8/internal/po0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:Z = true


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public h:Ljava/util/Collection;

.field public final i:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "com.android.tools.r8.startup.outline"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/po0;->a:Z

    .line 3
    const-string v0, "com.android.tools.r8.startup.minimalstartupdex"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/po0;->b:Z

    .line 4
    const-string v0, "com.android.tools.r8.startup.boundaryoptimizations"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/po0;->c:Z

    .line 5
    const-string v0, "com.android.tools.r8.startup.completenesscheck"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/po0;->d:Z

    .line 6
    iput-boolean v2, p0, Lcom/android/tools/r8/internal/po0;->e:Z

    .line 7
    const-string v0, "com.android.tools.r8.startup.layout"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/po0;->f:Z

    .line 8
    const-string v0, "com.android.tools.r8.startup.multistartupdexdistribution"

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/internal/po0;->g:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/android/tools/r8/internal/po0;->i:Lcom/android/tools/r8/internal/nJ;

    .line 12
    new-instance p1, Lcom/android/tools/r8/internal/iq1;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/iq1;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/jq1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/jq1;-><init>()V

    .line 13
    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/po0;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/po0;-><init>(Lcom/android/tools/r8/internal/nJ;)V

    .line 15
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/po0;->a:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->a:Z

    .line 16
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/po0;->b:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->b:Z

    .line 17
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/po0;->c:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->c:Z

    .line 18
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/po0;->d:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->d:Z

    .line 19
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/po0;->e:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->e:Z

    .line 20
    iget-boolean p1, p2, Lcom/android/tools/r8/internal/po0;->f:Z

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->f:Z

    .line 21
    iget-object p1, p2, Lcom/android/tools/r8/internal/po0;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/internal/po0;->g:Ljava/lang/String;

    .line 22
    iget-object p1, p2, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/tools/r8/internal/po0;->h:Ljava/util/Collection;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/xo0;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/startup/StartupProfileProvider;

    move-result-object p0

    .line 4
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/internal/po0;
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/po0;->d(Z)Lcom/android/tools/r8/internal/po0;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/android/tools/r8/internal/po0;
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->b:Z

    return-object p0
.end method

.method public b(Z)Lcom/android/tools/r8/internal/po0;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->a:Z

    return-object p0
.end method

.method public c(Z)Lcom/android/tools/r8/internal/po0;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->c:Z

    return-object p0
.end method

.method public d(Z)Lcom/android/tools/r8/internal/po0;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/po0;->d:Z

    return-object p0
.end method
