.class public final synthetic Lcom/android/tools/r8/internal/Wn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b2;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/o3;

.field public final synthetic c:Lcom/android/tools/r8/graph/F5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/o3;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wn1;->b:Lcom/android/tools/r8/internal/o3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Wn1;->c:Lcom/android/tools/r8/graph/F5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Wn1;->b:Lcom/android/tools/r8/internal/o3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Wn1;->c:Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/o3;->a(Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method
