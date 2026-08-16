.class public final synthetic Lcom/android/tools/r8/internal/lx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u1;

.field public final synthetic c:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lx1;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lx1;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lx1;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lx1;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/references/TypeReference;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/vu0;->a(Lcom/android/tools/r8/graph/u1;Ljava/util/function/Function;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method
