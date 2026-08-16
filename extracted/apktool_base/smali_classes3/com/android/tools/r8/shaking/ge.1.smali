.class public final synthetic Lcom/android/tools/r8/shaking/ge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/d1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/ge;->b:Lcom/android/tools/r8/graph/d1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/ge;->b:Lcom/android/tools/r8/graph/d1;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D5;

    move-result-object p1

    return-object p1
.end method
