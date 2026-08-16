.class public final synthetic Lcom/android/tools/r8/graph/u9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:[Lcom/android/tools/r8/graph/j1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;[Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/u9;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/android/tools/r8/graph/u9;->b:[Lcom/android/tools/r8/graph/j1;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/u9;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/android/tools/r8/graph/u9;->b:[Lcom/android/tools/r8/graph/j1;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/M4;->a(Ljava/util/function/Function;[Lcom/android/tools/r8/graph/j1;I)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
