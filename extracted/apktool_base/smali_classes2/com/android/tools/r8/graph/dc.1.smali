.class public final synthetic Lcom/android/tools/r8/graph/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/Y5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/Y5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/dc;->b:Lcom/android/tools/r8/graph/Y5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/dc;->b:Lcom/android/tools/r8/graph/Y5;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/Y5;->e(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method
