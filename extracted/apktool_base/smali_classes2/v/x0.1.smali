.class public final synthetic Lv/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/x0;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lv/x0;->b:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/AssertionsConfiguration;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AssertionsConfiguration;)Lcom/android/tools/r8/ir/optimize/e;

    move-result-object p1

    return-object p1
.end method
