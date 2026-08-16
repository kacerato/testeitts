.class public Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/x0;

.field public final b:Ljava/util/Set;

.field public c:Lcom/android/tools/r8/origin/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/x0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->a:Lcom/android/tools/r8/graph/x0;

    return-void
.end method

.method public static b()Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;-><init>(Lcom/android/tools/r8/graph/x0;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lu/C1;

    invoke-direct {v1}, Lu/C1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v1, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic$a;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/startup/diagnostic/MissingStartupProfileItemsDiagnostic;-><init>(Ljava/util/ArrayList;Lcom/android/tools/r8/origin/Origin;)V

    return-object v1
.end method
