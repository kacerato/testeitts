.class public final synthetic Lcom/android/tools/r8/internal/tF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/GD;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/GD;Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tF0;->b:Lcom/android/tools/r8/internal/GD;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tF0;->c:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/tF0;->b:Lcom/android/tools/r8/internal/GD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/tF0;->c:Lcom/android/tools/r8/internal/fB;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/GD;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/Tw;

    move-result-object p1

    return-object p1
.end method
