.class public Lcom/android/tools/r8/shaking/t3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/t3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/tools/r8/shaking/t3$a;->b:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/android/tools/r8/shaking/t3$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/t3$a;->c:Z

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/shaking/t3;
    .locals 9

    .line 2
    new-instance v8, Lcom/android/tools/r8/shaking/t3;

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/t3$a;->a:Z

    iget-boolean v2, p0, Lcom/android/tools/r8/shaking/t3$a;->b:Z

    iget-boolean v3, p0, Lcom/android/tools/r8/shaking/t3$a;->c:Z

    iget-boolean v4, p0, Lcom/android/tools/r8/shaking/t3$a;->d:Z

    iget-boolean v5, p0, Lcom/android/tools/r8/shaking/t3$a;->e:Z

    iget-boolean v6, p0, Lcom/android/tools/r8/shaking/t3$a;->f:Z

    iget-boolean v7, p0, Lcom/android/tools/r8/shaking/t3$a;->g:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/shaking/t3;-><init>(ZZZZZZZ)V

    return-object v8
.end method

.method public final b()Lcom/android/tools/r8/shaking/t3$a;
    .locals 3

    .line 1
    const-string v0, "com.android.tools.r8.enableLegacyFullModeForKeepRules"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->a:Z

    .line 2
    const-string v0, "com.android.tools.r8.enableLegacyFullModeForKeepRulesWarnings"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->b:Z

    .line 3
    const-string v0, "com.android.tools.r8.experimental.enablecheckenumunboxed"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->c:Z

    .line 4
    const-string v0, "com.android.tools.r8.experimental.enableconvertchecknotnull"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->d:Z

    .line 5
    const-string v0, "com.android.tools.r8.experimental.enablewhyareyounotinlining"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->e:Z

    .line 6
    const-string v0, "com.android.tools.r8.enableKeepRuntimeInvisibleAnnotations"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->f:Z

    .line 7
    const-string v0, "com.android.tools.r8.allowTestProguardOptions"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/t3$a;->g:Z

    return-object p0
.end method

.method public b(Z)Lcom/android/tools/r8/shaking/t3$a;
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/t3$a;->d:Z

    return-object p0
.end method

.method public c(Z)Lcom/android/tools/r8/shaking/t3$a;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/t3$a;->e:Z

    return-object p0
.end method

.method public d(Z)Lcom/android/tools/r8/shaking/t3$a;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/t3$a;->g:Z

    return-object p0
.end method
