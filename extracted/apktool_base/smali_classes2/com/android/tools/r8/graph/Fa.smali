.class public final synthetic Lcom/android/tools/r8/graph/Fa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/P3;

.field public final synthetic c:Lcom/android/tools/r8/graph/M3$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/P3;Lcom/android/tools/r8/graph/M3$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Fa;->b:Lcom/android/tools/r8/graph/P3;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Fa;->c:Lcom/android/tools/r8/graph/M3$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Fa;->b:Lcom/android/tools/r8/graph/P3;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Fa;->c:Lcom/android/tools/r8/graph/M3$a;

    check-cast p1, Lcom/android/tools/r8/graph/H3$e;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/R3;->a(Lcom/android/tools/r8/graph/P3;Lcom/android/tools/r8/graph/M3$a;Lcom/android/tools/r8/graph/H3$e;)Lcom/android/tools/r8/graph/R3$a;

    move-result-object p1

    return-object p1
.end method
