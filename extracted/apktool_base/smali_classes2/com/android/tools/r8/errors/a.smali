.class public final Lcom/android/tools/r8/errors/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lcom/android/tools/r8/origin/Origin;

.field public c:Lcom/android/tools/r8/position/Position;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/errors/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;

    iget-object v1, p0, Lcom/android/tools/r8/errors/a;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/tools/r8/errors/a;->b:Lcom/android/tools/r8/origin/Origin;

    iget-object v3, p0, Lcom/android/tools/r8/errors/a;->c:Lcom/android/tools/r8/position/Position;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/errors/AssumeNoSideEffectsRuleForObjectMembersDiagnostic;-><init>(Ljava/util/ArrayList;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/errors/h;)V

    return-object v0
.end method
