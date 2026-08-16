.class public final synthetic Lcom/android/tools/r8/graph/Vc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/d1;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/Vc;->b:Lcom/android/tools/r8/graph/d1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/Vc;->c:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/Vc;->b:Lcom/android/tools/r8/graph/d1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/Vc;->c:Lcom/android/tools/r8/graph/H2;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method
