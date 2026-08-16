.class public final synthetic Lcom/android/tools/r8/internal/jQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/y;

.field public final synthetic b:Lcom/android/tools/r8/internal/qg;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/jQ0;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/jQ0;->b:Lcom/android/tools/r8/internal/qg;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/jQ0;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/jQ0;->b:Lcom/android/tools/r8/internal/qg;

    check-cast p2, Lcom/android/tools/r8/graph/proto/b;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Ot;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qg;ILcom/android/tools/r8/graph/proto/b;)V

    return-void
.end method
