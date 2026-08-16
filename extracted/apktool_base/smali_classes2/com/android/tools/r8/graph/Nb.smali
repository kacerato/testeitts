.class public final synthetic Lcom/android/tools/r8/graph/Nb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/Set;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Nb;->b:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Nb;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Nb;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Nb;->c:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/graph/Z4$a;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/W4;->a(Ljava/util/Set;Ljava/util/List;Lcom/android/tools/r8/graph/Z4$a;)V

    return-void
.end method
