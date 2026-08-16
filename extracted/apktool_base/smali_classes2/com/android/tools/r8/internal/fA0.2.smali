.class public final synthetic Lcom/android/tools/r8/internal/fA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/B3;

.field public final synthetic b:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fA0;->a:Lcom/android/tools/r8/internal/B3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/fA0;->b:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fA0;->a:Lcom/android/tools/r8/internal/B3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/fA0;->b:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/B3;->b(Lcom/android/tools/r8/graph/H5;I)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
