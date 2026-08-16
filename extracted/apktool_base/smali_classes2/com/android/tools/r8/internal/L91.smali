.class public final synthetic Lcom/android/tools/r8/internal/L91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/f50;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/L91;->b:Lcom/android/tools/r8/internal/f50;

    iput-object p2, p0, Lcom/android/tools/r8/internal/L91;->c:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/L91;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/L91;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/L91;->b:Lcom/android/tools/r8/internal/f50;

    iget-object v1, p0, Lcom/android/tools/r8/internal/L91;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/L91;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/L91;->e:Ljava/util/Set;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/f50;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method
