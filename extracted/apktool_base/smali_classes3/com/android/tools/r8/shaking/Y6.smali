.class public final synthetic Lcom/android/tools/r8/shaking/Y6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N;

.field public final synthetic c:Lcom/android/tools/r8/shaking/b1;

.field public final synthetic d:Lcom/android/tools/r8/graph/E0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Y6;->b:Lcom/android/tools/r8/shaking/N;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/Y6;->c:Lcom/android/tools/r8/shaking/b1;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/Y6;->d:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Y6;->b:Lcom/android/tools/r8/shaking/N;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Y6;->c:Lcom/android/tools/r8/shaking/b1;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/Y6;->d:Lcom/android/tools/r8/graph/E0;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p1

    return-object p1
.end method
