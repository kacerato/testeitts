.class public final synthetic Lcom/android/tools/r8/internal/vZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Vj0;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Lcom/android/tools/r8/internal/Mj0;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Vj0;Ljava/util/Set;Lcom/android/tools/r8/internal/Mj0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vZ0;->b:Lcom/android/tools/r8/internal/Vj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vZ0;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/vZ0;->d:Lcom/android/tools/r8/internal/Mj0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/vZ0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/vZ0;->b:Lcom/android/tools/r8/internal/Vj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vZ0;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/vZ0;->d:Lcom/android/tools/r8/internal/Mj0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/vZ0;->e:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/internal/JV;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Vj0;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/Mj0;Ljava/util/List;Lcom/android/tools/r8/internal/JV;)V

    return-void
.end method
