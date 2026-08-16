.class public final synthetic Lcom/android/tools/r8/internal/iC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Cm;

.field public final synthetic b:Lcom/android/tools/r8/internal/o9;

.field public final synthetic c:Lcom/android/tools/r8/internal/Af;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Cm;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iC0;->a:Lcom/android/tools/r8/internal/Cm;

    iput-object p2, p0, Lcom/android/tools/r8/internal/iC0;->b:Lcom/android/tools/r8/internal/o9;

    iput-object p3, p0, Lcom/android/tools/r8/internal/iC0;->c:Lcom/android/tools/r8/internal/Af;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/iC0;->a:Lcom/android/tools/r8/internal/Cm;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iC0;->b:Lcom/android/tools/r8/internal/o9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/iC0;->c:Lcom/android/tools/r8/internal/Af;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/Cm;->a(Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/graph/H2;Ljava/lang/Iterable;)V

    return-void
.end method
