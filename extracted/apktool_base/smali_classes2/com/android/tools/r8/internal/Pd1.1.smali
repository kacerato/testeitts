.class public final synthetic Lcom/android/tools/r8/internal/Pd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/i6;

.field public final synthetic c:Ljava/util/Set;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/i6;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Pd1;->b:Lcom/android/tools/r8/internal/i6;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Pd1;->c:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Pd1;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Pd1;->b:Lcom/android/tools/r8/internal/i6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Pd1;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Pd1;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/i6;->a(Ljava/util/Set;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
