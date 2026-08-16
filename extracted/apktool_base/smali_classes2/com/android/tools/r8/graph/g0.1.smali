.class public final Lcom/android/tools/r8/graph/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/E5;


# instance fields
.field public final b:Lcom/android/tools/r8/graph/h0;

.field public final c:Lcom/android/tools/r8/graph/E5;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/h0;Lcom/android/tools/r8/graph/E5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/g0;->b:Lcom/android/tools/r8/graph/h0;

    iput-object p2, p0, Lcom/android/tools/r8/graph/g0;->c:Lcom/android/tools/r8/graph/E5;

    return-void
.end method


# virtual methods
.method public final getContext()Lcom/android/tools/r8/graph/o0;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g0;->b:Lcom/android/tools/r8/graph/h0;

    return-object v0
.end method
