.class public final synthetic Lcom/android/tools/r8/naming/S1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/Set;

.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/S1;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/naming/S1;->b:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/tools/r8/naming/S1;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/naming/S1;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/naming/S1;->b:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/tools/r8/naming/S1;->c:Ljava/util/Set;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    check-cast p2, Lcom/android/tools/r8/naming/I;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/naming/K;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/naming/I;)V

    return-void
.end method
