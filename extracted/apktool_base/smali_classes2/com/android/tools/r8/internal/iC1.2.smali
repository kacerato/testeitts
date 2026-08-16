.class public final synthetic Lcom/android/tools/r8/internal/iC1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/F5;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/iC1;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/iC1;->a:I

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/z5;->a(ILcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;

    move-result-object p1

    return-object p1
.end method
