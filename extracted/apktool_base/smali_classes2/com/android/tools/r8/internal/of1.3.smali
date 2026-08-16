.class public final synthetic Lcom/android/tools/r8/internal/of1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/j70;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/j70;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/of1;->b:Lcom/android/tools/r8/internal/j70;

    iput-object p2, p0, Lcom/android/tools/r8/internal/of1;->c:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/of1;->b:Lcom/android/tools/r8/internal/j70;

    iget-object v1, p0, Lcom/android/tools/r8/internal/of1;->c:Lcom/android/tools/r8/graph/H2;

    check-cast p1, Lcom/android/tools/r8/internal/i70;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/j70;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/i70;)Z

    move-result p1

    return p1
.end method
