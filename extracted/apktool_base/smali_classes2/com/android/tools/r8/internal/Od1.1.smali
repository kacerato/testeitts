.class public final synthetic Lcom/android/tools/r8/internal/Od1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/i40;

.field public final synthetic c:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/i40;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Od1;->b:Lcom/android/tools/r8/internal/i40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Od1;->c:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Od1;->b:Lcom/android/tools/r8/internal/i40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Od1;->c:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/i40;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method
