.class public final synthetic Lcom/android/tools/r8/shaking/hb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/U0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/shaking/G3;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/U0;Ljava/util/List;Lcom/android/tools/r8/shaking/G3;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/hb;->b:Lcom/android/tools/r8/shaking/U0;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/hb;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/hb;->d:Lcom/android/tools/r8/shaking/G3;

    iput-object p4, p0, Lcom/android/tools/r8/shaking/hb;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/shaking/hb;->b:Lcom/android/tools/r8/shaking/U0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/hb;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/hb;->d:Lcom/android/tools/r8/shaking/G3;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/hb;->e:Ljava/util/List;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/shaking/H3;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/shaking/K3;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/shaking/U0;->a(Ljava/util/List;Lcom/android/tools/r8/shaking/G3;Ljava/util/List;Lcom/android/tools/r8/shaking/H3;Lcom/android/tools/r8/shaking/K3;)Z

    move-result p1

    return p1
.end method
