.class public final synthetic Lcom/android/tools/r8/shaking/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/N4;

.field public final synthetic c:Lcom/android/tools/r8/shaking/i;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N4;Lcom/android/tools/r8/shaking/i;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/ga;->b:Lcom/android/tools/r8/shaking/N4;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/ga;->c:Lcom/android/tools/r8/shaking/i;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/ga;->d:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/ga;->b:Lcom/android/tools/r8/shaking/N4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/ga;->c:Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/ga;->d:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/N4;->a(Lcom/android/tools/r8/shaking/i;Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
