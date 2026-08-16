.class public final Lcom/android/tools/r8/errors/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/graph/M2;

.field public b:Lcom/android/tools/r8/graph/L2;

.field public c:Lcom/android/tools/r8/origin/Origin;

.field public d:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;

    iget-object v1, p0, Lcom/android/tools/r8/errors/b;->a:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/errors/b;->b:Lcom/android/tools/r8/graph/L2;

    iget-object v3, p0, Lcom/android/tools/r8/errors/b;->c:Lcom/android/tools/r8/origin/Origin;

    iget-object v4, p0, Lcom/android/tools/r8/errors/b;->d:Lcom/android/tools/r8/position/Position;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/errors/AssumeValuesMissingStaticFieldDiagnostic;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/errors/i;)V

    return-object v6
.end method
