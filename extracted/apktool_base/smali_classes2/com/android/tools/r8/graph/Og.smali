.class public final synthetic Lcom/android/tools/r8/graph/Og;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Og;->b:Lcom/android/tools/r8/graph/u4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/Og;->b:Lcom/android/tools/r8/graph/u4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/u4;->E0()V

    return-void
.end method
