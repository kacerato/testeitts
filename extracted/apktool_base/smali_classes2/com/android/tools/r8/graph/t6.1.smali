.class public final synthetic Lcom/android/tools/r8/graph/t6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/C;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/t6;->b:Lcom/android/tools/r8/graph/C;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/t6;->b:Lcom/android/tools/r8/graph/C;

    check-cast p1, Lcom/android/tools/r8/graph/t0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/C;->a(Lcom/android/tools/r8/graph/t0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
