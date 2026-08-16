.class public final synthetic Lcom/android/tools/r8/graph/n6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/n6;->b:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/n6;->b:Lcom/android/tools/r8/internal/nJ;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/graph/j1;)Z

    move-result p1

    return p1
.end method
