.class public final synthetic Lcom/android/tools/r8/Z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/Z2;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/Z2;->a:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/internal/Oa0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/R8;->I(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Oa0;)V

    return-void
.end method
