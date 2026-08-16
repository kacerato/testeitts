.class public final synthetic Lcom/android/tools/r8/shaking/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/U0;

.field public final synthetic c:Ljava/util/Collection;

.field public final synthetic d:Ljava/util/Collection;

.field public final synthetic e:Lcom/android/tools/r8/internal/Un;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/Collection;Ljava/util/Collection;Lcom/android/tools/r8/internal/Un;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/fb;->b:Lcom/android/tools/r8/shaking/U0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/fb;->c:Ljava/util/Collection;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/fb;->d:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/fb;->e:Lcom/android/tools/r8/internal/Un;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/fb;->b:Lcom/android/tools/r8/shaking/U0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/fb;->c:Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/fb;->d:Ljava/util/Collection;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/fb;->e:Lcom/android/tools/r8/internal/Un;

    check-cast p1, Lcom/android/tools/r8/shaking/R3;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/Collection;Ljava/util/Collection;Lcom/android/tools/r8/internal/Un;Lcom/android/tools/r8/shaking/R3;)Z

    move-result p1

    return p1
.end method
