.class public final synthetic Lcom/android/tools/r8/internal/Rs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/sd;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/sd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rs1;->b:Lcom/android/tools/r8/internal/sd;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Rs1;->b:Lcom/android/tools/r8/internal/sd;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sd;->b(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
