.class public final Lcom/android/tools/r8/internal/AU;
.super Lcom/android/tools/r8/internal/GA;
.source "SourceFile"


# instance fields
.field public final k:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/GA;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/AU;->k:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/AU;->k:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method
