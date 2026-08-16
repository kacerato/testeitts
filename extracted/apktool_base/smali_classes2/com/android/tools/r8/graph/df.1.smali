.class public final synthetic Lcom/android/tools/r8/graph/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/function/BiFunction;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/android/tools/r8/graph/h4;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/function/BiFunction;ILjava/lang/String;Lcom/android/tools/r8/graph/h4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/df;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/graph/df;->b:Ljava/util/function/BiFunction;

    iput p3, p0, Lcom/android/tools/r8/graph/df;->c:I

    iput-object p4, p0, Lcom/android/tools/r8/graph/df;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/tools/r8/graph/df;->e:Lcom/android/tools/r8/graph/h4;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/graph/df;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/graph/df;->b:Ljava/util/function/BiFunction;

    iget v2, p0, Lcom/android/tools/r8/graph/df;->c:I

    iget-object v3, p0, Lcom/android/tools/r8/graph/df;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/tools/r8/graph/df;->e:Lcom/android/tools/r8/graph/h4;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    move-object v6, p2

    check-cast v6, Ljava/util/List;

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/graph/o4;->a(Ljava/util/List;Ljava/util/function/BiFunction;ILjava/lang/String;Lcom/android/tools/r8/graph/h4;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
