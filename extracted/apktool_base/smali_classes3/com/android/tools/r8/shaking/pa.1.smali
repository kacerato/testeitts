.class public final synthetic Lcom/android/tools/r8/shaking/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/q5;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/pa;->b:Lcom/android/tools/r8/graph/q5;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/pa;->c:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/pa;->b:Lcom/android/tools/r8/graph/q5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/pa;->c:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/shaking/R2;->a(Lcom/android/tools/r8/graph/q5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
