.class public final synthetic Lcom/android/tools/r8/graph/proto/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/proto/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/proto/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/proto/m;->a:Lcom/android/tools/r8/graph/proto/c$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/proto/m;->a:Lcom/android/tools/r8/graph/proto/c$a;

    check-cast p2, Lcom/android/tools/r8/graph/proto/b;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/graph/proto/c;->a(Lcom/android/tools/r8/graph/proto/c$a;ILcom/android/tools/r8/graph/proto/b;)V

    return-void
.end method
