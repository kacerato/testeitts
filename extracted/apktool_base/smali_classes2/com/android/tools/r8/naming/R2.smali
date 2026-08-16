.class public final synthetic Lcom/android/tools/r8/naming/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/R2;->b:Lcom/android/tools/r8/naming/b0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/R2;->b:Lcom/android/tools/r8/naming/b0;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/naming/b0;->b(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method
