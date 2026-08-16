.class public final synthetic Lcom/android/tools/r8/graph/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/bi;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/bi;->b:Ljava/util/function/Function;

    check-cast p1, Lcom/android/tools/r8/graph/u0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/z5;->a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/u0;)Lcom/android/tools/r8/graph/u0;

    move-result-object p1

    return-object p1
.end method
