.class public final synthetic Lcom/android/tools/r8/graph/Db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/W3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/W3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Db;->b:Lcom/android/tools/r8/graph/W3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Db;->b:Lcom/android/tools/r8/graph/W3;

    check-cast p1, Lcom/android/tools/r8/graph/H3$c;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/W3;->b(Lcom/android/tools/r8/graph/H3$c;)Lcom/android/tools/r8/graph/H3$c;

    move-result-object p1

    return-object p1
.end method
