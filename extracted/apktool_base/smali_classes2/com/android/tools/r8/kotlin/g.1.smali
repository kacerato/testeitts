.class public final Lcom/android/tools/r8/kotlin/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/kotlin/c;

.field public final c:Lcom/android/tools/r8/kotlin/d;

.field public final d:Lcom/android/tools/r8/kotlin/e;

.field public final e:Lcom/android/tools/r8/kotlin/f;

.field public final f:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/g;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Lcom/android/tools/r8/kotlin/c;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/c;-><init>(Lcom/android/tools/r8/kotlin/g;)V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/g;->b:Lcom/android/tools/r8/kotlin/c;

    new-instance v0, Lcom/android/tools/r8/kotlin/d;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/d;-><init>(Lcom/android/tools/r8/kotlin/g;)V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/g;->c:Lcom/android/tools/r8/kotlin/d;

    new-instance v0, Lcom/android/tools/r8/kotlin/e;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/e;-><init>(Lcom/android/tools/r8/kotlin/g;)V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/g;->d:Lcom/android/tools/r8/kotlin/e;

    new-instance v0, Lcom/android/tools/r8/kotlin/f;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/f;-><init>(Lcom/android/tools/r8/kotlin/g;)V

    iput-object v0, p0, Lcom/android/tools/r8/kotlin/g;->e:Lcom/android/tools/r8/kotlin/f;

    const-string v0, "Lkotlin/jvm/"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/g;->f:Lcom/android/tools/r8/graph/L2;

    return-void
.end method
