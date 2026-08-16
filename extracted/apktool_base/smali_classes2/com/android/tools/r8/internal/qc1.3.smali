.class public final synthetic Lcom/android/tools/r8/internal/qc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/c4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qc1;->b:Lcom/android/tools/r8/graph/c4;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qc1;->b:Lcom/android/tools/r8/graph/c4;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/c4;->b(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
