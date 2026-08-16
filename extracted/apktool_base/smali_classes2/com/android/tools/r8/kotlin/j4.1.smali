.class public final synthetic Lcom/android/tools/r8/kotlin/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/j4;->b:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/kotlin/j4;->b:Ljava/util/Collection;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/kotlin/o;->a(Ljava/util/Collection;Lcom/android/tools/r8/graph/g1;)V

    return-void
.end method
