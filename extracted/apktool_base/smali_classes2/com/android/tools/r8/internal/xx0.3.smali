.class public final Lcom/android/tools/r8/internal/xx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/A2;

.field public final b:Lcom/android/tools/r8/shaking/H1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/xx0;->b:Lcom/android/tools/r8/shaking/H1;

    iput-object p1, p0, Lcom/android/tools/r8/internal/xx0;->a:Lcom/android/tools/r8/graph/A2;

    return-void
.end method
