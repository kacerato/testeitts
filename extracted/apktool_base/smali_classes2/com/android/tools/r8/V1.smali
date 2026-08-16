.class public final synthetic Lcom/android/tools/r8/V1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/GenerateMainDexList;

.field public final synthetic c:Lcom/android/tools/r8/internal/nn0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/GenerateMainDexList;Lcom/android/tools/r8/internal/nn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/V1;->b:Lcom/android/tools/r8/GenerateMainDexList;

    iput-object p2, p0, Lcom/android/tools/r8/V1;->c:Lcom/android/tools/r8/internal/nn0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/V1;->b:Lcom/android/tools/r8/GenerateMainDexList;

    iget-object v1, p0, Lcom/android/tools/r8/V1;->c:Lcom/android/tools/r8/internal/nn0;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/GenerateMainDexList;->f(Lcom/android/tools/r8/GenerateMainDexList;Lcom/android/tools/r8/internal/nn0;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
