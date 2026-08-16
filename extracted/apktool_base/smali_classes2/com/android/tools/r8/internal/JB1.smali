.class public final synthetic Lcom/android/tools/r8/internal/JB1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/z3;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/z3;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/JB1;->b:Lcom/android/tools/r8/internal/z3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/JB1;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/JB1;->b:Lcom/android/tools/r8/internal/z3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/JB1;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/z3;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/F2;)V

    return-void
.end method
