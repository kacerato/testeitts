.class public final synthetic Lcom/android/tools/r8/naming/J3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/IH;

.field public final synthetic c:Lcom/android/tools/r8/naming/k$b;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/android/tools/r8/internal/WE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/internal/WE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/J3;->b:Lcom/android/tools/r8/internal/IH;

    iput-object p2, p0, Lcom/android/tools/r8/naming/J3;->c:Lcom/android/tools/r8/naming/k$b;

    iput-object p3, p0, Lcom/android/tools/r8/naming/J3;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/android/tools/r8/naming/J3;->e:Lcom/android/tools/r8/internal/WE;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/J3;->b:Lcom/android/tools/r8/internal/IH;

    iget-object v1, p0, Lcom/android/tools/r8/naming/J3;->c:Lcom/android/tools/r8/naming/k$b;

    iget-object v2, p0, Lcom/android/tools/r8/naming/J3;->d:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/naming/J3;->e:Lcom/android/tools/r8/internal/WE;

    check-cast p1, Lcom/android/tools/r8/naming/q;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/internal/WE;Lcom/android/tools/r8/naming/q;)V

    return-void
.end method
