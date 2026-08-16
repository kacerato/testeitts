.class public final synthetic Lcom/android/tools/r8/graph/Dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/i4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/i4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Dd;->a:Lcom/android/tools/r8/graph/i4;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Dd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/graph/Dd;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/graph/Dd;->a:Lcom/android/tools/r8/graph/i4;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Dd;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/tools/r8/graph/Dd;->c:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/graph/i4;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
