.class public final synthetic Lcom/android/tools/r8/naming/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/E1;->b:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/E1;->b:Ljava/util/function/BiFunction;

    check-cast p1, Lcom/android/tools/r8/graph/H0;

    check-cast p2, Ljava/util/Set;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/naming/I;->a(Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/H0;Ljava/util/Set;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
