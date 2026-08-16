.class public final synthetic Lcom/android/tools/r8/graph/Q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/L2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Q6;->b:Lcom/android/tools/r8/graph/L2;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Q6;->b:Lcom/android/tools/r8/graph/L2;

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    return p1
.end method
