.class public final synthetic Lcom/android/tools/r8/internal/qT0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qT0;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qT0;->b:Lcom/android/tools/r8/graph/u1;

    check-cast p1, Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method
