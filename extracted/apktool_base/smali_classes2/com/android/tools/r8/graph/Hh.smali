.class public final synthetic Lcom/android/tools/r8/graph/Hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/D5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Hh;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Hh;->c:Lcom/android/tools/r8/graph/D5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Hh;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Hh;->c:Lcom/android/tools/r8/graph/D5;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/t1;

    move-result-object p1

    return-object p1
.end method
