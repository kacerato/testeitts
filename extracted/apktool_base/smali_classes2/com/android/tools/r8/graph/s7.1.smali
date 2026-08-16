.class public final synthetic Lcom/android/tools/r8/graph/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/f6;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/f6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/s7;->b:Lcom/android/tools/r8/graph/f6;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/s7;->b:Lcom/android/tools/r8/graph/f6;

    check-cast p1, Lcom/android/tools/r8/internal/Db;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/G;->a(Lcom/android/tools/r8/graph/f6;Lcom/android/tools/r8/internal/Db;)V

    return-void
.end method
