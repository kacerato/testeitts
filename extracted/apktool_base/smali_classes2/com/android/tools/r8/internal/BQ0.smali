.class public final synthetic Lcom/android/tools/r8/internal/BQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Oy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Oy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/BQ0;->b:Lcom/android/tools/r8/internal/Oy;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/BQ0;->b:Lcom/android/tools/r8/internal/Oy;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    check-cast p2, Lcom/android/tools/r8/graph/o3;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Z

    move-result p1

    return p1
.end method
